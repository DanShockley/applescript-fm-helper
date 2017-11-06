-- fmGUI_ObjectClick_CancelButton({buttonRef:null})
-- Erik Shagdar, NYHTC
-- Wrapper method for clicking the cancel button and waiting for the window to close


(*
REQUIRES:
	fmGUI_ObjectClick_Button


HISTORY:
	1.1 - 2017-10-20 ( eshagdar ): wrapper for fmGUI_ObjectClick_SignInButton.
	1.0 - 2017-09-07 ( eshagdar ): created
*)


on run
	
	fmGUI_ObjectClick_CancelButton({})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_CancelButton(prefs)
	-- version 1.1
	
	try
		return fmGUI_ObjectClick_Button({buttonName:"Cancel"} & prefs)
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_CancelButton - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_CancelButton

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	tell application "htcLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button
