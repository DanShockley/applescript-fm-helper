-- fmGUI_ManageScripts_ScriptListFocus({})
-- Focus the Script Workspace


(*
HISTORY
	2024-07-23 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.3 - 2020-05-21 ( dshockley ): Properly handle "no scripts" (without error) as a false, not an error. 
	1.2 - 2017-01-12 ( eshagdar ): updated for FM15 - list of scripts is now in a splitter group.
	1.1 - 
	1.0 - 201x-xx-xx ( xxxxx ): first created


REQUIRES:
	fmGUI_ManageScripts_Open
	getFmAppProcessID
*)


on run
	fmGUI_ManageScripts_ScriptListFocus({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_ScriptListFocus(prefs)
	-- version 2024-07-23
	
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	try
		fmGUI_ManageScripts_Open({})
		
		set windowNamePrefix to "Script Workspace"
		tell application "System Events"
			tell process id fmProcID
				if exists static text "No scripts" of splitter group 1 of window 1 then
					-- no scripts exist, so cannot "focus" on script list, but anything that wants that focus (to paste, for example) should just work. So, return FALSE, but not an error.
					return false
				else
					set focused of (outline 1 of scroll area 1 of splitter group 1 of window 1) to true
					return true
				end if
			end tell
		end tell
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_ScriptListFocus - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_ScriptListFocus

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageScripts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
