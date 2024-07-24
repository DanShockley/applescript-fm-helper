-- fmGUI_ManageLayouts_Open({})
-- Erik Shagdar
-- open Manage Layouts


(*
HISTORY:
	1.0 - 2017-11-06 ( eshagdar ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Open(prefs)
	-- version 1.0
	
	try
		return fmGUI_Menu_OpenLayouts({})
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Open - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_Menu_OpenLayouts(prefs)
	tell application "fmGuiLib" to fmGUI_Menu_OpenLayouts(prefs)
end fmGUI_Menu_OpenLayouts
