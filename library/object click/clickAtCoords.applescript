-- clickAtCoords(xClick, yClick)
-- Dan Shockley
-- Click at the specified coordinates

(*
HISTORY:
	1.4 - 2017-10-18 ( eshagdar ): wrap in a try block.
	1.3.1 - 2017-09-05 ( eshagdar ): first set the shell command ( used for debugging ), then use the variable. coerce the entire list to a string instead of just the first number ( and then have applescript assume the rest is a string ).
	1.3 - 2017-08-23 ( eshagdar ): first move to a position, then click at that position. restore afterwards.
	1.2 - 2017-06-16 ( eshagdar ): cliclick v. 3.3 ( probably changed earlier ), the commands have been updated - need to specify the type of command ( i.e 'c:100,100' instead of '100 100' )
	1.1 - 2016-04-21 ( eshagdar ): updated how coords are passed in to be compatible with cliClick version 3.2, 02/17/2016
	1.0 - created
*)

property clickCommandPosix : POSIX path of (((path to home folder) as string)) & "Code/applescript-fm-helper/vendor/cliclick/cliclick"

on run
	clickAtCoords(956, 293)
end run

--------------------
-- START OF CODE
--------------------

on clickAtCoords(xClick, yClick)
	-- version 1.4
	try
		set xClick to round xClick rounding down
		set yClick to round yClick rounding down
		if xClick is less than 0 then set xClick to "=" & xClick
		if yClick is less than 0 then set yClick to "=" & yClick
		set shellCommand to quoted form of clickCommandPosix & " -r m:" & xClick & "," & yClick & " c:" & xClick & "," & yClick
		do shell script shellCommand
		return (xClick & "," & yClick) as string
	on error errMsg number errNum
		error "unable to clickAtCoords - " & errMsg number errNum
	end try
end clickAtCoords

--------------------
-- END OF CODE
--------------------
