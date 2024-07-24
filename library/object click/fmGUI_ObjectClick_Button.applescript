-- fmGUI_ObjectClick_Button({buttonName:null, buttonRef:null, windowNameThatCloses:null, windowNameThatOpens:null})
-- Erik Shagdar
-- Wrapper method for clicking the ok button and waiting for the window to close


(*
REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	windowWaitUntil_FrontNotIS
	windowWaitUntil_FrontIS
	

HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.3.1 - 2018-12-07 ( eshagdar ): FM process name contains 'Advanced'.
	1.3 - 2017-11-20 ( eshagdar ): make sure we're talking to the correct window - there may be several windows 'in front of' the manage layouts window.
	1.2 - 2017-11-06 ( eshagdar ): added windowNameThatOpens.
	1.1 - 2017-xx-xx ( eshagdar): made into a general use handler that can take a button name.
	1.0 - 2017-09-06 ( eshagdar ): created
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set windowContextRef to first window whose name begins with "Manage Layouts"
		end tell
	end tell
	
	fmGUI_ObjectClick_Button({buttonName:"Edit", windowContextRef:windowContextRef, windowNameThatOpens:"Layout Setup"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_Button(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {buttonName:null, buttonRef:null, windowContextRef:null, windowNameThatCloses:null, windowNameThatOpens:null}
	set prefs to prefs & defaultPrefs
	set buttonRef to ensureObjectRef(buttonRef of prefs)
	set windowNameThatCloses to windowNameThatCloses of prefs
	set windowNameThatOpens to windowNameThatOpens of prefs
	set windowContextRef to ensureObjectRef(windowContextRef of prefs)
	
	try
		fmGUI_AppFrontMost()
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		-- ensure windowContext
		if windowContextRef is null then
			tell application "System Events"
				tell process id fmProcID
					set windowContextRef to window 1
				end tell
			end tell
		end if
		
		-- use the most commonly found button reference ( unless specified )
		if buttonRef is null then
			tell application "System Events"
				tell process id fmProcID
					set buttonRef to button (buttonName of prefs) of windowContextRef
				end tell
			end tell
		end if
		
		
		-- click button		
		clickObjectByCoords(buttonRef)
		
		
		-- wait for window
		if windowNameThatCloses is not null then windowWaitUntil_FrontNotIS({windowName:windowNameThatCloses})
		if windowNameThatOpens is not null then windowWaitUntil_FrontIS({windowName:windowNameThatOpens})
		
		return true
	on error errMsg number errNum
		error "Unable to fmGUI_ObjectClick_Button - " & errMsg number errNum
	end try
end fmGUI_ObjectClick_Button

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil_FrontNotIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "fmGuiLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
