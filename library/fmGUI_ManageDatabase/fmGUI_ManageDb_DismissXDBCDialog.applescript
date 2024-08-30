-- fmGUI_ManageDb_DismissXDBCDialog(prefs)
-- Erik Shagdar
-- Dismiss XDBC connections dialogs


(*
HISTORY:
	1.0 - created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
*)


on run
	fmGUI_ManageDb_DismissXDBCDialog({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_DismissXDBCDialog(prefs)
	-- version 1.0
	
	try
		fmGUI_AppFrontMost()
		
		-- get obj references
		tell application "System Events"
			tell application process "FileMaker Pro"
				set windowName to name of window 1
				try
					set cancelButton to button "Cancel" of window 1
				on error
					return true
				end try
			end tell
		end tell
		
		
		-- loop until we don't have any more xDBC windows
		repeat 100 times
			if windowName begins with "Connect to " then
				clickObjectByCoords(cancelButton)
				delay 1 -- seconds
			else
				return true
			end if
		end repeat
		
		
		-- we should never hit this ( unless there were more than 100 dialogs )
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_ManageDb_DismissXDBCDialog - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_DismissXDBCDialog

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

