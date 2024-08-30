-- fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables({accessRecord:null, recordAccess:null})
-- Erik Shagdar
-- update record access of the currently opened privilege set


(*
HISTORY:
	1.1.2 - 2017-11-07 ( eshagdar ): open custom record privileges via handler.
	1.1.1 - 2017-10-17 ( eshagdar ): pass oneTableRec as is, it's already a record.
	1.1 - 2017-09-22 ( eshagdar ): added '_AllTables' to end of handler name. loop over list of records in recordAccess, calling a handler that handler one table.
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable
	fmGUI_ObjectClick_OkButton
	fmGUI_Popup_SelectByCommand
	windowWaitUntil_FrontIS*)


on run
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables({accessRecord:"Custom privileges...", recordAccess:{{baseTable:"ZZ_GLOBALS", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}, {baseTable:"[Any New Table]", viewAccess:"yes", editAccess:"yes", createAccess:"yes", deleteAccess:"yes", fieldAccess:"all", viewCalc:null, editCalc:null, createCalc:null, deleteCalc:null, fieldCalc:null}}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables(prefs)
	-- version 1.1.2
	
	set defaultPrefs to {accessRecord:null, recordAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	set popUpExtras to {selectCommand:"contains", clickIfAlreadySet:true}
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:accessRecord of prefs})
		
		
		-- update custom privileges
		if accessRecord of prefs begins with "Custom privileges" then
			
			-- get button refs to edit each row
			tell application "System Events"
				tell application process "FileMaker Pro"
					set viewButton to pop up button "View" of window 1
					set editButton to pop up button "Edit" of window 1
					set createButton to pop up button "Create" of window 1
					set deleteButton to pop up button "Delete" of window 1
					set fieldAccessButton to pop up button "Field Access" of window 1
				end tell
			end tell
			
			
			-- look through each table, ensuring each type of access is set
			repeat with oneTableRec in recordAccess of prefs
				set oneTableRec to contents of oneTableRec
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(oneTableRec)
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_AllTables

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_OneTable

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
