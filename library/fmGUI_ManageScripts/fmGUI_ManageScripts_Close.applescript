-- fmGUI_ManageScripts_Close({})
-- Dan Shockley
-- Close script workspace


(*
HISTORY:
	1.3 - 2017-08-07 ( eshagdar ): close via menu ( instead of button ). wait until window closes. error if there are unsaved scripts.
	1.2 - 2017-06-05 ( eshagdar ): updated for FM15
	1.1 - 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil
*)


on run
	fmGUI_ManageScripts_Close({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_Close(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		set windowNamePrefix to "Script Workspace"
		if fmGUI_NameOfFrontmostWindow() contains windowNamePrefix then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click menu item "Close Workspace" of menu "View" of menu bar 1
				end tell
			end tell
			
			if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro Advanced" then error "There is at least one unsaved script." number -1024
			return windowWaitUntil({windowName:windowNamePrefix, windowNameTest:"does not start with", whichWindow:"front"})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't open Manage Scripts - " & errMsg
	end try
	
end fmGUI_ManageScripts_Close

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
