-- fmGUI_CustomFunctions_Save({})
-- Dan Shockley, NYHTC
-- Save and close Manage Custom Functions window


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.2 - 2017-06-28 ( eshagdar ): wait until window is closed
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_CustomFunctions_Save({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_Save(prefs)
	-- version 2024-07-15
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try	
	try
		set frontmostWindowName to fmGUI_NameOfFrontmostWindow()
		if frontmostWindowName starts with "Manage Custom Functions for" then
			try
				tell application "System Events"
			tell process id fmProcID
						click (button "OK" of window 1)
					end tell
				end tell
				windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"does not contain", whichWindow:"front"})
				return true
			on error errMsg number errNum
				error "Couldn't save Custom Functions - " & errMsg number errNum
			end try
		else
			error "Custom Functions wasn't open - " & errMsg
		end if
	on error errMsg number errNum
		error "Couldn't save Custom Functions - " & errMsg number errNum
	end try
end fmGUI_CustomFunctions_Save


--------------------
-- END OF CODE
--------------------

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
