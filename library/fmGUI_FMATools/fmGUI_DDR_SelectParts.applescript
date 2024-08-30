-- fmGUI_DDR_SelectParts({partsList:{}})
-- Erik Shagar
-- Ensure parts are selected when generating a DDR. All parts are selected if a list is not specified.

(*
HISTORY:
	1.1 - 2018-04-16 ( eshagdar ): allow to specify list of databases to select
	1.0 - 2017-08-11 ( eshagdar ): created
	
REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	fmGUI_DDR_SelectParts({partsList:{"Accounts", "Data Sources"}})
	fmGUI_DDR_SelectParts({})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_DDR_SelectParts(prefs)
	-- version 1.1, Erik Shagar
	
	try
		set defaultPrefs to {partsList:{}}
		set prefs to prefs & defaultPrefs
		set partsList to partsList of prefs
		
		
		-- get list of available parts
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro"
				set partsTable to table "Include in report:" of scroll area 3 of window 1
				set listAvailableParts to name of checkbox 1 of rows of partsTable
			end tell
		end tell
		
		
		-- ensure only the specified ( or all if none specified ) databases are selected
		if (count of partsList) is 0 then set partsList to listAvailableParts
		
		repeat with iter from 1 to count of listAvailableParts
			tell application "System Events"
				tell application process "FileMaker Pro"
					set onePartIncludeCheckboxRef to checkbox 1 of row iter of partsTable
					set onePartIncludeCheckboxValue to value of onePartIncludeCheckboxRef
				end tell
			end tell
			set onePartName to item iter of listAvailableParts
			if (onePartName is in partsList and onePartIncludeCheckboxValue is 0) or Â
				(onePartName is not in partsList and onePartIncludeCheckboxValue is 1) then
				-- need to UI script since the table may need to be scrolled
				tell application "System Events"
					tell application process "FileMaker Pro"
						click onePartIncludeCheckboxRef
					end tell
				end tell
			end if
		end repeat
		
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_DDR_SelectParts - " & errMsg number errNum
	end try
end fmGUI_DDR_SelectParts

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost
