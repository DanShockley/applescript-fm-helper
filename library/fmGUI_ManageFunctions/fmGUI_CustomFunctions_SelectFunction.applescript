-- fmGUI_CustomFunctions_ParamsForFunction({functionName:null})
-- Dan Shockley, NYHTC
-- select a function by name


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.1.1 - 2018-05-01 ( eshagdar ): ensure function is actually selected
	1.1 - 2017-06-28 ( eshagdar ): convert prefs to a record. put try block around handler. changed existence test to a try-block.
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_CustomFunctions_SelectFunction({functionName:"#"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_SelectFunction(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {functionName:null}
	set prefs to prefs & defaultPrefs
	try
		fmGUI_CustomFunctions_Open({})
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		tell application "System Events"
			tell process id fmProcID
				try
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is functionName of prefs)
					delay 0.05
					set selectedFunctionName to value of static text 1 of (first row of table 1 of scroll area 1 of window 1 whose selected is true)
					if functionName of prefs is equal to selectedFunctionName then
						return true
					else
						error "failed to select function even though function exists" number -1024
					end if
				on error
					return false
				end try
			end tell
		end tell
	on error errMsg number errNum
		error "unable to  fmGUI_CustomFunctions_SelectFunction - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_SelectFunction

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	tell application "htcLib" to fmGUI_CustomFunctions_Open(prefs)
end fmGUI_CustomFunctions_Open

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
