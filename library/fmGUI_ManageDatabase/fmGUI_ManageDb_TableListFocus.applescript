-- fmGUI_ManageDb_TableListFocus({})
-- Focus in the list of tables in the "Tables" tab of Manage Database


(*
HISTORY:
	1.2 - 2020-05-20 ( dshockley ): Actually go to Tables, not Fields. 
	1.1 - [unknown changes]
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Fields
*)


on run
	fmGUI_ManageDb_TableListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TableListFocus(prefs)
	-- version 1.2
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set focused of (table 1 of scroll area 1 of tab group 1 of window 1) to true
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't focus on Table list - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TableListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Tables(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Tables(prefs)
end fmGUI_ManageDb_GoToTab_Tables
