-- fmGUI_CustomMenus_MenuSet_CreateUpdate({})
-- Dan Shockley
-- create/update a menu set


(*
HISTORY:
	1.4 - 2017-12-18 ( eshagdar ): added to fmGuiLib. renamed fmGUI_CustomMenus_CustomMenuSet_CreateUpdate to fmGUI_CustomMenus_MenuSet_CreateUpdate.
	1.3 - 2014-06-12 ( dshockley ): updated to successfully finish editing menus
	1.2 - 2014-03-06 ( dshockley ): updated to remove any extra menu items that go beyond what was specified by the parameters. 
	1.1 - 2014-01-15 ( dshockley ): 
	1.0 - 201x-xx-xx ( dshockley ): created


REQUIRES:
	fmGUI_CustomMenus_GotoTab_MenuSets
	fmGUI_CustomMenus_MenuSet_Select
	fmGUI_ObjectClick_Button
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_CustomMenus_MenuSet_CreateUpdate({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomMenus_MenuSet_CreateUpdate(prefs)
	-- version 1.4
	
	try
		set defaultPrefs to {menuSetRec:null}
		set prefs to prefs & defaultPrefs
		set menuSetRec to menuSetRec of prefs
		
		
		-- open menu sets window
		fmGUI_CustomMenus_GotoTab_MenuSets({})
		
		
		-- get button refs
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set createButton to first button of tab group 1 of window 1 whose name starts with "Create"
				set editButton to first button of tab group 1 of window 1 whose name starts with "Edit"
				set duplicateButton to first button of tab group 1 of window 1 whose name starts with "Duplicate"
			end tell
		end tell
		
		
		-- determine next command, and get to menu set edit window
		set menuSetAlreadyExists to fmGUI_CustomMenus_MenuSet_Select({menuSetName:menuSetName of menuSetRec})
		try
			set menuSetToDupeFromExisting to fmGUI_CustomMenus_MenuSet_Select({menuSetName:dupeExisting of menuSetRec})
		on error
			set menuSetToDupeFromExisting to false
		end try
		
		if menuSetAlreadyExists then
			fmGUI_ObjectClick_Button({buttonRef:editButton})
		else if menuSetToDupeFromExisting then
			fmGUI_ObjectClick_Button({buttonRef:duplicateButton})
			fmGUI_ObjectClick_Button({buttonRef:editButton})
		else
			fmGUI_ObjectClick_Button({buttonRef:createButton})
		end if
		
		windowWaitUntil_FrontIS({windowName:"Edit Custom Menu Set"})
		
		
		-- We now have open a custom menu SET we can create/edit:
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				-- ensure name and comment
				set value of text field "Menu Set Name:" of window 1 to menuSetName of menuSetRec
				set value of text field "Comment:" of window 1 to menuSetComment of menuSetRec
				
				-- get button refs
				set menuTable to table 1 of scroll area 1 of window 1
				set menuEditButton to first button of window 1 whose name starts with "Edit"
				set menuAddButton to first button of window 1 whose name starts with "Add"
				set menuRemoveButton to first button of window 1 whose name starts with "Remove"
				
				-- other info
				set initialRowCount to count of rows of table 1 of scroll area 1 of window 1
				
				
				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				-- TODO: continue updated from here				
				
				
				-- iterate through menuList
				set menuNeededCount to count of menuList of menuSetRec
				repeat with menuRowNumber from 1 to menuNeededCount
					set oneMenuRec to CustomMenu of item menuRowNumber of menuList of menuSetRec
					
					(*
					For each MENU that should be in this Custom Menu Set, we need to see if the row-by-index menu is the correct one. If it isn't, then we need to select that wrong one, ADD the right one, make any tweaks to that, save it, then REMOVE the wrong one that is (now) above.					
					*)
					
					set nextCommand to null
					try
						select row menuRowNumber of menuTable
						set nextCommand to "CHECK" -- no error selecting, so EDIT.
						set rowSelected to row menuRowNumber of menuTable
					on error
						-- couldn't select the row number we want, so ADD, and try to select previous
						set nextCommand to "ADD" -- could NOT select specified row, so need to ADD a Menu, AFTER the previous row.
						try
							select row (menuRowNumber - 1) of menuTable
						on error
							-- if we could not select "previous" it would be because there was no previous, so just ignore this error. 
						end try
					end try
					
					if nextCommand is "CHECK" then
						if value of static text 1 of rowSelected is equal to menuName of oneMenuRec then
							set nextCommand to "EDIT" -- Has the MATCHING name, so edit it.
						else
							set nextCommand to "REPLACE" -- wrong menu, so replace.
						end if
					end if
					
					if debugMode then my logConsole(ScriptName, menuName of oneMenuRec & " - " & nextCommand)
					
					if nextCommand is "ADD" or nextCommand is "REPLACE" then
						if name of window 1 is "Edit Custom Menu Set" then
							my fmGUI_ObjectClick_AffectsWindow(menuAddButton)
						end if
						try -- to select the menu specified:
							if not my windowWaitUntil_FrontIS({windowName:"Select Menu"}) then error "Timed out waiting for 'Select Menu' window." number 1024
							
							select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is menuName of oneMenuRec)
							my fmGUI_ObjectClick_AffectsWindow(button "Select" of window 1)
							
						on error errMsg number errNum
							-- that menu does NOT EXIST, so need to create it: 
							
							if debugMode then my logConsole(ScriptName, "Select Menu failed ( need to create ): " & errMsg)
							my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose description starts with "New Menu")
							
							if my isNullOrEmpty(menuBasedOn of oneMenuRec) or menuBasedOn of oneMenuRec is "none" then
								-- CHOICE: Start with an empty menu:
								click (first checkbox of window 1 whose name contains "empty")
							else
								-- CHOICE: Start with a standard FileMaker menu:
								click (first checkbox of window 1 whose name contains "standard")
								select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is menuBasedOn of oneMenuRec)
							end if
							
							my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
							if not my windowWaitUntil_FrontIS({windowName:"Edit Custom Menu"}) then error "Timed out waiting for 'Edit Custom Menu' window to OPEN" number 1024
							
						end try
					end if
					
					
					(* 
					Current situation possibilities: 
						in 'Edit Custom Menu' (MENU) because we made a new one
						in 'Edit Custom Menu Set' (SET) because we selected one
					*)
					
					if debugMode then my logConsole(ScriptName, menuName of oneMenuRec & " - " & nextCommand & " (so far)")
					
					-- Do any editing that is needed:
					if nextCommand is not "DONE" then
						if (builtinMenu of oneMenuRec) then
							-- CANNOT edit, since builtin command.							
							if (value of static text 1 of (first row of menuTable whose selected is true)) is equal to (menuName of oneMenuRec) then set nextCommand to "DONE"
							if debugMode then my logConsole(ScriptName, "Did not edit MENU, since it is using the correct built-in menu: " & menuName of oneMenuRec)
							
						else
							-- we need to EDIT this menu to be sure it is correct.
							-- only open Edit Custom Menu if it isn't already open:
							if name of window 1 is not "Edit Custom Menu" then
								my fmGUI_ObjectClick_AffectsWindow(menuEditButton)
								-- RESULT: we open an EDIT MENU window.
								if not my windowWaitUntil_FrontIS({windowName:"Edit Custom Menu"}) then error "Timed out waiting for 'Edit Custom Menu' window to OPEN" number 1024
							end if
							
							if debugMode then my logConsole(ScriptName, "About to edit menu: " & menuName of oneMenuRec)
							set menuEditResult to my fmGUI_CustomMenus_Menu_Edit({CustomMenu:oneMenuRec})
							if menuEditResult is true then
								if name of window 1 is "Select Menu" then
									-- we were editing a menu in order to select it, so do that: 
									my fmGUI_ObjectClick_AffectsWindow(button "Select" of window 1)
									delay 0.5 --seconds
									set windowClosed to windowWaitUntil_FrontIsNOT({windowName:"Select Menu", waitCycleDelaySeconds:0.5, waitCycleMax:50})
									if not windowClosed then error "Timed out waiting for 'Select Menu' window to CLOSE after we edited/created a Custom Menu '" & menuName of oneMenuRec & "' in order to select it to add to the set" number 1024
								end if
							end if
						end if
					end if
					
					if nextCommand is "REPLACE" then
						-- need to re-select the row that was there and Remove it.
						select row menuRowNumber of menuTable
						click menuRemoveButton
						if debugMode then my logConsole(ScriptName, "Removed wrong menu after replacing it with: " & menuName of oneMenuRec)
					end if
					
					-- END OF: desired menus
				end repeat
				if debugMode then my logConsole(ScriptName, "finished looping over desired menus")
				
				
				-- Now if we are still looking at the menus for this set, remove any extra menus that go beyond those specified.
				if name of window 1 is "Edit Custom Menu Set" then
					repeat while (count of rows of menuTable) is greater than menuNeededCount
						select row (menuNeededCount + 1) of menuTable
						click (first button of window 1 whose name starts with "Remove")
						-- was incorrectly "Delete" before. 2014-06-12-dshockley
					end repeat
				end if
				
				return true
				
			end tell
		end tell
		
		
	on error errMsg number errNum
		set errMsg to "unable to fmGUI_CustomMenus_MenuSet_CreateUpdate - " & errMsg
		error errMsg number errNum
	end try
end fmGUI_CustomMenus_MenuSet_CreateUpdate

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on windowWaitUntil_FrontNotIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS
