-- fmGUI_ManageSecurity_PrivSet_Update_AccessLayout({accessLayout:null, layoutAccess:null})
-- Erik Shagdar
-- update layout access of the currently opened privilege set


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CheckboxSet
	fmGUI_ObjectClick_OkButton
	fmGUI_Popup_SelectByCommand
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessLayout({accessLayout:"Custom privileges...", layoutAccess:{allowCreate:1, layoutPrivList:{{layoutName:"ZZ_GLOBALS Basic", layoutAccess:"modifiable", dataAccess:"modifiable"}, {layoutName:"[Any New Layout]", layoutAccess:"modifiable", dataAccess:"modifiable"}}}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessLayout(prefs)
	-- version 2020-03-04-1533
	
	set defaultPrefs to {accessLayout:null, layoutAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				set windowName to name of window 1
				set layoutsPopup to pop up button "Layouts:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified layout
		fmGUI_Popup_SelectByCommand({objRef:layoutsPopup, objValue:accessLayout of prefs, accessLayout:null, layoutAccess:null})
		if accessLayout of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Layout Privileges"})
			
			-- get button refs to for each radio button
			tell application "System Events"
				tell application process "FileMaker Pro"
					set allowCreate to checkbox "Allow creation of new layouts" of window 1
					
					-- need to do it by reference since the 2 sets of radio buttons 'checkboxes' have the same name
					set layoutModify to a reference to checkbox 2 of window 1
					set layoutView to a reference to checkbox 3 of window 1
					set layoutNoAccess to a reference to checkbox 4 of window 1
					set recordModify to a reference to checkbox 5 of window 1
					set recordView to a reference to checkbox 6 of window 1
					set recordNoAccess to a reference to checkbox 7 of window 1
				end tell
			end tell
			
			
			-- update allow create new layouts checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of layoutAccess of prefs})
			
			
			-- look through each layout, ensuring the proper access is set
			repeat with oneLayoutRec in layoutPrivList of layoutAccess of prefs
				set oneLayoutRec to contents of oneLayoutRec
				tell application "System Events"
					tell application process "FileMaker Pro"
						set oneLayoutRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is layoutName of oneLayoutRec)
						select oneLayoutRow
						set oneLayoutInfo to name of every static text of oneLayoutRow
						
						
						-- now edit access for each row ( but only if the access is wrong )
						-- NOTE: we need to have FM click the radio buttons since they have the same name ( and so get de-referenced when the object is stringified ).
						
						-- first do record access ( since no layout access disables these radio buttons
						if item 4 of oneLayoutInfo is not equal to dataAccess of oneLayoutRec then
							if dataAccess of oneLayoutRec is equal to "modifiable" then
								click recordModify
							else if dataAccess of oneLayoutRec is equal to "view only" then
								click recordView
							else if dataAccess of oneLayoutRec is equal to "no access" then
								click recordNoAccess
							end if
						end if
						
						
						-- now do the layout access
						if item 3 of oneLayoutInfo is not equal to layoutAccess of oneLayoutRec then
							if layoutAccess of oneLayoutRec is equal to "modifiable" then
								click layoutModify
							else if layoutAccess of oneLayoutRec is equal to "view only" then
								click layoutView
							else if layoutAccess of oneLayoutRec is equal to "no access" then
								click layoutNoAccess
							end if
						end if
						
					end tell
				end tell
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessLayout - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessLayout

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
