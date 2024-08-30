-- fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
-- Erik Shagdar
-- get a list of table names for the currently opened custom record privileges


(*
HISTORY:
	1.0 - 2018-01-25 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				return value of static text 1 of rows of table 1 of scroll area 1 of window 1
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetTablesNames - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetTablesNames

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS
