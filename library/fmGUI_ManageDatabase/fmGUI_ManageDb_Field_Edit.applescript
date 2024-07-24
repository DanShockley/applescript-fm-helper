-- fmGUI_ManageDb_Field_Edit({editMode:"", tableName:"", fieldName:"", altPatterns:"", fieldComment:"", dataType:"", fieldType:"", calcCode:"", autoEnterCalcCode:"", autoEnterCalcContextTOC:"", alwaysEvaluate:"", calcContextTOC:"", storageGlobal:"", storeCalculationResults:"", storageIndexChoice:"", autoIndex:"", maxRepetition:"", indexLanguage:"", allowEditing:"", overwriteExistingValue:"", autoEnterIsConstant:"", autoEnterIsCalculation:"", autoEnterIsLookup:"", autoEnterSpecialValue:"", autoSerial:"", autoEnterConstantData:"", validationCalcCode:"", validationCalcContextTOC:""})
-- Dan Shockley
-- Edit a field. Should already exist - false if it does not. Any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. Modernized calls to fmGUI_CheckboxSet, fmGUI_TextFieldSet. 
	1.4.1 - 2017-09-06 ( eshagdar ): updated error message. updated call to pop up set.
	1.4 - 2016-04-25 ( eshagdar ): added option to NOT change any of the checkboxes when tweaking a field.
	1.3 - 2016-03-18 ( eshagdar ): updated storage tab to text that autoIndex is not null
	1.2 - specifying an autoEnterCalcCode turns on autoEnterIsCalculation; if validationCalcCode is an empty string instead of null, force an error; if autoEnterCalcCode is an empty string instead of null, force an error
	1.1 - added minimal validation settings; added editMode param to switch between "CONFORM" and "TWEAK" 
	1.0 - created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_CheckboxSet
	fmGUI_ManageDb_Field_Select
	fmGUI_ObjectClick_AffectsWindow
	fmGUI_PopupSet
	fmGUI_TextFieldSet
	clickObjectByCoords
	coerceToString
	windowWaitUntil
	windowWaitUntil_FrontIS
*)


