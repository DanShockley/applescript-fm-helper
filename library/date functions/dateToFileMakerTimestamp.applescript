-- dateToFileMakerTimestamp(incomingDate)
-- Dan Shockley
-- Converts an AppleScript date to a FileMaker Timestamp.


(*
HISTORY:
	1.0 - 2011-xx-xx ( dshockley ): first created, date unknown.
*)


on run
	dateToFileMakerTimestamp(date "Tuesday, November 29, 2016 at 4:02:00 PM")
end run

--------------------
-- START OF CODE
--------------------

on dateToFileMakerTimestamp(incomingDate)
	-- version 1.0
	
	if class of incomingDate is not date then
		try
			set incomingDate to date incomingDate
		on error
			set incomingDate to (current date)
		end try
	end if
	
	set numHours to (time of incomingDate) div hours
	set textHours to text -2 through -1 of ("0" & (numHours as string))
	
	set numMinutes to (time of incomingDate) mod hours div minutes
	set textMinutes to text -2 through -1 of ("0" & (numMinutes as string))
	
	set numSeconds to (time of incomingDate) mod minutes
	set textSeconds to text -2 through -1 of ("0" & (numSeconds as string))
	
	set numDay to day of incomingDate as number
	set textDay to text -2 through -1 of ("0" & (numDay as string))
	
	set numYear to year of incomingDate as number
	set textYear to text -4 through -1 of (numYear as string)
	
	set numMonth to (month of (incomingDate)) as number
	set textMonth to text -2 through -1 of ("0" & (numMonth as string))
	
	set customDateString to textMonth & "/" & textDay & "/" & textYear & " " & textHours & ":" & textMinutes & ":" & textSeconds
	
	return customDateString	
end dateToFileMakerTimestamp

--------------------
-- END OF CODE
--------------------
