-- fmGUI_PasteFromClipboard()
-- Erik Shagdar
-- Paste FileMaker object into the current context. Assumes the focus is already set and there is an object in the clipboard


(*
HISTORY:
	2024-07-16 ( danshockley ): Simplified to just get first menu item that starts with Paste, since that is likely the default/simplest.
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.3.1 - 2017-11-06 ( eshagdar ): wait for the paste to finish.
	1.3 - 2016-10-27 ( eshagdar ): added try block.
	1.2 - 2016-10-18 ( eshagdar ): call fmGUI_clickMenuItem handler
	1.1 - 2016-09-29 ( eshagdar ): HTC is converting 'Paste' menu item to 'Paste Styled Text'. The default 'Paste' shortcut is pasting plain text. This tries the default 'Paste' command, and then uses 'Paste Styled Text' if needed.
	1.0 - 2016-06-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_clickMenuItem
*)


on run
	fmGUI_PasteFromClipboard()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_PasteFromClipboard()
	-- version 2024-07-15
	
	try
		fmGUI_AppFrontMost()
		set fmProcID to my getFmAppProcessID()
		tell application "System Events"
			tell process id fmProcID
				-- get the menu item
				set pasteMenuItem to first menu item of menu 1 of menu bar item "Edit" of menu bar 1 whose name starts with "Paste"
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:pasteMenuItem, waitForMenuAvailable:true})
	on error errMsg number errNum
		error "Couldn't fmGUI_CopySelected - " & errMsg number errNum
	end try
	
end fmGUI_PasteFromClipboard

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
