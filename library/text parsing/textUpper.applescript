-- textUpper({str:""})
-- Erik Shagdar
-- takes some string and returns the capitalized string


(*
HISTORY:
	1.1 - 2017-11-03 ( eshagdar ): generalized upperFirstLetter handler to the whole string.
	1.0 - 2017-08-22 ( eshagdar ): created
*)


on run
	textUpper({str:"hello"})
end run


--------------------
-- START OF CODE
--------------------

on textUpper(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
			
		return (do shell script ("echo " & str of prefs & " | tr a-z A-Z;"))
	on error errMsg number errNum
		error "unable to textUpper - " & errMsg number errNum
	end try
end textUpper

--------------------
-- END OF CODE
--------------------
