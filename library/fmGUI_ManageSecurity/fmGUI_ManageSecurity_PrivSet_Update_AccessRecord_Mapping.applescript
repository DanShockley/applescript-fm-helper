-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping({tableList:{}, tableExcludeList:{}, viewMapping:{}, editMapping:{}, createMapping:{}, deleteMapping:{}})
-- Erik Shagdar
-- Update all tables ( or specified list of tables ) based on a mapping


(*
HISTORY:
	1.0 - 2018-01-25 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable
	fmGUI_ManageSecurity_AccessRecord_GetTablesNames
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable
	fmGUI_ManageSecurity_PrivSet_Update_DictAccessType
	fmGUI_NameOfFrontmostWindow
	listRemoveFromFirstList*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping({tableExcludeList:{"Selector", "Connector"}, viewMapping:{{original:"yes", new:"True"}, {original:"no", new:"False"}}})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping(prefs)
	-- version 1.0
	
	set defaultPrefs to {tableList:{}, tableExcludeList:{}, viewMapping:{}, editMapping:{}, createMapping:{}, deleteMapping:{{original:"yes", new:"True"}}}
	set prefs to prefs & defaultPrefs
	set tableList to tableList of prefs
	set tableExcludeList to tableExcludeList of prefs
	
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Custom Record Privileges" then error "wrong starting context" number -1024
		
		
		-- get button refs to edit each row
		tell application "System Events"
			tell application process "FileMaker Pro"
				set viewButton to pop up button "View" of window 1
				set editButton to pop up button "Edit" of window 1
				set createButton to pop up button "Create" of window 1
				set deleteButton to pop up button "Delete" of window 1
			end tell
		end tell
		
		
		
		-- get list of table names to loop over
		if (count of tableList) is 0 then set tableList to fmGUI_ManageSecurity_AccessRecord_GetTablesNames({})
		if (count of tableExcludeList) is not 0 then set tableList to listRemoveFromFirstList({tableList, tableExcludeList})
		
		
		with timeout of (30 * minutes) seconds
			-- loop over each table, updating the access based on a mapping
			repeat with oneTableName in tableList
				set oneTableName to contents of oneTableName
				set currentAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:oneTableName})
				
				
				-- view access
				set viewRec to {viewAccess:null, viewCalc:null}
				repeat with oneMapping in viewMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set viewRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:viewAccess of currentAccess, currentTableCalc:viewCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"view"})
						exit repeat
					end try
				end repeat
				
				
				-- edit access
				set editRec to {editAccess:null, editCalc:null}
				repeat with oneMapping in editMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set editRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:editAccess of currentAccess, currentTableCalc:editCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"edit"})
						exit repeat
					end try
				end repeat
				
				
				-- create access
				set createRec to {createAccess:null, createCalc:null}
				repeat with oneMapping in createMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set createRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:createAccess of currentAccess, currentTableCalc:createCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"create"})
						exit repeat
					end try
				end repeat
				
				
				-- delete access
				set deleteRec to {deleteAccess:null, deleteCalc:null}
				repeat with oneMapping in deleteMapping of prefs
					set oneMapping to contents of oneMapping
					try
						set deleteRec to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:deleteAccess of currentAccess, currentTableCalc:deleteCalc of currentAccess, original:original of oneMapping, new:new of oneMapping, accessType:"delete"})
						exit repeat
					end try
				end repeat
				
				
				-- update the table
				set oneTableUpdateParams to {baseTable:oneTableName} & viewRec & editRec & createRec & deleteRec
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(oneTableUpdateParams)
			end repeat
		end timeout
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Mapping

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable

on fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetTablesNames(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetTablesNames

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable

on fmGUI_ManageSecurity_PrivSet_Update_DictAccessType(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_DictAccessType

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on listRemoveFromFirstList({mainList, listOfItemsToRemove})
	tell application "fmGuiLib" to listRemoveFromFirstList({mainList, listOfItemsToRemove})
end listRemoveFromFirstList
