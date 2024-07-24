-- fmGUI_ManageDb_GoToTab({tabName:null})
-- Erik Shagdar
-- Go to the "Fields" tab of manage database


(*
HISTORY:
	1.1 - 2018-05-02 ( eshagdar ): keep trying to click tab until it changes ( relationship graph can take a bit to load ).
	1.0.1 - 2018-04-30 ( eshagdar ): updated error message
	1.0 - 2016-06-30 ( eshagdar ): first created. Modeled from fmGUI_ManageDb_GoToTab_Fields version 1.3


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_Open
*)


on run
	fmGUI_ManageDb_GoToTab({tabName:"Tables"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_GoToTab(prefs)
	-- version 1.1
	
	set defaultPrefs to {tabName:"Tables"}
	set prefs to prefs & defaultPrefs
	set tabName to tabName of prefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_Open({})
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set tabObject to a reference to (first radio button of tab group 1 of window 1 whose title contains tabName)
				repeat 100 times
					click tabObject
					if value of tabObject is 1 then exit repeat
					delay 0.1
				end repeat
				
				if value of tabObject is 0 then error "time out trying to change tab" number -1024
			end tell
		end tell
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_GoToTab ( couldn't go to the '" & tabName of prefs & "' tab ) - " & errMsg number errNum
	end try
end fmGUI_ManageDb_GoToTab

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_Open(prefs)
end fmGUI_ManageDb_Open
