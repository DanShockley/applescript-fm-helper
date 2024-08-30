-- fmGUI_ManageSecurity_AccessRecord_OpenCalc({})
-- Erik Shagdar
-- open calc box ( or field-level access ) for the currently selected table of the record-access window in manage security


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-07-06 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_AccessRecord_OpenCalc({calcFor:"field"})
	--fmGUI_ManageSecurity_AccessRecord_OpenCalc({calcFor:5})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_AccessRecord_OpenCalc(prefs)
	-- version 2020-03-04-1531
	
	set defaultPrefs to {calcFor:null}
	set prefs to prefs & defaultPrefs
	set calcFor to calcFor of prefs
	
	try
		fmGUI_AppFrontMost()
		
		if class of calcFor is equal to class of 1 then
			-- pop up button number is specified, so just use it
			set buttonNum to calcFor
		else if calcFor is equal to "view" then
			set buttonNum to 4
		else if calcFor is equal to "edit" then
			set buttonNum to 1
		else if calcFor is equal to "create" then
			set buttonNum to 2
		else if calcFor is equal to "delete" then
			set buttonNum to 3
		else if calcFor is equal to "field" then
			set buttonNum to 5
		end if
		
		
		-- now open the specified calc box
		tell application "System Events"
			tell application process "FileMaker Pro"
				click pop up button buttonNum of window 1
				click menu item 2 of menu 1 of pop up button buttonNum of window 1
			end tell
		end tell
		
		return windowWaitUntil({windowName:"Custom Record Privileges", windowNameTest:"is not"})
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_AccessRecord_OpenCalc - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_AccessRecord_OpenCalc

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil
