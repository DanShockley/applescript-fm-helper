-- fmGUI_ManageSecurity_AccessValueList_GetInfo({})
-- Erik Shagdar
-- get the value list access for the currently opened value list privileges


(*
HISTORY:
	1.0 - 2017-07-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_AccessValueList_GetInfo({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Value List Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set privList to name of static text 2 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list of records
		set vlPrivList to {}
		repeat with i from 1 to count of nameList
			copy {vlName:item i of nameList, vlPriv:item i of privList} to end of vlPrivList
		end repeat
		
		set vlAccess to {allowCreate:allowCreate, vlPrivList:vlPrivList}
		
		
		return vlAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessValueList_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessValueList_GetInfo

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
