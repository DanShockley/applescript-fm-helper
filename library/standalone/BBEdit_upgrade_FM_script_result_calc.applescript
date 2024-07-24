-- BBEdit_upgrade_FM_script_result_calc({})
-- Dan Shockley
-- BBEdit - upgrade upgrade FM script result calc

(* 
HISTORY: 

	2017-10-16 ( dshockley ): first created. 

*)

on run
	
	tell application "BBEdit"
		activate
		
		
		tell window 1
			
			set newCalc to my upgradeFileMakerScriptResult(text of it)
			
			set text of it to newCalc
			
		end tell
		
	end tell
	
end run





on upgradeFileMakerScriptResult(someResultCalc)
	
	
	(*
CONVERT:
      # ( "Result" ; "Cancel" ) 
&     # ( "ResultDescription" ; "Not all of the necessary parameters were passed.  Please contact your database administrator and give them the following information:" & "¦File: " & Get ( FileName ) & "¦Script: " & Get ( ScriptName ) ) 
&     # ( "FileName" ; Get ( FileName ) ) 
&     # ( "ScriptName" ; Get ( ScriptName ) ) 
&     # ( "ExecutionTimestamp" ; Get ( CurrentTimestamp ) )
&     # ( "ExecutionAccount" ; Get ( AccountName ) )

INTO:
ResultOfScript ( 
	  "Cancel" 
	; "Not all of the necessary parameters were passed.  Please contact your database administrator and give them the following information:" & "¦File: " & Get ( FileName ) & "¦Script: " & Get ( ScriptName ) 
	) 

	*)
	
	set returnWithIndent to (ASCII character 13) & (ASCII character 9)
	
	set mainResult to getTextAfter(someResultCalc, "\"Result\"")
	set mainResult to getTextAfter(mainResult, ";")
	set mainResult to getTextBetween({mainResult, "\"", "\""})
	
	set resultDescAndRest to getTextAfter(someResultCalc, "\"ResultDescription\"")
	set resultDescAndRest to getTextAfter(resultDescAndRest, ";")
	
	set newCalc to "ResultOfScript ( " & returnWithIndent & "  \"" & mainResult & "\"" & returnWithIndent & "; " & resultDescAndRest
	
	return result
	
	
end upgradeFileMakerScriptResult







on getTextBetween(prefs)
	-- version 1.6
	
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



