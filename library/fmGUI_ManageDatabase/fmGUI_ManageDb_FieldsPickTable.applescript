-- fmGUI_ManageDb_FieldsPickTable(baseTableName)
-- Erik Shagdar
-- select the specified ( if not already selected ) base table on the Fields tab of Manage Database.


(*
HISTORY:
	1.4.1 - 2017-09-06 ( eshagdar ): updated error message. updated call to pop up set.
	1.4 - 2016-10-28 ( eshagdar ): ensure app is frontmost
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDb_GoToTab_Fields
	fmGUI_PopupSet
*)


on run
	fmGUI_ManageDb_FieldsPickTable("ZZ_GLOBALS")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_FieldsPickTable(baseTableName)
	-- version 1.4.1
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Fields({})
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set tablePopUpButton to pop up button "Table:" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_PopupSet({objRef:tablePopUpButton, objValue:baseTableName})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_FieldsPickTable ( couldn't select table '" & baseTableName & "' ) - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_FieldsPickTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_GoToTab_Fields(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Fields(prefs)
end fmGUI_ManageDb_GoToTab_Fields

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
