-- fmGUI_ManageSecurity_PrivSet_DeleteEmpty({fullAccessAccountName:"", fullAccessPassword:"", skipDeleteList:{}})
-- Erik Shagdar
-- delete privSets that do not have any accounts.


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.1 - 2017-07-12 ( eshagdar ): obj clicking done via cliClick
	1.0 - 2017-07-10 ( eshagdar ): first created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_Open
*)


on run
	fmGUI_ManageSecurity_PrivSet_DeleteEmpty({fullAccessAccountName:"admin", fullAccessPassword:"", skipDeleteList:{"Developer Copy2"}})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_DeleteEmpty(prefs)
	-- version 2020-03-04-1532
	
	set defaultPrefs to {skipDeleteList:{}}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
		
		
		-- get a list of all privSets
		tell application "System Events"
			tell application process "FileMaker Pro"
				set privSetTable to table 1 of scroll area 1 of tab group 1 of window 1
				set existingPrivSetNames to value of static text 1 of every row of table 1 of scroll area 1 of tab group 1 of window 1
			end tell
		end tell
		
		
		-- iterate through the list, develing the empty ones
		set listDeletedPrivSets to {}
		repeat with onePrivSetName from 1 to count of existingPrivSetNames
			set onePrivSetName to item onePrivSetName of existingPrivSetNames
			if onePrivSetName begins with "[" then
				-- skip this since it's a file deafult privSet
			else if skipDeleteList of prefs contains onePrivSetName then
				-- skip since privSet is specified to be kept
			else
				-- delete if there are no accounts for the privSet
				tell application "System Events"
					tell application process "FileMaker Pro"
						set onePrivSetRow to (first row of privSetTable whose value of static text 1 is equal to onePrivSetName)
						
						if value of static text 2 of onePrivSetRow is equal to "" then
							select onePrivSetRow
							set nameOfSelectedPrivSet to value of static text 1 of (first row of privSetTable whose selected is true)
							set deleteButton to button "Delete" of tab group 1 of window 1
						else
							set nameOfSelectedPrivSet to null
						end if
					end tell
				end tell
				if onePrivSetName is equal to nameOfSelectedPrivSet then
					clickObjectByCoords(deleteButton)
					copy onePrivSetName to end of listDeletedPrivSets
				end if
			end if
		end repeat
		
		
		-- final checks
		tell application "System Events"
			tell application process "FileMaker Pro"
				-- make sure we don't have errors after deleting
				if name of window 1 does not start with "Manage Security" then error "unable to delete privSet '" & value of static text 1 of firstPrivSetNoAccounts & "'" number -1024
				
				-- ensure the remaining privSets all have an account ( or are the default file privSets )
				if (every row of privSetTable whose value of static text 2 is "" and value of static text 1 does not start with "[") is equal to {} then return listDeletedPrivSets
			end tell
		end tell
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_DeleteEmpty - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_DeleteEmpty

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(someObject))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_PrivSets(prefs)
end fmGUI_ManageSecurity_GoToTab_PrivSets


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
