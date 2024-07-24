-- fmGUI_ModeCurrent({})
-- Erik Shagdar
-- Return the mode of the frontmost layout.


(*
HISTORY:
	1.0 - 2016-11-16 ( eshagdar ):created
*)


on run
	fmGUI_ModeCurrent({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeCurrent(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set currentMode to first word of ((description of first group of window 1) as string)
				return currentMode
			end tell
		end tell
	on error errMsg number errNum
		error "unable to fmGUI_ModeCurrent - " & errMsg number errNum
	end try
	
end fmGUI_ModeCurrent

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
