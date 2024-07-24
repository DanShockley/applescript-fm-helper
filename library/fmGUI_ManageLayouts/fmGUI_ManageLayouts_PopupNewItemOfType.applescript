-- fmGUI_ManageLayouts_PopupNewItemOfType(newItemType)
-- Dan Shockley
-- Create a new item of specific type in Manage Layouts window.


(*
HISTORY:
	2020-03-04 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. 1640: Standardized version. Added fmGUI_ALL_Utilities_Close. 

	2018-09-06 ( eshagdar ): Get positions of the new menu and click based on ACTUAL location - depending on the location of the window, the menu renders up or down of the button. Click using fmGuiLib.


REQUIRES:
	clickAtCoords
	fmGUI_AppFrontMost
	fmGUI_ALL_Utilities_Close
	fmGUI_ManageLayouts_Open
	fmGUI_ObjectClick_Button
*)


on run
	fmGUI_ManageLayouts_PopupNewItemOfType("Layout/Report…")
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_PopupNewItemOfType(newItemType)
	-- version 2020-03-04-1640
	
	try
		fmGUI_AppFrontMost()
		fmGUI_ALL_Utilities_Close()
		fmGUI_ManageLayouts_Open({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set newItemOfTypeButton to first button of window 1 whose description is "New Item of Type"
			end tell
		end tell
		fmGUI_ObjectClick_Button(newItemOfTypeButton)
		delay 0.5
		
		
		-- get positions of the new items
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set newItemTypePosList to position of menu items of menu 1 of newItemOfTypeButton
			end tell
		end tell
		
		
		--assume that the popup has enough space to be rendered down
		set {xSize, ySize} to {4, 4}
		if newItemType starts with "Layout/Report" then
			set itemPos to item 1 of newItemTypePosList
		else if newItemType starts with "Folder" then
			set itemPos to item 2 of newItemTypePosList
		else if newItemType starts with "Separator" then
			set itemPos to item 3 of newItemTypePosList
		end if
		
		set xClick to round ((item 1 of itemPos) + xSize) rounding down
		set yClick to round ((item 2 of itemPos) + ySize) rounding down
		
		clickAtCoords(xClick, yClick)
		
		return true
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageLayouts_PopupNewItemOfType - " & errMsg number errNum
	end try
	
end fmGUI_ManageLayouts_PopupNewItemOfType

--------------------
-- END OF CODE
--------------------

on clickAtCoords(xCoord, yCoord)
	tell application "fmGuiLib" to clickAtCoords(xCoord, yCoord)
end clickAtCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ALL_Utilities_Close()
	tell application "fmGuiLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on fmGUI_ManageLayouts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

on fmGUI_ObjectClick_Button(prefs)
	tell application "fmGuiLib" to fmGUI_ObjectClick_Button({buttonRef:my coerceToString(buttonRef of prefs)} & prefs)
end fmGUI_ObjectClick_Button




on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
