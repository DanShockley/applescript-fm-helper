-- ensureFileMakerDatabase({serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:""})
-- Dan Shockley
-- Make sure that a database is open and (one of) its window(s) is in front.


(*
HISTORY:
	1.5 - 2018-10-16 ( eshagdar ): FM17 has only 1 version, so no need to specify.
	1.4 - simplified isDisplayed if-block. added default prefs. put a try block around the handler.
	1.3 - record param: {serverIP:, mainDbName:, customLinkReceiverScriptName:, dbName: }
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	displayFileMakerDatabase
	logConsole
	openFileMakerDatabase
*)


property ScriptName : "ensureFileMakerDatabase_Test"
property debugMode : true

on run
	ensureFileMakerDatabase({mainDbName:"a00_TIMESSQUARE", dbName:"a32_OPCENTRAL", serverIP:"192.168.254.6", customLinkReceiverScriptName:"ReceiveSomeLink_DO_NOT_RENAME"})
end run


--------------------
-- START OF CODE
--------------------

on ensureFileMakerDatabase(prefs)
	-- version 1.4
	
	set defaultPrefs to {serverIP:"", dbName:"", mainDbName:"", customLinkReceiverScriptName:""}
	set prefs to prefs & defaultPrefs
	set dbName to dbName of prefs
	
	try
		set isDisplayed to displayFileMakerDatabase({dbName:dbName}) -- first, just see if one is available.
		if debugMode then logConsole(ScriptName, "Tried to display: " & dbName)
		
		if not isDisplayed then
			if debugMode then logConsole(ScriptName, "About to try to open: " & dbName)
			
			if openFileMakerDatabase(prefs) then
				-- was able to open it, so NOW display window.
				delay 0.5
				if debugMode then logConsole(ScriptName, "Tried to open, now try again to display: " & dbName)
				set isDisplayed to displayFileMakerDatabase({dbName:dbName})
				return isDisplayed
			else
				-- Was NOT able to open it, so return false.
				return false
			end if
		end if
		
		-- was already displayed
		return true
	on error errMsg number errNum
		error "Unable to ensureFileMakerDatabase - " & errMsg number errNum
	end try
end ensureFileMakerDatabase



--------------------
-- END OF CODE
--------------------

on displayFileMakerDatabase(prefs)
	tell application "fmGuiLib" to displayFileMakerDatabase(prefs)
end displayFileMakerDatabase

on openFileMakerDatabase(prefs)
	tell application "fmGuiLib" to openFileMakerDatabase(prefs)
end openFileMakerDatabase

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole
