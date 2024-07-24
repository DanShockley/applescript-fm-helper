-- fmGUI_ManageScripts_ListOfScriptNames(someDbName)
-- Dan Shockley
-- Return the list of all script names


(*
HISTORY:
	1.3.1 - 2019-03-13 ( eshagdar ): updated error message. reformated logic for clarity and brevity.
	1.3 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.2 - 2016-07-08 ( eshagdar ): Renamed from 'namesOfScriptsOfDatabase' to 'fmGUI_ManageScripts_ListOfScriptNames'
	1.1 - handles when there are NO script, even though db exists. 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	«list of handlers required»
	«list of handlers required»
*)


on run
	fmGUI_ManageScripts_ListOfScriptNames("WUSHOP")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_ListOfScriptNames(someDbName)
	-- version 1.3.1
	
	try
		tell application "FileMaker Pro Advanced"
			if (count of every FileMaker script of database someDbName) is greater than 0 then return name of every FileMaker script of database someDbName
		end tell
		
		return {}
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_ListOfScriptNames (  " & someDbName & ") - " & errMsg number errNum
	end try
	
end fmGUI_ManageScripts_ListOfScriptNames

--------------------
-- END OF CODE
--------------------
