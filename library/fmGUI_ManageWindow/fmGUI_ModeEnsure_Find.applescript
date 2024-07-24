-- fmGUI_ModeEnsure_Find()
-- Dan Shockley
-- Go to 'Find' mode


(*
HISTORY:
	1.0 - created
*)


on run
	fmGUI_ModeEnsure_Find()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Find()
	-- version 1.0
	
	try
		fmGUI_ModeSelect("Find")
		
	on error errMsg number errNum
		error "Couldn't ensure in Browse Mode - " & errMsg number errNum
	end try
	
	
end fmGUI_ModeEnsure_Find

--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell application "fmGuiLib" to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
