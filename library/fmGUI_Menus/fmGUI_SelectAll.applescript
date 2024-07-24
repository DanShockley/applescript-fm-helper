-- fmGUI_SelectAll({})
-- Erik Shagdar
-- Copy the selected objects in the current window in FileMaker


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.4.1 - 2018-01-18 ( eshagdar ): get menu item directly instead of finding it using 'whose'.
	1.4 - 2017-11-06 ( eshagdar ): inaccurate history - start a new version.
	1.3 - 2016-10-18 ( eshagdar ): use fmGUI_clickMenuItem handler
	1.2 - 2016-10-18 ( eshagdar ): make sure the menu item is available again
	1.1 - 2016-10-14 ( eshagdar ): 1.0 was looking only for script steps. now looks at non-zero length


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
*)


on run
	fmGUI_SelectAll()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_SelectAll()
	-- version 2024-07-15
	
	try
		fmGUI_AppFrontMost()
				set fmProcID to my getFmAppProcessID()
		tell application "System Events"
			tell process id fmProcID
				set SelectAllMenuItem to menu item "Select All" of menu 1 of menu bar item "Edit" of menu bar 1
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:SelectAllMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAll - " & errMsg number errNum
	end try
end fmGUI_SelectAll

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
