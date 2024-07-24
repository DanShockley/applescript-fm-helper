-- fmGUI_ModeEnsure_Browse()
-- Dan Shockley
-- Go to 'Browse' mode


(*
HISTORY:
	1.0 - created
*)


on run
	fmGUI_ModeEnsure_Browse()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Browse()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Browse")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Browse

--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell application "fmGuiLib" to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
