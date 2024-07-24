-- fmGUI_Wait_MenuItemAvailable({menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5})
-- Erik Shagdar
-- wait until the specified menu item is available


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by process ID (works-with-FM19+). Bumped handler version to reflect documentation change. 
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-11-06 ( eshagdar ): taken from the sub-handler ( which should return an asnwer right away instead of wating ).


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
		end tell
	end tell
	fmGUI_Wait_MenuItemAvailable({menuItemRef:copyMenuItem})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Wait_MenuItemAvailable(prefs)
	-- version 2024-07-15
	
	try
		set defaultPrefs to {menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5}
		set prefs to prefs & defaultPrefs
		if menuItemRef of prefs is null then error "menuItemRef not specified" number -1024
		
		fmGUI_AppFrontMost()
	
		repeat ((maxTimeoutSec of prefs) / (checkFrequencySec of prefs) as integer) times
			if fmGUI_MenuItemAvailable({menuItemRef:menuItemRef of prefs}) then return true
		end repeat
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_Wait_MenuItemAvailable - " & errMsg number errNum
	end try
end fmGUI_Wait_MenuItemAvailable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_MenuItemAvailable(prefs)
	tell application "fmGuiLib" to fmGUI_MenuItemAvailable({menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs)
end fmGUI_MenuItemAvailable



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
