-- getFromFMP({fmType:""})
-- Daniel A. Shockley, NYHTC
-- picks up the contents of a field in FileMaker 17 ( should also work on 13 and 14, but is currently untested ) whose layout is called "AppleScript_Transfer-DO_NOT_RENAME"


(*
HISTORY:
	2.0 - 2024-06-28 ( danshockley ): Updated to avoid needing "Advanced" in app process name. Try frontmost app, then any with FileMaker in name. 
	1.9 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.8 - removed references to 'someData' 
	1.7 - fixed the bug where 'prefs' is passed as a paramater, but the fmType and someData was picking up values of 'someData' 
	1.6 - switch to 'path to me' since Mavericks BROKE 'name of me' completely 
	1.5 - allow specification of which FileMaker: Pro/Adv/Unk 
	1.4 - 
	1.3 - 
	1.2 - 
	1.1 -
	1.0 - first created
*)


on run
	getFromFMP({})
end run

--------------------
-- START OF CODE
--------------------

on getFromFMP(prefs)
	-- version 2024-06-28
	
	set asTransfer to "AppleScript_Transfer-DO_NOT_RENAME"
	set fmpName to "FileMaker"
	
	if (path to me) does not contain fmpName then
		tell application "System Events"
			set appProc to first application process whose frontmost is true
			if name of appProc does not contain fmpName then
				-- frontmost does not match, so just get the 1st one we can find.
				try
					set appProc to get first application process whose name contains fmpName
				on error errMsg number errNum
					if errNum is -1719 then return false
					error errMsg number errNum
				end try
			end if
			set appBundleID to bundle identifier of appProc
		end tell
		set beginTellFM to "tell app id \"" & appBundleID & "\"" & return
		set endTellFM to return & "end tell"
	else
		set beginTellFM to ""
		set endTellFM to ""
	end if
	
	set codeToGet to "cell 1 of layout \"" & asTransfer & "\" of window 1"
	set sendSource to beginTellFM & codeToGet & endTellFM
	set inputData to run script sendSource
	return inputData
end getFromFMP

--------------------
-- END OF CODE
--------------------
