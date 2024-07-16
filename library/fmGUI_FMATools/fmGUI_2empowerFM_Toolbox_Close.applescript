-- fmGUI_2empowerFM_Toolbox_Close()
-- Daniel A. Shockley, NYHTC
-- Closes floating 2empowerFM Toolbox utility window. 


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	2020-03-04 ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_2empowerFM_Toolbox_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_2empowerFM_Toolbox_Close()
	-- version 2024-07-15
	
	fmGUI_AppFrontMost()
	set fmProcID to my getFmAppProcessID()
	tell application "System Events"
			tell process id fmProcID
			try
				click button 1 of (first window whose name is "2empowerFM Toolbox")
				-- gets an error even if button exists, but still works. 
			end try
			return true
		end tell
	end tell
end fmGUI_2empowerFM_Toolbox_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on getFmAppProcessID()
	tell application "htcLib" to getFmAppProcessID()
end getFmAppProcessID
