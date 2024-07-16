-- getFmAppProcessID()
-- Dan Shockley, Gotham DataWorks LLC
-- Gets the process ID for use in UI Scripting via System Events. 

(*
	Gets the process ID of the frontost FileMaker app, to use for UI Scripting via System Events. If the frontmost app does not include FileMaker in its name, gets the first process ID that does. 
	NOTE: You want to use THIS for UI scripting, along with a "tell process id <foundID>" block, INSTEAD OF a reference to the FileMaker app, since when there are multiple FM copies running at the same time, going by name will talk to the earliest(?) app launched, NOT the FM app that is currently frontmost. This function will let you work with the frontmost FM app, if there is one, and only if there is not will it fall back to "whatever the first/default" process named FileMaker. 
	NOTE ALSO: this is NOT what you use for non-UI "app's-own-dictionary-terminology" scripting. 
	
HISTORY:
	2024-07-16 ( danshockley ): Version bump to encourage recompile.
	2024-07-15 ( danshockley ): created	
*)

on run
	-- EXAMPLE USAGE:	
	try
		set fmProcID to my getFmAppProcessID()
		tell application "System Events"
			tell process id fmProcID
				set frontmost to true -- just in case none WAS frontmost, bring one selected to front
				set frontWinName to name of window 1
				display dialog frontWinName buttons {"OK"} default button "OK"
			end tell
		end tell
		
	on error errMsg number errNum
		-- do something useful, like tell the user "No FileMaker is running."
		display dialog "FileMaker does not seem to be running. Error: " & errMsg & " ErrNum: " & errNum buttons {"OK"} default button "OK"
	end try
end run

--------------------
-- START OF CODE
--------------------

on getFmAppProcessID()
	-- version 2024-07-16
	-- Gets process ID of "FileMaker" app that is frontmost (if any), otherwise the 1st one available.
	set appNameMatchString to "FileMaker"
	-- [ NOTE: the code below is identical to the function "getAppProcessID" ]
	
	tell application "System Events"
		set frontAppName to name of first application process whose frontmost is true
		set appProcID to id of first application process whose frontmost is true
		-- ^^^ we MUST get this HERE - we MUST NOT try to get a reference to the frontmost app, since the dereference will then talk to some OTHER app.
		if frontAppName does not contain appNameMatchString then
			-- frontmost does not match, so just get the 1st one we can find.
			-- (when using, you should probably tell it to set frontmost to true, to be sure)
			try
				set appProcID to id of first application process whose name contains appNameMatchString
			on error errMsg number errNum
				error errMsg number errNum
			end try
		end if
		return appProcID
	end tell
	
end getFmAppProcessID

--------------------
-- END OF CODE
--------------------

