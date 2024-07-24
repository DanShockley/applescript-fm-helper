-- fmGUI_ManageLayouts_Edit({layoutName:null})
-- Dan Shockley
-- select a layout from Manage Layouts window


(*
HISTORY:
	1.1 - 2017-11-06 ( eshagdar ): added window error checking. set objects via handlers. simplified logic.
	1.0 - 201x-xx-xx ( dshockley ): created


TODO:
	printing/triggers tabs.


REQUIRES:
	fmGUI_CheckboxSet
	fmGUI_ManageLayouts_Open
	fmGUI_ManageLayouts_OpenEditForSelected
	fmGUI_ManageLayouts_Select
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_CancelButton
	fmGUI_ObjectClick_OkButton
	fmGUI_PopupSet
	fmGUI_TextFieldSet
*)


on run
	fmGUI_ManageLayouts_Edit({layoutName:"Directory", layoutOldName:"Directory2", baseTableName:"ZZ_INTERFACE", doNotChangeExisting:true})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Edit(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {layoutName:null, layoutOldName:null, editExistingSetupWindow:false, doNotChangeExisting:false, baseTableName:null, includeInLayoutMenus:0, menuSet:"[File Default]", formViewEnabled:1, listViewEnabled:1, tableViewEnabled:1, defaultView:"Form View", scriptTriggers:{}}
		set prefs to prefs & defaultPrefs
		set layoutName to layoutName of prefs
		set editWindowName to "Layout Setup"
		
		if layoutName is null then error "must specify layout name" number -1024
		
		
		-- already have edit window open, so need to check if we should be using this window or re-selecting another window
		-- todo: check for first STANDARD window
		if fmGUI_NameOfFrontmostWindow() is equal to editWindowName then
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set currentLayoutName to value of text field "Layout Name" of tab group 1 of window 1
				end tell
			end tell
			if editExistingSetupWindow of prefs then
				--continue
			else if currentLayoutName is equal to layoutName or currentLayoutName is equal to layoutOldName of prefs then
				-- continue
			else
				--need to close this window and find the layout to edit
				fmGUI_ObjectClick_CancelButton({})
			end if
		end if
		
		
		-- find layout to edit
		if fmGUI_NameOfFrontmostWindow() is not equal to editWindowName then
			fmGUI_ManageLayouts_Open({})
			set foundThisLayout to fmGUI_ManageLayouts_Select({layoutName:layoutName})
			if layoutOldName of prefs is not null then
				set foundOldLayout to fmGUI_ManageLayouts_Select({layoutName:layoutOldName of prefs})
				if foundThisLayout and foundOldLayout then
					error "Both the old '" & layoutOldName of prefs & "' and the current layout name '" & layoutName & "' already exist - PROBLEM!"
				else if not foundThisLayout and not foundOldLayout then
					error "Neither the old '" & layoutOldName of prefs & "' nor the current layout name '" & layoutName & "' already exist - PROBLEM!"
				end if
				if foundThisLayout and not foundOldLayout then fmGUI_ManageLayouts_Select({layoutName:layoutName})
			end if
			fmGUI_ManageLayouts_OpenEditForSelected({})
		end if
		
		
		-- edit layout settings - GENERAL
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set tabButton to radio button "General" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:tabButton})
		
		-- ensure layout name is updated
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set layoutNameObj to text field "Layout Name" of tab group 1 of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:layoutNameObj, objValue:layoutName})
		
		
		if not doNotChangeExisting of prefs then
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set includeInMenuCheck to checkbox "Include in layout menus" of tab group 1 of window 1
					set sourceTO to pop up button 1 of tab group 1 of window 1
					--set saveAutomaticallyCheck to checkbox "Save record changes automatically" of tab group 1 of window 1
					--set showFramesCheck to checkbox "Show field frames when record is active" of tab group 1 of window 1
					--set listRecordIndicatorCheck to checkbox "Show current record indicator in List View" of tab group 1 of window 1
					--set delineateCurrentRecordCheck to checkbox "Delineate fields on current record only" of tab group 1 of window 1
					set menuSet to pop up button 2 of tab group 1 of window 1
					--set quickFindCheck to checkbox "Enable Quick Find" of tab group 1 of window 1
				end tell
			end tell
			
			fmGUI_CheckboxSet({objRef:includeInMenuCheck, objValue:includeInLayoutMenus of prefs})
			if baseTableName of prefs is not null then fmGUI_PopupSet({objRef:sourceTO, objValue:baseTableName of prefs})
			fmGUI_PopupSet({objRef:menuSet, objValue:menuSet of prefs})
		end if
		
		
		-- edit layout settings - VIEWS
		if not doNotChangeExisting of prefs then
			
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set tabButton to radio button "Views" of tab group 1 of window 1
				end tell
			end tell
			fmGUI_ObjectClick_Button({buttonRef:tabButton})
			
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set formViewCheck to checkbox "Table View" of tab group 1 of window 1
					set listViewCheck to checkbox "List View" of tab group 1 of window 1
					set tableViewCheck to checkbox "Form View" of tab group 1 of window 1
					set defaultViewObj to pop up button 1 of tab group 1 of window 1
				end tell
			end tell
			
			fmGUI_CheckboxSet({objRef:formViewCheck, objValue:formViewEnabled of prefs})
			fmGUI_CheckboxSet({objRef:listViewCheck, objValue:listViewEnabled of prefs})
			fmGUI_CheckboxSet({objRef:tableViewCheck, objValue:tableViewEnabled of prefs})
			fmGUI_PopupSet({objRef:defaultViewObj, objValue:defaultView of prefs})
		end if
		
		
		-- edit layout settings - PRINTING
		
		
		
		-- edit layout settings - TRIGGERS
		
		
		
		-- save changes
		fmGUI_ObjectClick_OkButton({})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Edit - " & errMsg number errNum
	end try
end fmGUI_ManageLayouts_Edit

--------------------
-- END OF CODE
--------------------

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ManageLayouts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ManageLayouts_OpenEditForSelected(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_OpenEditForSelected(prefs)
end fmGUI_ManageLayouts_OpenEditForSelected

on fmGUI_ManageLayouts_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Select(prefs)
end fmGUI_ManageLayouts_Select

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
