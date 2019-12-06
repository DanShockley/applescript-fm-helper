-- main_helper
-- Daniel A. Shockley, NYHTC
-- Helper script that compiles all .applescript files into a folder of compiled .scpt files, then builds the htcLib app to reference those compiled scripts.


(* HISTORY:
	2019-12-06 ( dshockley ): First created. Based on main_helper.applescript.
*)


(* TODO: 
	- If the compiled handler file already exists and has the same version, can skip recompiling (if that actually improves speed).
*)


property debugMode : true


property LF : ASCII character 10
property tempFileName : "temp.applescript"

property mainFileName : "main.scpt"
property appName : "htcLib"
property appExtension : ".app"
property compiledFolderName : "CompiledHandlers"
property securityPrefPanePosix : "/System/Library/PreferencePanes/Security.prefPane"



on run prefs
	set defaultPrefs to {true}
	if class of prefs is script or prefs is equal to {} then set prefs to defaultPrefs
	set showDialogs to ((item 1 of prefs) as boolean)
	
	set shouldBuildAPP to true
	if showDialogs then
		display dialog "Build (or rebuild/replace) the htcLib?" buttons {"Cancel", "Only Scripts", "App & Scripts"} default button "App & Scripts"
		if button returned of result is "Only Scripts" then
			set shouldBuildAPP to false
		end if
	end if
	
	set folderName_library to "library:"
	set folderName_toSkip to "standalone"
	set fileNamePrefix_toSkip to "WIP_"
	
	set tempCode to ""
	set commentBreaker to "--------------------"
	set codeStart to commentBreaker & LF & "-- START OF CODE" & LF & commentBreaker
	set codeEnd to commentBreaker & LF & "-- END OF CODE" & LF & commentBreaker
	
	-- substrings for parsing sub-handler code:
	set subStr_propertyDebugMode to "property debugMode: false" & LF
	set subStr_beforeHandlerName to LF & "on "
	set subStr_beforeHandlerParams to "("
	set subStr_endPrefixHandler to LF & "end "
	
	set subStr_templateHandlerWrapperCode to �
		"	tell application \"Finder\" to set handlerPath to " & �
		"((container of (path to me)) as text) & \"###HANDLER_NAME###\" & \".scpt\"" & LF & �
		"	tell (load script alias handlerPath) to return ###HANDLER_CALL###"
	
	
	tell application "Finder"
		set pathRoot to (folder of (path to me)) as string
		set thisFileName to name of (path to me)
	end tell
	
	set pathTempCode to pathRoot & tempFileName
	set pathMain to pathRoot & mainFileName
	set pathApp to pathRoot & appName & appExtension
	set pathLibrary to pathRoot & folderName_library
	set libraryNames to list folder (pathLibrary) without invisibles
	set pathFunctionLib to pathRoot & compiledFolderName & ":"
	
	
	-- loop over each sub-directory, compiling each handler and adding to htcLib APP code:
	repeat with dirCount from 1 to count of libraryNames
		set oneLibraryName to item dirCount of libraryNames
		set pathOneLibrary to pathLibrary & oneLibraryName
		if oneLibraryName is equal to folderName_toSkip then
			-- skip this folder because it contains standalone handlers
		else
			-- get all files in the the folder
			set fileNamesInOneLibrary to list folder (pathOneLibrary) without invisibles
			
			-- append all libraries into a single file
			repeat with fileCount from 1 to count of fileNamesInOneLibrary
				
				-- read one file and get everything above the helper methods
				set oneFileName to item fileCount of fileNamesInOneLibrary
				if oneFileName does not start with fileNamePrefix_toSkip then
					set pathOneFileinOneLibrary to pathOneLibrary & ":" & oneFileName
					set oneFileRawCode to read file pathOneFileinOneLibrary
					if oneFileRawCode contains codeStart and oneFileRawCode contains codeEnd then
						set codeOneHandler to getTextBetween({oneFileRawCode, codeStart, codeEnd})
					else
						set codeOneHandler to oneFileRawCode
					end if
					
					
					if shouldBuildAPP then
						-- APPEND TO APP: now append to htcLib APP code:
						set handlerCall to getTextBetween({codeOneHandler, subStr_beforeHandlerName, LF})
						if handlerCall contains subStr_beforeHandlerParams then
							set handlerName to getTextBefore(handlerCall, "(")
						else
							set handlerName to handlerCall
						end if
						
						set handlerInternalCode to replaceSimple({replaceSimple({subStr_templateHandlerWrapperCode, "###HANDLER_NAME###", compiledFolderName & ":" & handlerName}), "###HANDLER_CALL###", handlerCall})
						set codeHandlerWrapper to subStr_beforeHandlerName & handlerCall & LF & handlerInternalCode & subStr_endPrefixHandler & handlerName & LF
						
						if (length of tempCode) is greater than 0 then set tempCode to tempCode & return & return & return
						set tempCode to tempCode & codeHandlerWrapper
						
					end if
					
					
					-- SUBHANDLERS: process each sub-handler this handler depends upon:
					
					set codeSubHandlers to getTextAfter(oneFileRawCode, codeEnd)
					
					-- trim the Handler code now (NOT above, since it needs the leading linefeed before the handler call):			
					set codeOneHandler to trimWhitespace(codeOneHandler)
					
					set codeHandlerWithNewSubCalls to subStr_propertyDebugMode & codeOneHandler
					repeat while codeSubHandlers contains subStr_beforeHandlerName
						set skipThisSubhandler to false
						set oneSubhandlerCall to getTextBetween({codeSubHandlers, subStr_beforeHandlerName, LF})
						if oneSubhandlerCall contains subStr_beforeHandlerParams then
							set oneSubhandlerName to getTextBefore(oneSubhandlerCall, "(")
						else
							set oneSubhandlerName to oneSubhandlerCall
						end if
						
						if oneSubhandlerName is "coerceToString" then
							if codeOneHandler does not contain "coerceToString" then
								-- the coerceToString was NOT used in the main handler, so we don't actually NEED it:
								-- so SKIP this:
								set skipThisSubhandler to true
							end if
						end if
						
						if not skipThisSubhandler then
							-- we DO need this subhandler, so reformat it:
							set subHandlerInternalCode to replaceSimple({replaceSimple({subStr_templateHandlerWrapperCode, "###HANDLER_NAME###", oneSubhandlerName}), "###HANDLER_CALL###", oneSubhandlerCall})
							set oneSubHandlerCode to subStr_beforeHandlerName & oneSubhandlerCall & LF & subHandlerInternalCode & subStr_endPrefixHandler & oneSubhandlerName & LF
							
							set codeHandlerWithNewSubCalls to codeHandlerWithNewSubCalls & LF & oneSubHandlerCode
						end if
						
						set codeSubHandlers to getTextAfter(codeSubHandlers, subStr_endPrefixHandler & oneSubhandlerName)
						
					end repeat
					
					
					-- write the modified code into a temporary file:
					try
						close access fileRef
					end try
					set fileRef to (open for access file pathTempCode with write permission)
					set eof of fileRef to 0 --> empty file contents if needed
					write codeHandlerWithNewSubCalls to fileRef
					close access fileRef
					
					-- COMPILE the temporary file to the desired destination:
					set compiledFileName to replaceSimple({oneFileName, ".applescript", ".scpt"})
					set pathCompiled to (pathFunctionLib & compiledFileName)
					do shell script "osacompile -o " & quoted form of POSIX path of pathCompiled & " " & quoted form of POSIX path of pathTempCode
					
				end if
			end repeat
		end if
	end repeat
	
	if shouldBuildAPP then
		-- prepend code with documentation
		set docCode to "-- main script"
		set docCode to docCode & LF & "-- Erik Shagdar, NYHTC"
		set docCode to docCode & LF
		set docCode to docCode & LF & "-- Generated: " & (do shell script "date '+%Y-%m-%d %T'")
		set docCode to docCode & LF & "-- Run " & quoted form of thisFileName & " to after making changes in any .applescript file and after each git pull."
		set docCode to docCode & LF & "-- Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script."
		set docCode to docCode & LF
		set docCode to docCode & LF & "property DebugMode : " & debugMode
		set docCode to docCode & LF & "property ScriptName : \"" & appName & "\""
		set docCode to docCode & LF & "property clickCommandPosix : POSIX path of (((path to home folder) as string)) & \"Code/applescript-fm-helper/vendor/cliclick/cliclick\""
		
		set tempCode to docCode & LF & LF & LF & tempCode
		
		
		-- create a temp file of all libaries, then create a compiled version of it.
		--	do shell script "echo " & quoted form of tempCode & " > " & quoted form of POSIX path of pathTempCode
		
		try
			close access fileRef
		end try
		set fileRef to (open for access file pathTempCode with write permission)
		set eof of fileRef to 0 --> empty file contents if needed
		--> now write the flag
		--	write ((ASCII character 239) & (ASCII character 187) & (ASCII character 191)) to fileRef --> not as �class utf8�
		--> now write the data
		write tempCode to fileRef
		close access fileRef
		
		
		do shell script "osacompile -o " & quoted form of POSIX path of pathMain & " " & quoted form of POSIX path of pathTempCode
		do shell script "pwd"
		do shell script "sh " & quoted form of (POSIX path of (pathRoot & "vendor.sh"))
		if result does not contain "SUCCESS" then return "Error: unable to run vendor.sh"
		
		
		set appExists to false
		tell application "Finder"
			if exists pathApp then set appExists to true
		end tell
		
		
		--quit the pre-existing app
		if appExists then
			tell application appName to quit
		end if
		
		-- remove pre-existing app file
		tell application "Finder"
			if appExists then delete file pathApp
		end tell
		
		-- now make it into an app
		do shell script "osacompile -s -o " & quoted form of POSIX path of pathApp & " " & quoted form of POSIX path of pathTempCode
		
		
		if showDialogs then
			tell it to activate
			set AsstAccessDlg to display dialog "You must enable assistive access for " & appName & "." with title appName buttons {"Open", "OK"} default button "OK"
			
			
			-- navigate to security preference pane
			if button returned of AsstAccessDlg is equal to "Open" then
				
				tell application "System Preferences" to activate
				do shell script "open " & quoted form of securityPrefPanePosix
				
				
				tell application "System Events"
					tell process "System Preferences"
						click radio button "Privacy" of tab group 1 of window 1
						
						-- get htcLib checkbox
						set htcLibRow to (first row of table 1 of scroll area 1 of group 1 of tab group 1 of window 1 whose value of static text 1 of UI element 1 contains "htcLib")
						set htcLibCheckbox to checkbox 1 of UI element 1 of htcLibRow
						select htcLibRow
						
						-- unlock if needed
						set canMakeChanges to enabled of htcLibCheckbox
						if canMakeChanges is false then
							click button 1 of window 1
							display dialog "You must deselect, then reselect the HtcLib checkbox" buttons "OK" default button "OK"
							return true
						end if
						
						
						-- uncheck, then recheck to re-allow control of htcLib
						click htcLibCheckbox
						delay 0.5
						click htcLibCheckbox
						delay 0.5
						set visible to false
					end tell
				end tell
				
				tell me to activate
				display dialog "HtcLib is ready" buttons "OK" default button "OK"
			end if
			return true
		else
			
			tell application "System Preferences" to activate
			do shell script "open " & quoted form of securityPrefPanePosix
			
			return "you must re-allow assistive devices to '" & appName & "'."
			
		end if
		
		
	end if -- should build APP.
	
	
	-- remove the temp file
	tell application "Finder"
		if exists pathTempCode then delete file pathTempCode
	end tell
	
	
