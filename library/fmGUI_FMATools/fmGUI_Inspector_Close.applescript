-- fmGUI_Inspector_Close()
-- Dan Shockley
-- Closes FileMaker's Inspector window


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.4 - 2016-11-16 ( eshagdar ): instead of trying just twice, try closing the window until we actually succeed.
	1.3 - 2016-10-28 ( eshagdar ): delay a bit more before exiting.
	1.2 - 2016-09-16 ( eshagdar ): wait until the window no longer exists.
	1.1 - 2016-08-29 ( eshagdar ): return a result. added documentation.
	1.0 - 201x-xx-xx ( dshockley ): first created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_Inspector_Close()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Inspector_Close()
	-- version 2024-07-15
	
	fmGUI_AppFrontMost()
	set fmProcID to my getFmAppProcessID()
	tell application "System Events"
		tell process id fmProcID
			--wait until the window no longer exists ( or we time out )
			repeat 20 times
				try
					-- close window
					set inspectorWindowObj to first window whose name is "Inspector"
					try
						click button 1 of inspectorWindowObj
					on error errMsg number errNum
						-- window exists, but failed to close it.
						if debugMode then my logLevel(5, "fmGUI_Inspector_Close - " & errMsg)
						return false
					end try
				on error
					-- window does not exist
					return true
				end try
				delay 0.5
			end repeat
			
			-- timed out
			return false
		end tell
	end tell
end fmGUI_Inspector_Close

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
