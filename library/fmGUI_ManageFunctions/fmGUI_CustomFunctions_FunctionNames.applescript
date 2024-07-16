-- fmGUI_CustomFunctions_FunctionNames({})
-- Dan Shockley, NYHTC
-- get name of every function


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.2 - 2016-06-30 ( eshagdar ): wait for the window to appear.
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_CustomFunctions_FunctionNames({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_FunctionNames(prefs)
	-- version 2024-07-15
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	try
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell process id fmProcID
				value of static text 1 of every row of table 1 of scroll area 1 of window 1
			end tell
		end tell
		return result
	on error errMsg number errNum
		error "Couldn't get names of custom functions - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_FunctionNames

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	tell application "htcLib" to fmGUI_CustomFunctions_Open(prefs)
end fmGUI_CustomFunctions_Open

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
