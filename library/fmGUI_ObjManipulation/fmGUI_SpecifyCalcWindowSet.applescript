-- fmGUI_SpecifyCalcWindowSet({calcValue:null})
-- Erik Shagdar
-- Set the contents of a 'Specify Calculation' window.


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	1.1 - 2019-03-11 ( eshagdar ): window name can be 'Specify Calculation for “«fieldName»”', so test for window name 'starts with' (instead 'is').
	1.0 - 2017-09-22 ( eshagdar ):created


REQUIRES:
	fmGUI_AppFrontMost
	windowWaitUntil
	windowWaitUntil_FrontIS
	fmGUI_ObjectClick_CancelButton
	fmGUI_ObjectClick_OkButton
*)


on run
	fmGUI_SpecifyCalcWindowSet({calcValue:"\"bob\""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_SpecifyCalcWindowSet(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {calc:null, needsSave:false}
	set prefs to prefs & defaultPrefs
	
	set needsSave to needsSave of prefs
	set calcBoxWindowName to "Specify Calculation"
	set whichWindow to "front"
	
	
	try
		-- ensure context
		fmGUI_AppFrontMost()

		try
			set fmProcID to fmProcID of prefs
		on error
			set fmProcID to my getFmAppProcessID()
		end try

		if not windowWaitUntil({windowName:calcBoxWindowName, windowNameTest:"starts with", whichWindow:whichWindow}) then error "Timed out waiting for '" & calcBoxWindowName & "' window" number -1024
		
		tell application "System Events"
			tell process id fmProcID
				set calcBox to text area 1 of scroll area 1 of splitter group 1 of window 1
				if value of calcBox is not equal to calcValue of prefs then
					set the value of calcBox to calcValue of prefs
					set needsSave to true
				end if
			end tell
		end tell
		
		if needsSave then
			fmGUI_ObjectClick_OkButton({})
		else
			fmGUI_ObjectClick_CancelButton({})
		end if
		windowWaitUntil({windowName:calcBoxWindowName, windowNameTest:"does not start with", whichWindow:whichWindow})
		
		return true
	on error errMsg number errNum
		error "unable to fmGUI_SpecifyCalcWindowSet - " & errMsg number errNum
	end try
end fmGUI_SpecifyCalcWindowSet

--------------------
-- END OF CODE
--------------------
on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost


on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil

on windowWaitUntil_FrontNotIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS(prefs)
end windowWaitUntil_FrontNotIS

on fmGUI_ObjectClick_CancelButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_CancelButton(prefs)
end fmGUI_ObjectClick_CancelButton

on fmGUI_ObjectClick_OkButton(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton(prefs)
end fmGUI_ObjectClick_OkButton

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID

