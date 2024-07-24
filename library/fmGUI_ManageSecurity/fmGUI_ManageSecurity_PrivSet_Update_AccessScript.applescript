-- fmGUI_ManageSecurity_PrivSet_Update_AccessScript({accessScript:null, scriptsAccess:null})
-- Erik Shagdar
-- update script access of the currently opened privilege set


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
	fmGUI_ManageSecurity_PrivSet_Update_AccessScript({accessScript:"Custom privileges...", scriptsAccess:{allowCreate:0, scriptPrivList:{{ScriptName:"------------- Database-level Comments -------------", scriptPriv:"executable only"}, {ScriptName:"[Any New Script]", scriptPriv:"executable only"}}}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_AccessScript(prefs)
	-- version 2020-03-04-1533
	
	set defaultPrefs to {accessScript:null, scriptsAccess:null}
	set prefs to prefs & defaultPrefs
	
	set windowNameEditPrivSet to "Edit Privilege Set"
	
	try
		fmGUI_AppFrontMost()
		
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set windowName to name of window 1
				set scriptsPopup to pop up button "Scripts:" of window 1
			end tell
		end tell
		
		
		-- ensure we're starting on edit PrivSet window
		if windowName is not windowNameEditPrivSet then error "do not have " & windowNameEditPrivSet & " window open" number -1024
		
		
		-- set access for each specified value list
		fmGUI_Popup_SelectByCommand({objRef:scriptsPopup, objValue:accessScript of prefs, selectCommand:"contains", clickIfAlreadySet:true})
		if accessScript of prefs begins with "Custom privileges" then
			windowWaitUntil_FrontIS({windowName:"Custom Script Privileges"})
			-- get button refs to for each radio button
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set allowCreate to checkbox "Allow creation of new scripts" of window 1
					
					set modifyCheckbox to checkbox 2 of window 1
					set executeCheckbox to checkbox 3 of window 1
					set noAccessCheckbox to checkbox 4 of window 1
				end tell
			end tell
			
			-- update allow create new value list checkbox
			fmGUI_CheckboxSet({objRef:allowCreate, objValue:allowCreate of scriptsAccess of prefs})
			
			
			-- look through each value list, ensuring the proper access is set
			repeat with oneScriptRec in scriptPrivList of scriptsAccess of prefs
				set oneScriptRec to contents of oneScriptRec
				tell application "System Events"
					tell process "FileMaker Pro Advanced"
						set oneScriptRow to (first row of table 1 of scroll area 1 of window 1 whose name of static text 1 is ScriptName of oneScriptRec)
						select oneScriptRow
						set oneScriptInfo to name of every static text of oneScriptRow
					end tell
				end tell
				
				
				-- now edit access for each row ( but only if the access is wrong )
				if item 3 of oneScriptInfo is not equal to scriptPriv of oneScriptRec then
					if scriptPriv of oneScriptRec is equal to "modifiable" then
						clickObjectByCoords(modifyCheckbox)
					else if scriptPriv of oneScriptRec is equal to "executable only" then
						clickObjectByCoords(executeCheckbox)
					else if scriptPriv of oneScriptRec is equal to "no access" then
						clickObjectByCoords(noAccessCheckbox)
					end if
				end if
			end repeat
			fmGUI_ObjectClick_OkButton({})
		end if
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_AccessScript - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_AccessScript

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
