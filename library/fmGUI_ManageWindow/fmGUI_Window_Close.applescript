-- fmGUI_Window_Close(someWindowName)
-- Dan Shockley
-- Closes specify window name


(*
HISTORY:
	1.2 - 2018-09-20 ( eshagdar ): FM17 has only 1 version so talk to by name instead of id.
	1.1 - 2017-06-26 ( eshagdar ): changed tell-block to a one-liner.
	1.0 - created
*)


on run
	fmGUI_Window_Close("NameOfWindowToClose")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Window_Close(someWindowName)
	-- version 1.2
	
	tell application "FileMaker Pro" to close window someWindowName
	return true
	
end fmGUI_Window_Close

--------------------
-- END OF CODE
--------------------
