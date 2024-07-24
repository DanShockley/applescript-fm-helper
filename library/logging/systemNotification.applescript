-- systemNotification({msg:"", msgTitle:"", msgSubtitle:"", msgSound:default, noSound:null})
-- Erik Shagdar
-- Create an system level notification


(*
Sounds are located in /System/Library/Sounds
Default possible are:
	Basso.aiff
	Blow.aiff
	Bottle.aiff
	Frog.aiff
	Funk.aiff
	Glass.aiff
	Hero.aiff
	Morse.aiff
	Ping.aiff
	Pop.aiff
	Purr.aiff
	Sosumi.aiff
	Submarine.aiff
	Tink.aiff


HISTORY:
	1.0 - 2016-06-17 ( eshagdar ): created
*)


on run
	systemNotification({msg:"some message", msgTitle:"Msg Title", msgSubtitle:"sub-title"})
end run

--------------------
-- START OF CODE
--------------------

on systemNotification(prefs)
	-- version 1.0
	
	set defaultPrefs to {msg:"", msgTitle:"", msgSubtitle:"", msgSound:"default", noSound:null}
	set prefs to prefs & defaultPrefs
	
	if noSound of prefs is not null then
		display notification msg of prefs with title msgTitle of prefs subtitle msgSubtitle of prefs
	else
		display notification msg of prefs with title msgTitle of prefs subtitle msgSubtitle of prefs sound name msgSound of prefs
	end if
	
end systemNotification

--------------------
-- END OF CODE
--------------------
