-- windowWaitUntil_FrontNotIS({windowName:"", windowNameTest:"", whichWindow:"", waitCycleDelaySeconds:"", waitCycleMax:""})
-- Erik Shagdar
-- keep checking until the frontmost window matches specified criteria.


(*
HISTORY:
	1.0 - 2017-09-22 ( eshagdar ): copied from windowWaitUntil_FrontIS


REQUIRES:
	windowWaitUntil
*)


on run
	windowWaitUntil_FrontNotIS({windowName:"Manage Database for", waitCycleDelaySeconds:1, waitCycleMax:30 * minutes})
end run

--------------------
-- START OF CODE
--------------------

on windowWaitUntil_FrontNotIS(prefs)
	-- version 1.0
	
	set defaultPrefs to {windowName:null, windowNameTest:"is not", whichWindow:"front", waitCycleDelaySeconds:0.1, waitCycleMax:100}
	set prefs to prefs & defaultPrefs
	
	return windowWaitUntil(prefs)
	
	
end windowWaitUntil_FrontNotIS

--------------------
-- END OF CODE
--------------------

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil