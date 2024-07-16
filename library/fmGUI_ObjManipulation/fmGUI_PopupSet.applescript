-- fmGUI_PopupSet({objRef:null, objValue:null})
-- Dan Shockley
-- Wrapper method for fmGUI_Popup_SelectByCommand that requires only an object and a choice


(*
REQUIRES:
	fmGUI_Popup_SelectByCommand
	

HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by process ID (works-with-FM19+). No change to actual handler, but bumped version for documentation.
	1.1 - 2017-07-06 ( eshagdar ): narrowed scope
	1.0 - created
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set frontmost to true
			--set TablePopupOnFieldTabOfManageDatabase to (pop up button "Table:" of tab group 1 of window 1)
			set popUpButtonRef to pop up button "Available menu commands:" of window 1
		end tell
	end tell
	
	fmGUI_PopupSet({objRef:popUpButtonRef, objValue:"Minimum"})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_PopupSet(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	
	try
		return fmGUI_Popup_SelectByCommand(prefs & {selectCommand:"contains"})
	on error errMsg number errNum
		error "Unable to fmGUI_PopupSet ( couldn't select '" & objValue of prefs & "' in popup ) - " & errMsg number errNum
	end try
end fmGUI_PopupSet

--------------------
-- END OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "htcLib" to fmGUI_Popup_SelectByCommand({objRef:objRefStr} & prefs)
end fmGUI_Popup_SelectByCommand



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
