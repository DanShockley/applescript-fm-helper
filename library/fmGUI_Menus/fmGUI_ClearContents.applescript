-- fmGUI_ClearContents()
-- Erik Shagdar
-- Clear contents/selected objects


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.0.1 - 2017-11-06 ( eshagdar ): updated handler to wait for the menu item.
	1.0 - 2016-10-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
*)


on run
	fmGUI_ClearContents()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ClearContents()
	-- version 2024-07-15
	
	try
		fmGUI_AppFrontMost()

		set fmProcID to my getFmAppProcessID()

		tell application "System Events"
			tell process id fmProcID
				set ClearMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name is "Clear"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:ClearMenuItem})
	on error errMsg number errNum
		error "Couldn't fmGUI_ClearContents - " & errMsg number errNum
	end try
	
end fmGUI_ClearContents

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
