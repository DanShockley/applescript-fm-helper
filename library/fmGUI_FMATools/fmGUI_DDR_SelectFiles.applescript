-- fmGUI_DDR_SelectFiles({dbNameList:{}})
-- Erik Shagar
-- Ensure files are selected when generating a DDR. All databases are selected if a list is not specified.

(*
HISTORY:
	1.1 - 2018-04-16 ( eshagdar ): allow to specify list of databases to select
	1.0 - 2017-08-11 ( eshagdar ): created
	
REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_DDR_SelectFiles({dbNameList:{"a00_TIMESSQUARE"}})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DDR_SelectFiles(prefs)
	-- version 1.1, Erik Shagar
	
	try
		set defaultPrefs to {dbNameList:{}}
		set prefs to prefs & defaultPrefs
		set dbNameList to dbNameList of prefs
		set fileExt to ".fmp12"
		
		
		-- ensure file extension is in the list of dbNames
		set dbNameListWithExtensions to {}
		repeat with oneDbName in dbNameList
			set oneDbName to contents of oneDbName
			if oneDbName does not end with fileExt then set oneDbName to oneDbName & fileExt
			copy oneDbName to end of dbNameListWithExtensions
		end repeat
		set dbNameList to dbNameListWithExtensions
		
		
		-- get list of available files
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro"
				set filesTable to table "Available files:" of scroll area 1 of window 1
				set listAvailableFiles to value of static text 1 of every row of filesTable
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of dbNameList) is 0 then set dbNameList to listAvailableFiles
		
		repeat with iter from 1 to count of listAvailableFiles
			tell application "System Events"
				tell application process "FileMaker Pro"
					set oneFileIncludeCheckboxRef to checkbox 1 of row iter of filesTable
					set oneFileIncludeCheckboxValue to value of oneFileIncludeCheckboxRef
				end tell
			end tell
			set oneFileName to item iter of listAvailableFiles
			if (oneFileName is in dbNameList and oneFileIncludeCheckboxValue is 0) or Â
				(oneFileName is not in dbNameList and oneFileIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell application process "FileMaker Pro"
						click oneFileIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectFiles - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectFiles

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
