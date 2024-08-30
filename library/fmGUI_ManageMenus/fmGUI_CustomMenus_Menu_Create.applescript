-- fmGUI_CustomMenus_Menu_Create({menuSetName:null})
-- Erik Shagdar
-- create a new menu


(*
HISTORY:
	1.0 - 2017-12-18 ( eshagdar ): extracted from fmGUI_CustomMenus_MenuSet_CreateUpdate


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
*)


on run
	fmGUI_CustomMenus_Menu_Create({menuBasedOn:"Edit"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_Menu_Create(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {menuBasedOn:null}
		set prefs to prefs & defaultPrefs
		set menuBasedOn to menuBasedOn of prefs
		
		set windowSelectMenu to "Select Menu"
		set windowCreateMenu to "Create Custom Menu"
		
		
		-- ensure context
		fmGUI_AppFrontMost()
		set frontWindowName to fmGUI_NameOfFrontmostWindow()
		if frontWindowName is not equal to windowSelectMenu and frontWindowName is not equal to windowCreateMenu then error "wrong window context" number -1024
		
		
		-- click new menu button if not on the create menu window
		if frontWindowName is equal to windowSelectMenu then
			tell application "System Events"
				tell application process "FileMaker Pro"
					set newMenuButton to first button of window 1 whose description starts with "New Menu"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:newMenuButton})
		end if
		
		
		-- create menu
		windowWaitUntil_FrontIS({windowName:"Create Custom Menu"})
		tell application "System Events"
			tell application process "FileMaker Pro"
				if menuBasedOn is null or Â
					menuBasedOn is equal to "" or Â
					menuBasedOn is equal to "none" then
					click (first radio button of window 1 whose name contains "empty")
				else
					-- CHOICE: Start with a standard FileMaker menu:
					click (first radio button of window 1 whose name contains "standard")
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is menuBasedOn)
				end if
			end tell
		end tell
		fmGUI_ObjectClick_OkButton({})
		
		
		windowWaitUntil_FrontIS({windowName:"Edit Custom Menu"})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Menu_Create - " & errMsg number errNum
	end try
end fmGUI_CustomMenus_Menu_Create

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

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
