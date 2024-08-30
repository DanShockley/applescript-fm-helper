-- fmGUI_ManageScripts_SearchBoxClear({})
-- Dan Shockley
-- Clears the search box in the Script Workspace. 


(*
HISTORY
	2024-07-23 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. 
	2017-06-02 ( eshagdar ): created

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageScripts_Open
	getFmAppProcessID
*)


on run
	fmGUI_ManageScripts_SearchBoxClear({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_SearchBoxClear(prefs)
	-- version 2024-07-23
	
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageScripts_Open({})
		
		tell application "System Events"
			tell process id fmProcID
				set searchField to text field 1 of splitter group 1 of window 1
				if value of searchField is equal to "" then return true
				set focused of searchField to true
				keystroke "a" using command down
				key code 51 -- clear the search box
				return true
			end tell
		end tell
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageScripts_SearchBoxClear - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_SearchBoxClear
--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageScripts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID

