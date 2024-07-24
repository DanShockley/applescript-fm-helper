-- fmGUI_ManageDB_TO_ListAdd({TOList:null})
-- Erik Shagdar
-- given a list of table occurences, add them to the current DB.


(*
HISTORY:
	1.2 - 2016-08-02 ( eshagdar ): the TOList might be a comma-delim string, so convert it to a list
	1.1 - 2015-11-19 ( eshagdar ): renamed from 'addTOCsToBackupSystem'. Removed prompting for TOs, and instead receive it from main script. Save Manage DB at the end. Put the function in a try block.
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_TO_Add
	fmGUI_ManageDB_Save
	parseChars
	replaceSimple
*)


on run
	fmGUI_ManageDb_TO_Add({TOList:null})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDB_TO_ListAdd(prefs)
	-- version 1.1
	
	set defaultPrefs to {TOList:""}
	set prefs to prefs & defaultPrefs
	
	try
		set TOList to TOList of prefs
		set TOList to replaceSimple({TOList, CR, LF})
		set TOList to replaceSimple({TOList, ", ", LF}) -- might have passed in a comma-delim string instead of a list
		set TOList to parseChars({sourceTEXT:TOList, parseString:LF})
		
		if (count of TOList) is greater than 0 then
			
			-- loop over and get list of DBs that need to exist as data sources.
			repeat with oneTO in TOList
				set TORec to parseChars({sourceTEXT:oneTO, parseString:"||"})
				set oneDBName to item 1 of TORec
				set oneTableName to item 2 of TORec
				set TOParam to {dbName:oneDBName, baseTableName:oneTableName, TOName:oneDBName & "__" & oneTableName}
				fmGUI_ManageDb_TO_Add(TOParam)
			end repeat
			
			fmGUI_ManageDB_Save({})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageDB_TO_ListAdd - " & errMsg number errNum
	end try
end fmGUI_ManageDB_TO_ListAdd

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_TO_Add(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_TO_Add(prefs)
end fmGUI_ManageDb_TO_Add

on fmGUI_ManageDB_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDB_Save(prefs)
end fmGUI_ManageDB_Save

on parseChars(prefs)
	tell application "fmGuiLib" to parseChars(prefs)
end parseChars

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end replaceSimple
