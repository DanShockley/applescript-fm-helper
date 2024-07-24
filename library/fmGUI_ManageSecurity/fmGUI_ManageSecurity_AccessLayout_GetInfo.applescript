-- fmGUI_ManageSecurity_AccessLayout_GetInfo({})
-- Erik Shagdar
-- get the layout access for the currently opened layout privileges


(*
HISTORY:
	1.0 - 2017-07-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessLayout_GetInfo({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Layout Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set layoutAccessList to name of static text 3 of every row of table 1 of scroll area 1 of window 1
				set recordAccessList to name of static text 4 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list layout priv
		set layoutPrivList to {}
		repeat with i from 1 to count of nameList
			copy {layoutName:item i of nameList, layoutAccess:item i of layoutAccessList, dataAccess:item i of recordAccessList} to end of layoutPrivList
		end repeat
		
		set layoutAccess to {allowCreate:allowCreate, layoutPrivList:layoutPrivList}
		
		
		return layoutAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessLayout_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessLayout_GetInfo

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
