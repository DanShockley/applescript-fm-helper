-- textLower({str:""})
-- Erik Shagdar
-- takes some string and returns the lowercase string


(*
HISTORY:
	1.0 - 2017-11-03 ( eshagdar ): created
*)


on run
	textLower({str:"HeLLo"})
end run


--------------------
-- START OF CODE
--------------------

on textLower(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {str:""}
		set prefs to prefs & defaultPrefs
		
		return (do shell script ("echo " & str of prefs & " | tr A-Z a-z;"))
	on error errMsg number errNum
		error "unable to textLower - " & errMsg number errNum
	end try
end textLower

--------------------
-- END OF CODE
--------------------
