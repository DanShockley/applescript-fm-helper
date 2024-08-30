-- fmGUI_ManageDb_ListOfXDBCTableNames({})
-- Daniel Shockley
-- Return a list of XDBC table names.


(*
HISTORY:
	1.2.2 - 2019-03-12 ( eshagdar ): no need to bring frontmost again. narrowed scope of system events.
	1.2.1 - 2018-04-30 ( eshagdar ): updated error message.
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Tables
	fmGUI_ManageDB_Save
*)


on run
	fmGUI_ManageDb_ListOfXDBCTableNames({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_ListOfXDBCTableNames(prefs)
	-- version 1.2.2
	
	try
		fmGUI_ManageDb_GoToTab_Tables({})
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set xDBCTableNames to value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is not "FileMaker")
			end tell
		end tell
		
		fmGUI_ManageDB_Save({})
		
		return xDBCTableNames
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_ListOfXDBCTableNames - " & errMsg number errNum
	end try
end fmGUI_ManageDb_ListOfXDBCTableNames

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Tables(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Tables(prefs)
end fmGUI_ManageDb_GoToTab_Tables

on fmGUI_ManageDB_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDB_Save(prefs)
end fmGUI_ManageDB_Save
