-- logLEVEL(level, someMsg)
-- Daniel A. Shockley http://www.danshockley.com
-- Wrapper for logConsole. Appends X's to ScriptName - more X's is more important (lower 'level' number). Lower number level means more important (scale 1 to 5, for now). Reason: can search Console Log for ScriptName_XXXXX to get only most important. 


(*
HISTORY:
	1.0 - created
*)


property ScriptName : "logLevelScript_Test"

on run
	logLEVEL(5, "SomeMessage")
end run


--------------------
-- START OF CODE
--------------------

on logLEVEL(level, someMsg)
	-- version 1.0
	
	set maxXcount to 5
	set logName to ScriptName & "_"
	set xCount to maxXcount - level + 1
	
	repeat with i from 1 to xCount
		set logName to logName & "X"
	end repeat
	
	logConsole(logName, someMsg)
	
end logLEVEL

--------------------
-- END OF CODE
--------------------

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole
