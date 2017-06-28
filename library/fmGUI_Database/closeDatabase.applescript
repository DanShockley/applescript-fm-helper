-- closeDatabase({fmAppType:"Pro", waitCycleDelaySeconds:10, waitSaveTotalSeconds:10 * minutes, dbName:null, closeScriptName:"CLOSE_SCRIPT"})
-- Daniel A. Shockley, NYHTC
-- If possible, close the frontmost database. If it takes too long, error. 


(*
HISTORY:
	1.5 - 2017-06-06 ( eshagdar ): use a handler for checking if menu item is available
	1.4 - 2016-07-07 ( eshagdar ): try closing DB by name first. changed the calling script to be a parameter insted of being hard-coded into the handler.
	1.3 - 2015-04-14 ( eshagdar ): TRY calling the close script. On error, jsut close the frontmost window
	1.2 - 2015-xx-xx ( eshagdar ): call CLOSE_SCRIPT instead of closing the frontmost window
	1.1 -  20xx-xx-xx ( dshockley ): 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageScripts_Close
	fmGUI_ManageScripts_FmScript_Select
	fmGUI_ManageScripts_Open
	fmGUI_MenuItemAvailable
	logConsole
	logLEVEL
*)


property debugMode : true
property ScriptName : "closeFileMakerDatabase_TEST"

on run
	closeDatabase({dbName:"WUSHOP"})
end run

--------------------
-- START OF CODE
--------------------

on closeDatabase(prefs)
	-- version 1.5
	
	set defaultPrefs to {fmAppType:"Pro", waitCycleDelaySeconds:10, waitSaveTotalSeconds:10 * minutes, dbName:null, closeScriptName:"CLOSE_SCRIPT"}
	set prefs to prefs & defaultPrefs
	
	set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
	set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
	set dbName to dbName of prefs
	
	set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
	
	
	try
		-- try closing the database by telling FileMaker to do it
		if dbName of prefs is not null then
			try
				tell application "FileMaker Pro Advanced" to close database dbName
				if debugMode then my logConsole(ScriptName, "DATABASE '" & dbName & "' closed directly.")
				return true
			on error errMsg number errNum
				if debugMode then my logLEVEL(5, "DATABASE '" & dbName & "'  unable to close directly, trying by close script." & errMsg)
			end try
		end if
		
		
		-- unable to close directly, try to call the close script
		fmGUI_AppFrontMost()
		
		if fmAppType of prefs is "Adv" then
			set fmProcessName to "FileMaker Pro Advanced"
		else
			set fmProcessName to "FileMaker Pro"
		end if
		
		
		tell application "System Events"
			tell application process fmProcessName
				set closeMenuItem to menu item "Close" of menu 1 of menu bar item "File" of menu bar 1
			end tell
		end tell
		
		
		-- wait until Close Window is available ( menu item is available ):
		set closeWindowAvailable to fmGUI_MenuItemAvailable({menuObj:closeMenuItem})
		
		
		-- try to close by running the close script
		try
			if closeWindowAvailable then
				fmGUI_ManageScripts_Open({})
				fmGUI_ManageScripts_FmScript_Select({fmScriptName:(closeScriptName of prefs)})
				tell application "System Events"
					tell application process fmProcessName
						set runScriptButton to first button of window 1 whose description is "Perform"
						click runScriptButton
					end tell
				end tell
			else
				set frontWindowName to name of window 1
				error "Close Window menu item was not enabled - front window name is " & frontWindowName number 1024
			end if
		on error
			if debugMode then logConsole(ScriptName, "No '" & (closeScriptName of prefs) & "' for " & dbName & ", attempting to close window instead")
			fmGUI_ManageScripts_Close({})
			tell application "System Events"
				tell application process fmProcessName
					click button 1 of window 1
				end tell
			end tell
		end try
		
	on error errMsg number errNum
		error "Unable to run close script: " & errMsg number errNum
	end try
end closeDatabase

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageScripts_Close(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_Close(prefs)
end fmGUI_ManageScripts_Close

on fmGUI_ManageScripts_FmScript_Select(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_FmScript_Select(prefs)
end fmGUI_ManageScripts_FmScript_Select

on fmGUI_ManageScripts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on fmGUI_MenuItemAvailable(prefs)
	tell application "htcLib" to fmGUI_MenuItemAvailable(prefs)
end fmGUI_MenuItemAvailable

on logConsole(processName, consoleMsg)
	tell application "htcLib" to logConsole(processName, consoleMsg)
end logConsole

on logLEVEL(level, someMsg)
	tell application "htcLib" to logLEVEL(level, someMsg)
end logLEVEL
