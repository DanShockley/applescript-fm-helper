-- fmGUI_CustomMenus_GotoTab_Menus({})
-- Erik Shagdar
-- Open Manage Custom Menus window and go to the custom menus tab


(*
HISTORY:
	1.0 - 2017-12-18 ( eshagdar ): created


REQUIRES:
	fmGUI_CustomMenus_GotoTab
*)


on run
	fmGUI_CustomMenus_GotoTab_Menus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_GotoTab_Menus(prefs)
	-- version 1.0
	
	try
		return fmGUI_CustomMenus_GotoTab({tabName:"Custom Menus"})
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_GotoTab_Menus - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_GotoTab_Menus

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomMenus_GotoTab(prefs)
	tell application "fmGuiLib" to fmGUI_CustomMenus_GotoTab(prefs)
end fmGUI_CustomMenus_GotoTab
