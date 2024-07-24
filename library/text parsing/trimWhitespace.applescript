-- trimWhitespace(inputString)
-- Dan Shockley
-- Takes some string and returns the string with whitespace trimmed from beginning and end. 


(*
HISTORY:
	1.2 - 2017-08-31 ( dshockley ): added to repository.
	1.1 - 2014-??-?? ( dshockley ): changed to correctly handle when the whole input string is whitespace. 
	1.0 - 2013-??-?? ( dshockley ): loop actually works, since the ASTIDs method fails with return / ascii character 13. 
		-- note also that the "contains" AppleScript function breaks with ASCII character 13
		-- that is why a list of ASCII numbers is used, instead of a list of strings
*)


on run
	trimWhitespace(" some string ")
end run


--------------------
-- START OF CODE
--------------------

on trimWhitespace(inputString)
	-- version 1.2: 
	
	set whiteSpaceAsciiNumbers to {13, 10, 32, 9}  -- characters that count as whitespace.
	
	set textLength to length of inputString
	if textLength is 0 then return ""
	set endSpot to -textLength -- if only whitespace is found, will chop whole string
	
	-- chop from end
	set i to -1
	repeat while -i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set endSpot to i
			exit repeat
		end if
		set i to i - 1
	end repeat
	
	
	if -endSpot is equal to textLength then
		if whiteSpaceAsciiNumbers contains (ASCII number testChar) then return ""
	end if
	
	set inputString to text 1 thru endSpot of inputString
	set textLength to length of inputString
	set newStart to 1
	
	-- chop from beginning
	set i to 1
	repeat while i is less than or equal to textLength
		set testChar to text i thru i of inputString
		if whiteSpaceAsciiNumbers does not contain (ASCII number testChar) then
			set newStart to i
			exit repeat
		end if
		set i to i + 1
	end repeat
	
	set inputString to text newStart thru textLength of inputString
	
	return inputString
	
end trimWhitespace

--------------------
-- END OF CODE
--------------------
