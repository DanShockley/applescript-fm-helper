set acct to ""
set pwd to ""


set privSet to "[Full Access]"
set credentials to {fullAccessAccountName:acct, fullAccessPassword:pwd}
set removePrivName to "fmscriptdisabled"
set updatePrivName to "fmextscriptaccess"
set editExtPrivWindow to "Edit Extended Privilege"
set debugMode to false


tell application "fmGuiLib" to fmGUI_ManageSecurity_GoToTab_ExtendedPrivs(credentials)

-- delete deprecated extended privilege	
try
	tell application "System Events"
		tell application process "FileMaker Pro"
			select (first row of table 1 of scroll area 1 of tab group 1 of window 1 whose value of static text 1 is equal to removePrivName)
			click button "Delete" of tab group 1 of window 1
		end tell
	end tell
end try


-- allow full acess to run via applescript
try
	-- find and open edit window for priv
	tell application "System Events"
		tell application process "FileMaker Pro"
			select (first row of table 1 of scroll area 1 of tab group 1 of window 1 whose value of static text 1 is equal to updatePrivName)
			set editButton to first button of tab group 1 of window 1 whose name begins with "Edit"
		end tell
	end tell
	tell application "fmGuiLib" to clickObjectByCoords(my coerceToString(editButton))
	tell application "fmGuiLib" to windowWaitUntil_FrontIS({windowName:editExtPrivWindow})
	
	
	-- edit priv and save change
	tell application "System Events"
		tell application process "FileMaker Pro"
			set onBox to checkbox 1 of (first row of table 1 of scroll area 1 of window 1 whose value of static text 1 is equal to privSet)
			if value of onBox is 0 then click onBox
		end tell
	end tell
	tell application "fmGuiLib" to fmGUI_ObjectClick_OkButton({})
	tell application "fmGuiLib" to windowWaitUntil_FrontNotIS({windowName:editExtPrivWindow})
end try


tell application "fmGuiLib" to fmGUI_ManageSecurity_Save(credentials)

-- now close the file
tell application "fmGuiLib" to set dbName to databaseNameOfFrontWindow({fmAppType:"Adv"})
tell application "fmGuiLib" to closeDatabase({dbName:dbName})


































on coerceToString(incomingObject)
	-- version 2.2
	
	if class of incomingObject is string then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject
	else if class of incomingObject is integer then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is real then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else if class of incomingObject is Unicode text then
		set {text:incomingObject} to (incomingObject as string)
		return incomingObject as string
	else
		-- LIST, RECORD, styled text, or unknown
		try
			try
				set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "XXXX" to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
				
				-- GENERATE the error message for a known 'object' (here, a string) so we can get 
				-- the 'lead' and 'trail' part of the error message
			on error errMsg number errNum
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {"\"XXXX\""}}
				set {errMsgLead, errMsgTrail} to text items of errMsg
				set AppleScript's text item delimiters to oldDelims
			end try
			
			-- now, generate error message for the SPECIFIED object: 
			set some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of incomingObject to "some_UUID_Value_54F827C7379E4073B5A216BB9CDE575D"
			
			
		on error errMsg
			if errMsg starts with "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of " and errMsg ends with "into type specifier." then
				set errMsgLead to "System Events got an error: Can’t make some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D of "
				set errMsgTrail to " into type specifier."
				
				set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
				
				set objectString to text item 2 of errMsg
				set AppleScript's text item delimiters to errMsgTrail
				
				set objectString to text item 1 of objectString
				set AppleScript's text item delimiters to od
				
				
				
			else
				--tell me to log errMsg
				set objectString to errMsg
				
				if objectString contains errMsgLead then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgLead}
					set objectString to text item 2 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				if objectString contains errMsgTrail then
					set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, errMsgTrail}
					set AppleScript's text item delimiters to errMsgTrail
					set objectString to text item 1 of objectString
					set AppleScript's text item delimiters to od
				end if
				
				--set {text:objectString} to (objectString as string) -- what does THIS do?
			end if
		end try
		
		return objectString
	end if
end coerceToString