end run



--------------------
-- HELPER FUNCTIONS
--------------------

on parentFolderOfPath(incomingPath)
	--version 1.1, Daniel A. Shockley
	
	set incomingPath to incomingPath as string
	if incomingPath is "" then
		error "Cannot find a parent folder for a path that is blank." number -1027
	end if
	
	if last character of incomingPath is ":" then
		-- if it ends with ":" (a folder), leave that off for the code below
		set incomingPath to (text 1 through -2 of incomingPath) as string
	end if
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, ":"}
	if (count of text items of incomingPath) is 1 then
		-- the item in question is a disk, so CANNOT return a parent folder
		set AppleScript's text item delimiters to od
		error "Cannot find a parent folder of a DISK: " & incomingPath & "." number -1027
	else
		set enclosingFolder to (text items 1 through -2 of incomingPath as string)
	end if
	
	set AppleScript's text item delimiters to od
	return enclosingFolder & ":"
	
end parentFolderOfPath


on getTextBetween(prefs)
	-- version 1.6, Daniel A. Shockley <http://www.danshockley.com>
	
	set defaultPrefs to {textItemNum:2, includeMarkers:false}
	
	if (class of prefs is not list) and ((class of prefs) as string is not "record") then
		error "getTextBetween FAILED: parameter should be a record or list. If it is multiple items, just make it into a list to upgrade to this handler." number 1024
	end if
	if class of prefs is list then
		if (count of prefs) is 4 then
			set textItemNum of defaultPrefs to item 4 of prefs
		end if
		set prefs to {sourceTEXT:item 1 of prefs, beforeText:item 2 of prefs, afterText:item 3 of prefs}
	end if
	set prefs to prefs & defaultPrefs -- add on default preferences, if needed
	set sourceTEXT to sourceTEXT of prefs
	set beforeText to beforeText of prefs
	set afterText to afterText of prefs
	set textItemNum to textItemNum of prefs
	set includeMarkers to includeMarkers of prefs
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, beforeText}
		set the prefixRemoved to text item textItemNum of sourceTEXT
		set AppleScript's text item delimiters to afterText
		set the finalResult to text item 1 of prefixRemoved
		set AppleScript's text item delimiters to oldDelims
		
		if includeMarkers then set finalResult to beforeText & finalResult & afterText
		
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		-- 	tell me to log "Error in getTextBetween() : " & errMsg
		set the finalResult to "" -- return nothing if the surrounding text is not found
	end try
	
	
	return finalResult
	
