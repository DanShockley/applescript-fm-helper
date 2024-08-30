-- fmGUI_ManageDataSources_Open(prefs)
-- Dan Shockley
-- Open Manage Data Sources


(*
HISTORY:
	1.2 - 2017-04-03 ( eshagdar ): get name of frontmost window by handler. narrow scope.
	1.1.1 - 2017-06-26 ( eshagdar ): moved frontmost to outer scope
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageDataSources_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Open(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not start with "Manage External Data Sources" then
			tell application "System Events"
				tell application process "FileMaker Pro"
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "External Data Source")
				end tell
			end tell
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't open Manage Data Sources - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow
