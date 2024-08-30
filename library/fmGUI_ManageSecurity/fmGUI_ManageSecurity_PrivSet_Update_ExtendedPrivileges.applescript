-- fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges({extendPrivRows:null})
-- Erik Shagdar
-- update extended privileges of the currently opened privilege set


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CheckboxSet
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges({extendedPrivList:{"Access via FileMaker Network (fmapp)", "Require re-authentication after the specified minutes in sleep/background.  Go only. (fmreauthenticate10)", "Require re-authentication after the specified minutes in sleep/background.  Go only. (fmreauthenticate0)"}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges(prefs)
	-- version 2020-03-04-1534
	
	set defaultPrefs to {extendPrivRows:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set windowName to name of window 1
				set extendPrivRows to rows of table 1 of scroll area 1 of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		repeat with oneExtendedPrivRow in extendPrivRows
			set oneExtendedPrivRow to contents of oneExtendedPrivRow
			tell application "System Events"
				tell application process "FileMaker Pro"
					set oneExtendedPrivCheckbox to checkbox 1 of oneExtendedPrivRow
					set oneExtendedPrivName to name of oneExtendedPrivCheckbox
				end tell
			end tell
			if oneExtendedPrivName is in extendedPrivList of prefs then
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:1})
			else
				fmGUI_CheckboxSet({objRef:oneExtendedPrivCheckbox, objValue:0})
			end if
		end repeat
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_ExtendedPrivileges

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
