-- fmGUI_CustomFunctions_ParamsForFunction({functionName:null})
-- Dan Shockley, NYHTC
-- return a list of params for a specified function


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.2 - 2017-06-28 ( eshagdar ): convert params to a record.
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_CustomFunctions_ParamsForFunction({functionName:"_Access_canView"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_ParamsForFunction(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {functionName:null}
	set prefs to prefs & defaultPrefs
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	try
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell process id fmProcID
				set rawParams to value of static text 2 of (first row of table 1 of scroll area 1 of window 1 whose (value of static text 1) is functionName of prefs)
			end tell
		end tell
		set parsedParams to parseChars({rawParams, " ; "})
		return parsedParams
		
	on error errMsg number errNum
		error "Couldn't get custom function parameters - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_ParamsForFunction

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	tell application "htcLib" to fmGUI_CustomFunctions_Open(prefs)
end fmGUI_CustomFunctions_Open

on parseChars(prefs)
	tell application "htcLib" to parseChars(prefs)
end parseChars

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
