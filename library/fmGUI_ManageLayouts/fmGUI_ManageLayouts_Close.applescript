-- fmGUI_ManageLayouts_Open(prefs)
-- NYHTC
-- close Manage Layouts


(*
HISTORY:
	1.3 - 2017-11-20 ( eshagdar ): make sure we're talking to the correct window - there may be several windows 'in front of' the manage layouts window.
	1.2 - 2017-11-06 ( eshagdar ): added to htcLib. button click via handler. wait until window closes.
	1.1 - 201x-xx-xx ( xxxxx ): 
	1.0 - 201x-xx-xx ( xxxxx ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_DataViewer_Close
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageLayouts_Close({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Close(prefs)
	-- version 1.3
	
	try
		set windowNamePart to "Manage Layouts"
		fmGUI_AppFrontMost()
		fmGUI_DataViewer_Close()
		
		if fmGUI_NameOfFrontmostWindow() starts with windowNamePart then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set contextWindow to first window whose name begins with layoutWindowName
					set closeButton to first button of contextWindow whose description is "close button"
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:closeButton})
			return windowWaitUntil({windowName:windowNamePart, windowNameTest:"does not contain"})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Close - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_DataViewer_Close()
	tell application "htcLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "htcLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil





on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
