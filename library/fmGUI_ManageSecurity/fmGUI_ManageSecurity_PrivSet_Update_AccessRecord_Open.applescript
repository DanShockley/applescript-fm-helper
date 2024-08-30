-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({})
-- Erik Shagdar
-- select the specified item from the record access pop up. opens the custom privileges window if needed.


(*
HISTORY:
	1.0.1 - 2018-01-25 ( eshagdar ): set default for accessRecord key to custom privileges since that is the only way to open.
	1.0 - 2017-11-07 ( eshagdar ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_Popup_SelectByCommand
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {accessRecord:"Custom privileges..."}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Edit Privilege Set" then error "wrong starting window" number -1024
		
		
		-- set record access pop up, waiting for  custom privileges window if needed
		tell application "System Events"
			tell application process "FileMaker Pro"
				set recordsPopup to pop up button "Records:" of window 1
			end tell
		end tell
		fmGUI_Popup_SelectByCommand({objRef:recordsPopup, objValue:accessRecord of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessRecord of prefs begins with "Custom privileges" then windowWaitUntil_FrontIS({windowName:"Custom Record Privileges"})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_Popup_SelectByCommand(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_Popup_SelectByCommand({objRef:objRefStr} & prefs)
end fmGUI_Popup_SelectByCommand

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
