-- databaseNameOfFrontWindow({fmAppType:""})
-- Dan Shockley
-- Return the database name of window 1.


(*
HISTORY:
	2024-07-16 ( danshockley ): Changed to use System Events and UI Scripting, instead of using FileMaker's own dictionary command, since all we are doing is getting the name of the frontmost window. 
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.4 - 2018-10-16 ( eshagdar ): FM17 has only FMP ( no more FMA)
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	dbNameOfWindowName
*)


on run
	databaseNameOfFrontWindow({})
end run


--------------------
-- START OF CODE
--------------------

on databaseNameOfFrontWindow(prefs)
	-- version 2024-07-15
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to getFmAppProcessID()
	end try
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	
	tell application "System Events"
		tell process id fmProcID
			set frontWindowName to name of window 1
		end tell
	end tell
	
	dbNameOfWindowName(frontWindowName)
	
end databaseNameOfFrontWindow

--------------------
-- END OF CODE
--------------------

on dbNameOfWindowName(frontWindowName)
	tell application "fmGuiLib" to dbNameOfWindowName(frontWindowName)
end dbNameOfWindowName

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
