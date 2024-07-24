-- fmGUI_ManageSecurity_Open({fullAccessAccountName:null, fullAccessPassword:null})
-- Dan Shockley
-- Open Manage Security window


(*
HISTORY:
	1.3.2 - 2020-02-19 ( dshockley ): was missing the wrapper handler for fmGUI_NameOfFrontmostWindow. 
	1.3.1 - 2017-11-07 ( eshagdar ): test all windows, not just the first one to determine if we're already in manage security. wait until window renders.
	1.3 - 2017-10-19 ( eshagdar ): authentication done via sub-hndler. no need to test for credentails since that test happens later on. click menu item via sub-handler. test auth via sub-handler.
	1.2 - 2017-10-17 ( eshagdar ): updated error message. full-access test should run ONLY if not already in manage security.
	1.1 - 2017-06-28 ( eshagdar ): updated for Fm15 ( authenticate up-front )
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_AuthenticateDialog
	fmGUI_ClickMenuItem
	fmGUI_isInFullAccessMode
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_Open({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Open(prefs)
	-- version 1.3.2
	
	set defaultPrefs to {fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	
	set authWindowName to "Enter credentials for"
	set securityWindowName to "Manage Security for"
	set securityWindowNames to {}
	
	try
		fmGUI_AppFrontMost()
		
		-- test to see if ANY window has 'manage security for' as the name - this may NOT be the frontmost window
		try
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set alreadyInManageSecurity to exists (get first window whose name contains securityWindowName)
				end tell
			end tell
		on error
			set alreadyInManageSecurity to false
		end try
		
		
		if not alreadyInManageSecurity then
			if not fmGUI_isInFullAccessMode({}) then error "must be logged as full-access" number -1024
			
			
			-- open Manage security
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageSecMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Security"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageSecMenuItem})
			
			
			-- enter credentials
			if fmGUI_NameOfFrontmostWindow() starts with authWindowName then fmGUI_AuthenticateDialog({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs, windowname:authWindowName})
			
			windowWaitUntil({windowname:securityWindowName, windowNameTest:"contains", whichWindow:"any"})
		end if
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_Open - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_AuthenticateDialog(prefs)
	tell application "fmGuiLib" to fmGUI_AuthenticateDialog(prefs)
end fmGUI_AuthenticateDialog

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "fmGuiLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem

on fmGUI_isInFullAccessMode(prefs)
	tell application "fmGuiLib" to fmGUI_isInFullAccessMode(prefs)
end fmGUI_isInFullAccessMode

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
