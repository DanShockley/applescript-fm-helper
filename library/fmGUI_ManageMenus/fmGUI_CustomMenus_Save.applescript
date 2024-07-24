-- fmGUI_CustomMenus_Save({})
-- Dan Shockley
-- Open Manage Custom Menus window


(*
HISTORY:
	1.2 - 2017-12-18 ( eshagdar ): copied from manage custom functions
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ObjectClick_OkButton
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil_FrontNotIS
*)


on run
	fmGUI_CustomMenus_Save({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_Save(prefs)
	-- version 1.2
	
	
	try
		set windowName to "Manage Custom Menus"
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() does not start with windowName then error windowName & " was not frontmost window, so cannot save it." number 1024
		
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil_FrontNotIS({windowName:windowName})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Save - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil_FrontNotIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS
