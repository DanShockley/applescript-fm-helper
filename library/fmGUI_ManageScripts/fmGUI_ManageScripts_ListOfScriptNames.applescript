-- fmGUI_ManageScripts_ListOfScriptNames(someDbName)
-- Dan Shockley
-- Return the list of all script names


(*
HISTORY:
	2024-07-23 ( danshockley ): Updated to tell app by PATH (works-with-FM19+). 
	1.3.1 - 2019-03-13 ( eshagdar ): updated error message. reformated logic for clarity and brevity.
	1.3 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.2 - 2016-07-08 ( eshagdar ): Renamed from 'namesOfScriptsOfDatabase' to 'fmGUI_ManageScripts_ListOfScriptNames'
	1.1 - handles when there are NO script, even though db exists. 
	1.0 - 201x-xx-xx ( dshcokley ): first created


REQUIRES:
	getFmAppPath
*)


on run
	fmGUI_ManageScripts_ListOfScriptNames("WUSHOP")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_ListOfScriptNames(someDbName)
	-- version 2024-07-23
	
	try
		set appPosixPath to getFmAppPath()
		
		using terms from application "FileMaker Pro"
			tell application appPosixPath
				if (count of every FileMaker script of database someDbName) is greater than 0 then return name of every FileMaker script of database someDbName
			end tell
		end using terms from
		
		return {}
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_ListOfScriptNames (  " & someDbName & ") - " & errMsg number errNum
	end try
	
end fmGUI_ManageScripts_ListOfScriptNames

--------------------
-- END OF CODE
--------------------

on getFmAppPath()
	tell application "fmGuiLib" to getFmAppPath()
end getFmAppPath
