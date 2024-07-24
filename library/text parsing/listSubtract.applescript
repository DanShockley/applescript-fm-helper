-- listSubtract(originalList, subtractionList)
-- Dan Shockley
-- Subtracts items in subtractionList from originalList (if an item occurs in originalList multiple times, ALL occurrences removed). 


(*
HISTORY:
	1.0 - 2021-02-26 ( dshockley ): first created.


TODO:


REQUIRES:
	
*)


on run
	listSubtract({"a", "b", "c", "d", "d", "d", "e", "f"}, {"a", "d", "f"})
end run

--------------------
-- START OF CODE
--------------------

on listSubtract(originalList, subtractionList)
	-- version 1.0, Daniel A. Shockley
	
	set newList to {}
	repeat with oneItem in originalList
		set oneItem to contents of oneItem
		if subtractionList does not contain oneItem then set end of newList to oneItem
	end repeat
	
	return newList
	
end listSubtract


--------------------
-- END OF CODE
--------------------

