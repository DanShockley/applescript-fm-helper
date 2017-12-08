-- getTextBetween({sourceTEXT:"", beforeText:"", afterText:"", textItemNum:"", includeMarkers:""})
-- Daniel A. Shockley, http://www.danshockley.com
-- gets the text between specified occurrence of beforeText and afterText in sourceText. The default textItemNum should be 2


(*
HISTORY:
	1.7 - 2017-12-08 ( dshockley ): added option to behaveAsExpectedByIgnoringAdditionalBeforeTextOccurrences (so that, for example, {"abcdabcdef","a","f"} returns "bcdabcde" instead of "bcd"). 
	1.6 - option to INCLUDE the before and after strings. Default is FALSE. Must use record parameter to use this feature. 
	1.5 - use 'class of prefs as string' to test, since FileMaker wrecks the term record
	1.1 - 
	1.0 - created
	

USAGE:
	getTextBetween({sourceTEXT, beforeTEXT, afterTEXT})
	getTextBetween({sourceText:sourceTEXT, beforeText:beforeTEXT, afterText:afterTEXT})
*)


on run
	set AppleScript's text item delimiters to {""}
	
	getTextBetween({sourceTEXT:"abcdabcdef", beforeText:"a", afterText:"f", behaveAsExpectedByIgnoringAdditionalBeforeTextOccurrences:true})
end run

--------------------
-- START OF CODE
--------------------

on getTextBetween(prefs)
	-- version 1.7
	
	
	set debugMode to true
	
	
	
	set defaultPrefs to {sourceTEXT:null, beforeText:null, afterText:null, textItemNum:2, includeMarkers:false, behaveAsExpectedByIgnoringAdditionalBeforeTextOccurrences:false}
	
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
		if behaveAsExpectedByIgnoringAdditionalBeforeTextOccurrences of prefs then
			set prefixRemoved to text items textItemNum thru -1 of sourceTEXT
			set prefixRemoved to prefixRemoved as string
		else
			set the prefixRemoved to text item textItemNum of sourceTEXT
		end if
		set AppleScript's text item delimiters to afterText
		set the finalResult to text item 1 of prefixRemoved
		set AppleScript's text item delimiters to oldDelims
		
		if includeMarkers then set finalResult to beforeText & finalResult & afterText
		
	on error errMsg number errNum
		set AppleScript's text item delimiters to oldDelims
		if debugMode then error errMsg number errNum
		-- 	tell me to log "Error in getTextBetween() : " & errMsg
		set the finalResult to "" -- return nothing if the surrounding text is not found
	end try
	
	
	return finalResult
	
end getTextBetween

--------------------
-- END OF CODE
--------------------
