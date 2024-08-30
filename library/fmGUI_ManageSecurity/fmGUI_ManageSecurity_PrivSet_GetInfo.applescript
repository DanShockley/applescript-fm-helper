-- fmGUI_ManageSecurity_PrivSet_GetInfo({getAccessInfo:false})
-- Erik Shagdar
-- gather all the info about the currently opened privSet


(*
HISTORY:
	1.1.3 - 2017-11-28 ( eshagdar ): added longer timeout for gather
	1.1.2 - 2017-11-07 ( eshagdar ): open custom privileges window via handler.
	1.1.1 - 2017-11-06 ( eshagdar ): updated sub-handler name.
	1.1 - 2017-09-07 ( eshagdar ): click cancel button via handler. init data access vars, then update privSetInfo once instead of after every type of data access.
	1.0.1 - 2017-09-05 ( eshagdar ): renamed 'extendedPrivs' to 'extendedPrivList'
	1.0 - 2017-06-29 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessLayout_GetInfo
	fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables
	fmGUI_ManageSecurity_AccessScripts_GetInfo
	fmGUI_ManageSecurity_AccessValueList_GetInfo
	fmGUI_ManageSecurity_PrivSet_OpenSelected
	fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open
	fmGUI_ObjectClick_CancelButton
*)


on run
	fmGUI_ManageSecurity_PrivSet_GetInfo({getAccessInfo:true})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_GetInfo(prefs)
	-- version 1.1.3
	
	set defaultPrefs to {getAccessInfo:false}
	set prefs to prefs & defaultPrefs
	
	set customPriv to "Custom privileges..."
	
	try
		fmGUI_AppFrontMost()
		
		-- open edit PrivSet window if needed
		set needToOpenEditWindow to true
		tell application "System Events"
			tell application process "FileMaker Pro"
				if name of window 1 is "Edit Privilege Set" then set needToOpenEditWindow to false
			end tell
		end tell
		
		if needToOpenEditWindow then fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		
		
		-- now the the info
		tell application "System Events"
			tell application process "FileMaker Pro"
				set privSetInfo to {privSetName:value of text field "Privilege Set Name" of window 1, privSetDesc:value of text field "Description" of window 1, accessRecord:value of pop up button "Records:" of window 1, accessLayout:value of pop up button "Layouts:" of window 1, accessVL:value of pop up button "Value Lists:" of window 1, accessScript:value of pop up button "Scripts:" of window 1, extendedPrivList:name of checkbox 1 of (every row of table 1 of scroll area 1 of window 1 whose value of checkbox 1 is 1), allowPrinting:value of checkbox "Allow printing" of window 1, allowExporting:value of checkbox "Allow exporting" of window 1, mangeExtPriv:value of checkbox "Manage extended privileges" of window 1, allowOverride:value of checkbox "Allow user to override data validation warnings" of window 1, disconnectIdle:value of checkbox "Disconnect user from server when idle" of window 1, modifyPwd:value of checkbox "Allow user to modify their own password" of window 1, menuCommands:value of pop up button "Available menu commands:" of window 1}
			end tell
		end tell
		
		
		-- should we get detailed access info:
		if getAccessInfo of prefs then
			set {recordAccess, layoutAccess, vlAccess, scriptsAccess} to {null, null, null, null}
			
			-- record level
			if accessRecord of privSetInfo is equal to customPriv then
				fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open({accessRecord:customPriv})
				with timeout of (30 * 60) seconds
					-- event times out if this is a big file with many tables or complex security
					set recordAccess to fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables({})
				end timeout
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			
			-- layout access
			if accessLayout of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell application process "FileMaker Pro"
						set popUpButtonRef to pop up button "Layouts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set layoutAccess to fmGUI_ManageSecurity_AccessLayout_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			-- value list access
			if accessVL of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell application process "FileMaker Pro"
						set popUpButtonRef to pop up button "Value Lists:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set vlAccess to fmGUI_ManageSecurity_AccessValueList_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			-- script access
			if accessScript of privSetInfo is equal to customPriv then
				tell application "System Events"
					tell application process "FileMaker Pro"
						set popUpButtonRef to pop up button "Scripts:" of window 1
						click popUpButtonRef
						click menu item customPriv of menu 1 of popUpButtonRef
					end tell
				end tell
				set scriptsAccess to fmGUI_ManageSecurity_AccessScripts_GetInfo({})
				fmGUI_ObjectClick_CancelButton({})
			end if
			
			set privSetInfo to privSetInfo & {recordAccess:recordAccess, layoutAccess:layoutAccess, vlAccess:vlAccess, scriptsAccess:scriptsAccess}
			
		end if
		
		
		return privSetInfo
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_GetInfo - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_GetInfo

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessLayout_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessLayout_GetInfo

on fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetInfo_AllTables

on fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessScripts_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessScripts_GetInfo

on fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessValueList_GetInfo(prefs)
end fmGUI_ManageSecurity_AccessValueList_GetInfo

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenSelected

on fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open(prefs)
end fmGUI_ManageSecurity_PrivSet_Update_AccessRecord_Open

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton
