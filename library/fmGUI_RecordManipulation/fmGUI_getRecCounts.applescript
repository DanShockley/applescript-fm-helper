-- fmGUI_getRecCounts()
-- Erik Shagdar
-- Get the counts of the found set and total # of records


(*
HISTORY:
	1.0 - 2016-08-12 ( eshagdar ): first created


REQUIRES:
	fmGUI_ModeEnsure_Browse
	getTextAfter
	getTextBefore
*)


on run
	fmGUI_getRecCounts()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_getRecCounts()
	-- version 1.0
	
	fmGUI_ModeEnsure_Browse()
	try
		-- get the count string
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set recString to value of static text 3 of group 1 of toolbar 1 of window 1
			end tell
		end tell
		
		
		-- found set
		if recString contains "/" then
			set recsFound to getTextBefore(recString, "/") as integer
		else
			set recsFound to recString as integer
		end if
		
		
		-- total
		if recString contains "/" then
			set recsTotal to getTextAfter(recString, "/") as integer
		else
			set recsTotal to recString as integer
		end if
		
		return {recsFound:recsFound, recsTotal:recsTotal}
		
	on error errMsg number errNum
		error "Couldn't fmGUI_getRecCounts - " & errMsg number errNum
	end try
end fmGUI_getRecCounts

--------------------
-- END OF CODE
--------------------

on fmGUI_ModeEnsure_Browse()
	tell application "fmGuiLib" to fmGUI_ModeEnsure_Browse()
end fmGUI_ModeEnsure_Browse

on getTextAfter(sourceText, afterThis)
	tell application "fmGuiLib" to getTextAfter(sourceText, afterThis)
end getTextAfter

on getTextBefore(sourceTEXT, stopHere)
	tell application "fmGuiLib" to getTextBefore(sourceTEXT, stopHere)
end getTextBefore
