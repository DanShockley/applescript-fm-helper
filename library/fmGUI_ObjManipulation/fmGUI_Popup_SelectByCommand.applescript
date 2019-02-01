-- fmGUI_Popup_SelectByCommand({objRef:"", objValue:"", calcValue:null, selectCommand:"", clickIfAlreadySet:""})
-- Daniel A. Shockley, NYHTC
-- Selects a choice from a popup menu


(*
REQUIRES:
	clickObjectByCoords
	fmGUI_SpecifyCalcWindowSet
	
	 
HISTORY:
	1.4.1 - 2018-04-30 ( eshagdar ): tell FM to click on the value since it might not be visible ( and unclickable by CLI ).
	1.4 - 2017-09-22 ( eshagdar ): set calc using handler.
	1.3 - 2017-09-06 ( eshagdar ): added calcValue param that sets a calc in the 'Specify Calculation' that comes up.
	1.2 - 2017-09-05 ( eshagdar ): clicking done by handler
	1.1 - 2017-06-29 ( eshagdar ): prefs must be a record. incoming param may be a string, so ensure that it's an object reference.
	1.0 - created
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro Advanced"
			set frontmost to true
			delay 1
			--set popUpButtonRef to pop up button "Available menu commands:" of window 1
			set popUpButtonRef to pop up button "View" of window 1
		end tell
	end tell
	
	fmGUI_Popup_SelectByCommand({objRef:popUpButtonRef, objValue:"limited...", calcValue:"If ( True; True; GetAsNumber ( \"1\" ) )", clickIfAlreadySet:true})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Popup_SelectByCommand(prefs)
	-- version 1.4.1
	
	set defaultPrefs to {objRef:null, objValue:null, calcValue:null, selectCommand:"is", clickIfAlreadySet:false}
	set prefs to prefs & defaultPrefs
	
	set objRef to ensureObjectRef(objRef of prefs)
	set selectCommand to selectCommand of prefs
	set objValue to objValue of prefs
	set clickIfAlreadySet to clickIfAlreadySet of prefs -- re-select even if popup is the requested value.
	set calcBoxWindowName to "Specify Calculation"
	
	
	try
		tell application "System Events"
			if not (exists objRef) then error "The specified objRef does not exist." number 1024
			
			
			-- the objRef DOES exist
			set mustPick to false
			if not (exists value of objRef) then
				-- first check if the value of the objRef exists - if it doesn't, then we can't test it directly
				set mustPick to true
				
			else -- we can see the value without 'picking' the menu, so test it:
				-- note that our selection might be one of several 'matching' commands:
				if clickIfAlreadySet then
					-- RE-SELECT even if popup already is the requested value.
					set mustPick to true
					
				else if selectCommand is equal to "is" then
					if value of objRef is not objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "contains" then
					if value of objRef does not contain objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "startsWith" then
					if value of objRef does not start with objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "beginsWith" then
					if value of objRef does not start with objValue then
						set mustPick to true
					end if
					
				else if selectCommand is equal to "endsWith" then
					if value of objRef does not end with objValue then
						set mustPick to true
					end if
					
				end if
			end if
		end tell
		
		
		
		if mustPick then
			if objValue is not null then
				-- click pop up button so the menu becomes available
				clickObjectByCoords(objRef)
				
				
				--wait until menu is available
				repeat 100 times
					try
						tell application "System Events"
							tell application process "FileMaker Pro Advanced"
								if exists (menu 1 of objRef) then exit repeat
							end tell
						end tell
					on error
						delay 0.5
					end try
				end repeat
				
				
				-- now pick an item from the pop up
				tell application "System Events"
					objRef
					if selectCommand is equal to "is" then
						set objValue to first menu item of menu 1 of objRef whose name is objValue
					else if selectCommand is equal to "contains" then
						set objValue to first menu item of menu 1 of objRef whose name contains objValue
					else if selectCommand is equal to "beginsWith" then
						set objValue to first menu item of menu 1 of objRef whose name starts with objValue
					else if selectCommand is equal to "endsWith" then
						set objValue to first menu item of menu 1 of objRef whose name ends with objValue
					else
						error "unable to pick objValue because select command is failed" number -1024
					end if
					
					tell process "FileMaker Pro Advanced"
						click objValue
					end tell
				end tell
				
				-- must tell FM to click since the value might now be available ( need to scroll )
				--clickObjectByCoords(objValue)
			end if
			
			
			-- set calc if there is one
			if calcValue of prefs is not null then fmGUI_SpecifyCalcWindowSet({calcValue:calcValue of prefs})
		end if
		
		
		return true
	on error errMsg number errNum
		error "Couldn't select menu item whose value _" & selectCommand & "_ '" & objValue & "' in popup - " & errMsg number errNum
	end try
end fmGUI_Popup_SelectByCommand

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(objRef)
	tell application "htcLib" to clickObjectByCoords(my coerceToString(objRef))
end clickObjectByCoords

on fmGUI_SpecifyCalcWindowSet(prefs)
	tell application "htcLib" to fmGUI_SpecifyCalcWindowSet(prefs)
end fmGUI_SpecifyCalcWindowSet


on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "htcLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString



on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "htcLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
