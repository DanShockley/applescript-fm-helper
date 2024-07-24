-- fmGUI_ManageSecurity_AccountCreate({accountName:null, accountPassword:null, authenticatedVia:"FileMaker", mustChangeOnNextLogin:0, accountStatus:"Active", privilegeSet:null, accountDescription:"", fullAccessAccountName:null, fullAccessPassword:null})
-- Erik Shagdar
-- create a new fm account


(*
HISTORY:
	1.4.1 - 2017-10-31 ( eshagdar ): moved from tuneup tool to fmGuiLib
	1.4 - 2017-06-14 ( eshagdar ): narrowed scope
	1.3 - 2017-04-03 ( eshagdar ): narrowed scope. use handler to test for window name.
	1.2 - 2017-02-24 ( eshagdar ): pass credentials through to open manage security
	1.1 - 2016-07-20 ( eshagdar ): move account if it already exists ( instead of giving an error )
	1.0 - created


REQUIRES:
	fmGUI_ManageSecurity_AccountEdit
	fmGUI_ManageSecurity_GoToTab_Accounts
	fmGUI_ObjectClick_Button
	windowWaitUntil_FrontIS
*)


on run
	set fullAccessCredentials to {fullAccessAccountName:"admin", fullAccessPassword:""}
	fmGUI_ManageSecurity_AccountCreate({accountName:"admin", accountPassword:"admin", privilegeSet:"[Full Access]", accountDescription:"test"} & fullAccessCredentials)
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccountCreate(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {accountName:null, accountPassword:null, authenticatedVia:"FileMaker", mustChangeOnNextLogin:0, accountStatus:"Active", privilegeSet:null, accountDescription:"", fullAccessAccountName:null, fullAccessPassword:null}
	set prefs to prefs & defaultPrefs
	set fullAccessCredentials to {fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}
	
	try
		-- ERROR-TRAPPING for required parameters
		if accountName of prefs is null then error "The accountName must be specified." number 1024
		if accountPassword of prefs is null then error "The accountPassword must be specified." number 1024
		if privilegeSet of prefs is null then error "The privilegeSet must be specified." number 1024
		
		
		-- ensure context:
		fmGUI_ManageSecurity_GoToTab_Accounts(fullAccessCredentials)
		
		
		try
			-- if the account already exists, move it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set existingAccountName to value of static text 1 of (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 1 is accountName of prefs)
				end tell
			end tell
			fmGUI_ManageSecurity_AccountEdit(prefs)
			
		on error
			-- no such account, so create it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newButton to first button of tab group 1 of window 1 whose name contains "New"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:newButton})
			
			windowWaitUntil_FrontIS({windowName:"Edit Account"})
			fmGUI_ManageSecurity_AccountEdit(prefs)
		end try
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccountCreate '" & accountName of prefs & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_AccountCreate

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_AccountEdit(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccountEdit(prefs)
end fmGUI_ManageSecurity_AccountEdit

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
end fmGUI_ManageSecurity_GoToTab_Accounts

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
