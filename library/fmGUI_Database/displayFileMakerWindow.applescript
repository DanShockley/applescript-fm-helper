-- displayFileMakerWindow({windowName:"", waitCycleDelaySeconds:"", waitSaveTotalSeconds:""})
-- Dan Shockley
-- If open, then display first window this finds and return true, else return false.


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.8 - 2020-05-20 ( dshockley ): fixed name in 1st comment line. 
	1.7 - 2018-09-20 ( eshagdar ): FM17 has only 1 version, so no need to specify by name/bundle
	1.6 - get list of window names of open files from the menu instead of asking FM for document names.
	1.5.2 - 2017-11-20 ( eshagdar ): disable logging
	1.5.1 - 2017-10-25 ( eshagdar ): updated defaultPrefs. updated helper handlers. added delay, more debugging messages. get list of document names instead of documents - we don't need to get the name later.
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ClickMenuItem
	getTextBefore
	getTextBetween
	logConsole
	getFmAppProcessID
*)


property debugMode : true
property ScriptName : "displayFileMakerWindow_TEST"

on run
	displayFileMakerWindow({windowName:"a01_PERSON"})
end run

--------------------
-- START OF CODE
--------------------

on displayFileMakerWindow(prefs)
	-- version 1.7
	
	try
		set defaultPrefs to {windowName:null, waitCycleDelaySeconds:5, waitSaveTotalSeconds:2 * minutes}
		set prefs to prefs & defaultPrefs
		
		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try
		
		--if debugMode then logConsole(ScriptName, "displayFileMakerDatabase prefs: " & coerceToString(prefs))
		
		set windowName to windowName of prefs
		
		set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
		set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
		set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
		
		
		-- get name of all documents
		tell application "System Events"
			tell process id fmProcID
				set windowMenu to menu 1 of menu bar item "Window" of menu bar 1
				set hiddenWindowMenu to menu 1 of menu item "Show Window" of windowMenu
				set windowMenuItems to name of menu items of windowMenu
				set windowToShow to name of menu items of hiddenWindowMenu
			end tell
		end tell
		
		
		set windowList to {}
		set docNameList to items 11 thru -1 of (windowMenuItems & windowToShow)
		repeat with oneDocName in docNameList
			set oneDocName to contents of oneDocName
			
			
			-- get JUST the name of the file
			if oneDocName begins with "(" then
				set windowName to getTextBetween({sourceTEXT:oneDocName, beforeText:"(", afterText:")"})
			else if oneDocName ends with ")" then
				set windowName to getTextBefore(oneDocName, " (")
			else
				set windowName to oneDocName
			end if
			--log oneDocName
			
			
			--loop through available document and bring the specified to the front
			ignoring case
				if windowName is equal to (windowName as string) then
					if oneDocName is in windowMenuItems then
						-- window exists
						tell application "System Events"
							tell process id fmProcID
								set menuItemRef to menu item oneDocName of windowMenu
							end tell
						end tell
					else
						-- hidden file
						tell application "System Events"
							tell process id fmProcID
								set menuItemRef to menu item oneDocName of hiddenWindowMenu
							end tell
						end tell
						
					end if
					fmGUI_ClickMenuItem({menuItemRef:menuItemRef})
					return true
				end if
			end ignoring
		end repeat
		
		
		return false
	on error errMsg number errNum
		error "unable to displayFileMakerWindow - " & errMsg number errNum
	end try
end displayFileMakerWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_ClickMenuItem(prefs)
	tell application "fmGuiLib" to fmGUI_ClickMenuItem({menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs)
end fmGUI_ClickMenuItem

on getTextBefore(sourceTEXT, stopHere)
	tell application "fmGuiLib" to getTextBefore(sourceTEXT, stopHere)
end getTextBefore

on getTextBetween(prefs)
	tell application "fmGuiLib" to getTextBetween(prefs)
end getTextBetween

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole

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

