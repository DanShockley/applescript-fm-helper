-- fmGUI_ManageSecurity_Save({fullAccessAccountName:null, fullAccessPassword:null})
-- Dan Shockley
-- Close ( and save ) Manage Security


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.5.2 - 2017-11-07 ( eshagdar ): click 'allow' to get past the 'full access accounts with no password' prompt.
	1.5.1 - 2017-10-23 ( eshagdar ): FM16 renamed auth window name, so windw test is 'begins with' instead of 'is'
	1.5 - 2017-10-19 ( eshagdar ): sub-handlers: button clicks, window checks, authentication.
	1.4.2 - 2017-08-09 ( eshagdar ): instead of waiting for a set amount of time, wait until the frontmost window is not manage security ( it will either be the confirm full access window, or finished saving ).
	1.4.1 - 2017-08-07 ( eshagdar ): added windowWaitUntil handler to execute sample code
	1.4 - 2017-07-14 ( eshagdar ): renamed params: fullAccount -> fullAccessAccountName and fullPassword -> fullAccessPassword. wait until windows are gone.
	1.3 - 2016-07-20 ( eshagdar ): converted params from list to record
	1.2 - parameter as 'prefs' list for now, instead of two parameters.
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_AuthenticateDialog
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_OkButton
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_Save({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Save(prefs)
	-- version 2020-03-04-1534
	
	set defaulPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaulPrefs
	
	set authWindowName to "Confirm Full access"
	set securityWindowName to "Manage Security for"
	
	try
		fmGUI_AppFrontMost()
		
		-- save security changes
		fmGUI_ObjectClick_OkButton({})
		
		
		-- confirm with full access account
		if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then fmGUI_ObjectClick_Button({buttonName:"Allow"})
		if fmGUI_NameOfFrontmostWindow() begins with authWindowName then fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:authWindowName})
		
		
		-- wait until window is gone
		windowWaitUntil({whichWindow:"front", windowNameTest:"does not start with", windowname:securityWindowName})
		
		return true
	on error errMsg number errNum
		error "Couldn't save Manage Security - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_AuthenticateDialog(prefs)
	tell application "fmGuiLib" to fmGUI_AuthenticateDialog(prefs)
end fmGUI_AuthenticateDialog

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
