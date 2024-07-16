-- fmGUI_Menu_OpenDB({})
-- Erik Shagdar
-- Click Open Manage Database menu item


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.1 - 2017-11-06 ( eshagdar ): wait until window renders.
	1.0.1 - 2017-11-03 ( eshagdar ): updated error message.
	1.0 - 2017-08-23 ( eshagdar ): copied logic from fmGUI_Cut


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
	windowWaitUntil
*)


on run
	fmGUI_Menu_OpenDB({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Menu_OpenDB(prefs)
	-- version 2024-07-15
	
	try
		fmGUI_AppFrontMost()
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		
		tell application "System Events"
			tell process id fmProcID
				set openManageDBMenuItem to first menu item of menu 1 of menu item "Manage" of menu 1 of menu bar item "File" of menu bar 1 whose name starts with "Database"
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:openManageDBMenuItem})
		
		return windowWaitUntil({windowName:"Manage Database for"})
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_OpenDB - " & errMsg number errNum
	end try
end fmGUI_Menu_OpenDB

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "htcLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil

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
