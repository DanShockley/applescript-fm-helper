-- fmGUI_showAllRecs()
-- Erik Shagdar
-- Show all records in the current layout


(*
HISTORY:
	1.1 - 2016-10-18 ( eshagdar ): error out with a number
	1.0 - 2016-08-12 ( eshagdar ): first created


REQUIRES:
	fmGUI_ModeEnsure_Browse
	fmGUI_getRecCounts
*)


on run
	fmGUI_showAllRecs()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_showAllRecs()
	-- version 1.1
	
	try
		fmGUI_ModeEnsure_Browse()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				click menu item "Show All Records" of menu 1 of menu bar item "Records" of menu bar 1
			end tell
		end tell
		
		set numRecs to fmGUI_getRecCounts()
		if recsTotal of numRecs is not equal to recsFound of numRecs then
			error "record counts are not the same after running 'Show All Records' command." number -1024
		end if
		
		if recsTotal of numRecs is equal to 0 then
			return false
		else
			return true
		end if
		
	on error errMsg number errNum
		error "Couldn't fmGUI_showAllRecs - " & errMsg number errNum
	end try
end fmGUI_showAllRecs

--------------------
-- END OF CODE
--------------------

on fmGUI_ModeEnsure_Browse()
	tell application "fmGuiLib" to fmGUI_ModeEnsure_Browse()
end fmGUI_ModeEnsure_Browse

on fmGUI_getRecCounts()
	tell application "fmGuiLib" to fmGUI_getRecCounts()
end fmGUI_getRecCounts
