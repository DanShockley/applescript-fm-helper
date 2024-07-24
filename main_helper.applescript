-- main_helper
-- Erik Shagdar
-- Helper script that compiles all .applescript files into a folder of compiled .scpt files, then builds the fmGuiLib app to reference those compiled scripts.


(* 
HISTORY:
	2024-07-23 ( danshockley ): Updated to use "fmGuiLib" for the AppName, and other chagnes to be general purpose, not org-specific. 
	2024-07-23 ( danshockley ): Minor updates to calling System Settings to appropriate Privacy & Security pane.
	2024-07-16 ( danshockley ): After initial read attempt, if source file starts with UTF-16 byte-marker, re-read as Unicode text. This was because the getFmAppPath was saved as UTF-16 Little Endian by Script Editor, despite previously being UTF-8 or "Western (Mac OS Roman)" before Scritp Editor touched it. Rather than fight, updated this script to read it properly. 
	2024-04-13 ( danshockley ): If handlerName is EMPTY, do NOT try to compile, since that would create a non-compilable temp). Notice if on Ventura or newer and if so do not bother trying to enable assistance access in System Preferences. 
	2020-02-19 ( dshockley ): added a comment that the prefs argument is a list of shell arguments specified. 
	2020-01-06 ( hkierulf, dshockley, hdu ): if the app is missing, DO need to compile it. 
	2019-12-11 ( eshagdar ): ensure CompiledHandlers folder exists.
	2019-12-11 ( dshockley, eshagdar ): Removed shouldBuildAPP - if some handler changes, we MUST build the app, so no point in asking. Removed unneeded properties from the app build, as well as other unneeded code/comments. 
	2019-12-10 ( dshockley ): Changed to COMPILE each handler, then also compile fmGuiLib into the same folder. Only compile handler if the version changes. Also, only compile app if some change was made to handler calls. 
	2017-12-18 ( eshagdar ): skip files whose name begins wtih 'WIP_' ( work in progress ).
	2017-11-14 ( dshockley ): open system preference pane even from command line. 
	2017-10-20 ( eshagdar ): allow running with params. If ran with 'False', dialogs ( and re-enabling assistve devices ) is suppressed. 
	2017-10-18 ( eshagdar ): debugMode is a property. fmGuiLib scriptName is 'fmGuiLib', not 'main.scpt'.
	2017-10-06 ( eshagdar ): added library folder to skip when generating fmGuiLib. renamed variables for clarity.
	2017-09-12 ( eshagdar ): attempt to de-select and re-select the fmGuiLib checkbox.
	2017-06-29 ( eshagdar ): check to see if fmGuiLib exists.
	2017-06-26 ( eshagdar ): quit the app before deleting it.
	2017-06-14 ( eshagdar ): also make an app.
	2016-04-21 ( eshagdar ): Updated clickCommandPosix path.
	2016-03-17 ( eshagdar ): Added DebugMode and clickCommandPosix properties.
	2016-03-15 ( eshagdar ): added documentation to main script. Separated individual functions into library directories and updated run code to loop over files in sub-directories.
	2016-03-14 ( eshagdar ): first created.
*)


property debugMode : true

property LF : ASCII character 10
property tempFileName : "temp.applescript"

property mainFileName : "main.scpt"
property appName : "fmGuiLib"
property appExtension : ".app"
property compiledFolderName : "CompiledHandlers"
property securityPrefPanePosix : "/System/Library/PreferencePanes/Security.prefPane"
property byteMarker_UTF16 : "ÿþ"

