-- fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
-- Erik Shagdar
-- open the currently selected privSet


(*
HISTORY:
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	clickObjectByCoords
*)


on run
	fmGUI_ManageSecurity_PrivSet_OpenSelected({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	-- version 1.0
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro"
				if name of window 1 does not start with "Manage Security" then error "Manage Security window must be open" number -1024
				set editButton to first button of tab group 1 of window 1 whose name is "Edit…"
				if enabled of editButton is false then error "PrivSet is not selected" number -1024
			end tell
		end tell
		clickObjectByCoords(editButton)
		windowWaitUntil({windowName:"Edit Privilege Set"})
		return true
		
		error "failed opening  edit PrivSetWindow window" number -1024
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_OpenSelected - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_OpenSelected

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on clickObjectByCoords(someObject)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

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
