-- fmGUI_ScriptDebugger_Close()
-- Dan Shockley
-- Closes FileMaker's Script Debugger window


(*
HISTORY:
	2020-03-04 ( dshockley ): First created. 


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ScriptDebugger_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ScriptDebugger_Close()
	-- version 2020-03-04-1645
	
	fmGUI_AppFrontMost()
	tell application "System Events"
		tell process "FileMaker Pro Advanced"
			
			try
				(* 
				If the MBS Plugin is installed and the "Copy Script Text" feature is enabled, 
				that is the 1st button, so get the first one after that. If it does not exist, this still works.
				*)
				click (first button of (first window whose name is "Script Debugger") whose name is not "Copy Script Text")
			end try
			return true
			
		end tell
	end tell
end fmGUI_ScriptDebugger_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
