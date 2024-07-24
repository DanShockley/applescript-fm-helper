-- Script Step Specify Calc
-- Dan Shockley

(*
	For a selection of script steps, bring up a useful calculation window for some chosen option.
	
	NOTE: Named "Script Step Specify Calc" because this might gradually be expanded to most-useful (or annoying to get to because of multiple steps required) "specify calc" windows for OTHER script steps. 

HISTORY: 
	2021-05-21 ( dshockley ): created.
	
	
REQUIRES:
	fmGuiLib.app
	
*)

on run
	set posOfObjectForFinalClick to "" (* INITIALIZE *)
	set sizeOfObjectForFinalClick to "" (* INITIALIZE *)
	
	try
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set frontmost to true
				
				set scriptWindow to first window whose (name begins with "Script Workspace" or name begins with "Edit Script")
				if name of scriptWindow begins with "Edit Script" then
					set isEditWindow to true
				else
					set isEditWindow to false
				end if
				
				if isEditWindow then
					set rowSelected to first row of table 1 of scroll area 1 of splitter group 1 of scriptWindow whose selected is true
				else
					set rowSelected to first row of table 1 of scroll area 2 of splitter group 1 of scriptWindow whose selected is true
				end if
				
				-- SCRIPT STEP NAME: 
				set stepName to value of static text 1 of UI element 1 of rowSelected
				
				if stepName is "Set Variable" then
					set plusButton to button "+" of UI element 1 of rowSelected
					if not (exists pop over 1 of plusButton) then
						-- click to open the popover:
						my clickByPositionSize(position of plusButton, size of plusButton)
					end if
					
					set specifyButton to button "Specify…" of window 1
					set posOfObjectForFinalClick to position of specifyButton
					set sizeOfObjectForFinalClick to size of specifyButton
					
				else if (stepName is "Set Field") or (stepName is "Set Field By Name") then
					set plusButton to button "+" of UI element 1 of rowSelected
					if not (exists pop over 1 of plusButton) then
						-- click to open the popover:
						my clickByPositionSize(position of plusButton, size of plusButton)
					end if
					
					set specifyButton to button 1 of pop over 1 of plusButton
					(* it turns out that, because FM named BOTH Specify buttons the same something isn't working right.
					  	In fact, "button 1" and "button 2" both return the same size and position. 
						So, just get button 1, then add pixels to its position to get the coordinates below. 
						And, cannot directly read out the numbers when using reference to position, so pull out position 
						into a simple variable first. If they had accessibility descriptions, that might have helped. 
						*)
					set button1_pos to position of specifyButton
					set button1_x to item 1 of button1_pos
					set button1_y to item 2 of button1_pos
					set posOfObjectForFinalClick to {button1_x, 24 + button1_y}
					set sizeOfObjectForFinalClick to size of specifyButton
					
				else if stepName is "Perform Script" then
					set paramButton to button 2 of UI element 1 of rowSelected
					set posOfObjectForFinalClick to position of paramButton
					set sizeOfObjectForFinalClick to size of paramButton
					
				else if stepName is "Show Custom Dialog" then
					set plusButton to button "+" of UI element 1 of rowSelected
					my clickByPositionSize(position of plusButton, size of plusButton)
					set specifyButton to first button of tab group 1 of window 1 whose title is "Specify…"
					set button1_pos to position of specifyButton
					set button1_x to item 1 of button1_pos
					set button1_y to item 2 of button1_pos
					set posOfObjectForFinalClick to {button1_x, 46 + button1_y}
					set sizeOfObjectForFinalClick to size of specifyButton
					
				else if stepName is "Go to Layout" then
					set buttonFirst to pop up button 1 of UI element 1 of rowSelected
					my clickByPositionSize(position of buttonFirst, size of buttonFirst)
					set menuItemForLayoutNumber to menu item 6 of menu 1 of buttonFirst
					set posOfObjectForFinalClick to position of menuItemForLayoutNumber
					set sizeOfObjectForFinalClick to size of menuItemForLayoutNumber
					
				end if
				
				-- Click the "ObjectForFinalClick", which MANY steps need:
				if length of posOfObjectForFinalClick is greater than 0 then
					my clickByPositionSize(posOfObjectForFinalClick, sizeOfObjectForFinalClick)
				end if
				
				-- additional behaviors after the "ObjectForFinalClick":
				if stepName is "Go to Layout" then
					keystroke "LayoutNumForID (  )"
					key code 123
					key code 123
				end if
				
				
				
				
				
			end tell
		end tell
		
	on error errMsg number errNum
		return errMsg
	end try
	
end run


on clickByPositionSize(objectPosition, objectSize)
	
	set {xCoord, yCoord} to objectPosition
	set {xSize, ySize} to objectSize
	set objOffset to round (minNum({xSize, ySize}) / 2) rounding down
	set xClick to xCoord + objOffset
	set yClick to yCoord + objOffset
	
	tell application "fmGuiLib" to clickAtCoords(xClick, yClick)
	return result
end clickByPositionSize

on minNum(someList)
	-- version 2020-03-04-1535
	
	try
		if class of someList is not list then error "not a list." number -1703
		set smallestFound to item 1 of someList as number
		
		repeat with i in someList
			set oneValue to i's contents as number
			if oneValue < smallestFound then set smallestFound to oneValue
		end repeat
		
		return smallestFound
	on error errMsg number errNum
		error "unable to minNum - " & errMsg number errNum
	end try
end minNum