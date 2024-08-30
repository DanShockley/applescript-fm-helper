-- fmGUI_ManageSecurity_PrivSet_Names({fullAccessAccountName:"admin", fullAccessPassword:""})
-- Erik Shagdar
-- get a list of all existings privSet names


(*
HISTORY:
	1.0 - 201x-xx-xx ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_GoToTab_PrivSets
*)


on run
	fmGUI_ManageSecurity_PrivSet_Names({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Names(prefs)
	-- version 1.0
	
	set defaultPrefs to {fullAccessAccountName:"admin", fullAccessPassword:""}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set privSetNameList to name of static text 1 of every row of (table 1 of scroll area 1 of tab group 1 of window 1)
			end tell
		end tell
		
		return privSetNameList
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_Names - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Names

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
end fmGUI_ManageSecurity_GoToTab_PrivSets
