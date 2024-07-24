-- fmGUI_Inspector_Ensure()
-- Dan Shockley
-- Opens FileMaker's Inspector window


(*
HISTORY:
	1.1 - 2016-08-29 ( eshagdar ): added documentation.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ModeEnsure_Layout
*)


on run
	fmGUI_Inspector_Ensure()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Inspector_Ensure()
	-- version 1.1
	
	try
		fmGUI_ModeEnsure_Layout()
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				if not (exists (first window whose name contains "Inspector")) then
					click (first menu item of menu 1 of menu bar item "View" of menu bar 1 whose name is "Inspector")
				end if
				return true
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't open Inspector - " & errMsg number errNum
	end try
	
end fmGUI_Inspector_Ensure

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ModeEnsure_Layout()
	tell application "fmGuiLib" to fmGUI_ModeEnsure_Layout()
end fmGUI_ModeEnsure_Layout