end getTextBetween


on trimWhitespace(inputString)
	-- version 1.2: 
	
	set whiteSpaceAsciiNumbers to {13, 10, 32, 9} -- characters that count as whitespace.
	
	set textLength to length of inputString
	if textLength is 0 then return ""
	set endSpot to -textLength -- if only whitespace is found, will chop whole string
	
	-- chop from end
	set i to -1
	repeat while -i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set endSpot to i
			exit repeat
		end if
		set i to i - 1
	end repeat
	
	
	if -endSpot is equal to textLength then
		if whiteSpaceAsciiNumbers contains (ASCII number testChar) then return ""
	end if
	
	set inputString to text 1 thru endSpot of inputString
	set textLength to length of inputString
	set newStart to 1
	
	-- chop from beginning
	set i to 1
	repeat while i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set newStart to i
			exit repeat
		end if
		set i to i + 1
	end repeat
	
	set inputString to text newStart thru textLength of inputString
	
	return inputString
	
end trimWhitespace




on getTextAfter(sourceTEXT, afterThis)
	-- version 1.2
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {afterThis}}
		
		if (count of text items of sourceTEXT) is 1 then
			-- the split-string didn't appear at all
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the resultAsList to text items 2 thru -1 of sourceTEXT
		end if
		set AppleScript's text item delimiters to {afterThis}
		set finalResult to resultAsList as string
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextAfter

