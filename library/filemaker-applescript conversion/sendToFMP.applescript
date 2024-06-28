-- sendToFMP(someData)
-- Daniel A. Shockley, NYHTC
-- Sends someData back to FileMaker window 1 on a layout called "AppleScript_Transfer-DO_NOT_RENAME"


(* 
HISTORY:
	2.0 - 2024-06-28 ( danshockley ): Updated to avoid needing "Advanced" in app process name. Try frontmost app, then any with FileMaker in name. 
	1.7 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.6 - switch to 'path to me' since Mavericks BROKE 'name of me' completely 
	1.5 - allow specification of which FileMaker: Pro/Adv/Unk 
	1.4 - store the backslash character for escaping to avoid getting mangled 
	1.3 - can handle when someData is numeric (or anything coercible to string) 
	1.2 - fixes issues with double-quote and backslashes in the data 
	1.1 - 
	1.0 - first created
*)


on run
	sendToFMP("foo")
end run

--------------------
-- START OF CODE
--------------------

on sendToFMP(someData)
	-- version 2024-06-28
	
	try
		-- someData MIGHT be a record that looks like this: {someData:"BLAH BLAH BLAH"} 
		set someData to someData of someData
	end try
	
	set asTransfer to "AppleScript_Transfer-DO_NOT_RENAME"
	set fmpName to "FileMaker"
	if (path to me) does not contain fmpName then
		tell application "System Events"
			set appProc to first application process whose frontmost is true
			if name of appProc does not contain appNameMatchString then
				-- frontmost does not match, so just get the 1st one we can find.
				try
					set appProc to get first application process whose name contains appNameMatchString
				on error errMsg number errNum
					if errNum is -1719 then return false
					error errMsg number errNum
				end try
			end if
			set appProcID to id of appProc
		end tell
		set beginTellFM to "tell app id " & appProcID & return
		set endTellFM to return & "end tell"
	else
		set beginTellFM to ""
		set endTellFM to ""
	end if
	
	set someDataCleaned to someData as string
	set oldDelims to AppleScript's text item delimiters
	-- escape backslashes 
	set backslash to ASCII character 92
	set AppleScript's text item delimiters to backslash
	set the someDataCleaned to every text item of someDataCleaned
	set AppleScript's text item delimiters to backslash & backslash
	set the someDataCleaned to the someDataCleaned as string
	-- escape double-quotes 
	set AppleScript's text item delimiters to the "\""
	set the someDataCleaned to every text item of someDataCleaned
	set AppleScript's text item delimiters to the (backslash & "\"")
	set the someDataCleaned to the someDataCleaned as string
	-- reset the AppleScript delimiters	 
	set AppleScript's text item delimiters to oldDelims
	
	set codeToSet to "set cell 1 of layout \"" & asTransfer & "\" of window 1 to (\"" & someDataCleaned & "\" as string)"
	set sendSource to beginTellFM & codeToSet & endTellFM
	
	run script sendSource
	
end sendToFMP

--------------------
-- END OF CODE
--------------------
