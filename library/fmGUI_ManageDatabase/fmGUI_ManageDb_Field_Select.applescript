-- fmGUI_ManageDb_Field_Select(fieldName:"", tableName:"", altPatterns:"")
-- Dan Shockley
-- Attempt to select a field based on name or, alternatively, other partial matches.


(*
HISTORY:
	1.2 - 
	1.1 - 
	1.0 - created


EXAMPLE:
	altPatterns:{Â
		{pattern:{{testType:"is", testMatch:"z_Auto1"}}},Â
		{pattern:{{testType:"startsWith", testMatch:"z"},{testType:"endsWith", testMatch:"_Auto1"}}}Â
		}


REQURIES:
	coerceToString
	fmGUI_AppFrontMost
	fmGUI_ManageDb_FieldListFocus
	fmGUI_ManageDb_FieldsPickTable
*)


on run
	fmGUI_ManageDb_Field_Select({tableName:"ZZ_GLOBALS", fieldName:"zzcSpace"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Field_Select(prefs)
	-- version 1.2
	
	set defaultPrefs to {fieldName:null, tableName:null, altPatterns:null}
	set prefs to prefs & defaultPrefs
	
	-- CONSTANTS: 
	set testCodeHeader to "tell application \"System Events\"" & return & Â
		"tell application process \"FileMaker Pro Advanced\"" & return
	set selectCode to "select ("
	set rowRefCode to "first row of (table 1 of scroll area 1 of tab group 1 of window 1)"
	set whoseCode to " whose "
	set fieldNameObjectCode to "value of static text 1"
	-- (then some test will be inserted)
	set betweenTestsCode to " and "
	-- (then possibly some other test will be inserted)
	set afterAllTestsCode to ")"
	set testCodeFooter to return & "end tell" & return & "end tell"
	
	
	try
		fmGUI_ManageDb_FieldListFocus({})
		
		if tableName of prefs is not null then fmGUI_ManageDb_FieldsPickTable(tableName of prefs)
		
		
		fmGUI_AppFrontMost()
		try
			tell application "System Events"
				tell application process "FileMaker Pro Advanced"
					select (first row of (table 1 of scroll area 1 of tab group 1 of window 1) whose value of static text 1 is fieldName of prefs)
				end tell
			end tell
			return true
			
		on error errMsg number errNum
			if errNum is not -1719 then
				-- some error OTHER than not found in list:
				error errMsg number errNum
			else
				-- NOT FOUND, so try each altPattern: 
				set fieldNowSelected to false
				repeat with oneAltPattern in altPatterns of prefs
					set testList to contents of pattern of oneAltPattern
					
					-- BEGIN: try oneAltPattern: 
					try
						set testCode to {}
						repeat with oneTestRec in testList
							copy ("" & testType of oneTestRec & " " & my quoteString(testMatch of oneTestRec)) to end of testCode
						end repeat
						
						set testCode to my unParseChars(testCode, betweenTestsCode & fieldNameObjectCode & " ")
						set testCode to selectCode & rowRefCode & whoseCode & fieldNameObjectCode & " " & testCode & afterAllTestsCode
						set testCode to testCodeHeader & testCode & testCodeFooter
						tell me to run script testCode
						
						set fieldNowSelected to true -- no error, so we selected it.
						exit repeat -- no need to keep checking altPatterns
						-- ERROR: try oneAltPattern. 
					on error errMsg number errNum
						if errNum is not -1719 then
							-- some error OTHER than not found in list:
							error errMsg number errNum
						else
							-- just try the next altPattern, so continue repeat loop.
						end if
					end try -- END OF: try oneAltPattern. 
				end repeat
			end if
		end try
		
		return fieldNowSelected
	on error errMsg number errNum
		error "unable to fmGUI_ManageDb_Field_Select ( prefs: " & coerceToString(prefs) & " ) - " & errMsg number errNum
	end try
end fmGUI_ManageDb_Field_Select

--------------------
-- END OF CODE
--------------------

on coerceToString(incomingObject)
	tell application "fmGuiLib" to coerceToString(incomingObject)
end coerceToString

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ManageDb_FieldListFocus(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_FieldListFocus(prefs)
end fmGUI_ManageDb_FieldListFocus

on fmGUI_ManageDb_FieldsPickTable(baseTableName)
	tell application "fmGuiLib" to fmGUI_ManageDb_FieldsPickTable(baseTableName)
end fmGUI_ManageDb_FieldsPickTable
