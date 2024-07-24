-- fmGUI_CustomMenus_MenuSet_Select({menuSetName:null})
-- Dan Shockley
-- select specified menu set name. result existence of menu set.


(*
HISTORY:
	1.1 - 2017-12-18 ( eshagdar ): moved to fmGuiLib. renamed 'fmGUI_CustomMenus_CustomMenuSet_Select' to 'fmGUI_CustomMenus_MenuSet_Select'. param is now a record.
	1.0 - 201x-xx-xx ( dshockley ): created


TODO:
	de-select previously selected menu set.


REQUIRES:
	fmGUI_CustomMenus_GotoTab_MenuSets
*)


on run
	fmGUI_CustomMenus_MenuSet_Select({menuSetName:"Custom Menus"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_MenuSet_Select(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {menuSetName:null}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		fmGUI_CustomMenus_GotoTab_MenuSets({})
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				try
					select (first row of table 1 of scroll area 1 of tab group 1 of window 1 whose value of static text 1 is menuSetName of prefs)
				on error
					-- we should de-select row if something else is selected
					return false
				end try
			end tell
		end tell
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_MenuSet_Select '" & customMenuSetName & "' - " & errMsg number errNum
	end try
end fmGUI_CustomMenus_MenuSet_Select

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CustomMenus_GotoTab_MenuSets(prefs)
	tell application "fmGuiLib" to fmGUI_CustomMenus_GotoTab_MenuSets(prefs)
end fmGUI_CustomMenus_GotoTab_MenuSets
