-- fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({})
-- Erik Shagdar
-- gather the info about one table


(*
HISTORY:
	1.1 - 2017-09-06 ( eshagdar ): return a null value for calc if there isn't one. get access values from button value, not row ( rows render ellipsis, whereas the buttons use 3 dots ).
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetCalc
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:"E_DEVELOPER"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
	-- version 1.1
	
	set defaultPrefs to {tableName:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is equal to tableName of prefs)
				set oneTableRec to {baseTable:tableName of prefs Â
					, viewAccess:value of pop up button "View" of window 1 Â
					, editAccess:value of pop up button "Edit" of window 1 Â
					, createAccess:value of pop up button "Create" of window 1 Â
					, deleteAccess:value of pop up button "Delete" of window 1 Â
					, fieldAccess:value of pop up button "Field Access" of window 1}
			end tell
		end tell
		
		
		
		-- get the details of limited calcs
		if viewAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {viewCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"view"})}
		if editAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {editCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"edit"})}
		if createAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {createCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"create"})}
		if deleteAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {deleteCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"delete"})}
		if fieldAccess of oneTableRec contains "limited" then set oneTableRec to oneTableRec & {fieldCalc:fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"field"})}
		
		
		-- ensure the key exists ( even if it's null )
		set oneTableRec to oneTableRec & {viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}
		
		return oneTableRec
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetCalc

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
