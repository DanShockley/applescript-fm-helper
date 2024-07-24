-- upperFirstLetter({str:""})
-- Erik Shagdar
-- takes some string and returns the string with the first letter capitalized


(*
HISTORY:
	1.1 - 2017-11-03 ( eshagdar ): pass first letter to textUpper handler to capitalize. wrap with a try block.
	1.0 - 2017-08-22 ( eshagdar ): created
	

REQUIRES:
	textUpper
*)


on run
	upperFirstLetter({str:"hello"})
end run


--------------------
-- START OF CODE
--------------------

on upperFirstLetter(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
	
			
		set firstLetter to text 1 of str of prefs
		set remainingString to text 2 thru -1 of str of prefs
		
		return textUpper({str:firstLetter}) & remainingString
	on error errMsg number errNum
		error "unable to upperFirstLetter - " & errMsg number errNum
	end try
end upperFirstLetter

--------------------
-- END OF CODE
--------------------

on textUpper()
	tell application "fmGuiLib" to textUpper(prefs)
end textUpper