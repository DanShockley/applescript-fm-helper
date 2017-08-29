-- fmGUI_ManageScripts_Open({})
-- Daniel A. Shockley, NYHTC
-- Open script workspace


(*
HISTORY:
	1.2 - 2017-08-07 ( eshagdar ): wait until window renders. tried using 'fmGUI_ClickMenuItem' handler, but sub call to 'fmGUI_MenuItemAvailable' handler kept hitting an error.
	1.1 - 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil
*)


on run
	fmGUI_ManageScripts_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_Open(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		set windowNamePrefix to "Script Workspace"
		if fmGUI_NameOfFrontmostWindow() contains windowNamePrefix then
			return true
		else
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click (first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Scripts")
				end tell
			end tell
			return windowWaitUntil({windowName:windowNamePrefix, windowNameTest:"starts with", whichWindow:"front"})
		end if
		
	on error errMsg number errNum
		error "Couldn't open Manage Scripts - " & errMsg
	end try
	
end fmGUI_ManageScripts_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil
