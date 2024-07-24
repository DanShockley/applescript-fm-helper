-- fmGUI_ManageLayouts_OpenEditForSelected({})
-- for the selected layout, open the edit window


(*
HISTORY:
	1.2 - 2024-04-04 ( danshockley ): Work with whatever the frontmost FileMaker app name is, instead of FMA (18) only.
	1.1 - 2017-11-20 ( eshagdar ): make sure we're talking to the correct window - there may be several windows 'in front of' the manage layouts window.
	1.0 - 2017-11-06 ( eshagdar ): created


REQUIRES:
	fmGUI_Menu_OpenLayouts
*)


on run
	fmGUI_ManageLayouts_OpenEditForSelected({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_OpenEditForSelected(prefs)
	-- version 1.2
	
	try
		set defaultPrefs to {}
		set prefs to prefs & defaultPrefs
		
		tell application "System Events"
			set fmAppName to get name of first application process whose frontmost is true
			
			if fmAppName does not contain "FileMaker" then
				set scriptResult to "NOT in FileMaker? Front app name is " & fmAppName
				return scriptResult
			end if
			
			tell application process fmAppName
				if not frontmost then set frontmost to true
				set windowContextRef to first window whose name begins with "Manage Layouts"
			end tell
		end tell
		
		return fmGUI_ObjectClick_Button({buttonName:"Edit", windowContextRef:windowContextRef, windowNameThatOpens:"Layout Setup"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_OpenEditForSelected - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_OpenEditForSelected

--------------------
-- END OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	set prefs to {windowContextRef:coerceToString(windowContextRef of prefs)} & prefs
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button




on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
