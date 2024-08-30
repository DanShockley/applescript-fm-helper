-- fmGUI_ManageSecurity_PrivSet_Update_AccessValueList({accessVL:null, vlAccess:null})
-- Erik Shagdar
-- update value list access of the currently opened privilege set


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_CheckboxSet
	fmGUI_ObjectClick_OkButton
	fmGUI_Popup_SelectByCommand
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessValueList({accessVL:"Custom privileges...", vlAccess:{allowCreate:0, vlPrivList:{{vlName:"YesNo", vlPriv:"view only"}, {vlName:"CompleteInProgress", vlPriv:"modifiable"}, {vlName:"[Any New Value List]", vlPriv:"view only"}}}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessValueList(prefs)
	-- version 2020-03-04-1534
	
	set defaultPrefs to {accessVL:null, vlAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set windowName to name of window 1
				set valueListsPopup to pop up button "Value Lists:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified value list
		fmGUI_Popup_SelectByCommand({objRef:valueListsPopup, objValue:accessVL of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessVL of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Value List Privileges"})
			-- get button refs to for each radio button
			tell application "System Events"
				tell application process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new value lists" of window 1
					
					set modifyCheckbox to checkbox 2 of window 1
					set viewCheckbox to checkbox 3 of window 1
					set noAccessCheckbox to checkbox 4 of window 1
				end tell
			end tell
			
			-- update allow create new value list checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of vlAccess of prefs})
			
			
			-- look through each value list, ensuring the proper access is set
			repeat with oneVLRec in vlPrivList of vlAccess of prefs
				set oneVLRec to contents of oneVLRec
				tell application "System Events"
					tell application process "FileMaker Pro"
						set oneVLRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is vlName of oneVLRec)
						select oneVLRow
						set oneVLInfo to name of every static text of oneVLRow
					end tell
				end tell
				
				
				-- now edit access for each row ( but only if the access is wrong )
				if item 2 of oneVLInfo is not equal to vlPriv of oneVLRec then
					if vlPriv of oneVLRec is equal to "modifiable" then
						clickObjectByCoords(modifyCheckbox)
					else if vlPriv of oneVLRec is equal to "view only" then
						clickObjectByCoords(viewCheckbox)
					else if vlPriv of oneVLRec is equal to "no access" then
						clickObjectByCoords(noAccessCheckbox)
					end if
				end if
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessValueList - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessValueList

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

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
