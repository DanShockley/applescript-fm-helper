-- fmGUI_NameOfFrontmostWindow()
-- Erik Shagdar
-- Return the name of the frontmost window.


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.0 - 2017-04-03 ( eshagdar ): created.
*)


on run
	fmGUI_NameOfFrontmostWindow()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_NameOfFrontmostWindow()
	-- version 2024-07-15
	
	fmGUI_AppFrontMost()	

	set fmProcID to my getFmAppProcessID()
	
	tell application "System Events"
		tell process id fmProcID
			return name of window 1
		end tell
	end tell
end fmGUI_NameOfFrontmostWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
