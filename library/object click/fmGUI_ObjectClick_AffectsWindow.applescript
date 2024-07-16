-- fmGUI_ObjectClick_AffectsWindow(buttonRef)
-- Dan Shockley
-- Click on an object that will open a window


(*
HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by process ID (works-with-FM19+). Bumped handler version to reflect documentation change. 
	1.0 - created
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set frontmost to true
			set cancelButton to get first button of window 1 whose name is "Cancel"
		end tell
	end tell
	
	fmGUI_ObjectClick_AffectsWindow(cancelButton)
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ObjectClick_AffectsWindow(buttonRef)
	-- version 2024-07-15
	
	using terms from application "System Events"
		my clickObjectByCoords(buttonRef)
	end using terms from
	
end fmGUI_ObjectClick_AffectsWindow

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(someObject)
	tell application "htcLib" to clickObjectByCoords(someObject)
end clickObjectByCoords
