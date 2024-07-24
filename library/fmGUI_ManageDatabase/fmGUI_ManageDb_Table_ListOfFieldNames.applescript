-- fmGUI_ManageDb_Table_ListOfFieldNames(baseTableName)
-- Return the list of field names for the specified table name


(*
HISTORY:
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_FieldsPickTable
*)


on run
	fmGUI_ManageDb_Table_ListOfFieldNames("ZZ_GLOBALS")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Table_ListOfFieldNames(baseTableName)
	-- version 1.1
	
	try
		fmGUI_ManageDb_FieldsPickTable(baseTableName)
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				value of static text 1 of every row of table 1 of scroll area 1 of tab group 1 of window 1
				return result
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't get list of field names for table '" & baseTableName & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_Table_ListOfFieldNames

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_FieldsPickTable(baseTableName)
	tell application "fmGuiLib" to fmGUI_ManageDb_FieldsPickTable(baseTableName)
end fmGUI_ManageDb_FieldsPickTable
