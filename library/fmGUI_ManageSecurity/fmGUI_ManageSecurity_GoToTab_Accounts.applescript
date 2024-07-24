-- fmGUI_ManageSecurity_GoToTab_Accounts({})
-- Dan Shockley
-- Go to the "Accounts" tab of manage security


(*
HISTORY:
	1.1 - 2017-06-28 ( eshagdar ): pass in prefs
	1.0 - created


REQUIRES:
	fmGUI_ManageSecurity_GotoTab
*)


on run
	fmGUI_ManageSecurity_GoToTab_Accounts({fullAccessAccountName:"admin", fullAccessPassword:""})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	-- version 1.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Accounts"} & prefs)
	on error errMsg number errNum
		error "Couldn't go to Accounts tab - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_Accounts

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_GotoTab(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GotoTab(prefs)
end fmGUI_ManageSecurity_GotoTab
