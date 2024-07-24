-- SFR_Escape(someString)
-- Dan Shockley
-- Escapes strings for use in a SixFriedRice.com-style dictionary string for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	replaceSimple
*)


on run
	SFR_Escape("<:foo:=bar:>")
end run

--------------------
-- START OF CODE
--------------------

on SFR_Escape(someString)
	-- version 1.0
	
	set escapeCharList to {"=", ":", "<", ">"}
	
	repeat with oneChar in escapeCharList
		set someString to replaceSimple({someString, oneChar, "/" & oneChar})
		
	end repeat
	
	return someString
	
end SFR_Escape


--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end replaceSimple
