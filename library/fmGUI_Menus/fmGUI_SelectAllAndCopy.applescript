-- fmGUI_SelectAllAndCopy()
-- Erik Shagdar
-- select all and copy in whatever the context is


(*
HISTORY:
	1.3 - 2017-11-06 ( eshagdar ): return instead of setting variables to return. wrap handler in try-block.
	1.2 - 2016-10-14 ( eshagdar ): use clipboardClear handler
	1.1 - 2016-10-13 ( eshagdar ): replaced select all and copy with handlers
	1.0 - 2016-06-28 ( eshagdar ): first created


REQUIRES:
	fmGUI_AppFrontMost
	clipboardClear
	fmGUI_CopySelected
	fmGUI_SelectAll
*)


on run
	fmGUI_SelectAllAndCopy()
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_SelectAllAndCopy()
	-- version 1.3, Erik Shagdar
	
	try
		clipboardClear()
		fmGUI_AppFrontMost()
		fmGUI_SelectAll()
		delay 0.5
		fmGUI_CopySelected({})
		
		
		tell application "System Events"
			repeat 50 times
				try
					-- We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.
					get the clipboard as Çclass utf8È
					if length of result is greater than 0 then return true
				on error
					return true -- there is data, but it's some other class
				end try
				delay 0.5
			end repeat
		end tell
		
		return false
	on error errMsg number errNum
		error "Couldn't fmGUI_SelectAllAndCopy - " & errMsg number errNum
	end try
end fmGUI_SelectAllAndCopy

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on clipboardClear()
	tell application "fmGuiLib" to clipboardClear()
end clipboardClear

on fmGUI_CopySelected(prefs)
	tell application "fmGuiLib" to fmGUI_CopySelected(prefs)
end fmGUI_CopySelected

on fmGUI_SelectAll()
	tell application "fmGuiLib" to fmGUI_SelectAll()
end fmGUI_SelectAll
