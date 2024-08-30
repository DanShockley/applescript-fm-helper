-- fmGUI_fullAccessToggle({ensureMode:null, script_enterFullAccess: null, script_leaveFullAccess: null, scriptFolderName:null, fullAccessAccountName:null, fullAccessPassword:null, userAccountName:null, userPassword:null})
-- toggles ( or ensures ) the user is logged in with either a full access or user account.


(*
HISTORY:
	1.3 - 2018-10-16 ( eshagdar ): FM17 has only FMP ( no more FMA)
	1.2.1 - 2017-11-16 ( eshagdar,dshockley ): send partialMatch param to RunScript.
	1.2 - 2017-11-10 ( eshagdar ): run script via sub-handler. renamed varaibles for clarification.
	1.1.1 - 2017-10-18 ( eshagdar ): added debugging logging. added parenthesis around prefs value extraction.
	1.1 - 2017-10-17 ( eshagdar ): added ensureMode, script_enterFullAccess, script_leaveFullAccess params. fallback to running toggle script via scripts menu if FM privSet doesn't allow applescript events.
	1.0 - 2017-10-06 ( eshagdar ): created

REQUIRES:
	fmGUI_isInFullAccessMode
	fmGUI_NameOfFrontmostWindow
	fmGUI_Relogin
	xor
*)


property debugMode : true
property scriptName : ""


on run
	set scriptName to name of me
	fmGUI_fullAccessToggle({ensureMode:"user", fullAccessAccountName:"admin", fullAccessPassword:"", userAccountName:"user", userPassword:""})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_fullAccessToggle(prefs)
	-- version 1.3
	
	try
		set defaultPrefs to {ensureMode:null, script_enterFullAccess:"Full Access Switch ON", script_leaveFullAccess:"Full Access Switch OFF", scriptFolderName:"Shortcuts", fullAccessAccountName:null, fullAccessPassword:null, userAccountName:null, userPassword:null}
		set prefs to prefs & defaultPrefs
		
		set alreadyInUserMode to not fmGUI_isInFullAccessMode({})
		
		if ensureMode of prefs is equal to "user" then
			set ensureUserMode to true
		else if ensureMode of prefs is equal to "full" then
			set ensureUserMode to false
		else
			set ensureUserMode to not alreadyInUserMode
		end if
		if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ensureUserMode: " & ensureUserMode)
		
		
		if ensureUserMode and not alreadyInUserMode then
			-- LEAVE full access
			
			try
				tell application "FileMaker Pro"
					do script (first FileMaker script whose name contains (script_leaveFullAccess of prefs))
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_leaveFullAccess)
				end tell
			on error
				-- privSet doesn't allow applescript events, so try to run via menu
				if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
				fmGUI_Menu_RunScript({scriptName:script_leaveFullAccess of prefs, scriptFolderList:{scriptFolderName of prefs}, partialMatch:true})
			end try
			if fmGUI_NameOfFrontmostWindow() does not start with "Open" then error "re-login script error" number -1024
			fmGUI_Relogin({accountName:userAccountName of prefs, pwd:userPassword of prefs})
			
		else if not ensureUserMode and alreadyInUserMode then
			-- ENTER full access			
			
			try
				tell application "FileMaker Pro"
					do script (first FileMaker script whose name contains (script_enterFullAccess of prefs))
					if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle ran script: " & script_enterFullAccess)
				end tell
			on error
				-- privSet doesn't allow applescript events, so try to run via menu
				if debugMode then logConsole(scriptName, "fmGUI_fullAccessToggle failed to run script via app, trying via menu")
				fmGUI_Menu_RunScript({scriptName:script_enterFullAccess of prefs, scriptFolderList:{scriptFolderName of prefs}, partialMatch:true})
			end try
			if fmGUI_NameOfFrontmostWindow() does not start with "Open" then error "re-login script error" number -1024
			fmGUI_Relogin({accountName:fullAccessAccountName of prefs, pwd:fullAccessPassword of prefs})
			
		end if
		
		set didEndInUserMode to not fmGUI_isInFullAccessMode({})
		set modeSwitch to xor(alreadyInUserMode, didEndInUserMode)
		if didEndInUserMode then
			set exitMode to "user"
		else
			set exitMode to "full"
		end if
		
		return {modeSwitch:modeSwitch, exitMode:exitMode}
	on error errMsg number errNum
		error "unable to fullAccessToggle - " & errMsg number errNum
	end try
end fmGUI_fullAccessToggle

--------------------
-- END OF CODE
--------------------

on fmGUI_isInFullAccessMode(prefs)
	tell application "fmGuiLib" to fmGUI_isInFullAccessMode(prefs)
end fmGUI_isInFullAccessMode

on fmGUI_NameOfFrontmostWindow()
	tell application "fmGuiLib" to fmGUI_NameOfFrontmostWindow()
end fmGUI_NameOfFrontmostWindow

on fmGUI_Menu_RunScript(prefs)
	tell application "fmGuiLib" to fmGUI_Menu_RunScript(prefs)
end fmGUI_Menu_RunScript

on fmGUI_Relogin(prefs)
	tell application "fmGuiLib" to fmGUI_Relogin(prefs)
end fmGUI_Relogin

on logConsole(processName, consoleMsg)
	tell application "fmGuiLib" to logConsole(processName, consoleMsg)
end logConsole

on xor(firstBoolean, secondBoolean)
	tell application "fmGuiLib" to xor(firstBoolean, secondBoolean)
end xor