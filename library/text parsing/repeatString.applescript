-- repeatString(someString)
-- Dan Shockley
-- Repeats a string the specified number of times, optionally with a separator. 


(*
HISTORY:
	1.0 - 2016-10-21 ( dshockley ): first created.


TODO:


REQUIRES:
	unParseChars
*)


on run
	repeatString({someString:"Hello", repeatCount:4, separator:return})
end run

--------------------
-- START OF CODE
--------------------

on repeatString(prefs)
	-- version 1.0, Daniel A. Shockley
	
	set defaultPrefs to {someString:null, repeatCount:1, separator:""}
	set prefs to prefs & defaultPrefs
	
	set outputList to {}
	repeat with i from 1 to repeatCount of prefs
		copy someString of prefs to end of outputList
	end repeat
	
	
	return unParseChars(outputList, separator of prefs)
	
end repeatString


--------------------
-- END OF CODE
--------------------

on unParseChars(thisList, newDelim)
	tell application "fmGuiLib" to unParseChars(thisList, newDelim)
end unParseChars
