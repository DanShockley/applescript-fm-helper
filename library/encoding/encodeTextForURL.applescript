-- encodeTextForURL(this_text, encode_URL_A, encode_URL_B)
-- Daniel A. Shockley http://www.danshockley.com
-- Encode some text


(*
HISTORY:
	1.0 - created


REQUIRES:
	encodeCharForURL
*)


on run
	encodeTextForURL("a00_TIMESSQUARE", true, false)
end run

--------------------
-- START OF CODE
--------------------

on encodeTextForURL(this_text, encode_URL_A, encode_URL_B)
	-- version 1.0
	
	-- this sub-routine is used to encode text 
	set the standard_characters to "abcdefghijklmnopqrstuvwxyz0123456789"
	set the URL_A_chars to "$+!'/?;&@=#%><{}[]\"~`^\\\\|*" -- double excape this since the code gets compiled
	set the URL_B_chars to ".-_:"
	set the acceptable_characters to the standard_characters
	if encode_URL_A is false then set the acceptable_characters to the acceptable_characters & the URL_A_chars
	if encode_URL_B is false then set the acceptable_characters to the acceptable_characters & the URL_B_chars
	set the encoded_text to ""
	repeat with this_char in this_text
		if this_char is in the acceptable_characters then
			set the encoded_text to (the encoded_text & this_char)
		else
			set the encoded_text to (the encoded_text & encodeCharForURL(this_char)) as string
		end if
	end repeat
	return the encoded_text
end encodeTextForURL

--------------------
-- END OF CODE
--------------------

on encodeCharForURL(this_char)
	tell application "fmGuiLib" to encodeCharForURL(this_char)
end encodeCharForURL
