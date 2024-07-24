-- windowWaitUntil_FrontIS({windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:""})
-- Daniel A. Shockely
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.0 - created


REQUIRES:
	windowWaitUntil
*)


on run
	windowWaitUntil_FrontIS({windowName:"Times Square"})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil_FrontIS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"is", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontIS

--------------------
-- END OF CODE
--------------------

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil