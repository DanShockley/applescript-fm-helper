-- fmGUI_ManageScripts_SearchBoxFind({searchCriteria:null, delayTime:0.25, maxDelay:2, delayIncreaseBy:0.25})
-- Dan Shockley
-- Specify the contents of the search box in the Script Workspace, which activates a live-filter type of search. 


(*
HISTORY
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. 
	2017-06-07 ( eshagdar ): created. 
	
REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageScripts_Open
	getFmAppProcessID
*)


on run
	fmGUI_ManageScripts_SearchBoxFind({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_SearchBoxFind(prefs)
	-- version 2024-07-23
	
	try
		set defaultPrefs to {searchCriteria:null, delayTime:0.25, maxDelay:2, delayIncreaseBy:0.25}
		set prefs to prefs & defaultPrefs
			
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try

		fmGUI_AppFrontMost()
		fmGUI_ManageScripts_Open({})
		
		tell application "System Events"
			tell process id fmProcID
				set searchField to text field 1 of splitter group 1 of window 1
				
				set focused of searchField to true
				delay delayTime of prefs
				keystroke "a" using command down
				delay 0.01
				key code 51 -- clear the search box
				
				delay delayTime of prefs
				set value of searchField to searchCriteria of prefs
				keystroke tab
				
				set isSearchFound to false
				if value of searchField is equal to searchCriteria of prefs then set isSearchFound to true
			end tell
		end tell
		
		
		if isSearchFound then
			-- successfully managed to search
			return true
		else if delayTime of prefs is less than maxDelay of prefs then
			-- not enough delay, so try again
			fmGUI_ManageScripts_SearchBoxFind({delayTime:(delayTime of prefs) + (delayIncreaseBy of prefs)} & prefs)
		else
			-- failed to seach, even with max delay
			return false
		end if
		
	on error errMsg number errNum
		error "Couldn't  fmGUI_ManageScripts_SearchBoxFind - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_SearchBoxFind

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
