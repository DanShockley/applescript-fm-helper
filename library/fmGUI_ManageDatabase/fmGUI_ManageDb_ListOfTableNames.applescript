-- fmGUI_ManageDb_ListOfTableNames({stayOpen:false})
-- Daniel Shockley
-- Return a list of FileMaker table names.


(*
HISTORY:
	1.2.1 - 2017-11-02 ( eshagdar ): narrowed scope of sysEvents. added stayOpen param.
	1.2 - ONLY return tables that are in FileMaker (no SQL shadow tables)
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab_Tables
	fmGUI_ManageDB_Save
*)


on run
	fmGUI_ManageDb_ListOfTableNames({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_ListOfTableNames(prefs)
	-- version 1.2.1
	
	try
		set defaultPrefs to {stayOpen:false}
		set prefs to prefs & defaultPrefs
		
		fmGUI_ManageDb_GoToTab_Tables({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set fmTableNames to value of static text 1 of (every row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 2 is "FileMaker")
			end tell
		end tell
		if not stayOpen of prefs then fmGUI_ManageDB_Save({})
		
		return fmTableNames
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_ListOfTableNames - " & errMsg number errNum
	end try
end fmGUI_ManageDb_ListOfTableNames

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Tables(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Tables(prefs)
end fmGUI_ManageDb_GoToTab_Tables

on fmGUI_ManageDB_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDB_Save(prefs)
end fmGUI_ManageDB_Save
