-- fmGUI_ManageScripts_Open({})
-- Dan Shockley
-- Open script workspace


(*
HISTORY
	2020-03-04 ( dshockley ): Fixed typo in comments.
	1.2 - 2017-08-07 ( eshagdar ): wait until window renders.
	1.1 - 
	1.0 - 201x-xx-xx ( dshockley ): first created


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
	-- version 2020-03-04-1537
	
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
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
