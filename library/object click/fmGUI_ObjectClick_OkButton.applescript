-- fmGUI_ObjectClick_OkButton({buttonRef:null})
-- Erik Shagdar
-- Wrapper method for clicking the ok button and waiting for the window to close


(*
REQUIRES:
	fmGUI_ObjectClick_Button


HISTORY:
	1.1 - 2017-10-20 ( eshagdar ): wrapper for fmGUI_ObjectClick_SignInButton.
	1.0 - 2017-09-06 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_OkButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_OkButton(prefs)
	-- version 1.1
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"OK"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_OkButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_OkButton

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
