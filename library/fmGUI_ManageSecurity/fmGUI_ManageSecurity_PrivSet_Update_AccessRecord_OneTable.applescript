-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:null, viewAccess:null, editAccess:null, createAccess:null, deleteAccess:null, fieldAccess:null, viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null, allowFieldAccessOverride:false})
-- Erik Shagdar
-- update record access for the specified base table.


(*
HISTORY:
	1.2 - 2018-01-25 ( eshagdar ): don't bother updating access if it's null.
	1.1 - 2017-12-21 ( eshagdar ): added allowFieldAccessOverride param that overrides tells sub-handler to override field access type in the fieldCalc record.
	1.0.1 - 2017-10-17 ( eshagdar ): removed unused variable.
	1.0 - 2017-09-22 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables handler


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv
	fmGUI_NameOfFrontmostWindow
	fmGUI_Popup_SelectByCommand
*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable({baseTable:"ZZ_GLOBALS", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null})
	
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	-- version 1.2
	
	set defaultPrefs to {baseTable:null, viewAccess:null, editAccess:null, createAccess:null, deleteAccess:null, fieldAccess:null, viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null, allowFieldAccessOverride:false}
	set prefs to prefs & defaultPrefs
	
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not equal to "Custom Record Privileges" then error "must have 'Custom Record Privileges' window open" number -1024
		
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				-- get button refs to edit each row
				set viewButton to pop up button "View" of window 1
				set editButton to pop up button "Edit" of window 1
				set createButton to pop up button "Create" of window 1
				set deleteButton to pop up button "Delete" of window 1
				set fieldAccessButton to pop up button "Field Access" of window 1
				
				-- look through each table, ensuring each type of access is set
				set oneTableRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is equal to baseTable of prefs)
				select oneTableRow
			end tell
		end tell
		
		
		-- view
		if viewAccess of prefs is not null then
			if viewCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs, calcValue:viewCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:viewButton, objValue:viewAccess of prefs})
			end if
		end if
		
		
		-- edit
		if editAccess of prefs is not null then
			if viewCalc of prefs is not equal to "no" then
				-- edit is disabled if view is set to 'no'
				if editCalc of prefs is not null then
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs, calcValue:editCalc of prefs} & popUpExtras)
				else
					fmGUI_Popup_SelectByCommand({objRef:editButton, objValue:editAccess of prefs})
				end if
			end if
		end if
		
		
		-- create
		if createAccess of prefs is not null then
			if createCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs, calcValue:createCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:createButton, objValue:createAccess of prefs})
			end if
		end if
		
		
		-- delete
		if deleteAccess of prefs is not null then
			if deleteCalc of prefs is not null then
				fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs, calcValue:deleteCalc of prefs} & popUpExtras)
			else
				fmGUI_Popup_SelectByCommand({objRef:deleteButton, objValue:deleteAccess of prefs})
			end if
		end if
		
		
		-- if there is a list of fields with specific privileges, ask user if this table can ignore the fields specified, and force it's own field to be a specific type ( generally this is due to the privSet being copied from one table to another ).
		if fieldAccess of prefs is not null then
			set extraFieldPrivs to {}
			try
				if allowFieldAccessOverride of prefs then
					if fieldAccess of prefs contains "limited" and fieldCalc of prefs is not null then
						set privTypes to {}
						repeat with oneFieldRec in fieldCalc of prefs
							set oneFieldRec to contents of oneFieldRec
							set oneFieldPriv to fieldPriv of oneFieldRec
							if oneFieldPriv is not in privTypes then copy oneFieldPriv to end of privTypes
						end repeat
						
						if (count of privTypes) is equal to 1 then
							set privTypes to item 1 of privTypes
							if privTypes is equal to "modifiable" then
								set extraFieldPrivs to {FieldsModifiable:true}
							else if privTypes is equal to "view only" then
								set extraFieldPrivs to {FieldsViewOnly:true}
							else if privTypes is equal to "no access" then
								set extraFieldPrivs to {FieldsNoAccess:true}
							end if
						end if
					end if
				end if
			end try
			
			
			-- field access
			fmGUI_Popup_SelectByCommand({objRef:fieldAccessButton, objValue:fieldAccess of prefs, clickIfAlreadySet:true})
			if fieldCalc of prefs is not null then fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv({fieldList:fieldCalc of prefs} & extraFieldPrivs)
		end if
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv(prefs)
end fmGUI_ManageSecurity_AccessRecord_UpdateFieldPriv

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_Popup_SelectByCommand(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_Popup_SelectByCommand({objRef:objRefStr} & prefs)
end fmGUI_Popup_SelectByCommand



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
