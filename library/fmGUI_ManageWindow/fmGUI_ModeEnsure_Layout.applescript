-- fmGUI_ModeEnsure_Layout()
-- Dan Shockley
-- Go to 'Layout' mode


(*
HISTORY:
	1.0.1 - 2019-02-21 ( eshagdar ): fixed error message.
	1.0 - created
*)


on run
	fmGUI_ModeEnsure_Layout()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeEnsure_Layout()
	-- version 1.0.1
	
	try
		fmGUI_ModeSelect("Layout")
		
	on error errMsg number errNum
		error "Couldn't ensure in Layout Mode - " & errMsg number errNum
	end try
	
end fmGUI_ModeEnsure_Layout


--------------------
-- END OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	tell application "fmGuiLib" to fmGUI_ModeSelect(modeToSelect)
end fmGUI_ModeSelect
