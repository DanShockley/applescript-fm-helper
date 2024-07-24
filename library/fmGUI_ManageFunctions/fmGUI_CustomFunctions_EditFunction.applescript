-- fmGUI_CustomFunctions_EditFunction({functionName:null, functionOldName:null, doNotChangeExisting:false, availability:"ALL", parameterList:{}, calcCode:null, doNotUpdateIfVersion:null})
-- Daniel A. Shockley, Erik Shagdar
-- Edits the custom function


(*
REQUIRES:
	fmGUI_CustomFunctions_EditFunction
	fmGUI_CustomFunctions_Open
	fmGUI_CustomFunctions_SelectFunction
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_CancelButton
	fmGUI_ObjectClick_OkButton
	getTextBetween
	parseChars
	windowWaitUntil
	windowWaitUntil_FrontIS

HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.6.1 - 2018-05-01 ( eshagdar ): fuzzy search on the button names. added 
	1.6 - 2018-04-30 ( eshagdar ): wait explicitly until window renders instead of relying on waiting after the new/edit button click.
	1.5 - 2018-01-18 ( eshagdar ): ok/cancel buttons have dedicated handlers. new/edit button clicks done via handler that also waits for specified window name. doNotChangeExisting param throws an error - why even bother calling this handler.
	1.4 - 2017-08-14 ( eshagdar ): wait until windows render
	1.3 - 2017-06-14 ( eshagdar ): narrowed scope
	1.2 - 2016-06-30 ( eshagdar ): wait for the manage functions to become the frontmost window after saving changes.
	1.1 - 201x-xx-xx ( dshockley ): added code to avoid changes if version matches specified.
	1.0 - 201x-xx-xx ( dshockley ): first created
*)


property debugMode : true

on run
	fmGUI_CustomFunctions_EditFunction({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_CustomFunctions_EditFunction(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {functionName:null, functionOldName:null, doNotChangeExisting:false, availability:"ALL", parameterList:{}, calcCode:null, doNotUpdateIfVersion:null}
	set prefs to prefs & defaultPrefs
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	
	try
		-- init vars		
		set foundFunction to false
		set renameFunction to false
		set editWindowName to "Edit Custom Function"
		set functionName to functionName of prefs
		
		
		-- deprecated param - why even bother calling this handler?
		if doNotChangeExisting of prefs then error "found function '" & functionName & "', but not allowed to change, so handler should not be called" number -1024
		
		
		-- open list of functions and get objects
		fmGUI_CustomFunctions_Open({})
		tell application "System Events"
			tell process id fmProcID
				set editButton to first button of window 1 whose name begins with "Edit"
				set newButton to first button of window 1 whose name begins with "New"
			end tell
		end tell
		
		
		
		-- try editing by selecting standard name
		if fmGUI_CustomFunctions_SelectFunction({functionName:functionName}) then
			set foundFunction to true
			set clickCondition to "found by standard name"
			fmGUI_ObjectClick_Button({buttonRef:editButton})
		end if
		
		
		-- try editing by selecting old name
		if not foundFunction and functionOldName of prefs is not null then
			if fmGUI_CustomFunctions_SelectFunction({functionName:functionOldName of prefs}) then
				set foundFunction to true
				set renameFunction to true
				set clickCondition to "found by OLD name"
				fmGUI_ObjectClick_Button({buttonRef:editButton})
			end if
		end if
		
		
		-- Did not exist with "new" AND "old" name so we need to create NEW:		
		if not foundFunction then
			set renameFunction to true
			set clickCondition to "new function"
			fmGUI_ObjectClick_Button({buttonRef:newButton})
		end if
		
		
		-- ensure the edit window opened
		if not windowWaitUntil_FrontIS({windowName:editWindowName}) then error "window wait timed out from condition: " & clickCondition number -1024
		
		
		-- TEST for acceptable version to NOT edit: 
		if doNotUpdateIfVersion of prefs is not null then
			
			-- get version of function in the file
			tell application "System Events"
				tell process id fmProcID
					set existingCalc to value of text area 1 of scroll area 4 of window 1
				end tell
			end tell
			set cfExistingVersion to getTextBetween({sourceTEXT:existingCalc, beforeText:"// version ", afterText:return})
			if (offset of "," in cfExistingVersion) is greater than 0 then set cfExistingVersion to item 1 of parseChars({cfExistingVersion, ","})
			
			
			-- Can SKIP making edits, so cancel: 
			if cfExistingVersion is equal to doNotUpdateIfVersion of prefs then
				fmGUI_ObjectClick_CancelButton({})
				delay 0.05
				return false -- did NOT need to update.
			end if
		end if
		
		
		-- ensure standard name
		if functionName is not null then
			if renameFunction then
				tell application "System Events"
					tell process id fmProcID
						set value of text field 1 of window 1 to functionName
					end tell
				end tell
			end if
		end if
		
		
		-- ensure standard calc
		if calcCode of prefs is not null then
			tell application "System Events"
				tell process id fmProcID
					set value of text area 1 of scroll area 4 of window 1 to calcCode of prefs
				end tell
			end tell
			delay 0.2
		end if
		
		
		-- RESET parameter names: 
		set parameterList to parameterList of prefs
		if (count of parameterList) is not 0 then
			tell application "System Events"
				tell process id fmProcID
					repeat with paramNum from 1 to count of parameterList
						set paramName to contents of item paramNum of parameterList
						select row paramNum of table 1 of scroll area 3 of window 1
						set paramNameTextField to text field 2 of window 1
						if value of paramNameTextField is not equal to paramName then
							set (value of paramNameTextField) to item paramNum of parameterList
							click (first button of window 1 whose description is "Edit parameter")
							delay 0.2
						end if
					end repeat
				end tell
			end tell
		end if
		
		
		-- SAVE edits: click OK
		fmGUI_ObjectClick_OkButton({})
		windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
		delay 0.2
		
		return true
	on error errMsg number errNum
		error "unable to  fmGUI_CustomFunctions_EditFunction '" & functionName & "' - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_EditFunction

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	tell application "fmGuiLib" to fmGUI_CustomFunctions_Open(prefs)
end fmGUI_CustomFunctions_Open

on fmGUI_CustomFunctions_SelectFunction(prefs)
	tell application "fmGuiLib" to fmGUI_CustomFunctions_SelectFunction(prefs)
end fmGUI_CustomFunctions_SelectFunction

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:my coerceToString(buttonRef of prefs)} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on getTextBetween(prefs)
	tell application "fmGuiLib" to getTextBetween(prefs)
end getTextBetween

on parseChars(prefs)
	tell application "fmGuiLib" to parseChars(prefs)
end parseChars

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
