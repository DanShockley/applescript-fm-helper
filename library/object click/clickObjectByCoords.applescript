-- clickObjectByCoords(someObject)
-- Daniel A. Shockley, NYHTC
-- Click on some object by coordinates

(*
REQUIRES:
	clickAtCoords
	minNum
	
	
HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE CODE to tell app by process ID (works-with-FM19+). 
	1.2 - 2017-09-05 ( eshagdar ): offset should be the half the object's height or width ( whichever is smaller ).
	1.1 - 2017-06-29 ( eshagdar ): incoming param may be a string, so ensure it becomes an object reference
	1.0 - 201x-xx-xx ( dshockley ): created
*)


on run
	tell application "System Events"
		set fmProcID to  id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set frontmost to true
			delay 0.25
			--set optionsButton to first button of tab group 1 of window 1 whose name starts with "Options"
			--set cancelButton to get first button of window 1 whose name is "Cancel"
			set privSetPrintCheckbox to checkbox "Allow printing" of window 1
		end tell
	end tell
	
	clickObjectByCoords(privSetPrintCheckbox)
end run



--------------------
-- START OF CODE
--------------------

on clickObjectByCoords(someObject)
	-- version 1.2
	
	set someObject to ensureObjectRef(someObject)
	
	try
		tell application "System Events"
			set {xCoord, yCoord} to position of someObject
			set {xSize, ySize} to size of someObject
		end tell
		set objOffset to round (minNum({xSize, ySize}) / 2) rounding down
		
		
		set xClick to xCoord + objOffset
		set yClick to yCoord + objOffset
		
		
		return clickAtCoords(xClick, yClick)
	on error errMsg number errNum
		error "unable to clickObjectByCoords - " & errMsg number errNum
	end try
end clickObjectByCoords

--------------------
-- END OF CODE
--------------------

on clickAtCoords(xClick, yClick)
	tell application "htcLib" to clickAtCoords(xClick, yClick)
end clickAtCoords

on minNum(someList)
	tell application "htcLib" to minNum(someList)
end minNum



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
