-- fmGUI_ManageSecurity_GoToTab_ExtendedPrivs({})
-- Erik Shagdar
-- Go to the "Extended Privilege" tab of manage security


(*
HISTORY:
	1.0 - 2017-10-25 ( eshagdar ): created


REQUIRES:
	fmGUI_ManageSecurity_GotoTab
*)


on run
	fmGUI_ManageSecurity_GoToTab_ExtendedPrivs({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab_ExtendedPrivs(prefs)
	-- version 1.2.1
	
	try
		return fmGUI_ManageSecurity_GotoTab({tabName:"Extended Privileges"} & prefs)
	on error errMsg number errNum
		error "fmGUI_ManageSecurity_GoToTab_PrivSets - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_ExtendedPrivs

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_GotoTab(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GotoTab(prefs)
end fmGUI_ManageSecurity_GotoTab
