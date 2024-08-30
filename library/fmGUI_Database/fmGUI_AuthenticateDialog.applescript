-- fmGUI_AuthenticateDialog({accountName:null, pwd:null, windowName:null})
-- Erik Shagdar
-- authenticate with the provided credentials


(*
REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_OkButton
	fmGUI_TextFieldSet
	windowWaitUntil
	

HISTORY:
	1.2.2 - 2020-04-09 ( dshockley ): made 0.5 second delay before clicking buttons, since slower machines didn't quite work.
	1.2.1 - 2017-11-14 ( dshockley ): added 0.1 second delay after setting fields before clicking button. 
	1.2 - 2017-11-10 ( eshagdar ): wait until the window renders
	1.1 - 2017-10-20 ( eshagdar ): FM16 changed object names - determine fields by their description. button name changed from 'OK' to 'Sign In'.
	1.0 - 2017-10-07 ( eshagdar ): created
*)


on run
	
	fmGUI_AuthenticateDialog({accountName:"admin", pwd:"test", windowName:"Open"})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_AuthenticateDialog(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {accountName:"admin", pwd:"test", windowName:"Open"}
	set prefs to prefs & defaultPrefs
	
	set pwdFieldDesc to "secure text field"
	
	
	try
		fmGUI_AppFrontMost()
		
		
		-- wait for window to render
		windowWaitUntil({windowName:windowName of prefs, windowNameTest:"starts with", whichWindow:"front"})
		
		
		-- enter credentials
		tell application "System Events"
			tell application process "FileMaker Pro"
				set objAccount to first text field of window 1 whose description is not pwdFieldDesc
				set objPassword to first text field of window 1 whose description is pwdFieldDesc
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:objAccount, objValue:accountName of prefs})
		fmGUI_TextFieldSet({objRef:objPassword, objValue:pwd of prefs})
		
		
		-- delay a bit, then click to confirm
		delay 0.5
		try
			fmGUI_ObjectClick_OkButton({})
		on error
			delay 0.5
			fmGUI_ObjectClick_SignInButton({})
		end try
		
		
		-- wait for window to close
		if fmGUI_NameOfFrontmostWindow() is equal to "FileMaker Pro" then error "incorrect credentials" number -1024
		
		return windowWaitUntil({windowName:windowName of prefs, windowNameTest:"does not start with", whichWindow:"front"})
	on error errMsg number errNum
		error "Unable to fmGUI_AuthenticateDialog - " & errMsg number errNum
	end try
end fmGUI_AuthenticateDialog

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_ObjectClick_SignInButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_SignInButton(prefs)
end fmGUI_ObjectClick_SignInButton

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet

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
