-- namesOfTOsOfWindowName(someWindowName)
-- Dan Shockley
-- return the name of every table occurence of the specified window


(*
HISTORY:
	1.2 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.1 - 2017-06-26 ( eshagdar ): cleaned up code
	1.0 - 201x-xx-xx ( dshockley ): created.
*)


on run
	tell application "FileMaker Pro" to set frontmostWindowName to name of window 1
	namesOfTOsOfWindowName(frontmostWindowName)
end run

--------------------
-- START OF CODE
--------------------

on namesOfTOsOfWindowName(someWindowName)
	-- version 1.1
	
	tell application "FileMaker Pro"
		set dbCount to count of every database
		repeat with dbNum from 1 to dbCount
			-- might not HAVE any windows:
			try
				set dbWindows to name of every window of database dbNum
				if dbWindows contains someWindowName then return name of every table of database dbNum
			end try
		end repeat
	end tell
	
	error "Could not get namesOfTOsOfWindowName of window name specified: '" & someWindowName & "'"
end namesOfTOsOfWindowName

--------------------
-- END OF CODE
--------------------
