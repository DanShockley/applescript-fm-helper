-- fmGUI_ManageScripts_Select_SpecifyScriptWindow({dbName:null, scriptName:null, scriptParams:null})
-- Erik Shagdar
-- specify script ( and options ) from the specify script window


(*

HISTORY:
	2024-07-23 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.0.1 - 2018-01-09 ( eshagdar ): try filtering a second time if it fails at first.
	1.0 - 2017-12-20 ( eshagdar ): first created

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_NameOfFrontmostWindow
	fmGUI_ObjectClick_OkButton
	fmGUI_PopupSet
	fmGUI_TextFieldSet
	getFmAppProcessID
	getTextBetween
*)


on run
	fmGUI_ManageScripts_Select_SpecifyScriptWindow({dbName:"<CurrentFile>", scriptName:"OPEN_SCRIPT", scriptParams:"CallStack ( \"\" )"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_Select_SpecifyScriptWindow(prefs)
	-- version 2024-07-23
	
	try
		set defaultPrefs to {dbName:null, scriptName:null, scriptParams:null}
		set prefs to prefs & defaultPrefs
		set dbName to dbName of prefs
		set scriptName to scriptName of prefs
		set scriptParams to scriptParams of prefs
		
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		
		
		fmGUI_AppFrontMost()
		if fmGUI_NameOfFrontmostWindow() is not "Specify Script" then error "wrong context" number -1024
		
		
		-- get currently selected db
		tell application "System Events"
			tell application process "FileMaker Pro"
				set selectedDbObj to pop up button 2 of window "Specify Script"
				set scriptTable to outline 1 of scroll area 1 of window "Specify Script"
				set selectedDbName to value of selectedDbObj
			end tell
		end tell
		
		
		-- get selected db name if current file is selected
		if selectedDbName starts with "Current File (" then
			-- check whether the selected db name specified a possibly-external database, but we are now IN that database, so it displays as 'Current File ("ThisDatabase.fmp12")					
			set beforeFileName to "Ò" -- curly-double-quote
			set afterFileName to ".fmp12"
			set selectedDbNameClean to getTextBetween({sourceTEXT:selectedDbName, beforeText:beforeFileName, afterText:afterFileName})
		end if
		
		
		-- ensure correct db is selected
		if dbName is "<CurrentFile>" and selectedDbName starts with "Current File (" then
			-- correct database is chosen. Do nothing.
		else if dbName is equal to selectedDbNameClean then
			-- correct database is chosen. Do nothing.	
		else
			-- need to change db. assume scripts are loaded once the number of scripts changes
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					set scriptNumOld to count of rows of scriptTable
				end tell
			end tell
			
			fmGUI_PopupSet({objRef:selectedDbObj, objValue:dbName})
			
			-- wait for scripts to load
			repeat 100 times
				tell application "System Events"
					tell process "FileMaker Pro Advanced"
						set scriptNumNew to count of rows of scriptTable
					end tell
				end tell
				try
					if scriptNumNew is not equal to scriptNumOld and scriptNumNew is greater than 0 then exit repeat
				end try
				delay 0.5
			end repeat
		end if
		
		
		-- filter scripts
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set scriptNumAll to count of rows of scriptTable
				set filterField to text field 1 of window 1
			end tell
		end tell
		fmGUI_TextFieldSet({objRef:filterField, objValue:scriptName})
		delay 0.2
		
		
		-- if the same number of scripts as before, try filtering again
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set scriptNumFiltered to count of rows of outline 1 of scroll area 1 of window "Specify Script"
			end tell
		end tell
		if scriptNumFiltered is equal to scriptNumAll then
			fmGUI_TextFieldSet({objRef:filterField, objValue:""})
			delay 0.2
			fmGUI_TextFieldSet({objRef:filterField, objValue:scriptName})
		end if
		delay 0.2
		
		
		-- select script
		try
			tell application "System Events"
				tell process "FileMaker Pro Advanced"
					select (first row of outline 1 of scroll area 1 of window "Specify Script" whose value of text field 1 is equal to scriptName)
				end tell
			end tell
		on error errMsg number errNum
			if errNum is -1719 then
				-- if the error is that the requested row doesn't exist, report that more clearly:
				error "Could not find a script named '" & scriptName & "' - " & errMsg number errNum
			else -- any other error - just pass up:
				error errMsg number errNum
			end if
		end try
		
		
		-- specify params
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				set paramsObj to text field "Optional script parameter:" of window "Specify Script"
			end tell
		end tell
		if scriptParams is null then
			fmGUI_TextFieldSet({objRef:paramsObj, objValue:""})
		else
			fmGUI_TextFieldSet({objRef:paramsObj, objValue:scriptParams})
		end if
		
		
		-- save changes
		fmGUI_ObjectClick_OkButton({})
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_Select_SpecifyScriptWindow - " & errMsg number errNum
	end try
end fmGUI_ManageScripts_Select_SpecifyScriptWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_PopupSet(prefs)
	set objRef to my coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRef} & prefs)
end fmGUI_PopupSet

on fmGUI_TextFieldSet(prefs)
	set objRef to my coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_TextFieldSet({objRef:objRef} & prefs)
end fmGUI_TextFieldSet

on getTextBetween(prefs)
	tell application "fmGuiLib" to getTextBetween(prefs)
end getTextBetween

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
