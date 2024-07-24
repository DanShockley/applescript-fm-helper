-- fmGUI_ManageSecurity_AccessRecord_CopyTable({sourceTable:null, effectTable:null, allowFieldAccessOverride: false})
-- Erik Shagdar
-- copy record-access priviledges from from one table to another


(*
HISTORY:
	1.1 - 2017-12-21 ( eshagdar ): allow for overriding the field privileges when copying a table
	1.0 - 2017-11-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable
*)


on run
	fmGUI_ManageSecurity_AccessRecord_CopyTable({sourceTable:"Connector", effectTable:"Selector"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_CopyTable(prefs)
	-- version 1.1
	
	set defaultPrefs to {sourceTable:null, effectTable:null, allowFieldAccessOverride:false}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		set currentAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable({tableName:sourceTable of prefs})
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:effectTable of prefs, allowFieldAccessOverride:allowFieldAccessOverride of prefs} & currentAccess)
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_CopyTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_CopyTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetInfo_OneTable

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable
