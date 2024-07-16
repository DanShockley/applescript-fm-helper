-- fmGUI_CopySelected({})
-- Erik Shagdar
-- Copy the selected objects in the current window in FileMaker


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.3.1 - 2017-11-06 ( eshagdar ): try block encompasses param declaration. added clipboardClear to helper fucntions.
	1.3 - 2016-10-18 ( eshagdar ): use fmGUI_clickMenuItem handler
	1.2 - 2016-10-18 ( eshagdar ): make sure the menu item is available again
	1.1 - 2016-10-14 ( eshagdar ): 1.0 was looking only for script steps. now looks at non-zero length


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_Wait_MenuItemAvailable
*)


on run
	fmGUI_CopySelected({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CopySelected(prefs)
	-- version 2024-07-15
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		
		clipboardClear() -- want clipboard to be EMPTY before we copy, so we can check for copied scripts.
		
		tell application "System Events"
			tell process id fmProcID
				set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
			end tell
		end tell
		
		
		return fmGUI_clickMenuItem({menuItemRef:copyMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
end fmGUI_CopySelected

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on clipboardClear()
	tell application "htcLib" to clipboardClear()
end clipboardClear

on fmGUI_clickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_clickMenuItem(prefs)
end fmGUI_clickMenuItem

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
