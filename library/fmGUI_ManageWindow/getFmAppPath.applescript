-- getFmAppPath()
-- Dan Shockley, Gotham DataWorks LLC
-- Gets the full Posix path for use in telling specific copy of FileMaker. 

(*

	Gets the full POSIX path of the frontmost app that contains "FileMaker". 
	Methods that FAIL:
	⁃	The process id can only be used when you are using System Events to send UI commands. 
	⁃	The bundle identifier will NOT necessarily talk to the specific app you want.

	WARNING: This will NOT work when you have used a shell command like "open -n " to launch two copies of the SAME app!!! 
	To use the app's own terminology, you need PATH. Then, you wrap the "tell application <FULL_PATH>" block within a "using terms from application\"<MY_SPECIFIC_APP>\"" block.

HISTORY:
	2024-07-16 ( danshockley ): Version bump, source file encoding test, since compile was unable to find handlerName.
	2024-07-15 ( danshockley ): created	
*)

on run
	-- EXAMPLE USAGE:	
	try
		set appPosixPath to getFmAppPath()
		
		using terms from application "FileMaker Pro"
			tell application appPosixPath
				set dialogMsg to get name of current layout of window 1
			end tell
		end using terms from
		display dialog dialogMsg
	on error errMsg number errNum
		if errNum is -10004 then
			set dialogMsg to "The privilege set in FileMaker does not have the 'fmextscriptaccess' extended privilege enabled. Go to Manage Security, choose the privilege set, then under Extended Privileges, enable 'Allow Apple events and Active to perform FileMaker operations (fmextscriptaccess)'."
		else
			-- do something useful, like tell the user "No FileMaker is running."
			set dialogMsg to "FileMaker does not seem to be running. Error: " & errMsg & " ErrNum: " & errNum
		end if
		display dialog dialogMsg buttons {"OK"} default button "OK"
	end try
end run

--------------------
-- START OF CODE
--------------------

on getFmAppPath()
	-- version 2024-07-16
	-- Gets the POSIX PATH of app whose name contains FileMaker, preferring the frontmost, if more than one.
	set appNameMatchString to "FileMaker"
	-- [ NOTE: the code below is identical to the function "getAppPath" ]
	
	tell application "System Events"
		set frontAppName to get name of first application process whose frontmost is true
		set appPosixPath to POSIX path of application file of first application process whose frontmost is true
		-- ^^^ we MUST get this HERE - we MUST NOT try to get a reference to the frontmost app, since the dereference will then talk to some OTHER app.
		if frontAppName does not contain appNameMatchString then
			-- frontmost does not match, so just get the 1st one we can find.
			-- (when using, you should probably tell it to activate, to be sure)
			try
				set appPosixPath to get POSIX path of application file of first application process whose name contains appNameMatchString
			on error errMsg number errNum
				error errMsg number errNum
			end try
		end if
		return appPosixPath
	end tell
	
end getFmAppPath

--------------------
-- END OF CODE
--------------------

