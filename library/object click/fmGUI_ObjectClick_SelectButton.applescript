-- fmGUI_ObjectClick_SelectButton({buttonRef:null})
-- Erik Shagdar
-- Wrapper method for clicking the seelct button


(*
REQUIRES:
	fmGUI_ObjectClick_Button


HISTORY:
	1.0 - 2017-09-06 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_SelectButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_SelectButton(prefs)
	-- version 1.0
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Select"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_SelectButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_SelectButton

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
