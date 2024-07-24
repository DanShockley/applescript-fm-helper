-- quoteString(someString)
-- Dan Shockley
-- Converts a string into an escaped string (so if evaluated, would become the original string).


(*
HISTORY:
	1.1 - 2016-10-21 ( dshockley ): properly escapes backslashes.
	1.0 - 2013-xx-xx ( dshockley ): first created.


TODO:


REQUIRES:
	replaceSimple
*)


on run
	run script (quoteString("Bob\\Jeff is \"my\" name."))
end run

--------------------
-- START OF CODE
--------------------


on quoteString(someString)
	-- version 1.1, Daniel A. Shockley
	
	set charDQ to ASCII character 34 -- double-quote character
	set charBS to ASCII character 92 -- backslash character
	set escapedDQ to charBS & charDQ
	set escapedBS to charBS & charBS
	set someString to replaceSimple({someString, charBS, escapedBS})
	set someString to replaceSimple({someString, charDQ, escapedDQ})
	set someString to charDQ & someString & charDQ
	
	return someString
	
end quoteString


--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end replaceSimple
