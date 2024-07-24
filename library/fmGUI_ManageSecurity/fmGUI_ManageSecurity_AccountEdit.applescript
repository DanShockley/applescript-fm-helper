-- fmGUI_ManageSecurity_AccountEdit({accountName:null, accountOldName:null, authenticatedVia:null, accountPassword:null, mustChangeOnNextLogin:0, accountStatus:1, privilegeSet:null, accountDescription:null, accountRowNumber:null})
-- Erik Shagdar
-- edit an account


(*
HISTORY:
	1.2.1 - 2017-10-31 ( eshagdar ): moved from tuneup tool to fmGuiLib
	1.2 - 2017-06-14 ( eshagdar ): narrowed scope	
	1.1 - 2015-11-17 ( eshagdar ): password must be typed out instead of having the value set via UI scripting
	1.0 - created


REQUIRES:
	fmGUI_CheckboxSet
	fmGUI_ManageSecurity_GoToTab_Accounts
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_OkButton
	fmGUI_PopupSet
	fmGUI_TextFieldSet
	windowWaitUntil_FrontIS
	windowWaitUntil_FrontNoteIs
*)


on run
	fmGUI_ManageSecurity_AccountEdit({accountName:"admin", accountPassword:"admin", privilegeSet:"[Full Access]", accountDescription:"test"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccountEdit(prefs)
	-- version 1.2.1
	
	set defaultPrefs to {accountName:null, accountOldName:null, accountRowNumber:null, accountPassword:null, privilegeSet:null, accountDescription:null, authenticatedVia:"FileMaker File", mustChangeOnNextLogin:0, accountStatus:1}
	set prefs to prefs & defaultPrefs
	
	set accountName to accountName of prefs
	set accountRowNumber to accountRowNumber of prefs
	
	set editWindowName to "Edit Account"
	set passwordWindowName to "Set Password"
	
	try
		fmGUI_AppFrontMost()
		
		-- open 'edit account' window if needed
		if fmGUI_NameOfFrontmostWindow() is not "Edit Account" then
			fmGUI_ManageSecurity_GoToTab_Accounts(fullAccessCredentials)
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountTable to table 1 of scroll area 1 of tab group 1 of window 1
					
					--select account, first by accountName, then by accountOldName
					if accountRowNumber is not null then
						select row (accountRowNumber) of accountTable
					else
						try
							select (first row of accountTable whose value of static text 1 is accountName)
						on error
							try
								select (first row of accountTable whose value of static text 1 is accountOldName of prefs)
							on error
								error "no account exists with specified name ( nor by old name or row number )" number -1204
							end try
						end try
					end if
					set editButton to first button of tab group 1 of window 1 whose name is "Edit…"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:editButton})
			windowWaitUntil_FrontIS({windowName:editWindowName})
		end if
		
		
		-- Now, edit ONLY IF we found or were already opened an account to edit: 
		if fmGUI_NameOfFrontmostWindow() is not "Edit Account" then error "Unable to open Edit Account window" number 1024
		
		
		--handle objects on the window from the top down:
		if authenticatedVia of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountAuthButton to first pop up button of window 1 whose name contains "authenticated via"
				end tell
			end tell
			fmGUI_PopupSet({objRef:accountAuthButton, objValue:authenticatedVia of prefs})
		end if
		
		
		if accountName is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set accountNameRef to text field "Account Name:" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:accountNameRef, objValue:accountName of prefs})
		end if
		
		
		if accountPassword of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set changeButton to first button of window 1 whose name contains "Change"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:changeButton})
			
			windowWaitUntil_FrontIS({windowName:passwordWindowName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set passRef to text field 1 of window 1
					set confRef to text field 2 of window 1
					set setButton to button "Set Password" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:passRef, objValue:accountPassword of prefs})
			fmGUI_TextFieldSet({objRef:confRef, objValue:accountPassword of prefs})
			fmGUI_ObjectClick_Button({buttonRef:setButton})
			windowWaitUntil_FrontNotIS({windowName:passwordWindowName})
		end if
		
		
		if mustChangeOnNextLogin of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set changePasswordCheckbox to checkbox "Require password change on next sign-in" of window 1
				end tell
			end tell
			fmGUI_CheckboxSet({objRef:changePasswordCheckbox, objValue:mustChangeOnNextLogin of prefs})
		end if
		
		
		if accountStatus of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					if accountStatus of prefs is 0 then
						set statusCheckbox to first radio button of window 1 whose name begins with "Inactive"
					else
						set statusCheckbox to first radio button of window 1 whose name begins with "Active"
					end if
				end tell
			end tell
			fmGUI_CheckboxSet({objRef:statusCheckbox, objValue:1})
		end if
		
		
		if privilegeSet of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set privSetButton to pop up button "Privilege Set:" of window 1
				end tell
			end tell
			fmGUI_PopupSet({objRef:privSetButton, objValue:privilegeSet of prefs})
		end if
		
		
		if accountDescription of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set descObj to text field "Description:" of window 1
				end tell
			end tell
			fmGUI_TextFieldSet({objRef:descObj, objValue:accountDescription of prefs})
		end if
		
		
		-- SAVE edits: click OK
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil_FrontNotIS({windowName:editWindowName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccountEdit '" & accountName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccountEdit

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_Accounts(prefs)
end fmGUI_ManageSecurity_GoToTab_Accounts

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS

on windowWaitUntil_FrontNotIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
