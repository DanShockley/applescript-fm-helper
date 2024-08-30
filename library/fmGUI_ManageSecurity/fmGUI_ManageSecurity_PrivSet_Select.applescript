-- fmGUI_ManageSecurity_PrivSet_Select({privSetName:"Developer", fullAccessAccountName:"admin", fullAccessPassword:""})
-- Erik Shagdar
-- select the specified privilege set


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. Corrected Requires block. 
	1.1.1 - 2017-09-06 ( eshagdar ): updated error message. added version to handler
	1.1 - 2017-07-06 ( eshagdar ): convert params to record. use try-blcok instead of checking for existence.
	1.0 - first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_GoToTab_PrivSets
*)


on run
	fmGUI_ManageSecurity_PrivSet_Select({privSetName:"Developer", fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Select(prefs)
	-- version 2020-03-04-1532
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		try
			tell application "System Events"
				tell application process "FileMaker Pro"
					select (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose name of static text 1 is privSetName of prefs)
				end tell
			end tell
			return true
		on error
			return false
		end try
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Select - " & errMsg number errNum
	end try
	
	
end fmGUI_ManageSecurity_PrivSet_Select


--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
end fmGUI_ManageSecurity_GoToTab_PrivSets
