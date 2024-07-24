-- fmGUI_Menu_RunScript({scriptName:null, scriptFolderList:{}, partialMatch:false})
-- Erik Shagdar
-- Run FM script from the menu


(*
HISTORY:
	1.1 - 2017-11-16 ( dshockley,eshagdar ): added partialMatch flag, give error if Script Workspace. 
	1.0 - 2017-11-10 ( eshagdar ): created. 


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ClickMenuItem
*)


on run
	fmGUI_Menu_RunScript({scriptName:"Full Access Switch ON", scriptFolderList:{"Shortcuts"}, partialMatch:true})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_Menu_RunScript(prefs)
	-- version 1.1
	
	try
		set defaultPrefs to {scriptName:null, scriptFolderList:{}, partialMatch:false}
		set prefs to prefs & defaultPrefs
		
		
		fmGUI_AppFrontMost()
		delay 0.1
		
		tell application "System Events"
			tell process "FileMaker Pro Advanced"
				
				-- IF script workspace is the frontmost window, tell the user don't do that: 
				try
					(* for some insane reason, the class of the checkmark character is print settings. 
					Had to use class, since the ascii value and string value both failed. 
					Directly using the character itself for a match caused the source file to be UTF-16, which we want to avoid for now.
					Reason to avoid UTF-16 is that the code files are loaded together and compiled. 
				*)
					if (title of first menu item of menu "Window" of menu bar item "Window" of menu bar 1 whose (class of value of attribute "AXMenuItemMarkChar" is print settings)) starts with "Script Workspace" then error "Pick a database window other than Script Workspace" number -1024
				end try
				
				-- iterate through list of script folders, then get the script
				set scriptsMenu to menu "Scripts" of menu bar item "Scripts" of menu bar 1
				try
					repeat with oneParentFolderName in scriptFolderList of prefs
						set oneParentFolderName to contents of oneParentFolderName
						set scriptsMenu to menu oneParentFolderName of menu item oneParentFolderName of scriptsMenu
					end repeat
				end try
				if partialMatch of prefs then
					set scriptItem to first menu item of scriptsMenu whose name contains (scriptName of prefs)
				else
					set scriptItem to first menu item of scriptsMenu whose name is (scriptName of prefs)
				end if
				
			end tell
		end tell
		
		return fmGUI_ClickMenuItem({menuItemRef:scriptItem})
		
	on error errMsg number errNum
		error "Couldn't fmGUI_Menu_RunScript - " & errMsg number errNum
	end try
end fmGUI_Menu_RunScript

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ClickMenuItem(prefs)
	set prefs to {menuItemRef:my coerceToString(menuItemRef of prefs)} & prefs
	tell application "fmGuiLib" to fmGUI_ClickMenuItem(prefs)
end fmGUI_ClickMenuItem



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
