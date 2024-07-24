-- SFR_Unescape(someString)
-- Dan Shockley
-- Unescapes strings from a SixFriedRice.com-style dictionary string for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	replaceSimple
*)


on run
	SFR_Unescape("/</:foo/:/=bar/:/>")
end run

--------------------
-- START OF CODE
--------------------

on SFR_Unescape(someString)
	-- version 1.0
	
	set escapeCharList to {"=", ":", "<", ">"}
	
	repeat with oneChar in escapeCharList
		set someString to replaceSimple({someString, "/" & oneChar, oneChar})
		
	end repeat
	
	return someString
	
end SFR_Unescape


--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end encodeCharForURL
