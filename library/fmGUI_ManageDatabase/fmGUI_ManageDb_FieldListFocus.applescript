-- fmGUI_ManageDb_FieldListFocus({})
-- Erik Shagdar
-- Focus in the list of fields in the "Fields" tab of Manage Database


(*
HISTORY:
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_GoToTab_Fields
*)


on run
	fmGUI_ManageDb_FieldListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_FieldListFocus(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageDb_GoToTab_Fields({})
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro"
				set focused of (table 1 of scroll area 1 of tab group 1 of window 1) to true
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't focus on Field list - " & errMsg number errNum
	end try
end fmGUI_ManageDb_FieldListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_GoToTab_Fields(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Fields(prefs)
end fmGUI_ManageDb_GoToTab_Fields
