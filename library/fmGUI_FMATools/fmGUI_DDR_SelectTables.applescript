-- fmGUI_DDR_SelectTables({TableList:{}})
-- Erik Shagar
-- Ensure tables are selected when generating a DDR. All tables are selected if a list is not specified.

(*
HISTORY:
	1.0 - 2017-08-11 ( eshagdar ): created
	
REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_DDR_SelectTables({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DDR_SelectTables(prefs)
	-- version 1.1, Erik Shagar
	
	try
		set defaultPrefs to {TableList:{}}
		set prefs to prefs & defaultPrefs
		set TableList to TableList & defaultPrefs
		
		
		-- get list of available tables
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set tablesTable to table "Include fields from tables in selected file:" of scroll area 2 of window 1
				set listOfTableNamesToSelect to value of static text 1 of (every row of tablesTable whose value of checkbox 1 is not equal to 1)
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of TableList) is 0 then set TableList to listOfTableNamesToSelect
		
		repeat with iter from 1 to count of listAvailableFiles
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set oneTableIncludeCheckboxRef to checkbox 1 of row iter of filesTable
					set oneTableIncludeCheckboxValue to value of oneTableIncludeCheckboxRef
				end tell
			end tell
			set oneTableName to item iter of listOfTableNamesToSelect
			if (oneTableName is in TableList and oneTableIncludeCheckboxValue is 0) or Â
				(oneTableName is not in TableList and oneTableIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell process "FileMaker Pro Advanced"
						click oneTableIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectTables - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectTables

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
