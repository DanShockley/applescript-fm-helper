-- fmGUI_ManageLayouts_Layout_CreateOrUpdate({layoutName:null, oldLayoutName:null, doNotChangeExisting:false, baseTableName:null, layoutParentFolder:"", includeInLayoutMenus:0, menuSet:null, formViewEnabled:1, listViewEnabled:1, tableViewEnabled:1, defaultView:"Form View", scriptTriggers:{}})
-- Dan Shockley
-- Create/Update a layout.


(*
HISTORY:
	2020-03-04 ( dshockley ): Minor fixes. Proper calls to fmGUI_CheckboxSet and fmGUI_PopupSet. 1625: Added support for addNearTop. 1638: Standardized version. Added fmGUI_ALL_Utilities_Close. 
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. Use clickObjectByCoords instead of older function.
	-- 1.4 - 2017-06-14 ( eshagdar ): narrowed scope
	-- 1.3 - 2017-05-18 ( eshagdar ): updated for FM15.
	-- 1.2 - 2016-08-24 ( eshagdar ): wait until 'Layout Setup' window comes up.
	-- 1.1 - 2013-11-22 ( dshockley ): If oldLayoutName is specified, will look for and change layout name, even if otherwise doNotChangeExisting. 
	
	-- TODO: NOT HANDLING SCRIPT TRIGGERS YET!!! 2013-11-20-dshockley


REQUIRES:
	clickObjectByCoords
	logConsole
	fmGUI_CheckboxSet
	fmGUI_ALL_Utilities_Close
	fmGUI_ManageLayouts_LayoutFolderSelect
	fmGUI_ManageLayouts_Open
	fmGUI_ManageLayouts_PopupNewItemOfType
	fmGUI_ManageLayouts_Select
	fmGUI_PopupSet
	windowWaitUntil_FrontIS
*)

property ScriptName : "fmGUI_ManageLayouts_Layout_CreateOrUpdate"
property debugMode : true

