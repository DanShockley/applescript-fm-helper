-- fmGUI_ManageSecurity_AccountNames(fullAccessAccountName:null, fullAccessPassword:null)
-- Dan Shockley
-- Open Manage Security window


(*
HISTORY:
	1.1 - 2017-06-14 ( eshagdar ): narrowed scope.
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageSecurity_AccountNames({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccountNames(prefs)
	-- version 1.1
	
	set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set accountNames to name of static text 1 of every row of (table 1 of scroll area 1 of tab group 1 of window 1)
			end tell
		end tell
		
		return accountNames
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_AccountNames - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_AccountNames

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
end fmGUI_ManageSecurity_GoToTab_Accounts