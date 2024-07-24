-- versionCompare(someString)
-- Erik Shagdar
-- Compares 2 version strings

(*
Returns:
	 1 - v1 is greater
	 0 - same version
	-1 - v2 is greater
	 ? - unable to compare versions


HISTORY:
	1.0 - 2016-05-02 ( eshagdar ): first created

*)

on run
	set v1 to "2018-12-03"
	set v2 to "2018-12-03"
	versionCompare({v1:v1, v2:v2, delim:"-"})
end run

--------------------
-- START OF CODE
--------------------

on versionCompare(prefs)
	
	set defaultPrefs to {v1:null, v2:null, delim:"."}
	set prefs to prefs & defaultPrefs
	
	set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, delim of prefs}
	set {v1_list, v2_list} to {every text item of v1 of prefs, every text item of v2 of prefs}
	set AppleScript's text item delimiters to od
	
	set {v1_count, v2_count} to {count of v1_list, count of v2_list}
	if v1_count is greater than v2_count then
		set maxCount to v1_count
	else
		set maxCount to v2_count
	end if
	
	set versionResult to ""
	repeat with i from 1 to maxCount
		if versionResult is not "" then exit repeat
		if i ² v1_count then
			set v1_part to item i of v1_list
		else
			set v1_part to 0
		end if
		if i ² v2_count then
			set v2_part to item i of v2_list
		else
			set v2_part to 0
		end if
		
		
		try
			--log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)
			if (v1_part as number) is greater than (v2_part as number) then
				set versionResult to 1
			else if (v1_part as number) is less than (v2_part as number) then
				set versionResult to -1
			else
				-- the two versions are the same, so continue
			end if
		on error
			set versionResult to "?"
		end try
		
		
	end repeat
	
	if versionResult is "" then set versionResult to 0
	
	return versionResult
	
end versionCompare

--------------------
-- END OF CODE
--------------------
