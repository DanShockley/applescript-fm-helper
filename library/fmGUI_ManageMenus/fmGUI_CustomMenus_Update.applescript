-- fmGUI_CustomMenus_Update(prefs)
-- Gets any updates from FileMaker to the standard available menu objects. 


(*
HISTORY:
	1.3 - updated call to fmGUI_ObjectClick_Button. If there are any updates, then then close the window.
	1.2 - 2017-12-18 ( eshagdar ): narrowed scope. button clicking via sub-hander
	1.1 - 201x-xx-xx ( xxxxx ): 
	1.0 - 201x-xx-xx ( xxxxx ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CustomMenus_Open
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_OkButton
	windowWaitUntil_FrontNotIS
*)


on run
	fmGUI_CustomMenus_Update({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_Update(prefs)
	-- version 1.3
	
	try
		fmGUI_CustomMenus_Open({})
		fmGUI_AppFrontMost()
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set updateButton to first button of window 1 whose name is "Update"
				set isButtonEnabled to enabled of updateButton
			end tell
		end tell
		
		
		-- click update button. There may be a window that comes up, and we may need to click an ok/confirm button
		if isButtonEnabled then
			fmGUI_ObjectClick_Button({buttonRef:updateButton})
			set updateWindowName to "Custom Menus Updated"
			if fmGUI_NameOfFrontmostWindow() is equal to updateWindowName then fmGUI_ObjectClick_OkButton({})
			windowWaitUntil_FrontNotIS({windowName:updateWindowName})
		end if
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Update - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Update


--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CustomMenus_Open(prefs)
	tell application "fmGuiLib" to fmGUI_CustomMenus_Open(prefs)
end fmGUI_CustomMenus_Open

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