on run prefs
	
	-- note that, if called from a shell using osascript, prefs will be a list (where each argument is an item in the list). 
	set defaultPrefs to {true}
	if class of prefs is script or prefs is equal to {} then set prefs to defaultPrefs
	set showDialogs to ((item 1 of prefs) as boolean)
	
	
	-- now, despite possibly expecting to build app, do NOT actually finalize that if no changes made:
	set appChangesMade to false -- this will be changed to TRUE if any changes are made to handler names and/or params
	
	set folderName_library to "library:"
	set folderName_toSkip to "standalone"
	set fileNamePrefix_toSkip to "WIP_"
	
	set tempCode to ""
	set commentBreaker to "--------------------"
	set codeStart to commentBreaker & LF & "-- START OF CODE" & LF & commentBreaker
	set codeEnd to commentBreaker & LF & "-- END OF CODE" & LF & commentBreaker
	
	-- substrings for parsing sub-handler code:
	set subStr_handlerProperties to "property debugMode: false" & LF & "property ScriptName: \"" & appName & "\"" & LF
	set subStr_beforeHandlerName to LF & "on "
	set subStr_beforeHandlerParams to "("
	set subStr_endPrefixHandler to LF & "end "
	
	set subStr_templateHandlerWrapperCode to Â
		"	tell application \"Finder\" to set handlerPath to " & Â
		"((container of (path to me)) as text) & \"###HANDLER_NAME###\" & \".scpt\"" & LF & Â
		"	tell (load script alias handlerPath) to return ###HANDLER_CALL###"
	
	set subStr_special_clickAtCoords_InternalCode_InsertAfter to (ASCII character 9) & "try" & LF
	set subStr_special_clickAtCoords_InternalCode_ToAdd to Â
		"tell application \"Finder\" to set clickCommandPosix to POSIX path of (((container of container of (path to me)) as string) & \"vendor:cliclick:cliclick\")" & LF
	set subStr_beforeHandlerVersion to "-- version "
	set subStr_afterHandlerVersion to return
	
	set subStr_beforeCompiledHandlerName to return & "on "
	
	tell application "Finder"
		set pathRoot to (folder of (path to me)) as string
		set thisFileName to name of (path to me)
	end tell
	
	set pathTempCode to pathRoot & tempFileName
	set pathMain to pathRoot & mainFileName
	set pathLibrary to pathRoot & folderName_library
	set pathCompiledFolder to pathRoot & compiledFolderName & ":"
	set pathApp to pathCompiledFolder & appName & appExtension
	
	
	-- ensure compiled folder exists
	tell application "Finder"
		if not (exists folder pathCompiledFolder) then
			make new folder at pathRoot with properties {name:compiledFolderName}
		end if
	end tell
	
	
	-- loop over each sub-directory, compiling each handler and adding to fmGuiLib APP code:
	set libraryNames to list folder (pathLibrary) without invisibles
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
				
				-- reset variables for one file:
				set existingVersion to ""
				set existingHandlerCall to ""
				set shouldCompileHandler to true
				
				-- read one file and get everything above the helper methods
				set oneFileName to item fileCount of fileNamesInOneLibrary
				if oneFileName does not start with fileNamePrefix_toSkip then
					
					-- SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   
					-- SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   
					-- SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   SPECIAL DEBUGGING!!! 2024-07-16 ( danshockley )   
					--if oneFileName is "getFmAppPath.applescript" then set debugMode to true
					
					if debugMode then log "oneFileName: " & oneFileName
					set pathOneFileinOneLibrary to pathOneLibrary & ":" & oneFileName
					set compiledFileName to replaceSimple({oneFileName, ".applescript", ".scpt"})
					set pathCompiled to (pathCompiledFolder & compiledFileName)
					
					if debugMode then log "pathCompiled: " & pathCompiled
					
					try
						set existingCompiledCode to (do shell script "osadecompile " & POSIX path of pathCompiled)
						set existingVersion to getTextBetween({existingCompiledCode, subStr_beforeHandlerVersion, subStr_afterHandlerVersion})
						set existingHandlerCall to getTextBetween({existingCompiledCode, subStr_beforeCompiledHandlerName, return})
					end try
					
					if debugMode then log "existingVersion: " & existingVersion
					
					set oneFileRawCode to read file pathOneFileinOneLibrary
					if oneFileRawCode starts with byteMarker_UTF16 then
						set oneFileRawCode to read file pathOneFileinOneLibrary as Unicode text
					end if
					if oneFileRawCode contains codeStart and oneFileRawCode contains codeEnd then
						set codeOneHandler to getTextBetween({oneFileRawCode, codeStart, codeEnd})
					else
						set codeOneHandler to oneFileRawCode
					end if
					
					set handlerCall to getTextBetween({codeOneHandler, subStr_beforeHandlerName, LF})
					if handlerCall contains subStr_beforeHandlerParams then
						set handlerName to getTextBefore(handlerCall, "(")
					else
						set handlerName to handlerCall
					end if
					
					if length of handlerName is 0 then
						if debugMode then log "ERROR: EMPTY handlerName for file: " & oneFileName
						display dialog "The file " & oneFileName & " does NOT seem to have a valid handlerName. Please either update that source file, or remove it. But, compilation will ignore that file and continue. That file can be found at: " & pathOneFileinOneLibrary buttons {"OK"} default button "OK"
						
						return handlerCall
						
					else
						-- BEGIN: ONE handlerName
						
						set handlerVersion to getTextBetween({codeOneHandler, subStr_beforeHandlerVersion, LF})
						
						if handlerName is "clickAtCoords" then
							-- SPECIAL MODIFICATION to bring a "property" into the actual handler code. 
							set codeOneHandler to my replaceSimple({codeOneHandler, subStr_special_clickAtCoords_InternalCode_InsertAfter, subStr_special_clickAtCoords_InternalCode_InsertAfter & subStr_special_clickAtCoords_InternalCode_ToAdd})
						end if
						
						
						
						-- COMPARE existing (previously-compiled) version and handlerCall with NEW:
						-- if no existing or different, then DO need to re-compile app
						if (existingHandlerCall is equal to handlerCall) and (existingVersion is equal to handlerVersion) then
							-- do NOT need to compile, and no "change" (for this ONE handler!) to the app.
							set shouldCompileHandler to false
						else if (existingHandlerCall is equal to handlerCall) then
							-- do NOT need to re-compile the app due to THIS ONE handler (might need for some other).
						else
							-- the handlerCall was different, so THIS handler requires an app re-compile:
							set appChangesMade to true
						end if
						
						
						-- APPEND TO APP: now append to fmGuiLib APP code:
						-- do this EVEN if the handler itself doesn't need to be re-compiled.
						set handlerInternalCode to replaceSimple({replaceSimple({subStr_templateHandlerWrapperCode, "###HANDLER_NAME###", handlerName}), "###HANDLER_CALL###", handlerCall})
						set codeHandlerWrapper to subStr_beforeHandlerName & handlerCall & LF & handlerInternalCode & subStr_endPrefixHandler & handlerName & LF
						
						if (length of tempCode) is greater than 0 then set tempCode to tempCode & return & return & return
						set tempCode to tempCode & codeHandlerWrapper
						
						
						if shouldCompileHandler then
							-- SUBHANDLERS: process each sub-handler this handler depends upon:
							
							set codeSubHandlers to getTextAfter(oneFileRawCode, codeEnd)
							
							-- trim the Handler code now (NOT above, since it needs the leading linefeed before the handler call):			
							set codeOneHandler to trimWhitespace(codeOneHandler)
							
							set codeHandlerWithNewSubCalls to subStr_handlerProperties & codeOneHandler
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
							do shell script "osacompile -o " & quoted form of POSIX path of pathCompiled & " " & quoted form of POSIX path of pathTempCode
						end if
						
						-- END OF: ONE handlerName
					end if
					
				end if
			end repeat
		end if
	end repeat
	
	
	tell application "Finder"
		if exists pathApp then
			set appExists to true
		else
			set appExists to false
			-- if it does not EXIST, need to say "changes made" so that it gets compiled:
			set appChangesMade to true
		end if
	end tell
	
	
	
	if appChangesMade then
		-- prepend code with documentation
		set docCode to "-- main script"
		set docCode to docCode & LF & "-- Erik Shagdar"
		set docCode to docCode & LF
		set docCode to docCode & LF & "-- Generated: " & (do shell script "date '+%Y-%m-%d %T'")
		set docCode to docCode & LF & "-- Run " & quoted form of thisFileName & " after making changes in any .applescript file and after each git pull. That script will determine which functions need to be recompiled, as well as whether this app needs to be recompiled."
		set docCode to docCode & LF
		
		set tempCode to docCode & LF & LF & LF & tempCode
		
		
		
		try
			close access fileRef
		end try
		set fileRef to (open for access file pathTempCode with write permission)
		set eof of fileRef to 0 --> empty file contents if needed
		write tempCode to fileRef
		close access fileRef
		
		
		do shell script "osacompile -o " & quoted form of POSIX path of pathMain & " " & quoted form of POSIX path of pathTempCode
		do shell script "pwd"
		do shell script "sh " & quoted form of (POSIX path of (pathRoot & "vendor.sh"))
		if result does not contain "SUCCESS" then return "Error: unable to run vendor.sh"
		
		
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
				
				-- If on macOS Ventura 13.0 or newer, do NOT bother trying to open System Preferences. 
				-- Just launch "Settings.app" instead.
				set sysinfo to system info
				set _versionString to system version of sysinfo
				considering numeric strings
					set noMoreSysPrefs to _versionString ³ "13"
				end considering
				
				if noMoreSysPrefs then
					do shell script "open x-apple.systempreferences:com.apple.preference.security"
					set newPrefsAppName to "System Settings"
					tell application newPrefsAppName to activate
					display dialog "You might need to toggle Accessibility (and other settings?) off, then back on for " & appName & ", which might instead have the name 'applet'" buttons "OK" default button "OK"
				else
					set oldPrefsAppName to "System Preferences"
					tell application oldPrefsAppName to activate
					do shell script "open " & quoted form of securityPrefPanePosix
					delay 1
					tell application "System Events"
						tell process "System Preferences"
							click radio button "Privacy" of tab group 1 of window 1
							
							-- get fmGuiLib checkbox
							set fmGuiLibRow to (first row of table 1 of scroll area 1 of group 1 of tab group 1 of window 1 whose value of static text 1 of UI element 1 contains "fmGuiLib")
							set fmGuiLibCheckbox to checkbox 1 of UI element 1 of fmGuiLibRow
							select fmGuiLibRow
							
							-- unlock if needed
							set canMakeChanges to enabled of fmGuiLibCheckbox
							if canMakeChanges is false then
								click button 1 of window 1
								display dialog "You must deselect, then reselect the " & appName & " checkbox" buttons "OK" default button "OK"
								return true
							end if
							
							
							-- uncheck, then recheck to re-allow control of fmGuiLib
							click fmGuiLibCheckbox
							delay 0.5
							click fmGuiLibCheckbox
							delay 0.5
							set visible to false
						end tell
					end tell
				end if
				
				tell me to activate
				display dialog appName & " is ready" buttons "OK" default button "OK"
			end if
			return true
		else
			
			tell application "System Settings" to activate
			do shell script "open " & quoted form of securityPrefPanePosix
			
			return "you must re-allow assistive devices to '" & appName & "'."
			
		end if
		
		
	end if -- should build APP.
	
	
	-- remove the temp file
	tell application "Finder"
		if exists pathTempCode then delete file pathTempCode
	end tell
	
	return "finished fmGuiLib and Library"
	
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
