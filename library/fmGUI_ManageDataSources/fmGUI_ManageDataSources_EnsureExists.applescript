-- fmGUI_ManageDataSources_EnsureExists(dataSourceName:null, dataSourcePath:null)
-- Dan Shockley
-- Ensure the specified data source exists, adding it if necessary


(*
HISTORY:
	1.3 - 2017-01-11 ( eshagdar ): updated for FM15 - path is now in a group
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_ManageDataSources_Open
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageDataSources_EnsureExists({dataSourceName:"a01_PERSON"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_EnsureExists(prefs)
	-- version 1.3
	
	set defaultPrefs to {dataSourceName:null, dataSourcePath:null}
	set prefs to prefs & defaultPrefs
	
	set dataSourceName to dataSourceName of prefs
	set dataSourcePath to dataSourcePath of prefs
	
	-- default is just a relative path to data source name in same location as database being edited:
	if dataSourcePath is null then set dataSourcePath to "file:" & dataSourceName
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		
		
		-- Make sure a specified Data Source exists.
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set dataSourceExists to exists (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
			end tell
		end tell
		if not dataSourceExists then
			-- need to create it: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set newButton to first button of window 1 whose name starts with "New"
				end tell
			end tell
			clickObjectByCoords(newButton)
			windowWaitUntil_FrontIS({windowName:"Edit Data Source"})
			
			
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set value of text field 1 of window 1 to dataSourceName
					set value of text area 1 of scroll area 1 of group 1 of window 1 to dataSourcePath
					set okButton to first button of window 1 whose name starts with "OK"
				end tell
			end tell
			clickObjectByCoords(okButton)
			windowWaitUntil_FrontIS({windowName:"Manage External Data Sources"})
			
			return "Added: " & dataSourceName
		else -- already existed:
			return "Existed: " & dataSourceName
		end if
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageDataSources_EnsureExists for '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_EnsureExists

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDataSources_Open(prefs)
end fmGUI_ManageDataSources_Open

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
