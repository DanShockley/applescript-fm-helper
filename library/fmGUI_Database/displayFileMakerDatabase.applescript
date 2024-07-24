-- displayFileMakerDatabase({dbName:"", waitCycleDelaySeconds:"", waitSaveTotalSeconds:""})
-- Dan Shockley
-- If open, then display first window this finds and return true, else return false.


(*
HISTORY:
	2024-07-16 ( danshockley ): For the FileMaker-specific dictionary, used handler getFmAppPath (works-with-FM19+). 
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.6.4 - 2020-05-20 ( dshockley ): fixed typo in error message. 
	1.6.3 - 2019-02-27 ( eshagdar ): throw up a dialog if there is a privSet violation.
	1.6.2 - 2018-12-07 ( eshagdar ): don't both using case, terms, or bundle ID - just talk to the application directly.
	1.6.1 - 2018-10-16 ( eshagdar ): remove remaining FMA references.
	1.6 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.5.3 - 2018-01-18 ( eshagdar ): capture privSet violation error
	1.5.2 - 2017-11-20 ( eshagdar ): disable logging
	1.5.1 - 2017-10-25 ( eshagdar ): updated defaultPrefs. updated helper handlers. added delay, more debugging messages. get list of document names instead of documents - we don't need to get the name later.
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	coerceToString
	logConsole
*)


property debugMode : true
property ScriptName : "displayFileMakerDatabase_TEST"

on run
	displayFileMakerDatabase({dbName:"TEMPLATE_DATABASE"})
end run

--------------------
-- START OF CODE
--------------------

on displayFileMakerDatabase(prefs)
	-- version 2024-07-15
	
	set fmPosixPath to my getFmAppPath()
	try
		set defaultPrefs to {dbName:null, waitCycleDelaySeconds:5, waitSaveTotalSeconds:2 * minutes}
		set prefs to prefs & defaultPrefs
		
		--if debugMode then logConsole(ScriptName, "displayFileMakerDatabase prefs: " & coerceToString(prefs))
		
		set dbName to dbName of prefs
		
		set waitSaveTotalSeconds to waitSaveTotalSeconds of prefs
		set waitCycleDelaySeconds to waitCycleDelaySeconds of prefs
		set waitCycleMax to round (waitSaveTotalSeconds / waitCycleDelaySeconds) rounding down
		
		
		-- get name of all documents
		delay 0.25
		repeat waitCycleMax times
			set docNameList to null
			try
				
				using terms from application "FileMaker Pro"
					tell application appPosixPath
						set docNameList to name of every document
					end tell
				end using terms from
				
				if docNameList is not null then exit repeat
			on error errMsg number errNum
				if errNum is -10011 then
					-- just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond. 
				else if errNum is -10004 then
					activate
					display dialog "unable to displayFileMakerDatabase because of privSet violation in some FM file errNum: " & errNum buttons "OK" default button "OK"
					error "privSet violation in some FM file..." & errNum number errNum
				else
					error "Error getting list of databases already open - " & errMsg number errNum
				end if
			end try
			
			delay waitCycleDelaySeconds
		end repeat
		--if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase docNameList: " & my coerceToString(docNameList))
		
		
		--loop through available document and bring the specified to the front
		repeat with oneDocName in docNameList
			set oneDocName to contents of oneDocName
			
			-- get the name WITHOUT the file extension: 
			(reverse of characters of oneDocName) as string
			text ((offset of "." in result) + 1) thru -1 of result
			set oneDocName to (reverse of characters of result) as string
			
			-- apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:
			if oneDocName is equal to (dbName as string) then
				using terms from application "FileMaker Pro"
					tell application appPosixPath
						--if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase about to show oneDocName: " & oneDocName)
						show document oneDocName
						if debugMode then my logConsole(ScriptName, "displayFileMakerDatabase: " & oneDocName)
					end tell
				end using terms from
				return true
			end if
		end repeat
		
		
		return false
	on error errMsg number errNum
		error "unable to displayFileMakerDatabase - " & errMsg number errNum
	end try
end displayFileMakerDatabase

--------------------
-- END OF CODE
--------------------

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole

on getFmAppPath()
	tell application "fmGuiLib" to getFmAppPath()
end getFmAppPath


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString

