-- fmGUI_relogin({accountName:null, pwd:null})
-- Erik Shagdar
-- re-login with specified credentials. must be triggered elsewhere - this handler only deals with the re-login window.


(*
REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ObjectClick_OkButton
	fmGUI_TextFieldSet
	windowWaitUntil
	

HISTORY:
	1.1 - 2017-10-19 ( eshagdar ): moved logic to fmGUI_AuthenticateDialog - this handler is now just a wrapper.
	1.0 - 2017-10-07 ( eshagdar ): created
*)


on run
	
	fmGUI_relogin({accountName:"admin", pwd:""})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_relogin(prefs)
	-- version 1.1
	
	set defaultPrefs to {accountName:null, pwd:null}
	set prefs to prefs & defaultPrefs
	
	try
		return fmGUI_AuthenticateDialog(prefs & {windowname:"Open"})
	on error errMsg number errNum
		error "Unable to fmGUI_relogin - " & errMsg number errNum
	end try
end fmGUI_relogin

--------------------
-- END OF CODE
--------------------

on fmGUI_AuthenticateDialog(prefs)
	tell application "fmGuiLib" to fmGUI_AuthenticateDialog(prefs)
end fmGUI_AuthenticateDialog
