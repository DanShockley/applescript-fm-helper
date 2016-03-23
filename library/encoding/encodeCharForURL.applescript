-- encodeCharForURL(this_char)
-- Daniel A. Shockley http://www.danshockley.com
-- Encode a character


(*
HISTORY:
	1.0 - created
*)


on run
	encodeCharForURL(";")
end run


--------------------
-- START OF CODE
--------------------

on encodeCharForURL(this_char)
	-- version 1.0
	
	set the ASCII_num to (the ASCII number this_char)
	set the hex_list to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}
	set x to item ((ASCII_num div 16) + 1) of the hex_list
	set y to item ((ASCII_num mod 16) + 1) of the hex_list
	return ("%" & x & y) as string
end encodeCharForURL

--------------------
-- END OF CODE
--------------------
