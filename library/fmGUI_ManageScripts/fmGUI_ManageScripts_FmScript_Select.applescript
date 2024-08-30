-- fmGUI_ManageScripts_FmScript_Select({fmScriptName:null, altPatterns:{}})
-- Dan Shockley
-- Select an existing script in the Script Workspace.


(*
HISTORY:
	2024-07-23 ( danshockley ): Different UI Element for the row's name in FM19+. Had to add a brief delay after select and then also click.
	2024-07-23 ( danshockley ): Updated to tell app by process ID (works-with-FM19+). 
	2020-05-21 ( dshockley ): Properly handle when there are NO existing scripts (so, return false). 
	2020-03-04 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. 1641: Standardized version. Added fmGUI_ALL_Utilities_Close. 

	1.3.1 - 2017-06-05 ( eshagdar ): the name of the script is the name of UI elemnt, not the value of a text field.
	1.3 - 2017-01-12 ( eshagdar ): updated for FM15 - script names are now in a splitter group.
	2017-06-05 ( eshagdar ): we should just be using the search bar instead of scanning through the list

REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ALL_Utilities_Close
	fmGUI_ManageScripts_Open
	fmGUI_ManageScripts_ScriptListFocus
	fmGUI_ManageScripts_SearchBoxClear
	fmGUI_ManageScripts_SearchBoxFind
	getFmAppProcessID
	quoteString
	unParseChars
	
*)

property debugMode : true
property ScriptName : "fmGUI_ManageScripts_FmScript_Select"

on run
	fmGUI_ManageScripts_FmScript_Select({fmScriptName:"MyFakeScript"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageScripts_FmScript_Select(prefs)
	-- version 2024-07-23
	
	-- Attempt to select a FileMaker Script based on name or, alternatively, other partial matches.
	
	set defaultPrefs to {fmScriptName:null, altPatterns:{}}
	set prefs to prefs & defaultPrefs
	(* EXAMPLE:
	altPatterns:{
		{pattern:{{testType:"is", testMatch:"z_Auto1"}}},
		{pattern:{{testType:"startsWith", testMatch:"z"},{testType:"endsWith", testMatch:"_Auto1"}}}
		}
	*)
	try
		set fmProcID to fmProcID of prefs
	on error
		set fmProcID to my getFmAppProcessID()
	end try
	
	-- CONSTANTS: 
	set testCodeHeader to "tell application \"System Events\"" & return & "tell (first application process whose frontmost is true)" & return
	set selectCode to "select ("
	set rowRefCode to "first row of (outline 1 of scroll area 1 of splitter group 1 of window 1)"
	set whoseCode to " whose "
	set scriptNameObjectCode to "name of UI Element 1"
	-- (then some test will be inserted)
	set betweenTestsCode to " and "
	-- (then possibly some other test will be inserted)
	set afterAllTestsCode to ")"
	set testCodeFooter to return & "end tell" & return & "end tell"
	
	
	--	try
	if fmScriptName of prefs is equal to "-" then error "This is a SEPARATOR SCRIPT - don't try to edit it!" number -1024
	
	set scriptNowSelected to false (* INITIALIZE *)
	
	fmGUI_AppFrontMost()
	fmGUI_ALL_Utilities_Close()
	fmGUI_ManageScripts_Open({})
	set hasExistingScripts to fmGUI_ManageScripts_ScriptListFocus({}) -- returns true is focus worked, or false if "No Scripts"
	
	
	if hasExistingScripts then
		-- there ARE scripts, and we've put the focus into the script list, so look for specified script.
		
		fmGUI_ManageScripts_SearchBoxFind({searchCriteria:fmScriptName of prefs})
		tell application "System Events"
			tell process id fmProcID
				-- SELECT the easy way if the object is directly available:
				set scriptNameOutline to (outline 1 of scroll area 1 of splitter group 1 of window 1)
				if creator type of it is "FM18" then
					set numElemForNameOfRow to 1
				else
					-- NEWER than 18 (19+):
					set numElemForNameOfRow to 2
				end if
				if (exists (first row of scriptNameOutline whose name of UI element numElemForNameOfRow is fmScriptName of prefs)) then
					select (first row of (outline 1 of scroll area 1 of splitter group 1 of window 1) whose name of UI element numElemForNameOfRow is fmScriptName of prefs)
					delay 0.2
					click (first row of (outline 1 of scroll area 1 of splitter group 1 of window 1) whose name of UI element numElemForNameOfRow is fmScriptName of prefs)
					set scriptNowSelected to true
					
				else -- if NOT found, then seek by alternate patterns, if specified: 
					
					-- NOT FOUND, so try each altPattern: 
					set scriptNowSelected to false
					
					my fmGUI_ManageScripts_SearchBoxClear({})
					repeat with oneAltPattern in altPatterns of prefs
						set testList to contents of pattern of oneAltPattern
						if testList is equal to {{}} then
							--list of empty list, so we can't do anything with it							
						else
							-- there are some valid items, so loop over them
							
							try
								-- BEGIN: try oneAltPattern: 
								set testCode to {}
								repeat with oneTestRec in testList
									copy ("" & testType of oneTestRec & " " & quoteString(testMatch of oneTestRec)) to end of testCode
								end repeat
								
								set testCode to unParseChars(testCode, betweenTestsCode & scriptNameObjectCode & " ")
								set testCode to selectCode & rowRefCode & whoseCode & scriptNameObjectCode & " " & testCode & afterAllTestsCode
								set testCode to testCodeHeader & testCode & testCodeFooter
								tell me to run script testCode
								
								set scriptNowSelected to true -- no error, so we selected it.
								exit repeat -- no need to keep checking altPatterns
								
								-- ERROR: try oneAltPattern. 
							on error errMsg number errNum
								if errNum is not -1719 then
									-- some error OTHER than not found in list:
									error errMsg number errNum
								else
									-- just try the next altPattern, so continue repeat loop.
								end if
								-- END OF: try oneAltPattern. 
							end try
							-- END OF: List had things. 
						end if
					end repeat
				end if
			end tell
		end tell
		-- END OF: hasExistingScripts.
	end if
	
	return scriptNowSelected
	(*
	on error errMsg number errNum
		error "unable to fmGUI_ManageScripts_FmScript_Select '" & fmScriptName of prefs & "' - " & errMsg number errNum
	end try
	*)
end fmGUI_ManageScripts_FmScript_Select

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ALL_Utilities_Close()
	tell application "fmGuiLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on fmGUI_ManageScripts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_Open(prefs)
end fmGUI_ManageScripts_Open

on fmGUI_ManageScripts_ScriptListFocus(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_ScriptListFocus(prefs)
end fmGUI_ManageScripts_ScriptListFocus

on fmGUI_ManageScripts_SearchBoxClear(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_SearchBoxClear(prefs)
end fmGUI_ManageScripts_SearchBoxClear

on fmGUI_ManageScripts_SearchBoxFind(prefs)
	tell application "fmGuiLib" to fmGUI_ManageScripts_SearchBoxFind(prefs)
end fmGUI_ManageScripts_SearchBoxFind

on quoteString(prefs)
	tell application "fmGuiLib" to quoteString(prefs)
end quoteString

on unParseChars(prefs)
	tell application "fmGuiLib" to unParseChars(prefs)
end unParseChars

on getFmAppProcessID()
	tell application "fmGuiLib" to getFmAppProcessID()
end getFmAppProcessID
