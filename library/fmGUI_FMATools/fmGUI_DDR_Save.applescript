-- fmGUI_DDR_Save({ddrPath:null, dbNameList:{}})
-- Erik Shagar
-- Save an XML DDR of all the currently open files


(*
HISTORY:
	1.4 - 2018-04-16 ( eshagdar ): ddr path must be specified. path specify UI object is a combo box in OS X 10.12.6, but a text field in 10.11.6. allow to specify dbName(s).
	1.3 - 2018-01-02 ( eshagdar ): radio buttons are actually radio butons ( not checkboxes ).
	1.2 - 2017-10-30( eshagdar ): pass in prefs, return dirName.
	1.1 - 2017-09-11 ( eshagdar ): go to desktop first, then go to directory. added waits everytime a window changes. go to field object is a 'text field', not 'combo box'.
	1.0 - 2017-08-11 ( eshagdar ): created

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
	fmGUI_isInFullAccessMode
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_CancelButton
	fmGUI_ObjectClick_OkButton
	fmGUI_DDR_SelectFiles
	fmGUI_selectAllTablesInDDR
	fmGUI_selectAllPartsInDDR
	windowWaitUntil
*)


on run
	fmGUI_DDR_Save({ddrPath:POSIX path of (path to desktop), dbNameList:{"a00_TIMESSQUARE"}})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DDR_Save(prefs)
	-- version 1.4, Erik Shagar
	
	
	try
		set defaultPrefs to {ddrPath:null, dbNameList:{}}
		set prefs to prefs & defaultPrefs
		set ddrPath to ddrPath of prefs
		set dbNameList to dbNameList of prefs
		
		
		if ddrPath is null then error "ddr directory not specified" number -1024
		
		
		-- open DDR dialog and select options
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set ddrMenuItem to menu item "Database Design Report..." of menu "Tools" of menu bar item "Tools" of menu bar 1
			end tell
		end tell
		fmGUI_ClickMenuItem({menuItemRef:ddrMenuItem, waitForMenuAvailable:true})
		
		
		windowWaitUntil({windowName:"Database Design Report", windowNameTest:"is", whichWindow:"front"})
		fmGUI_DDR_SelectFiles({dbNameList:dbNameList})
		fmGUI_DDR_SelectParts({})
		
		
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				-- generate XML ( not HTML )
				click radio button 2 of window 1
				
				-- do not open automatically
				set openCheckbox to checkbox 1 of window 1
				if value of openCheckbox is 1 then click openCheckbox
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonName:"Create"})
		windowWaitUntil({windowName:"Save Report", windowNameTest:"is", whichWindow:"front"})
		
		
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				-- view as columns
				click radio button 3 of radio group 1 of group 1 of window 1
				delay 0.5
				
				-- change source - first go to Desktop, then specified path to ensure we're on it.
				keystroke "D" using {command down, shift down} -- desktop
				delay 0.5
				
				-- go to DDR folder
				keystroke "G" using {command down, shift down} -- go to
				delay 0.5
				set gotoWindow to sheet 1 of window 1
				try
					set value of combo box 1 of sheet 1 of window 1 to ddrPath
				on error
					set value of text field 1 of sheet 1 of window 1 to ddrPath
				end try
				click button "Go" of gotoWindow
				delay 0.5
			end tell
		end tell
		
		-- save DDR
		fmGUI_ObjectClick_Button({buttonName:"Save"})
		
		
		-- now wait until saving window is dismissed
		repeat 1200 times -- 1 hour ( 1200 cycles with 3 second pause = 1 hour )
			delay 3
			
			
			-- exit if the menu is accessible again
			try
				if fmGUI_isInFullAccessMode({}) then exit repeat
			end try
			
			
			-- dimiss dialogs
			try
				set frontWindowName to fmGUI_NameOfFrontmostWindow()
				if frontWindowName is "FileMaker Pro Advanced" then
					fmGUI_ObjectClick_OkButton({})
					delay 1
					fmGUI_ObjectClick_CancelButton({})
				else if frontWindowName contains "Open" then
					fmGUI_ObjectClick_CancelButton({})
				else if frontWindowName is not "Saving Report" then
					--some other error?
				end if
			end try
		end repeat
		
		return true
	on error errMsg number errNum
		error "failed to fmGUI_DDR_Save - " & errMsg number errNum
	end try
end fmGUI_DDR_Save

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "fmGuiLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem

on fmGUI_isInFullAccessMode(prefs)
	tell application "fmGuiLib" to fmGUI_isInFullAccessMode(prefs)
end fmGUI_isInFullAccessMode

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button(prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_DDR_SelectFiles(prefs)
	tell application "fmGuiLib" to fmGUI_DDR_SelectFiles(prefs)
end fmGUI_DDR_SelectFiles

on fmGUI_DDR_SelectParts(prefs)
	tell application "fmGuiLib" to fmGUI_DDR_SelectParts(prefs)
end fmGUI_DDR_SelectParts

on fmGUI_selectAllTablesInDDR()
	tell application "fmGuiLib" to fmGUI_selectAllTablesInDDR()
end fmGUI_selectAllTablesInDDR

on fmGUI_selectAllPartsInDDR()
	tell application "fmGuiLib" to fmGUI_selectAllPartsInDDR()
end fmGUI_selectAllPartsInDDR

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

