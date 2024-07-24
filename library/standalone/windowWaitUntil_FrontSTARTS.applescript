-- windowWaitUntil_FrontSTARTS({windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:""})
-- Dan Shockley
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.0 - created


REQUIRES:
	windowWaitUntil
*)


on run
	windowWaitUntil_FrontSTARTS({windowName:"Times Square"})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil_FrontSTARTS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"starts with", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontSTARTS

--------------------
-- END OF CODE
--------------------

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil