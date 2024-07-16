-- fmGUI_AppFrontMost()
-- Erik Shagdar, NYHTC
-- Ensures FileMaker Advanced is the frontmost window. Closes 2empowerFM Toolbox window if it is visible. 


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.1 - 2015-04-14 ( eshagdar ): close FMEmpower window if open
	1.0 - created
*)


on run
	fmGUI_AppFrontMost()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_AppFrontMost()
	-- version 2024-07-15

	set fmProcID to my getFmAppProcessID()	
	tell application "System Events"
		tell process id fmProcID
			if frontmost is not true then
				set frontmost to true
				delay 1
				
				--close FMEmpower window if it's open
				if name of window 1 is equal to "2empowerFM Toolbox" then
					click button 1 of window 1
					delay 1
				end if
			end if
		end tell
	end tell
end fmGUI_AppFrontMost

--------------------
-- END OF CODE
--------------------

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
