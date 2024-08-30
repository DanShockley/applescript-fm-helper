-- fmGUI_ManageSecurity_Cancel({})
-- Erik Shagdar
-- Close ( and CANCEL ) Manage Security


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-08-07 ( eshagdar ): copied logic from fmGUI_ManageSecurity_Save


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_Cancel({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_Cancel(prefs)
	-- version 2020-03-04-1532
	
	set defaulPrefs to {}
	set prefs to prefs & defaulPrefs
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				if name of window 1 does not contain "Manage Security for" then error "Not in main Manage Security window." number 1024
				set cancelButton to first button of window 1 whose name is equal to "Cancel"
			end tell
		end tell
		
		-- save security changes
		clickObjectByCoords(cancelButton)
		delay 0.5
		
		
		-- confirm discard
		try
			tell application "System Events"
				tell application process "FileMaker Pro"
					set discardButton to button "Discard" of window 1
				end tell
			end tell
			clickObjectByCoords(discardButton)
		end try
		
		
		-- wait until window is gone
		windowWaitUntil({whichWindow:"front", windowNameTest:"is not", windowName:"FileMaker Pro Advanced"})
		windowWaitUntil({whichWindow:"front", windowNameTest:"does not start with", windowName:"Manage Security"})
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_Cancel - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_Cancel

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

