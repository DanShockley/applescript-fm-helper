-- fmGUI_ClickMenuItem({menuItemRef:null, waitForMenuAvailable: null})
-- Erik Shagdar, NYHTC
-- click on a menu item in FileMaker


(*
HISTORY:
	1.1 - 2017-11-06 ( eshagdar ): we should not wait for the menu item to be available since clicking it may disable it ( e.g. manage DB ). Instead, briefly delay, then exit.
	1.0 - 2016-10-18 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set frontmost to true
			--set someMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
			set someMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Scripts"
		end tell
	end tell
	set someMenuItem to coerceToString(someMenuItem)
	fmGUI_ClickMenuItem({menuItemRef:someMenuItem})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ClickMenuItem(prefs)
	-- version 1.1, Erik Shagdar
	
	set defaultPrefs to {menuItemRef:null, waitForMenuAvailable:false}
	set prefs to prefs & defaultPrefs
	set menuItemRef to ensureObjectRef(menuItemRef of prefs)
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click menuItemRef
			end tell
		end tell
		
		
		if waitForMenuAvailable of prefs then return fmGUI_Wait_MenuItemAvailable({menuItemRef:menuItemRef})
		
		
		delay 0.1 -- pause to give a chance for menus to redraw
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ClickMenuItem - " & errMsg number errNum
	end try
end fmGUI_ClickMenuItem

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_Wait_MenuItemAvailable(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_Wait_MenuItemAvailable(prefs)
end fmGUI_Wait_MenuItemAvailable



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
