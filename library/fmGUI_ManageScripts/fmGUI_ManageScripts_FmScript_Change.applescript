-- fmGUI_ManageScripts_FmScript_Change({fmScriptName:null, includeInMenu:null, runFullAccess:null, renameOnly:false, doNotChangeExisting:false, altPatterns:null, pasteScriptStepsFromClipbrd:null})
-- Dan Shockley
-- Make sure an existing script has the specified script steps content, saving if any changes DID need to be made. 


(*
HISTORY:
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. Minor typo fixes. Note: the altPatterns value is passed down into the 'Select' sub-handler.
	2017-08-02 ( eshagdar ): run as full access should grant/revoke full access, not include/exclude from menu.
	2017-06-14 ( eshagdar ): narrowed scope.
	2017-06-05 ( eshagdar ): FM15 compatible ( script workspace ).
	2015-04-21 ( eshagdar ): log if script is skipped.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageScripts_FmScript_Select
	fmGUI_ManageScripts_Open
	fmGUI_SelectAll
	logConsole
	
*)

property debugMode : true
property ScriptName : "fmGUI_ManageScripts_FmScript_Change"

on run
	fmGUI_ManageScripts_FmScript_Change({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_FmScript_Change(prefs)
	-- version 2020-03-04-1528
	
	-- NOTE: pasteScriptStepsFromClipbrd is no misspelled - applescript breaks when the variable is correctly spelled.
	set defaultPrefs to {fmScriptName:null, includeInMenu:null, runFullAccess:null, renameOnly:false, doNotChangeExisting:false, altPatterns:null, pasteScriptStepsFromClipbrd:null}
	set prefs to prefs & defaultPrefs
	--writeToFile({outputText:coerceToString(prefs)})
	
	set includeInMenu to includeInMenu of prefs
	set runFullAccess to runFullAccess of prefs
	
	
	-- if pasteScriptStepsFromClipbrd is FALSE, then only rename the script - do not change script steps. 
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageScripts_Open({})
		
		if pasteScriptStepsFromClipbrd of prefs is null then error "The parameter 'pasteScriptStepsFromClipbrd' MUST be specified." number 1024
		
		
		set scriptSelected to fmGUI_ManageScripts_FmScript_Select(prefs)
		
		if scriptSelected then
			set changesMade to false
		else
			-- NOT FOUND, neither by current name, nor by optional match patterns:
			return false
		end if
		
		if doNotChangeExisting of prefs then
			if debugMode then logConsole(ScriptName, "update - SKIPPED")
			-- Found it, but DO NOT EDIT --- WHY DO THIS?
			return true
		end if
		
		
		-- make sure the script name is up-to-date:
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set currentFmScriptName to name of UI element 1 of (first row of outline 1 of scroll area 1 of splitter group 1 of window 1 whose selected is true)
				if currentFmScriptName is not equal to fmScriptName of prefs then
					set ScriptNameTabButton to first button of splitter group 1 of window 1 whose description is currentFmScriptName
					click ScriptNameTabButton
					click menu item "Rename Script" of menu "Scripts" of menu bar 1
					set value of text field 1 of ScriptNameTabButton to fmScriptName of prefs
					keystroke return
					set changesMade to true
					
					if debugMode then logConsole(ScriptName, "Script renamed: '" & currentFmScriptName & "' --> '" & (fmScriptName of prefs) & "'")
				end if
			end tell
		end tell
		
		
		-- Include in Menu --- might as well run this now, even if only renaming, since saved automatically:
		if includeInMenu is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set includeInMenuMenuItem to first menu item of menu 1 of menu bar item "Scripts" of menu bar 1 whose name contains "Scripts Menu"
					set includeInMenuMenuName to name of includeInMenuMenuItem
					set includeInMenuStatus to word 1 of includeInMenuMenuName
					if includeInMenu is true and includeInMenuStatus is equal to "Include" or Â
						includeInMenu is false and includeInMenuStatus is equal to "Exclude" then
						click includeInMenuMenuItem
						delay 0.1
					end if
				end tell
			end tell
			set changesMade to true
		end if
		
		
		-- DO NOT DO THESE CHANGES IF RENAME-ONLY:
		if not renameOnly of prefs then
			-- BEGIN: Not renameOnly
			
			-- Full Access:
			if runFullAccess is not null then
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set FullAccessMenuItem to first menu item of menu 1 of menu bar item "Scripts" of menu bar 1 whose name contains "Full Access Privileges"
						set FullAccessMenuName to name of FullAccessMenuItem
						set FullAccessStatus to word 1 of FullAccessMenuName
						if runFullAccess and FullAccessStatus is equal to "Grant" or Â
							runFullAccess is false and FullAccessStatus is equal to "Revoke" then
							click FullAccessMenuItem
						end if
					end tell
				end tell
			end if
			
			
			-- PASTE Script Steps: 
			if pasteScriptStepsFromClipbrd of prefs then
				-- select old steps, delete old steps, paste new from clipboard:	
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						select first row of table 1 of scroll area 2 of splitter group 1 of window 1
					end tell
				end tell
				
				fmGUI_SelectAll()
				
				delay 0.1
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						key code 51 -- delete
						delay 0.1
						keystroke "v" using command down
					end tell
				end tell
				set changesMade to true
				
			end if
			
			-- END OF: Not renameOnly
		end if
		
		
		if changesMade then
			-- SAVE Changes before closing: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					click menu item "Save Script" of menu "Scripts" of menu bar 1
					click menu item "Close Tab" of menu "View" of menu bar 1
				end tell
			end tell
		end if
		
		
		return true
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_FmScript_Change '" & fmScriptName of prefs & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageScripts_FmScript_Change

--------------------
-- END OF CODE
--------------------


on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost


on fmGUI_ManageScripts_FmScript_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_FmScript_Select(prefs)
end fmGUI_ManageScripts_FmScript_Select

on fmGUI_ManageScripts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on fmGUI_SelectAll()
	tell application "fmGuiLib" to fmGUI_SelectAll()
end fmGUI_SelectAll

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole

