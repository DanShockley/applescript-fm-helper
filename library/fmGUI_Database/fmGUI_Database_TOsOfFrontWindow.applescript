-- fmGUI_Database_TOsOfFrontWindow({})
-- Dan Shockley
-- return the name of every table occurence of the frontmost window


(*
HISTORY:
	1.1 - 
	1.0 - 20xx-xx-xx ( dshockley ): created.
	

REQUIRES:
	fmGUI_NameOfFrontmostWindow
	namesOfTOsOfWindowName
*)


on run
	fmGUI_Database_TOsOfFrontWindow({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Database_TOsOfFrontWindow(prefs)
	-- version 1.1
	
	try
		return namesOfTOsOfWindowName(fmGUI_NameOfFrontmostWindow())
	on error errMsg number errNum
		error "Couldn't get fmGUI_Database_TOsOfFrontWindow - " & errMsg number errNum
	end try
	
end fmGUI_Database_TOsOfFrontWindow

--------------------
-- END OF CODE
--------------------

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on namesOfTOsOfWindowName(prefs)
	tell application "fmGuiLib" to namesOfTOsOfWindowName(prefs)
end namesOfTOsOfWindowName
