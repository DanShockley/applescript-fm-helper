-- fmGUI_ManageSecurity_PrivSet_Rename({privSet_oldName:"", privSet_newName:"", fullAccessAccountName:"admin", fullAccessPassword:""})
-- Erik Shagdar
-- rename a privilege set


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-07-12 ( eshagdar ): first created


REQUIRES:
	clickObjectByCoords
	fmGUI_AppFrontMost
	fmGUI_ManageSecurity_PrivSet_OpenSelected
	fmGUI_ManageSecurity_PrivSet_Select
	windowWaitUntil
*)


on run
	fmGUI_ManageSecurity_PrivSet_Rename({privSet_oldName:"Developer", privSet_newName:"Developer_1", fullAccessAccountName:"admin", fullAccessPassword:""})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Rename(prefs)
	-- version 2020-03-04-1532
	
	try
		fmGUI_AppFrontMost()
		
		
		-- check to see if the privSet is already selected		
		try
			if fmGUI_ManageSecurity_PrivSet_Select({privSetName:privSet_newName of prefs, fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}) then return true
			
		end try
		
		
		-- open privSet by old name
		if not fmGUI_ManageSecurity_PrivSet_Select({privSetName:privSet_oldName of prefs, fullAccessAccountName:fullAccessAccountName of prefs, fullAccessPassword:fullAccessPassword of prefs}) then error "unable to select by old name" number -1024
		fmGUI_ManageSecurity_PrivSet_OpenSelected({})
		
		
		-- rename opened privSet
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set value of text field "Privilege Set Name" of window 1 to privSet_newName of prefs
				set okButton to button "OK" of window 1
			end tell
		end tell
		
		
		-- now save the chenages
		clickObjectByCoords(okButton)
		return windowWaitUntil({windowName:"Manage Security", whichWindow:"front", windowNameTest:"starts with"})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_ManageSecurity_PrivSet_Rename - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Rename

--------------------
-- END OF CODE
--------------------

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_OpenSelected(prefs)
end fmGUI_ManageSecurity_PrivSet_OpenSelected

on fmGUI_ManageSecurity_PrivSet_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageSecurity_PrivSet_Select(prefs)
end fmGUI_ManageSecurity_PrivSet_Select

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
