-- Copy Values from View Index Window
-- version 1.0, Daniel A. Shockley, HTC

on run
	
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			--set frontmost to true
			if name of window 1 is not "View Index" then
				display dialog "Please choose View Index on the field you'd like the list of index values for." buttons {"OK"} default button "OK"
				return false
			end if
			
			set indexList to get value of text field 1 of rows of table 1 of scroll area 1 of window 1
			
		end tell
	end tell
	
	tell application "htcLib" to set indexTextBlock to unParseChars(indexList, return)
	
	set the clipboard to indexTextBlock
	
	return indexTextBlock
	
end run