on run
	fmGUI_ManageLayouts_Layout_CreateOrUpdate({layoutName:"Directory"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_Layout_CreateOrUpdate(layoutOptions)
	-- version 2020-03-04-1638
	
	set defaultPrefs to {layoutName:null, oldLayoutName:null, doNotChangeExisting:false, baseTableName:null, layoutParentFolder:"", includeInLayoutMenus:0, menuSet:null, formViewEnabled:1, listViewEnabled:1, tableViewEnabled:1, defaultView:"Form View", scriptTriggers:{}, addNearTop:false}
	
	set layoutOptions to layoutOptions & defaultPrefs
	
	set layoutName to layoutName of layoutOptions
	set oldLayoutName to oldLayoutName of layoutOptions
	
	-- Select a Layout and Edit it, or create it if it didn't exist yet.
	try
		fmGUI_ALL_Utilities_Close()
		fmGUI_ManageLayouts_Open({})
		
		-- INIT: 
		set foundThisLayout to false
		set foundOldLayout to false
		set layoutSelected to false
		
		
		set foundThisLayout to fmGUI_ManageLayouts_Select({layoutName:layoutName})
		set layoutSelected to foundThisLayout
		
		
		if oldLayoutName is not null then
			set foundOldLayout to fmGUI_ManageLayouts_Select({layoutName:oldLayoutName})
			if foundThisLayout and foundOldLayout then
				error "Couldn't fmGUI_ManageLayouts_Layout_CreateOrUpdate: Both the old '" & oldLayoutName & "' and the 'new' layout name '" & layoutName & "' already exist - PROBLEM!"
			else if foundOldLayout then
				set layoutSelected to true
			end if
			
		end if
		
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set manageLayoutsWindow to window 1
			end tell
		end tell
		
		if layoutSelected then
			if doNotChangeExisting of layoutOptions and not foundOldLayout then
				-- do NOT change if it already exists with the correct name.
			else
				-- exists and was selected, so click Edit: 
				
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set buttonRef to first button of manageLayoutsWindow whose title is "Edit"
					end tell
				end tell
				
				clickObjectByCoords(buttonRef)
				windowWaitUntil_FrontIS({windowName:"Layout Setup"})
				
				
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set layoutSetupDialog to window 1
						set interfaceParent to tab group 1 of layoutSetupDialog
						
						if foundOldLayout then
							-- need to rename this layout:
							set value of text field "Layout Name" of interfaceParent to layoutName
						end if
					end tell
				end tell
				
				
				if doNotChangeExisting of layoutOptions then
					
				else -- ALLOWED to CHANGE the other properties of the layout:
					tell application "System Events"
						tell application process "FileMaker Pro Advanced"
							click (first radio button of interfaceParent whose name is "General")
							set showRecordsButton to pop up button "Show records from:" of interfaceParent
							set inludeInMenuButton to checkbox "Include in layout menus" of interfaceParent
							set menuSetButton to pop up button "Menu Set:" of interfaceParent
						end tell
					end tell
					
					if baseTableName of layoutOptions is not null then fmGUI_PopupSet({objRef:my coerceToString(showRecordsButton), objValue:baseTableName of layoutOptions})
					if includeInLayoutMenus of layoutOptions is not null then fmGUI_CheckboxSet({objRef:inludeInMenuButton, objValue:includeInLayoutMenus of layoutOptions})
					if menuSet of layoutOptions is not null then fmGUI_PopupSet({objRef:menuSetButton, objValue:menuSet of layoutOptions})
					
					
					tell application "System Events"
						tell application process "FileMaker Pro Advanced"
							click (first radio button of interfaceParent whose name is "Views")
							set formCheckbox to checkbox "Form View" of interfaceParent
							set listCheckbox to checkbox "List View" of interfaceParent
							set tableCheckbox to checkbox "Table View" of interfaceParent
							set defaultButton to pop up button "Default view:" of interfaceParent
						end tell
					end tell
					
					
					if formViewEnabled of layoutOptions is not null then fmGUI_CheckboxSet({objRef:formCheckbox, objValue:formViewEnabled of layoutOptions})
					if listViewEnabled of layoutOptions is not null then fmGUI_CheckboxSet({objRef:listCheckbox, objValue:listViewEnabled of layoutOptions})
					if tableViewEnabled of layoutOptions is not null then fmGUI_CheckboxSet({objRef:tableCheckbox, objValue:tableViewEnabled of layoutOptions})
					if defaultView of layoutOptions is not null then fmGUI_PopupSet({objRef:defaultButton, objValue:defaultView of layoutOptions})
					
				end if
				
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						click button "OK" of layoutSetupDialog
					end tell
				end tell
			end if
			
			-- END IF: existing to edit.
			
		else
			-- BEGIN: does not exist - need to create it:
			
			if length of (layoutParentFolder of layoutOptions) is greater than 0 then
				-- create it IN a layout folder:
				-- Select the folder, or create it if it doesn't exist yet:
				if not fmGUI_ManageLayouts_LayoutFolderSelect({folderName:layoutParentFolder of layoutOptions}) then
					fmGUI_ManageLayouts_PopupNewItemOfType("Folder…")
					tell application "System Events"
						tell application process "FileMaker Pro Advanced"
							set value of text field "Folder Name:" of window 1 to layoutParentFolder of layoutOptions
							click button "OK" of window 1
							set newFolderRow to first row of (outline 1 of scroll area 1 of manageLayoutsWindow) whose value of text field 1 of group 1 is layoutParentFolder of layoutOptions
							set checkboxRef to checkbox 1 of newFolderRow
						end tell
					end tell
					fmGUI_CheckboxSet({objRef:checkboxRef, objValue:1})
					
				end if
			else if addNearTop of layoutOptions then
				-- select the 1st row/layout so that this new one gets added just below it, instead of at bottom of whole list:
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						select row 1 of outline 1 of scroll area 1 of manageLayoutsWindow
					end tell
				end tell
				
			end if
			
			
			
			-- Create the layout:
			if debugMode then logConsole(ScriptName, "creating layout: " & (layoutName of layoutOptions))
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set buttonRef to first button of manageLayoutsWindow whose title is "New"
				end tell
			end tell
			
			-- BEGIN: NEW WINDOW CODE
			clickObjectByCoords(buttonRef)
			windowWaitUntil_FrontIS({windowName:"New Layout/Report"})
			
			
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newLayoutDialog to window 1
					set value of text field 1 of newLayoutDialog to layoutName of layoutOptions
					set buttonRef to pop up button 1 of newLayoutDialog
				end tell
			end tell
			fmGUI_PopupSet({objRef:buttonRef, objValue:baseTableName of layoutOptions})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click button 4 of newLayoutDialog -- select 'Computer'
					click button 6 of newLayoutDialog -- select 'Form'
					
					-- we don't care which mode to view in, so Finish:
					click button "Finish" of newLayoutDialog
				end tell
			end tell
			
			delay 1
			
			-- Now, believe it or not, need to call ITSELF since not all options available during Create:
			fmGUI_ManageLayouts_Layout_CreateOrUpdate(layoutOptions)
			
			-- END IF: does not exist - need to create it.
		end if
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_Layout_CreateOrUpdate '" & layoutName of layoutOptions & "' - " & errMsg number errNum
	end try
	
	
end fmGUI_ManageLayouts_Layout_CreateOrUpdate

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ALL_Utilities_Close()
	tell application "fmGuiLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on fmGUI_ManageLayouts_LayoutFolderSelect(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_LayoutFolderSelect(prefs)
end fmGUI_ManageLayouts_LayoutFolderSelect

on fmGUI_ManageLayouts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ManageLayouts_PopupNewItemOfType(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_PopupNewItemOfType(prefs)
end fmGUI_ManageLayouts_PopupNewItemOfType

on fmGUI_ManageLayouts_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Select(prefs)
end fmGUI_ManageLayouts_Select

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
