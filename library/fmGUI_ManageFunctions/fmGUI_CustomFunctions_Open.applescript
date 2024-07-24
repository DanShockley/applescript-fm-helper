-- fmGUI_CustomFunctions_Open({})
-- Dan Shockley
-- Open Manage Custom Functions window


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.3 - 2017-10-19 ( eshagdar ): UI interaction done via sub-handlers. wait for window before attempting to change sort order.
	1.2 - 2016-06-30 ( eshagdar ): wait for the window to appear.
	1.1 - ???
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
	fmGUI_ManageDb_GoToTab
	fmGUI_PopupSet
*)


on run
	fmGUI_CustomFunctions_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	-- version 2024-07-15
		
	try
		fmGUI_AppFrontMost()
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		if fmGUI_NameOfFrontmostWindow() starts with "Manage Custom Functions for" then
			return true
		else
			-- open manage custom functions
			tell application "System Events"
				tell process id fmProcID
					set manageFunctionsMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Custom Functions"
				end tell
			end tell
			fmGUI_ClickMenuItem({menuItemRef:manageFunctionsMenuItem})
			windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
			
			
			-- sort by function name
			tell application "System Events"
				tell process id fmProcID
					set sortPopup to pop up button "View by" of window 1
				end tell
			end tell
			fmGUI_PopupSet({objRef:sortPopup, objValue:"function name"})
			
			
			return true
		end if
	on error errMsg number errNum
		error "unable to fmGUI_CustomFunctions_Open - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_Open

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

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
