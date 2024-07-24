-- logMAIN(someMsg)
-- Daniel A. Shockley http://www.danshockley.com
-- Wrapper for level 0 logLEVEL function. Used to log messages of highest importance.


(*
HISTORY:
	1.0 - created
*)


on run
	logMAIN("SomeMessage")
end run

--------------------
-- START OF CODE
--------------------

on logMAIN(someMsg)
	-- version 1.0
	
	logLEVEL(0, someMsg) -- log at highest importance
	
end logMAIN

--------------------
-- END OF CODE
--------------------

on logLEVEL(level, someMsg)
	tell application "fmGuiLib" to logLEVEL(level, someMsg)
end logLEVEL
