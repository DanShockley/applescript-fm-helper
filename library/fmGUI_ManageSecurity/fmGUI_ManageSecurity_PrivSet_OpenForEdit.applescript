-- fmGUI_ManageSecurity_PrivSet_OpenForEdit(prefs)
-- Erik Shagdar
-- open the specified privSet


(*
HISTORY:
	1.0 - 2017-11-07 ( eshagdar ):created


REQUIRES:
	fmGUI_ManageSecurity_PrivSet_OpenSelected
	fmGUI_ManageSecurity_PrivSet_Select
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_PrivSet_OpenForEdit({privSetName:"[Full Access]", fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_OpenForEdit(prefs)
	-- version 1.0
	
	set defaultPrefs to {privSetName:null, fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_ManageSecurity_PrivSet_Select(prefs)
		fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		return windowWaitUntil({windowName:"Edit Privilege Set"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_OpenForEdit - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_OpenForEdit

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenSelected

on fmGUI_ManageSecurity_PrivSet_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Select(prefs)
end fmGUI_ManageSecurity_PrivSet_Select

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
