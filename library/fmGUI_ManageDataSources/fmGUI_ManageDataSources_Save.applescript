-- fmGUI_ManageDataSources_Save(notInManageWindowIsError:null)
-- Dan Shockley
-- Close ( and Save ) Manage Data Sources


(*
HISTORY:
	1.4.1 - 2017-06-26 ( eshagdar ): narrowed scope
	1.4 -
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageDataSources_Save({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Save(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {notInManageWindowIsError:true}
	set prefs to prefs & defaultPrefs
	
	set manageWindowNamePrefix to "Manage External Data Sources"
	set waitCycleDelaySeconds to 5 -- seconds
	set waitSaveTotalSeconds to 5 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro"
				if name of window 1 starts with manageWindowNamePrefix then
					try
						set manageWindowName to name of window 1
						click (button "OK" of window 1)
						delay 1 -- let click register.
						-- will continue below to wait for window to close
						
					on error errMsg number errNum
						error "Couldn't save Manage Data Sources - " & errMsg number errNum
					end try
				else
					if notInManageWindowIsError of prefs then
						error "Manage Data Source window wasn't open, so nothing to close." number 1024
					else
						-- Not in Manage Data Source, but that is OK.
						return true
					end if
				end if
			end tell
		end tell
			
		windowWaitUntil({windowName:manageWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
		delay 1 -- let normal window come to front. 
			
		return true
	on error errMsg number errNum
		error "Couldn't save Manage Data Sources - " & errMsg number errNum
	end try
	
end fmGUI_ManageDataSources_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
