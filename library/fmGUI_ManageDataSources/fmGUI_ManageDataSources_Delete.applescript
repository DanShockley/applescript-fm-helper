-- fmGUI_ManageDataSources_Delete(dataSourceName:null)
-- Erik Shagdar
-- Delete a data source


(*
HISTORY:
	1.0 - 2017-11-20 ( eshagdar ): created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_ManageDataSources_Open
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageDataSources_Delete({dataSourceName:"SomeFakeFile"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDataSources_Delete(prefs)
	-- version 1.0
	
	try
		set defaultPrefs to {dataSourceName:null}
		set prefs to prefs & defaultPrefs
		
		set dataSourceName to dataSourceName of prefs
		
		fmGUI_AppFrontMost()
		fmGUI_ManageDataSources_Open({})
		
		try -- it DOES exist, so delete it: 
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of (table 1 of scroll area 1 of window 1) whose name of static text 1 is dataSourceName)
					set deleteButton to first button of window 1 whose name starts with "Delete"
				end tell
			end tell
			clickObjectByCoords(deleteButton)
			
			return "Deleted: " & dataSourceName
		on error -- DOES NOT  exist:
			return "Do NOT Exist: " & dataSourceName
		end try
		
	on error errMsg number errNum
		error "Couldn't ensure existence of data source '" & dataSourceName & "' - " & errMsg number errNum
	end try
end fmGUI_ManageDataSources_Delete

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
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

