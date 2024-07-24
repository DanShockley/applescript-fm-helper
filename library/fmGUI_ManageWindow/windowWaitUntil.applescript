-- windowWaitUntil(windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:"")
-- Dan Shockley
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.5 - 2023-07-20 ( danshockley ): Use "FileMaker Pro" (v19's name) AFTER checking frontmost app. Provide an error for an unknown test. Added whichWindow "none" (use with your choice of windowNameTest). 
	1.4 - 2017-10-19 ( eshagdar ): wrap in a try-block
	1.3 - 2016-10-20 ( danshockley ): if using "any", then need to do the name tests in a loop for each window.
	1.2 - 2015-09-30 ( eshagdar ): added 'is not test'.
	1.1 - 2014-xx-xx ( danshockley ): added 'is' as synonymous with 'equals'.
	1.0 - 2014-xx-xx ( danshockley ): created.
*)


on run
	fmGUI_AppFrontMost()
	delay 1
	--windowWaitUntil({whichWindow:"any", windowNameTest:"contains", windowName:"Authenticate"})
	--windowWaitUntil({whichWindow:"front", windowNameTest:"is not", windowName:"Manage Database for"})
	windowWaitUntil({whichWindow:"none", windowNameTest:"contains", windowName:"Manage Database for"})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {windowName:null, windowNameTest:"contains", whichWindow:"any", waitCycleDelaySeconds:0.5, waitCycleMax:20}
	set prefs to prefs & defaultPrefs
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	
	set windowName to windowName of prefs
	set windowNameTest to windowNameTest of prefs
	set whichWindow to whichWindow of prefs
	
	set checkResult to false
	set foundWindow to false
	
	try
		repeat waitCycleMax of prefs times
			tell application "System Events"
				
				if whichWindow is in {"any", "none"} then
					set windowNameList to name of every window of process id fmProcID
				else if whichWindow is "front" then
					set frontWindowName to name of window 1 of process id fmProcID
					set windowNameList to {frontWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
				else -- whichWindow  is window index number:
					set windowIndex to whichWindow as number
					set chosenWindowName to name of window windowIndex of process id fmProcID
					set windowNameList to {chosenWindowName} -- we are only checking ONE window, but need a list (of one item) for below.
				end if
			end tell
			
			-- are we doing an existence search?
			if whichWindow is "exists" then
				set existenceSearch to true
			else if whichWindow is "does not exist" then
				set existenceSearch to false
			else
				set existenceSearch to ""
			end if
			
			repeat with oneWindowName in windowNameList
				-- BEGIN: loop over one (or more) windows.	
				set oneWindowName to contents of oneWindowName
				
				if windowNameTest is "contains" then
					set checkResult to (oneWindowName contains windowName)
					
				else if windowNameTest is "does not contain" then
					set checkResult to (oneWindowName does not contain windowName)
					
				else if windowNameTest is "equals" then
					set checkResult to (oneWindowName is equal to windowName)
					
				else if windowNameTest is "is" then
					set checkResult to (oneWindowName is equal to windowName)
					
				else if windowNameTest is "starts with" then
					set checkResult to (oneWindowName starts with windowName)
					
				else if windowNameTest is "does not start with" then
					set checkResult to (oneWindowName does not start with windowName)
					
				else if windowNameTest is "ends with" then
					set checkResult to (oneWindowName ends with windowName)
					
				else if windowNameTest is "does not end with" then
					set checkResult to (oneWindowName does not end with windowName)
					
				else if windowNameTest is "is not" then
					set checkResult to (oneWindowName is not windowName)
					
				else
					error "Unknown windowNameTest: " & windowNameTest number -1024
				end if
				
				if checkResult then exit repeat
				
				-- END OF: loop over one (or more) windows.	
			end repeat
			
			if whichWindow is "none" then
				-- we want to END the script when a scan through all windows did NOT find a window matching our test:
				if not checkResult then exit repeat
			else
				-- "any" or "front" or any affirmative "FOUND IT" request:
				if checkResult then exit repeat
			end if
			
			
			delay waitCycleDelaySeconds of prefs
			
			-- END OF: waiting loop.			
		end repeat
		
		if whichWindow is "none" then
			return not checkResult
		else
			return checkResult
		end if
		
	on error errMsg number errNum
		error "unable to windowWaitUntil - " & errMsg number errNum
	end try
end windowWaitUntil

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID

