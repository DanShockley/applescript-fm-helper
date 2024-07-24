-- fmGUI_ManageDB_Save({notInManageDbIsError:""})
-- Dan Shockley
-- Close ( and save ) FileMaker's 'Manage Database' window.


(*
HISTORY:
	1.6 - 2020-05-20 ( dshockley ): removed an incorrect requires-sub-handler comment. 
	1.5 - 2017-10-30 ( eshagdar ): FM interactions are done via sub-handlers.
	1.4 - 2016-06-29 ( eshagdar ): wait until the close/save is complete
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_OkButton
*)


on run
	fmGUI_ManageDb_Save({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Save(prefs)
	-- version 1.5
	
	set defaultPrefs to {notInManageDbIsError:true}
	set prefs to prefs & defaultPrefs
	
	
	set manageDbWindowNamePrefix to "Manage Database for"
	set waitCycleDelaySeconds to 10 -- seconds
	set waitSaveTotalSeconds to 60 * minutes --seconds
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	try
		fmGUI_AppFrontMost()
		set frontmostWindowName to fmGUI_NameOfFrontmostWindow()
		if frontmostWindowName starts with manageDbWindowNamePrefix then
			try
				fmGUI_ObjectClick_OkButton({})
				delay 1 -- let click register. will continue below to wait for window to close
			on error errMsg number errNum
				error "Couldn't save Manage Database - " & errMsg number errNum
			end try
		else
			if notInManageDbIsError of prefs then
				error "Manage Database window wasn't open, so nothing to close." number 1024
			else
				-- Not in Manage Database, but that is OK.
				return true
			end if
		end if
		
		
		-- wait until the the changes are commited
		windowWaitUntil({windowName:frontmostWindowName, windowNameTest:"does not contain", whichWindow:"any", waitCycleDelaySeconds:waitCycleDelaySeconds, waitCycleMax:waitCycleMax})
		delay 1 -- let normal window come to front. 
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDB_Save - " & errMsg number errNum
	end try
end fmGUI_ManageDb_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
