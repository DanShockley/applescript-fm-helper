-- fmGUI_ManageLayouts_LayoutListFocus(prefs)
-- Dan Shockley
-- open Manage Layouts


(*
HISTORY:
	1.2 - 2017-11-20 ( eshagdar ): make sure we're talking to the correct window - there may be several windows 'in front of' the manage layouts window.
	1.1 - 201x-xx-xx ( dshockley ): 
	1.0 - 201x-xx-xx ( dshockley ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_LayoutListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_LayoutListFocus(prefs)
	-- version 1.2
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		set layoutWindowName to "Manage Layouts"
		
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set contextWindow to first window whose name begins with layoutWindowName
				set focused of (outline 1 of scroll area 1 of contextWindow) to true
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_LayoutListFocus - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_LayoutListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageLayouts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open
