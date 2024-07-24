-- removeAllWhitespace({str:null})
-- Erik Shagdar
-- Removes all whitespace ( returns, tabs, spaces ) from the provided string


(*
HISTORY:
	1.0 - 2018-01-26 ( eshagdar ): created.
*)


on run
	removeAllWhitespace({str:" hello		how
	are you		?"})
end run


--------------------
-- START OF CODE
--------------------

on removeAllWhitespace(prefs)
	-- version 1.0
	
	set defaultPrefs to {str:null}
	set prefs to prefs & defaultPrefs
	set str to str of prefs
	
	try
		if str is null then return str
		
		set whiteSpaceAsciiNumbers to {13, 10, 32, 9} -- characters that count as whitespace.
		
		repeat with oneNum in whiteSpaceAsciiNumbers
			set oneNum to contents of oneNum
			set str to replaceSimple({sourceTEXT:str, oldChars:ASCII character oneNum, newChars:""})
		end repeat
		
		return str
	on error errMsg number errNum
		error "unable to removeAllWhitespace - " & errMsg number errNum
	end try
end removeAllWhitespace

--------------------
-- END OF CODE
--------------------

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end replaceSimple