on run
	fmGUI_ManageDb_Field_Edit({editMode:"TWEAK", tableName:"ZZ_GLOBALS", fieldName:"zzcSpace", autoEnterSpecialValue:"NONE", autoEnterCalcCode:"  ", autoEnterCalcContextTOC:"ZZ_GLOBALS", validationCalcCode:"", validationCalcContextTOC:"ZZ_GLOBALS"})
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_Field_Edit(prefs)
	-- version 2020-03-04-1558
	
	-- any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.
	
	set defaultPrefs to {editMode:"CONFORM", tableName:null, fieldName:null, altPatterns:null, fieldComment:null, dataType:null, fieldType:null, calcCode:null, autoEnterCalcCode:null, autoEnterCalcContextTOC:null, alwaysEvaluate:null, calcContextTOC:null, storageGlobal:null, storeCalculationResults:null, storageIndexChoice:null, autoIndex:null, maxRepetition:null, indexLanguage:null, allowEditing:null, overwriteExistingValue:null, autoEnterIsConstant:null, autoEnterIsCalculation:null, autoEnterIsLookup:null, autoEnterSpecialValue:null, autoSerial:null, autoEnterConstantData:null, validationCalcCode:null, validationCalcContextTOC:null}
	-- editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone. 
	-- autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.
	-- autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}
	
	-- autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.
	
	
	set prefs to prefs & defaultPrefs
	
	set editMode to editMode of prefs
	
	if autoEnterCalcCode of prefs is not null then set autoEnterIsCalculation of prefs to true
	
	(*   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
*)
	
	try
		-- try to select it first:
		set fieldNowSelected to fmGUI_ManageDb_Field_Select(prefs)
		
		if not fieldNowSelected then return false
		
		fmGUI_AppFrontMost()
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				
				-- COMMENT is for any field type:
				set changeButton to first button of tab group 1 of window 1 whose title is "Change"
				if fieldComment of prefs is not null then
					if my fmGUI_TextFieldSet({objRef:text field "Comment:" of tab group 1 of window 1, objValue:fieldComment of prefs}) then
						click changeButton
					end if
					
					delay 0.5
				end if
				
				
				if editMode is "TWEAK" and fieldType of prefs is null then
					-- just find out what it already is and use that: 
					set fieldTypePopup to pop up button "Type:" of tab group 1 of window 1
					if value of fieldTypePopup is "Calculation" then
						set fieldType of prefs to "Calculated"
					else if value of fieldTypePopup is "Summary" then
						set fieldType of prefs to "Summary"
					else
						set fieldType of prefs to "Normal"
					end if
				end if
				
				if fieldType of prefs is null then
					error "Parameter missing: fieldType" number 1024
					
				else if fieldType of prefs is "Calculated" then
					
					-- IF CALC:
					-- Field Type = Calculated
					-- click "contains Options"
					-- Data Type: popup "Calculation result is"
					-- Calc Context Table
					-- Calculation itself
					-- Do Not EvaluateÉ
					-- Storage:
					--	Global, Do Not Store, None/Minimal/All
					
					-- FIELD TYPE:
					set fieldTypePopup to pop up button "Type:" of tab group 1 of window 1
					if value of fieldTypePopup is not "Calculation" then
						my fmGUI_PopupSet({objRef:fieldTypePopup, objValue:"Calculation"})
						
						-- click CHANGE to save the data type.
						my fmGUI_ObjectClick_AffectsWindow(button "Change" of tab group 1 of window 1)
						
						delay 0.5
						
						-- if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.
						if name of window 1 does not start with "Manage Database For" then
							-- click OK to confirm the change: 
							my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
							
							delay 0.5
							
						end if
						
					else -- ALREADY was a Calculation field, so need to click OPTIONS: 
						-- click Options: 
						my fmGUI_ObjectClick_AffectsWindow(first button of tab group 1 of window 1 whose name starts with "Options")
						
						my windowWaitUntil_FrontIS({windowName:"Specify Calculation"})
						
					end if
					
					
					
					if editMode is "CONFORM" or calcCode of prefs is not null then
						-- CALCULATION CODE:
						my fmGUI_TextFieldSet({objRef:text area 1 of scroll area 4 of window 1, objValue:calcCode of prefs})
					end if
					
					-- Calc CONTEXT Table (occurrence):
					if calcContextTOC of prefs is not null then my fmGUI_PopupSet({objRef:first pop up button of window 1 whose name contains "context", objValue:calcContextTOC of prefs})
					
					-- Calc Result TYPE:
					if dataType of prefs is not null then my fmGUI_PopupSet({objRef:first pop up button of window 1 whose name contains "Calculation result is", objValue:dataType of prefs})
					
					-- Do Not Evaluate if all referenced field are empty:
					if alwaysEvaluate of prefs is not null then
						set notEvaluateCheckbox to first checkbox of window 1 whose name contains "not evaluate if all referenced fields"
						if alwaysEvaluate of prefs then
							my fmGUI_CheckboxSet({objRef:notEvaluateCheckbox, objValue:0})
						else
							my fmGUI_CheckboxSet({objRef:notEvaluateCheckbox, objValue:1})
						end if
					end if
					
					-- Repetitions: 
					if editMode is "CONFORM" or maxRepetition of prefs is not null then
						my fmGUI_TextFieldSet({objRef:first text field of window 1 whose name contains "repetitions", objValue:maxRepetition of prefs})
					end if
					
					
					
					if editMode is Â
						"CONFORM" or storageGlobal of prefs is not null Â
						or storeCalculationResults of prefs is not null Â
						or indexLanguage of prefs is not null Â
						or autoIndex of prefs is not null Â
						then
						-- BEGIN: STORAGE OPTIONS
						
						-- click Storage Options: 
						my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name contains "Storage Options")
						my windowWaitUntil({windowName:"Storage Options for", windowNameTest:"starts with", whichWindow:"front"})
						
						
						set workingArea to window 1
						
						set globalStorageCheckbox to first checkbox of workingArea whose name contains "global storage"
						set doNotStoreCheckbox to first checkbox of workingArea whose name contains "Do not store"
						
						if editMode is "CONFORM" then
							-- These two CANNOT BE NULL if you are making this field CONFORM. 
							if storageGlobal of prefs is null then error "storageGlobal must be specified!" number 1024
							if storeCalculationResults of prefs is null then error "storeCalculationResults must be specified!" number 1024
						end if
						
						if storageGlobal of prefs then
							my fmGUI_CheckboxSet({objRef:globalStorageCheckbox, objValue:1})
							
						else if not storeCalculationResults of prefs then
							my fmGUI_CheckboxSet({objRef:doNotStoreCheckbox, objValue:1})
							
						else -- NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:
							my fmGUI_CheckboxSet({objRef:globalStorageCheckbox, objValue:0})
							my fmGUI_CheckboxSet({objRef:doNotStoreCheckbox, objValue:0})
							
							-- Then see which one of the Indexing choices is needed
							if storageIndexChoice of prefs is "None" then
								my fmGUI_CheckboxSet({objRef:checkbox "None 1 of 3" of workingArea, objValue:1})
								
								
							else if storageIndexChoice of prefs is "Minimal" then
								my fmGUI_CheckboxSet({objRef:checkbox "Minimal 2 of 3" of workingArea, objValue:1})
								
								
							else if storageIndexChoice of prefs is "All" then
								my fmGUI_CheckboxSet({objRef:checkbox "All 3 of 3" of workingArea, objValue:1})
								
							end if
						end if
						
						if indexLanguage of prefs is not null then my fmGUI_PopupSet({objRef:first pop up button of workingArea whose name contains "Default language", objValue:indexLanguage of prefs})
						
						if autoIndex of prefs is not null then
							set autoIndexCheckbox to first checkbox of workingArea whose name contains "create indexes"
							if autoIndex of prefs then
								my fmGUI_CheckboxSet({objRef:autoIndexCheckbox, objValue:1})
							else
								my fmGUI_CheckboxSet({objRef:autoIndexCheckbox, objValue:0})
							end if
							
						end if
						
						-- click OK for Storage Options: 
						my fmGUI_ObjectClick_AffectsWindow(first button of workingArea whose name contains "OK")
						
						my windowWaitUntil({windowName:"Storage Options for", windowNameTest:"does not start with", whichWindow:"front"})
						
						-- END OF: STORAGE OPTIONS
					end if
					
					set workingArea to window 1 -- need reference to NEW first window. 
					
					-- click OK to save Specify Calculation: 
					my fmGUI_ObjectClick_AffectsWindow(first button of workingArea whose name contains "OK")
					
					my windowWaitUntil({windowName:"Specify Calculation", windowNameTest:"does not contain", whichWindow:"front"})
					
					return true
					
					
					
				else if fieldType of prefs is "Summary" then
					
					-- IF SUMMARY:
					-- Field Type = Summary
					-- click "contains Options"
					-- Data Type: popup "Calculation result is"
					-- Calc Context Table
					-- Calculation itself
					-- Do Not EvaluateÉ
					-- Storage:
					--	Global, Do Not Store, None/Minimal/All
					
					-- if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.
					
					-- NOT YET SUPPORTED ! ! ! 
					-- NOT YET SUPPORTED ! ! ! 
					-- NOT YET SUPPORTED ! ! ! 
					
					
				else if fieldType of prefs is "Normal" then
					--ELSE IF NOT CALC (Field Type is Normal):	
					-- Data Type
					-- click "contains Options"
					-- TAB: Storage:
					--	Global, Do Not Store, None/Minimal/All
					-- TAB: Auto-Enter
					--	Creation, Modification, Serial, Data, 
					--	Calculated Value: 
					-- 		Calc Context Table
					-- 		Calculation itself
					-- 		Do Not EvaluateÉ
					--	Do not replace existing valueÉ
					-- TAB: Validation:
					--	[Skip for now]
					-- Prohibit modificationÉ
					
					
					
					-- field DATA TYPE:
					if editMode is "CONFORM" or dataType of prefs is not null then
						set dataTypePopup to pop up button "Type:" of tab group 1 of window 1
						if value of dataTypePopup is not dataType of prefs then
							my fmGUI_PopupSet({objRef:dataTypePopup, objValue:dataType of prefs})
							
							-- click CHANGE to save the data type.
							my fmGUI_ObjectClick_AffectsWindow(button "Change" of tab group 1 of window 1)
							
							delay 0.5
							
							-- MIGHT open a dialog warning about type conversion:
							if name of window 1 does not start with "Manage Database For" then
								-- click OK to confirm the change: 
								my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
								
								delay 0.5
							end if
						end if
					end if
					
					
					-- click Options: 
					my fmGUI_ObjectClick_AffectsWindow(first button of tab group 1 of window 1 whose name starts with "Options")
					my windowWaitUntil({windowName:"Options for", windowNameTest:"starts with", whichWindow:"front"})
					
					
					----------------------------------------------------------------------------
					-- NORMAL FIELD
					----------------------------------------------------------------------------
					set workingArea to tab group 1 of window 1
					
					
					----------------------------------------------------------------------------
					-- STORAGE TAB:
					----------------------------------------------------------------------------
					
					
					
					if editMode is Â
						"CONFORM" or storageGlobal of prefs is not null Â
						or storageIndexChoice of prefs is not null Â
						or indexLanguage of prefs is not null Â
						or autoIndex of prefs is not null Â
						then
						
						click radio button "Storage" of workingArea
						
						-- Repetitions:
						my fmGUI_TextFieldSet({objRef:first text field of workingArea whose name contains "repetitions", objValue:maxRepetition of prefs})
						
						-- Global:
						set globalStorageCheckbox to first checkbox of workingArea whose name contains "global storage"
						
						if editMode is "CONFORM" then
							-- This CANNOT BE NULL, if we are making field conform!!!!!					
							if storageGlobal of prefs is null then error "storageGlobal must be specified!" number 1024
						end if
						
						
						
						if storageGlobal of prefs then
							
							if value of globalStorageCheckbox is not 1 then
								-- should be GLOBAL, but is NOT yet:
								my clickObjectByCoords(globalStorageCheckbox)
								delay 0.5
								
								-- MIGHT open a dialog warning about change to global status:						
								if name of window 1 does not start with "Options for" then
									-- click OK to confirm the change: 
									my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
									
									-- wait until back to normal "Options for Field" window:
									my windowWaitUntil({windowName:"Options for", windowNameTest:"starts with", whichWindow:"front"})
									
								end if
							end if
							
							
						else -- NOT global, SO UNCHECK it FIRST:
							if value of globalStorageCheckbox is not 0 then
								
								-- IS GLOBAL, but should NOT be:
								my clickObjectByCoords(globalStorageCheckbox)
								delay 0.5
								
								-- MIGHT open a dialog warning about change to global status:						
								if name of window 1 does not start with "Options for" then
									-- click OK to confirm the change: 
									my fmGUI_ObjectClick_AffectsWindow(button "OK" of window 1)
									
									-- wait until back to normal "Options for Field" window:
									my windowWaitUntil({windowName:"Options for", windowNameTest:"starts with", whichWindow:"front"})
									
								end if
								
							end if
							
							
							-- Then see which one of the Indexing choices is needed
							if storageIndexChoice of prefs is "None" then
								my fmGUI_CheckboxSet({objRef:checkbox "None 1 of 3" of workingArea, objValue:1})
								
							else if storageIndexChoice of prefs is "Minimal" then
								my fmGUI_CheckboxSet({objRef:checkbox "Minimal 2 of 3" of workingArea, objValue:1})
								
							else if storageIndexChoice of prefs is "All" then
								my fmGUI_CheckboxSet({objRef:checkbox "All 3 of 3" of workingArea, objValue:1})
								
							end if
						end if
						
						-- Index Language: 
						if indexLanguage of prefs is not null then my fmGUI_PopupSet({objRef:first pop up button of workingArea whose name contains "Default language", objValue:indexLanguage of prefs})
						
						-- Create indexes automatically: 
						if autoIndex of prefs is not null then
							set autoIndexCheckbox to first checkbox of workingArea whose name contains "create indexes"
							if autoIndex of prefs then
								my fmGUI_CheckboxSet({objRef:autoIndexCheckbox, objValue:1})
							else
								my fmGUI_CheckboxSet({objRef:autoIndexCheckbox, objValue:0})
							end if
							
						end if
						
						-- END OF: Storage Tab.
					end if
					
					----------------------------------------------------------------------------
					-- NORMAL FIELD
					----------------------------------------------------------------------------					
					-- AUTO-ENTER TAB:
					----------------------------------------------------------------------------					
					set workingArea to tab group 1 of window 1
					click radio button "Auto-Enter" of workingArea
					
					-- Serial Number:
					if autoSerial of prefs is not null then
						if class of autoSerial of prefs is boolean then
							my fmGUI_CheckboxSet({objRef:checkbox "Serial number" of workingArea, objValue:0})
						else
							-- autoSerial is a RECORD of settings:
							my fmGUI_CheckboxSet({objRef:checkbox "Serial number" of workingArea, objValue:1})
							
							
							my fmGUI_TextFieldSet({objRef:first text field of workingArea whose name contains "next value", objValue:autoNextValue of autoSerial of prefs})
							
							my fmGUI_TextFieldSet({objRef:first text field of workingArea whose name contains "increment", objValue:autoIncrement of autoSerial of prefs})
							
							if autoGenerate of autoSerial of prefs is "OnCreation" then
								my fmGUI_CheckboxSet({objRef:checkbox "On creation 1 of 2" of workingArea, objValue:1})
							else if autoGenerate of autoSerial of prefs is "OnCommit" then
								my fmGUI_CheckboxSet({objRef:checkbox "On commit 2 of 2" of workingArea, objValue:1})
							end if
							
						end if
					end if
					
					
					-- Special Value (creation,modification,last visited record):
					if autoEnterSpecialValue of prefs is not null then
						-- autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.
						if autoEnterSpecialValue of prefs is "PreviousRecord" then
							my fmGUI_CheckboxSet({objRef:first checkbox of workingArea whose name contains "last visited", objValue:1})
							
						else if autoEnterSpecialValue of prefs starts with "Creation" then
							if autoEnterSpecialValue of prefs is "CreationUserName" then
								set menuChoice to "Name"
							else if autoEnterSpecialValue of prefs is "CreationName" then
								set menuChoice to "Name"
							else if autoEnterSpecialValue of prefs is "CreationAccountName" then
								set menuChoice to "Account Name"
							else if autoEnterSpecialValue of prefs is "CreationTimestamp" then
								set menuChoice to "Timestamp (Date and Time)"
							else if autoEnterSpecialValue of prefs is "CreationTime" then
								set menuChoice to "Time"
							else if autoEnterSpecialValue of prefs is "CreationDate" then
								set menuChoice to "Date"
							end if
							my fmGUI_PopupSet({objRef:pop up button "Creation" of workingArea, objValue:menuChoice})
							
						else if autoEnterSpecialValue of prefs starts with "Modification" then
							if autoEnterSpecialValue of prefs is "ModificationUserName" then
								set menuChoice to "Name"
							else if autoEnterSpecialValue of prefs is "ModificationName" then
								set menuChoice to "Name"
							else if autoEnterSpecialValue of prefs is "ModificationAccountName" then
								set menuChoice to "Account Name"
							else if autoEnterSpecialValue of prefs is "ModificationTimestamp" then
								set menuChoice to "Timestamp (Date and Time)"
							else if autoEnterSpecialValue of prefs is "ModificationTime" then
								set menuChoice to "Time"
							else if autoEnterSpecialValue of prefs is "ModificationDate" then
								set menuChoice to "Date"
							end if
							my fmGUI_PopupSet({objRef:pop up button "Modification" of workingArea, objValue:menuChoice})
							
							
						else if autoEnterSpecialValue of prefs is equal to "NONE" then
							-- need to make sure NO special values are checked on:
							my fmGUI_CheckboxSet({objRef:first checkbox of workingArea whose title is "Creation", objValue:0})
							my fmGUI_CheckboxSet({objRef:first checkbox of workingArea whose title is "Modification", objValue:0})
							my fmGUI_CheckboxSet({objRef:first checkbox of workingArea whose name contains "last visited", objValue:0})
							
						else if autoEnterSpecialValue of prefs is equal to null then
							-- do not change any of the checkboxes
						end if
						
						
					end if
					
					-- Constant: 
					if autoEnterIsConstant of prefs is not null then
						set dataCheckbox to first checkbox of workingArea whose name contains "Data"
						if autoEnterIsConstant of prefs then
							my fmGUI_CheckboxSet({objRef:dataCheckbox, objValue:1})
							if autoEnterConstantData of prefs is null then
								-- Possibly null if autoEnterIsConstant is false...
							else
								my fmGUI_TextFieldSet({objRef:text area "Data:" of scroll area "Data:" of workingArea, objValue:autoEnterConstantData of prefs})
							end if
						else
							my fmGUI_CheckboxSet({objRef:dataCheckbox, objValue:0})
						end if
						
						
						
					end if
					
					if autoEnterIsLookup of prefs is not null then
						-- NOT YET SUPPORTED!!!!!	
						-- NOT YET SUPPORTED!!!!!	
						-- NOT YET SUPPORTED!!!!!							
					end if
					
					
					-- AutoEnter Calculation: 
					if autoEnterIsCalculation of prefs is not null then
						if not autoEnterIsCalculation of prefs then
							-- Need to make sure it is NOT checked:
							my fmGUI_CheckboxSet({objRef:checkbox "Calculated value" of workingArea, objValue:0})
							
						else -- there IS a Calc:
							set autoEnterCalcCheckbox to checkbox "Calculated value" of workingArea
							-- if the checkbox is already checked, need to click Specify button
							-- if not already checked, checking it opens the window, so use special function for click
							if value of autoEnterCalcCheckbox is not 1 then
								my fmGUI_ObjectClick_AffectsWindow(autoEnterCalcCheckbox)
							else
								-- there are TWO buttons named "SpecifyÉ" - the first is for CALC, second is for lookup:
								my fmGUI_ObjectClick_AffectsWindow(first button of workingArea whose name starts with "Specify")
							end if
							
							-- wait for Specify Calculation window:
							my windowWaitUntil_FrontIS({windowName:"Specify Calculation"})
							
							set workingArea to window 1
							
							-- CALCULATION CODE:
							
							if length of autoEnterCalcCode of prefs is equal to 0 then
								(* if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc. *)
								set autoEnterCalcCode_VALUE to "if ( /* auto-enter calc was specified as an empty string rather than a null value indicating a bug in the script running the setup tool. */ )"
							else
								set autoEnterCalcCode_VALUE to autoEnterCalcCode of prefs
							end if
							
							my fmGUI_TextFieldSet({objRef:text area 1 of scroll area 4 of window 1, objValue:autoEnterCalcCode_VALUE})
							
							
							-- Calc CONTEXT Table (occurrence):
							if autoEnterCalcContextTOC of prefs is not null then
								my fmGUI_PopupSet({objRef:first pop up button of workingArea whose name contains "context", objValue:autoEnterCalcContextTOC of prefs})
							end if
							
							-- Do Not Evaluate if all referenced field are empty:
							if alwaysEvaluate of prefs is not null then
								set notEvaluateCheckbox to first checkbox of workingArea whose name contains "not evaluate if all referenced fields"
								if alwaysEvaluate of prefs then
									my fmGUI_CheckboxSet({objRef:notEvaluateCheckbox, objValue:0})
								else
									my fmGUI_CheckboxSet({objRef:notEvaluateCheckbox, objValue:1})
								end if
							end if
							
							
							-- click OK to save Specify Calculation: 
							my fmGUI_ObjectClick_AffectsWindow(first button of workingArea whose name contains "OK")
							
							my windowWaitUntil({windowName:"Specify Calculation", windowNameTest:"does not contain", whichWindow:"front"})
							
							set workingArea to tab group 1 of window 1
							
							-- Do not replace existing value of field (if any):
							if overwriteExistingValue of prefs is not null then
								set overwriteExistingValueCheckbox to first checkbox of workingArea whose name contains "Do not replace existing"
								if overwriteExistingValue of prefs then
									my fmGUI_CheckboxSet({objRef:overwriteExistingValueCheckbox, objValue:0})
								else
									my fmGUI_CheckboxSet({objRef:overwriteExistingValueCheckbox, objValue:1})
								end if
							end if
							
							
						end if
						
					end if
					
					
					-- Prohibit modification of value during data entry:
					if allowEditing of prefs is not null then
						set prohibitModCheckbox to first checkbox of workingArea whose name contains "Prohibit modification"
						if allowEditing of prefs then
							my fmGUI_CheckboxSet({objRef:prohibitModCheckbox, objValue:0})
						else
							my fmGUI_CheckboxSet({objRef:prohibitModCheckbox, objValue:1})
						end if
					end if
					
					
					----------------------------------------------------------------------------
					-- NORMAL FIELD
					----------------------------------------------------------------------------					
					-- VALIDATION TAB:
					----------------------------------------------------------------------------				
					
					-- MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! ! 
					-- MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! ! 
					-- MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! ! 
					
					click radio button "Validation" of workingArea
					
					if validationCalcCode of prefs is not null then
						
						my fmGUI_ObjectClick_AffectsWindow(button "SpecifyÉ" of workingArea)
						
						-- wait for Specify Calculation window:
						my windowWaitUntil_FrontIS({windowName:"Specify Calculation"})
						
						set workingArea to window 1
						
						-- CALCULATION CODE: 
						if length of validationCalcCode of prefs is equal to 0 then
							(* if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc. *)
							set validationCalcCode_VALUE to "if ( /* validation calc was specified as an empty string rather than a null value indicating a bug in the script running the setup tool. */ )"
						else
							set validationCalcCode_VALUE to validationCalcCode of prefs
						end if
						
						my fmGUI_TextFieldSet({objRef:text area 1 of scroll area 4 of window 1, objValue:validationCalcCode_VALUE})
						
						
						-- Calc CONTEXT Table (occurrence):
						if validationCalcContextTOC of prefs is not null then
							my fmGUI_PopupSet({objRef:first pop up button of workingArea whose name contains "context", objValue:validationCalcContextTOC of prefs})
						end if
						
						-- click OK to save Specify Calculation: 
						my fmGUI_ObjectClick_AffectsWindow(first button of workingArea whose name contains "OK")
						
						my windowWaitUntil({windowName:"Specify Calculation", windowNameTest:"does not contain", whichWindow:"front"})
						
						set workingArea to tab group 1 of window 1
						
						-- END OF: Validation. 
					end if
					
					
					-- SAVE NORMAL FIELD - OPTIONS:
					-- click OK for field Options: 
					my fmGUI_ObjectClick_AffectsWindow(first button of window 1 whose name contains "OK")
					
					my windowWaitUntil({windowName:"Options for", windowNameTest:"does not start with", whichWindow:"front"})
					
					
					return true
					
					
					
				end if
				
				
				return true
				
			end tell
		end tell
		
		
		
		(*   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
*)
	on error errMsg number errNum
		error "Couldn't edit a Field - " & coerceToString(prefs) & " - " & errMsg number errNum
	end try
	
	
