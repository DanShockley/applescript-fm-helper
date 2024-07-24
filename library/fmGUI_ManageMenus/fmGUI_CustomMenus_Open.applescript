-- fmGUI_CustomMenus_Open({})
-- Dan Shockley
-- Open Manage Custom Menus window


(*
HISTORY:
	1.2 - 2017-12-18 ( eshagdar ): copied from manage custom functions
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_CustomMenus_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_Open(prefs)
	-- version 1.2
	
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() starts with "Manage Custom Menus" then
			return true
		else
			-- open manage custom menus
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set manageMenusMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Custom Menus"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageMenusMenuItem})
			windowWaitUntil_FrontIS({windowName:"Manage Custom Menus"})
			
			
			return true
		end if
	on error errMsg number errNum
		error "unable to fmGUI_CustomMenus_Open - " & errMsg number errNum
	end try
	
end fmGUI_CustomMenus_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "fmGuiLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

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
