-- fmGUI_ManageScripts_FmScript_SaveAndExit({})
-- Erik Shagdar
-- save and close the frontmost script window.


(*
HISTORY:
	1.2 - 2017-08-07 ( eshagdar ): click menu items via handlers instead of directly.
	1.1 - 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageScripts_FmScript_SaveAndExit({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_FmScript_SaveAndExit(prefs)
	-- version 1.2
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set saveScriptMenuItem to menu item "Save Script" of menu "Scripts" of menu bar 1
				set needsSave to enabled of saveScriptMenuItem
				set closeScriptMenuItem to menu item "Close Tab" of menu "View" of menu bar 1
			end tell
		end tell
		
		if needsSave then fmGUI_ClickMenuItem({menuItemRef:saveScriptMenuItem})
		return fmGUI_ClickMenuItem({menuItemRef:closeScriptMenuItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageScripts_FmScript_SaveAndExit - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_FmScript_SaveAndExit

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



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
