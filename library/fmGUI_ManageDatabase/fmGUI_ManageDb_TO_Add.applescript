-- fmGUI_ManageDb_TO_Add({tocName:null, dbName:null, doNotChangeExisting:false, baseTableName:null})
-- Daniel Shockley
-- add table occurence to the current database


(*
HISTORY:
	1.4.3 - 2018-01-17 ( eshagdar ): button clicking by reference and wait for window instead of calling affects window via button handler. use okButton handler instead of passing reference
	1.4.2 - 2017-09-06 ( eshagdar ): updated error message. updated call to pop up set.
	1.4.1 - 2017-08-23 ( eshagdar ): must pass credentials when going to relationships tab of manage DB
	1.4 - 2016-08-23 ( eshagdar ): declare all params. fixed error message.
	1.3 - 2015-04-24 ( eshagdar ): creates a data source if needed
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageDataSources_EnsureExists
	fmGUI_ManageDataSources_Save
	fmGUI_ManageDb_GoToTab_Relationships
	fmGUI_ObjectClick_Button
	fmGUI_ObjectClick_OKButton
	fmGUI_PopupSet
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageDb_TO_Add({TOName:"bob", dbName:"a01_PERSON", baseTableName:"A_PERSON"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_TO_Add(prefs)
	-- version 1.4.2
	
	set defaultPrefs to {TOName:null, dbName:null, doNotChangeExisting:false, baseTableName:null}
	
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	set baseTableName to baseTableName of prefs
	set TOName to TOName of prefs
	
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageDb_GoToTab_Relationships(prefs)
		
		
		-- add a new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set addTocButton to first button of tab group 1 of window 1 whose description contains "Add a table"
			end tell
		end tell
		fmGUI_ObjectClick_Button({buttonRef:addTocButton})
		windowWaitUntil_FrontIS({windowName:"Specify Table"})
		
		
		-- specify Db of new TO
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set dataSourcePopUpButton to pop up button "Data Source:" of window 1
			end tell
		end tell
		
		try
			-- try to select existing data source
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:dbName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
			
		on error
			--Not an existing data source, so create it
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					key code 53 -- Hit 'Esc'
				end tell
			end tell
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:"Manage Data Sources…"})
			fmGUI_ManageDataSources_EnsureExists({dataSourceName:dbName})
			fmGUI_ManageDataSources_Save({})
			delay 1
			
			-- now that we've added the data source, try again
			fmGUI_PopupSet({objRef:dataSourcePopUpButton, objValue:dbName})
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is baseTableName)
				end tell
			end tell
		end try
		
		
		-- specify TO name
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set value of text field "Name" of window 1 to TOName
			end tell
		end tell
		if debugMode then logLEVEL(5, "TO added: '" & TOName & "'")
		fmGUI_ObjectClick_OkButton({})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_TO_Add - " & errMsg number errNum
	end try
	
end fmGUI_ManageDb_TO_Add

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDataSources_EnsureExists(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDataSources_EnsureExists(prefs)
end fmGUI_ManageDataSources_EnsureExists

on fmGUI_ManageDataSources_Save(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDataSources_Save(prefs)
end fmGUI_ManageDataSources_Save

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab_Relationships(prefs)
end fmGUI_ManageDb_GoToTab_Relationships

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:my coerceToString(buttonRef of prefs)} & prefs)
end fmGUI_ObjectClick_Button

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

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
