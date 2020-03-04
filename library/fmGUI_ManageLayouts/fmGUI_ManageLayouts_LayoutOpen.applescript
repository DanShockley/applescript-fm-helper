-- fmGUI_ManageLayouts_LayoutOpen(prefs)
-- Daniel A. Shockley, NYHTC
-- open Manage Layouts


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. Added fmGUI_ALL_Utilities_Close. 
	1.0 - 2017-11-06 ( eshagdar ): created


REQUIRES:
	fmGUI_ALL_Utilities_Close
	fmGUI_ManageLayouts_Open
	fmGUI_ManageLayouts_Select
	fmGUI_NameOfFrontmostWindow
*)


on run
	fmGUI_ManageLayouts_Open({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_LayoutOpen(prefs)
	-- version 2020-03-04-1639
	
	-- 1.4 - 2018-09-06 ( eshagdar ): params is a dictionary
	-- 1.3 - 2017-06-14 ( eshagdar ): narrowed scope
	-- 1.2 - 2017-04-03 ( eshagdar ): use handlers to test/wait for new window to appear.
	
	set defaultPrefs to {someLayoutName:null}
	set prefs to prefs & defaultPrefs
	
	set someLayoutName to someLayoutName of prefs
	
	
	try
		fmGUI_ManageLayouts_Open({})
		set layoutSelected to fmGUI_ManageLayouts_Select({layoutName:someLayoutName})
		
		
		if not layoutSelected then
			-- could NOT select the specified layout - ERROR
			error "Could not select the layout named '" & someLayoutName & "' - so cannot open it."
		else
			fmGUI_ALL_Utilities_Close()
			set startingWindowName to fmGUI_NameOfFrontmostWindow()
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					set openButton to first button of window 1 whose title is "Open"
				end tell
			end tell
			clickObjFromHtcLib(openButton)
			windowWaitUntil_FrontIsNOT({windowName:startingWindowName})
		end if
	on error errMsg number errNum
		error "Couldn't open window to modify Layout - " & errMsg number errNum
	end try
	
end fmGUI_ManageLayouts_LayoutOpen

--------------------
-- END OF CODE
--------------------

on fmGUI_ALL_Utilities_Close()
	tell application "htcLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on fmGUI_ManageLayouts_Open(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ManageLayouts_Select(prefs)
	tell application "htcLib" to fmGUI_ManageLayouts_Select(prefs)
end fmGUI_ManageLayouts_Select

on fmGUI_NameOfFrontmostWindow()
	tell application "htcLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

