-- fmGUI_MenuItemAvailable({menuItemRef:null})
-- Erik Shagdar
-- return if the specified menu item available.


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by process ID (works-with-FM19+). Bumped handler version to reflect documentation change. 
	2020-03-04 ( dshockley ): Standardized version. 
	1.1 - 2017-11-06 ( eshagdar ): this handler should an if the menu is available right now, waiting should happen in another handler. try block around entire handler.
	1.0 - 2016-10-18 ( eshagdar ): created


REQUIRES:
	fmGUI_AppFrontMost
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set copyMenuItem to menu item "Copy" of menu 1 of menu bar item "Edit" of menu bar 1
		end tell
	end tell
	fmGUI_MenuItemAvailable({menuItemRef:copyMenuItem})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_MenuItemAvailable(prefs)
	-- version 2024-07-15
	
	try
		set defaultPrefs to {menuItemRef:null, maxTimeoutSec:60, checkFrequencySec:0.5}
		set prefs to prefs & defaultPrefs
		set menuItemRef to ensureObjectRef(menuItemRef of prefs)
		if menuItemRef is null then error "menuItemRef not specified" number -1024
				
		fmGUI_AppFrontMost()
		
		try
			return exists menuItemRef
		on error
			return false
		end try
		
	on error errMsg number errNum
		error "Couldn't fmGUI_MenuItemAvailable - " & errMsg number errNum
	end try
	
end fmGUI_MenuItemAvailable

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "htcLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef


