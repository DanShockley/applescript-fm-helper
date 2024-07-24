-- coerceToString(incomingObject)
-- Daniel A. Shockley & Erik Shagdar
-- string-ifies an object


(*
HISTORY:
	2.2 - handle other object references?
	2.1 - Special handling of XML element references - probably need to handle other object references
	2.0 - Fixed a horrifying bug that could modify incoming data by reference; re-worked to use getting a definitely non-existent key instead of trying 'as number' since the old method would fail on lists of numbers (or lists of items that could be coerced to number). Sometimes returns an ellipses, but the error occurs randomly ( returns a 'stack overflow' for references, etc. if that we hit the error ).
	1.9 - needs special handling for single item lists where that item could be gotten 'as number'
	1.8 - instead of trying to store the error message use, generate it
	1.7 -  added "Can't make " with a curly single-quote. 
	1.6 -  can add additional errMsg parts (just add to lists to handle other languages. Currently handles English in both 10.3 and 10.4 (10.3 uses " into a number." while 10.4 uses " into type number.")
	1.5 -  added Unicode Text
*)


on run
	tell application "System Events" to set someElement to window 1 of application process "Script Editor"
	
	coerceToString(someElement)
end run

--------------------
-- START OF CODE
--------------------

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

--------------------
-- END OF CODE
--------------------
