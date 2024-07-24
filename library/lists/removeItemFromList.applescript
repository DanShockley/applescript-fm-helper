-- removeItemFromList(prefs)
-- Dan Shockley
-- remove all instances of an item from the specified list


(*
HISTORY:
	1.1 - 2017-06-21 ( eshagdar ): convert params to a record
	1.0 - created
*)


on run
	removeItemFromList({someList:{"a", "c", "d", "c", "b", "d"}, removeItem:"c"})
end run

--------------------
-- START OF CODE
--------------------

on removeItemFromList(prefs)
	-- version 1.1
	
	set defaultPrefs to {someList:null, removeItem:null}
	set prefs to prefs & defaultPrefs
	
	set newList to {}
	repeat with oneItem in someList of prefs
		set oneItem to contents of oneItem
		if oneItem is not removeItem of prefs then copy oneItem to end of newList
	end repeat
	
	return newList
	
end removeItemFromList
--------------------
-- END OF CODE
--------------------
