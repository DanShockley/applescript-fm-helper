-- fmGUI_ObjectClick_ClearButton({buttonRef:null})
-- Erik Shagdar
-- Wrapper method for clicking the clear button and waiting for the window to close


(*
REQUIRES:
	fmGUI_ObjectClick_Button


HISTORY:
	1.0 - 2017-12-20 ( eshagdar ): copied from the cancel button
*)


on run
	
	fmGUI_ObjectClick_ClearButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_ClearButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Clear"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_ClearButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_ClearButton

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
