-- timeStringFromSeconds(someSeconds)
-- Daniel A. Shockley
(* 
	Takes some number of seconds and returns a time as "HH:MM:SS". 
	NOTE: it will ONLY include an additional portion for number of days if the seconds are more than those of a single day (e.g. "123:09:00:00" for 123 days + 9 hours).
	NOTE: discards the non-integer portion of the seconds. A future version might take an AppleScript record as params, allowing for options like retaining portions of seconds. 

HISTORY:
	2024-07-02 ( danshockley ): created
*)


on run
	timeStringFromSeconds(86400 + 8200)
end run


--------------------
-- START OF CODE
--------------------

on timeStringFromSeconds(someSeconds)
	-- v 2024-07-02
	set remainingSeconds to someSeconds
	set numDays to remainingSeconds div 86400
	set remainingSeconds to remainingSeconds - numDays * 86400
	set numHH to remainingSeconds div 3600
	set remainingSeconds to remainingSeconds - numHH * 3600
	set numMM to remainingSeconds div 60
	set remainingSeconds to remainingSeconds - numMM * 60
	set numSS to (remainingSeconds mod 60) as integer
	set textHH to text -2 thru -1 of ("0" & numHH)
	set textMM to text -2 thru -1 of ("0" & numMM)
	set textSS to text -2 thru -1 of ("0" & numSS)
	set theTimeString to ""
	if numDays > 0 then
		set theTimeString to theTimeString & numDays & ":"
	end if
	set theTimeString to theTimeString & textHH & ":" & textMM & ":" & textSS
	return theTimeString
end timeStringFromSeconds

--------------------
-- END OF CODE
--------------------
