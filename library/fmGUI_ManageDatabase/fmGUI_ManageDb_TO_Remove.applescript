-- fmGUI_ManageDb_TO_Remove({TOName:null, deleteCurrent:false, exitManageDb:false})
-- Erik Shagdar
-- delete the specified table occurence


(*
HISTORY:
	1.0 - 2017-10-30 ( eshagdar ): created


REQUIRES:
	clickAtCoords
	fmGUI_ManageDb_GoToTab_Relationships
	fmGUI_ManageDB_Save
	fmGUI_ObjectClick_CancelButton
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageDb_TO_Remove({TOName:"Utility_SessionOrgPrefs"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TO_Remove(prefs)
	-- version 1.0, Erik Shagdar
	
	try
		set defaultPrefs to {TOName:null, deleteCurrent:false, exitManageDb:false}
		set prefs to prefs & defaultPrefs
		
		if TOName of prefs is null and not deleteCurrent of prefs then error "no table occurence specified" number -1024
		
		
		if not deleteCurrent of prefs then
			-- ensure we're in the TO graph
			fmGUI_ManageDb_GoToTab_Relationships({})
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set frontmost to true
					set windowPos to position of window 1
					set windowSize to size of window 1
					set xCoord to (item 1 of windowPos) + (item 1 of windowSize) / 2
					set yCoord to (item 2 of windowPos) + (item 2 of windowSize) / 2
				end tell
			end tell
			clickAtCoords(xCoord, yCoord)
			
			
			-- attempt to select the TO to remove
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					keystroke TOName of prefs
					keystroke "o" using {command down}
				end tell
			end tell
			
			
			-- confirm selected TO is the correct one
			windowWaitUntil_FrontIS({windowName:"Specify Table"})
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set selectedTOName to value of text field "name" of window 1
				end tell
			end tell
			fmGUI_ObjectClick_CancelButton({})
			if TOName of prefs is not equal to selectedTOName then error "unable to select specified table occurence" number -1024
		end if
		
		
		-- delete TO
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set deleteButton to first button of tab group 1 of window 1 whose description is "Delete"
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:deleteButton})
		windowWaitUntil_FrontIS({windowName:"FileMaker Pro Advanced"})
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set removeButton to button "Remove" of window 1
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:removeButton})
		
		
		-- should we save changes and exit manageDB
		if exitManageDb of prefs then fmGUI_ManageDb_Save({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_TO_Remove - " & errMsg number errNum
	end try
end fmGUI_ManageDb_TO_Remove

--------------------
-- END OF CODE
--------------------

on clickAtCoords(xCoord, yCoord)
	tell application "fmGuiLib" to clickAtCoords(xCoord, yCoord)
end clickAtCoords

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Relationships(prefs)
end fmGUI_ManageDb_GoToTab_Relationships

on fmGUI_ManageDb_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_Save(prefs)
end fmGUI_ManageDb_Save

on fmGUI_ObjectClick_Button(prefs)
	set buttonRef to my coerceToString(buttonRef of prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:buttonRef} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

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
