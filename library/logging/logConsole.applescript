-- logConsole(processName, consoleMsg)
-- Daniel A. Shockley http://www.danshockley.com
-- log a message to the console


(*
HISTORY:
	2.0 - strip out any NULL characters, since that breaks the shell command.
	1.9 - REQUIRES coerceToString to enable logging of objects not directly coercible to string.
	1.8 - coerces to string first (since numbers would not directly convert for 'quoted form'
	1.7 - now works with Leopard by using the "logger" command instead of just appending to log file
	1.6 - the 'space' constant instead of literal spaces for readability, removed trailing space from the hostname command
	1.5 - uses standard date-stamp format
	1.0 - created
*)

on run
	logConsole("SomeProcessName", "SomeMessage")
end run

--------------------
-- START OF CODE
--------------------

on logConsole(processName, consoleMsg)
	-- version 2.0
	
	set consoleMsg to coerceToString(consoleMsg)
	set consoleMsg to replaceSimple({consoleMsg, ASCII character 0, ""}) -- ASCII 0 breaks shell scripting
	if length of consoleMsg is 0 then
		-- we still want this function to log that an empty string was sent:
		set consoleMsg to "[EMPTY STRING]"
	end if
	set shellCommand to "logger" & space & "-t" & space & quoted form of processName & space & quoted form of consoleMsg
	
	do shell script shellCommand
	return shellCommand
	
end logConsole

--------------------
-- END OF CODE
--------------------

on coerceToString(incomingObject)
	tell application "fmGuiLib" to coerceToString(incomingObject)
end coerceToString

on replaceSimple(prefs)
	tell application "fmGuiLib" to replaceSimple(prefs)
end replaceSimple
