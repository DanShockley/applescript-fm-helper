-- fmGUI_Database_DbNameOfFrontWindow({})
-- Dan Shockley
-- return the database name of frontmost window


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. Added fmGUI_ALL_Utilities_Close.
	1.1.1 - 2018-12-07 ( eshagdar ): no need to specify the name of the window - sub-handler will take the frontmost one.
	1.1 - 
	1.0 - 20xx-xx-xx ( dshockley ): created.
	

REQUIRES:
	fmGUI_ALL_Utilities_Close
	namesOfTOsOfWindowName
*)


on run
	fmGUI_Database_DbNameOfFrontWindow({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_Database_DbNameOfFrontWindow(prefs)
	-- version 2020-03-04-1647
	try
		fmGUI_ALL_Utilities_Close()
		
		return dbNameOfWindowName("")
		
	on error errMsg number errNum
		error "Couldn't get fmGUI_Database_DbNameOfFrontWindow - " & errMsg number errNum
	end try
	
end fmGUI_Database_DbNameOfFrontWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_ALL_Utilities_Close()
	tell application "fmGuiLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on dbNameOfWindowName(prefs)
	tell application "fmGuiLib" to dbNameOfWindowName(prefs)
end dbNameOfWindowName
