-- fmGUI_DataViewer_Close()
-- Dan Shockley
-- Closes FileMaker's Inspector window


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.2.1 - 2018-12-10 ( eshagdar ): 17.0.3 is FMA
	1.2 - 2018-10-16 ( eshagdar ): FM17 has only FMP ( no more FMA)
	1.1 - 2016-08-29 ( eshagdar ): return a result. added documentation.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_DataViewer_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DataViewer_Close()
	-- version 2024-07-15
	
	fmGUI_AppFrontMost()
	set fmProcID to my getFmAppProcessID()
	tell application "System Events"
			tell process id fmProcID
			try
				click button 1 of (first window whose name is "Data Viewer")
			end try
			return true
		end tell
	end tell
end fmGUI_DataViewer_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
