-- fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables({})
-- Erik Shagdar
-- gather all the info about the currently opened privSet


(*
HISTORY:
	1.2.1 - 2018-01-25 ( eshagdar ): get list of tables via handler
	1.2 - 2017-11-06 ( eshagdar ): this handler is only for looping. Getting info for one table is a sub-handler. loop by selecting the table name, not row number.
	1.1 - 2017-09-06 ( eshagdar ): return a null value for calc if there isn't one. get access values from button value, not row ( rows render ellipsis, whereas the buttons use 3 dots ).
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable
	fmGUI_ManageSecurity_AccessRecord_GetTablesNames
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables(prefs)
	-- version 1.2
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		
		-- get number of number of tables to loop over
		set tableNames to fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
		
		
		-- loop over tables
		set recordAccessList to {}
		repeat with oneTableName in tableNames
			set oneTableName to contents of oneTableName
			set oneTableRec to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:oneTableName})
			copy oneTableRec to end of recordAccessList
		end repeat
		
		
		return recordAccessList
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable

on fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetTablesNames

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
