-- fmGUI_CustomMenus_Open({tabName:""})
-- Dan Shockley
-- Open Manage Custom Menus window and go to the specified tab


(*
HISTORY:
	1.1.1 - 2017-12-18 ( eshagdar ): narrowed scope.
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CustomMenus_Open
*)


on run
	fmGUI_CustomMenus_GotoTab({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_GotoTab(prefs)
	-- version 1.1.1
	
	try
		set defaultPrefs to {tabName:"Custom Menu Sets"}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		fmGUI_CustomMenus_Open({})
		
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				click (first radio button of tab group 1 of window 1 whose name is tabName of prefs)
			end tell
		end tell
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_GotoTab - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_GotoTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CustomMenus_Open(prefs)
	tell application "fmGuiLib" to fmGUI_CustomMenus_Open(prefs)
end fmGUI_CustomMenus_Open
