-- fmGUI_ManageSecurity_AccessRecord_GetCalc({})
-- Erik Shagdar
-- get the field-level access for the currently opened table of manage security


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0.1 - 2017-09-22 ( eshagdar ): 'calc' renamed to 'calcValue'.
	1.0 - 2017-07-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_AccessRecord_GetFieldPriv
	fmGUI_ManageSecurity_AccessRecord_OpenCalc
*)


on run
	fmGUI_ManageSecurity_AccessRecord_GetCalc({calcFor:"view"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_GetCalc(prefs)
	-- version 2020-03-04-1531
	
	set defaultPrefs to {calcFor:null}
	set prefs to prefs & defaultPrefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
		
		tell application "System Events"
			tell application process "FileMaker Pro"
				if calcFor of prefs is equal to "field" then
					if name of window 1 is not "Custom Field Privileges" then error "must be on specify calculation window" number -1024
					set calcValue to my fmGUI_ManageSecurity_AccessRecord_GetFieldPriv({})
				else
					if name of window 1 is not "Specify Calculation" then error "must be on specify calculation window" number -1024
					set calcValue to value of text area 1 of scroll area 1 of splitter group 1 of window 1
				end if
				click button "Cancel" of window 1
			end tell
		end tell
		
		return calcValue
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_GetCalc - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_GetCalc

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_AccessRecord_GetFieldPriv(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_GetFieldPriv(prefs)
end fmGUI_ManageSecurity_AccessRecord_GetFieldPriv

on fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
end fmGUI_ManageSecurity_AccessRecord_OpenCalc
