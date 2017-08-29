-- fmGUI_NameOfFrontmostWindow()
-- Daniel A. Shockley, Erik Shagdar, NYHTC
-- Edits the custom function


(*
REQUIRES:
	fmGUI_CustomFunctions_Open
	fmGUI_CustomFunctions_SelectFunction
	fmGUI_ObjectClick_AffectsWindow
	getTextBetween
	parseChars
	windowWaitUntil
	windowWaitUntil_FrontIS


HISTORY:
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
	-- version 1.3
	
	set defaultPrefs to {functionName:null, functionOldName:null, doNotChangeExisting:false, availability:"ALL", parameterList:{}, calcCode:null, doNotUpdateIfVersion:null}
	set prefs to prefs & defaultPrefs
	
	try
		--if debugMode then logLEVEL(5, "params: " & coerceToString(prefs))
		fmGUI_CustomFunctions_Open({})
		
		set foundFunction to false
		set renameFunction to false
		set editWindowName to "Edit Custom Function"
		
		
		-- try editing by selecting standard name
		set functionSelectedByStandardName to fmGUI_CustomFunctions_SelectFunction({functionName:functionName of prefs})
		if functionSelectedByStandardName then
			--Edit the function:
			set foundFunction to true
			if doNotChangeExisting of prefs then
				-- Found it, but DO NOT EDIT.
			else
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set editButton to first button of window 1 whose name is "Edit�"
					end tell
				end tell
				clickObjectByCoords(editButton)
				windowWaitUntil_FrontIS({windowName:editWindowName})
			end if
		end if
		
		
		-- try editing by selecting old name
		if not foundFunction and functionOldName of prefs is not null then
			set functionSelectedByOldName to fmGUI_CustomFunctions_SelectFunction({functionName:functionOldName of prefs})
			if functionSelectedByOldName then
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set editButton to first button of window 1 whose name is "Edit�"
					end tell
				end tell
				fmGUI_ObjectClick_AffectsWindow(editButton)
				windowWaitUntil_FrontIS({windowName:editWindowName})
				set foundFunction to true
				set renameFunction to true
			end if
		end if
		
		
		-- Did not exist with "new" OR "old" name so we need to create NEW:		
		if not foundFunction then
			set renameFunction to true
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newButton to first button of window 1 whose name is "New�"
				end tell
			end tell
			fmGUI_ObjectClick_AffectsWindow(newButton)
			windowWaitUntil_FrontIS({windowName:editWindowName})
		end if
		
		
		-- now get the name to make sure the edit window opened
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set frontmostWindowName to name of window 1
			end tell
		end tell
		if frontmostWindowName is not equal to editWindowName then error "unable to open '" & editWindowName & "' window" number -1024
		
		
		-- TEST for acceptable version to NOT edit: 
		if doNotUpdateIfVersion of prefs is not null then
			
			-- get version of function in the file
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set existingCalc to value of text area 1 of scroll area 4 of window 1
				end tell
			end tell
			set cfExistingVersion to getTextBetween({sourceTEXT:existingCalc, beforeText:"// version ", afterText:return})
			if (offset of "," in cfExistingVersion) is greater than 0 then set cfExistingVersion to item 1 of parseChars({cfExistingVersion, ","})
			
			
			-- Can SKIP making edits, so cancel: 
			if cfExistingVersion is equal to doNotUpdateIfVersion of prefs then
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set cancelButton to first button of window 1 whose name is "Cancel"
					end tell
				end tell
				fmGUI_ObjectClick_AffectsWindow(cancelButton)
				delay 0.05
				return false -- did NOT need to update.
			end if
		end if
		
		
		-- ensure standard name
		if functionName of prefs is not null then
			if renameFunction then
				tell application "System Events"
					tell application process "FileMaker Pro Advanced"
						set value of text field 1 of window 1 to functionName of prefs
					end tell
				end tell
			end if
		end if
		
		
		-- ensure standard calc
		if calcCode of prefs is not null then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set value of text area 1 of scroll area 4 of window 1 to calcCode of prefs
				end tell
			end tell
			delay 0.2
		end if
		
		
		-- RESET parameter names: 
		set parameterList to parameterList of prefs
		if (count of parameterList) is not 0 then
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
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
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set okButton to first button of window 1 whose name is "OK"
			end tell
		end tell
		fmGUI_ObjectClick_AffectsWindow(okButton)
		windowWaitUntil({windowName:"Manage Custom Functions for", windowNameTest:"contains", whichWindow:"front"})
		delay 0.2
		
		return true
	on error errMsg number errNum
		error "Couldn't fmGUI_CustomFunctions_EditFunction '" & functionName of prefs & "' - " & errMsg number errNum
	end try
	
end fmGUI_CustomFunctions_EditFunction

--------------------
-- END OF CODE
--------------------

on fmGUI_CustomFunctions_Open(prefs)
	tell application "htcLib" to fmGUI_CustomFunctions_Open(prefs)
end fmGUI_CustomFunctions_Open

on fmGUI_CustomFunctions_SelectFunction(prefs)
	tell application "htcLib" to fmGUI_CustomFunctions_SelectFunction(prefs)
end fmGUI_CustomFunctions_SelectFunction

on fmGUI_ObjectClick_AffectsWindow(buttonRef)
	tell application "htcLib" to fmGUI_ObjectClick_AffectsWindow(my coerceToString(buttonRef))
end fmGUI_ObjectClick_AffectsWindow

on getTextBetween(prefs)
	tell application "htcLib" to getTextBetween(prefs)
end getTextBetween

on logLEVEL(level, someMsg)
	tell application "htcLib" to logLEVEL(level, someMsg)
end logLEVEL

on parseChars(prefs)
	tell application "htcLib" to parseChars(prefs)
end parseChars

on windowWaitUntil(prefs)
	tell application "htcLib" to windowWaitUntil(prefs)
end windowWaitUntil

on windowWaitUntil_FrontIS(prefs)
	tell application "htcLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceTEXT:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

