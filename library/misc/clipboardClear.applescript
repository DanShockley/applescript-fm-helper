-- removeExtraAppsFromDock{listOfAllowedAppNames:null}
-- Erik Shagdar
-- clear the clipboard

(*
HISTORY:
	1.0 - 2016-xx-xx ( eshagdar ): created
*)


on run
	removeExtraAppsFromDock(prefs)
end run

--------------------
-- START OF CODE
--------------------

on clipboardClear()
	-- version 1.0
	
	tell application "System Events" to set the clipboard to null
	
end clipboardClear

--------------------
-- END OF CODE
--------------------
