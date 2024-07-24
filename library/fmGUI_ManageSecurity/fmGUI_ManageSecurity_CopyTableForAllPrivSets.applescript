-- fmGUI_ManageSecurity_CopyTableForAllPrivSets({sourceTable:null, effectTable:null})
-- Erik Shagdar
-- copy setting for from one table to another in each privSet.


(*
HISTORY:
	1.0.1 - 2017-12-21 ( eshagdar ): allow override for field-acccess privileges.
	1.0 - 2017-11-07 ( eshagdar ):created


REQUIRES:
	fmGUI_ManageSecurity_AccessRecord_CopyTable
	fmGUI_ManageSecurity_PrivSet_GetInfo
	fmGUI_ManageSecurity_PrivSet_Names
	fmGUI_ManageSecurity_PrivSet_OpenForEdit
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open
	fmGUI_ManageSecurity_Save
	fmGUI_ObjectClick_OkButton
*)


on run
	fmGUI_ManageSecurity_CopyTableForAllPrivSets({sourceTable:"SomeSourceTableName", effectTable:"NameOfTableToUpdate", fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_CopyTableForAllPrivSets(prefs)
	-- version 1.0.1
	
	try
		set defaultPrefs to {sourceTable:null, effectTable:null, fullAccessAccountName:null, fullAccessPassword:null}
		set prefs to prefs & defaultPrefs
		set credentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
		set customPrivileges to "Custom privileges"
		
		
		-- iterate through privSets, updating the table in each
		set listPrivSetNames to fmGUI_ManageSecurity_PrivSet_Names(credentials)
		repeat with onePrivSetName in listPrivSetNames
			set onePrivSetName to contents of onePrivSetName
			if onePrivSetName begins with "[" then
				-- this is a stardard privSet, so skip it
			else
				--update 
				fmGUI_ManageSecurity_PrivSet_OpenForEdit({privSetName:onePrivSetName} & credentials)
				if accessRecord of fmGUI_ManageSecurity_PrivSet_GetInfo({getAccessInfo:false}) contains customPrivileges then
					-- update custom privileges
					fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:customPrivileges})
					fmGUI_ManageSecurity_AccessRecord_CopyTable({sourceTable:sourceTable of prefs, effectTable:effectTable of prefs, allowFieldAccessOverride:true})
					fmGUI_ObjectClick_OkButton({})
				end if
				fmGUI_ObjectClick_OkButton({})
			end if
		end repeat
		
		
		return fmGUI_ManageSecurity_Save(credentials)
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_CopyTableForAllPrivSets - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_CopyTableForAllPrivSets

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_CopyTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_CopyTable(prefs)
end fmGUI_ManageSecurity_AccessRecord_CopyTable

on fmGUI_ManageSecurity_PrivSet_GetInfo(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_GetInfo(prefs)
end fmGUI_ManageSecurity_PrivSet_GetInfo

on fmGUI_ManageSecurity_PrivSet_Names(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Names(prefs)
end fmGUI_ManageSecurity_PrivSet_Names

on fmGUI_ManageSecurity_PrivSet_OpenForEdit(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_OpenForEdit(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenForEdit

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open

on fmGUI_ManageSecurity_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_Save(prefs)
end fmGUI_ManageSecurity_Save

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton
