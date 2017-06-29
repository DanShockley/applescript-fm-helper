-- fmGUI_ManageSecurity_GoToTab({tabName:null})
-- Erik Shagdar, NYHTC
-- Go to specified tab of manage scripts


(*
HISTORY:
	1.2.1 - 2017-06-28 ( eshagdar ): pass in prefs into open security handler
	1.2 - 2016-07-20 ( eshagdar ): changed params from a string to a  record
	1.1 - 
	1.0 - first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_Open
*)


on run
	fmGUI_ManageSecurity_GoToTab({tabName:"Accounts"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {tabName:"Accounts"}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_Open(prefs)
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				click (first radio button of tab group 1 of window 1 whose name is tabName of prefs)
				return true
				
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't go to tab in Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_Open(prefs)
	tell application "htcLib" to fmGUI_ManageSecurity_Open(prefs)
end fmGUI_ManageSecurity_Open