end fmGUI_ManageDb_Field_Edit

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_CheckboxSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_CheckboxSet({objRef:objRefStr} & prefs)
end fmGUI_CheckboxSet

on fmGUI_ManageDb_Field_Select(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_Field_Select(prefs)
end fmGUI_ManageDb_Field_Select

on fmGUI_ObjectClick_AffectsWindow(buttonRef)
	tell application "fmGuiLib" to fmGUI_ObjectClick_AffectsWindow(buttonRef)
end fmGUI_ObjectClick_AffectsWindow

on fmGUI_PopupSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_PopupSet({objRef:objRefStr} & prefs)
end fmGUI_PopupSet

on fmGUI_TextFieldSet(prefs)
	set objRefStr to coerceToString(objRef of prefs)
	tell application "fmGuiLib" to fmGUI_TextFieldSet({objRef:objRefStr} & prefs)
end fmGUI_TextFieldSet

on clickObjectByCoords(prefs)
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(prefs))
end clickObjectByCoords

on windowWaitUntil(prefs)
	tell application "fmGuiLib" to windowWaitUntil(prefs)
end windowWaitUntil

on windowWaitUntil_FrontIS(prefs)
	tell application "fmGuiLib" to windowWaitUntil_FrontIS(prefs)
end windowWaitUntil_FrontIS



on coerceToString(incomingObject)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a coerceToString into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set coercePath to (container of (container of (path to me)) as text) & "text parsing:coerceToString.applescript"
	set codeCoerce to read file coercePath as text
	tell application "fmGuiLib" to set codeCoerce to "script codeCoerce " & return & getTextBetween({sourceText:codeCoerce, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeCoerce"
	set codeCoerce to run script codeCoerce
	tell codeCoerce to coerceToString(incomingObject)
end coerceToString
