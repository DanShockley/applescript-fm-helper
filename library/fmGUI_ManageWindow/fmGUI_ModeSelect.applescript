-- fmGUI_ModeSelect(modeToSelect)
-- Dan Shockley
-- Specify which mode to select - Layout, Browse, Find, Previiw


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.1 - 2016-08-29 ( eshagdar ): wait until mode changes.
	1.0 - 201x-xx-xx ( dshockley ): first created
*)


on run
	fmGUI_ModeSelect("Layout")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ModeSelect(modeToSelect)
	-- version 2024-07-15
	
	try
		fmGUI_AppFrontMost()
		fmGUI_Inspector_Close()
		set fmProcID to my getFmAppProcessID()
		tell application "System Events"
			tell process id fmProcID
				set menuItem to first menu item of menu 1 of menu bar item "View" of menu bar 1 whose name is equal to modeToSelect & " Mode"
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:menuItem})
		delay 0.5
		
		return true
	on error errMsg number errNum
		error "Couldn't switch to mode '" & modeToSelect & "' - " & errMsg number errNum
	end try
end fmGUI_ModeSelect

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_Inspector_Close()
	tell application "fmGuiLib" to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close

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
