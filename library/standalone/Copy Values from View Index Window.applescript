-- CopyValuesFromViewIndexWindow({})
-- Dan Shockley
-- Copy Values from View Index Window

(*
HISTORY:
	2025-04-04 ( danshockley ): Use getFmAppProcessID and then tell by process id. 
	2023-04-21 ( danshockley ): Revised to be FileMaker-version-independent. 
	2019-04-25 ( danshockley ): Provide visual feedback that the rows were copied by moving to the end of scroll area.
	2017-xx-xx ( danshockley ): First created. 
*)


on run
	CopyValuesFromViewIndexWindow({})
end run

--------------------
-- START OF CODE
--------------------

on CopyValuesFromViewIndexWindow({})
	-- version 2025-04-04 ( danshockley )
	
	set fmProcID to my getFmAppProcessID()
	
	tell application "System Events"
		
		tell process id fmProcID
			set frontmost to true
			if name of window 1 is not "View Index" then
				display dialog "Please choose View Index on the field you'd like the list of index values for." buttons {"OK"} default button "OK"
				return false
			end if
			tell table 1 of scroll area 1 of window 1
				set indexList to get value of text field 1 of rows of it
				select last row of it
				delay 0.3
				-- need to scroll window down to selected row: this will do that, plus show activity:
				keystroke (ASCII character 30) -- up arrow
				keystroke (ASCII character 31) -- down arrow
			end tell
		end tell
	end tell
	
	tell application "fmGuiLib" to set indexTextBlock to unParseChars(indexList, return)
	
	set the clipboard to indexTextBlock
	
	return indexTextBlock
	
end CopyValuesFromViewIndexWindow

--------------------
-- END OF CODE
--------------------

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