on getTextBefore(sourceTEXT, stopHere)
	-- version 1.1
	
	try
		set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, stopHere}
		if (count of text items of sourceTEXT) is 1 then
			set AppleScript's text item delimiters to oldDelims
			return ""
		else
			set the finalResult to text item 1 of sourceTEXT
		end if
		set AppleScript's text item delimiters to oldDelims
		return finalResult
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		return "" -- return nothing if the stop text is not found
	end try
end getTextBefore


on replaceSimple(prefs)
	-- version 1.4
	
	set defaultPrefs to {considerCase:true}
	
	if class of prefs is list then
		if (count of prefs) is greater than 3 then
			-- get any parameters after the initial 3
			set prefs to {sourceTEXT:item 1 of prefs, oldChars:item 2 of prefs, newChars:item 3 of prefs, considerCase:item 4 of prefs}
		else
			set prefs to {sourceTEXT:item 1 of prefs, oldChars:item 2 of prefs, newChars:item 3 of prefs}
		end if
		
	else if class of prefs is not equal to (class of {someKey:3}) then
		-- Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"
		
		error "The parameter for 'replaceSimple()' should be a record or at least a list. Wrap the parameter(s) in curly brackets for easy upgrade to 'replaceSimple() version 1.3. " number 1024
		
	end if
	
	
	set prefs to prefs & defaultPrefs
	
	
	set considerCase to considerCase of prefs
	set sourceTEXT to sourceTEXT of prefs
	set oldChars to oldChars of prefs
	set newChars to newChars of prefs
	
	set sourceTEXT to sourceTEXT as string
	
	set oldDelims to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the oldChars
	if considerCase then
		considering case
			set the parsedList to every text item of sourceTEXT
			set AppleScript's text item delimiters to the {(newChars as string)}
			set the newText to the parsedList as string
		end considering
	else
		ignoring case
			set the parsedList to every text item of sourceTEXT
			set AppleScript's text item delimiters to the {(newChars as string)}
			set the newText to the parsedList as string
		end ignoring
	end if
	set AppleScript's text item delimiters to oldDelims
	return newText
	
end replaceSimple