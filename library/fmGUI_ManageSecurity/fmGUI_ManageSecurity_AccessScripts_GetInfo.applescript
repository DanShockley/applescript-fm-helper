-- fmGUI_ManageSecurity_AccessScripts_GetInfo({})
-- Erik Shagdar
-- get the value list access for the currently opened value list privileges


(*
HISTORY:
	1.1 - 2017-09-07 ( eshagdar ): return scriptAccess
	1.0 - 2017-07-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_AccessScripts_GetInfo({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
	-- version 1.1
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Script Privileges"})
		
		
		-- get lists of the name and privilege
		tell application "System Events"
			tell application process "FileMaker Pro"
				set allowCreate to value of checkbox 1 of window 1
				set nameList to name of static text 1 of every row of table 1 of scroll area 1 of window 1
				set privList to name of static text 3 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- now make a list of records
		set scriptPrivList to {}
		repeat with i from 1 to count of nameList
			copy {scriptName:item i of nameList, scriptPriv:item i of privList} to end of scriptPrivList
		end repeat
		
		set scriptAccess to {allowCreate:allowCreate, scriptPrivList:scriptPrivList}
		
		
		return scriptAccess
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessScripts_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessScripts_GetInfo

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
