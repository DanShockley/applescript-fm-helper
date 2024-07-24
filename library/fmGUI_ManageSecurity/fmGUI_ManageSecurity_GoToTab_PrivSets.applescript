-- fmGUI_ManageSecurity_GoToTab_PrivSets({})
-- Dan Shockley
-- Go to the "Privilege Sets" tab of manage security


(*
HISTORY:
	1.2.1 - 2017-09-06 ( eshagdar ): updated error message. updated call to pop up set.
	1.2 - 2017-07-12 ( eshagdar ) make sure the privSets are sorted by name
	1.1 - 2017-06-28 ( eshagdar ): pass in prefs
	1.0 - created


REQUIRES:
	fmGUI_ManageSecurity_GotoTab
*)


on run
	fmGUI_ManageSecurity_GoToTab_PrivSets({fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	-- version 1.2.1
	
	try
		fmGUI_ManageSecurity_GotoTab({tabName:"Privilege Sets"} & prefs)
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set viewByPopUpButton to pop up button "View by:" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_PopupSet({objRef:viewByPopUpButton, objValue:"Name"})
	on error errMsg number errNum
		error "fmGUI_ManageSecurity_GoToTab_PrivSets - " & errMsg number errNum
	end try
	
end fmGUI_ManageSecurity_GoToTab_PrivSets

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageSecurity_GotoTab(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GotoTab(prefs)
end fmGUI_ManageSecurity_GotoTab

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
