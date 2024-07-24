-- SFR_DictItem(itemName, itemValue)
-- Dan Shockley
-- Creates a SixFriedRice.com-style dictionary string for use in FileMaker.


(*
HISTORY:
	1.0 - created


REQUIRES:
	SFR_Escape
*)


on run
	SFR_DictItem("foo", "bar")
end run

--------------------
-- START OF CODE
--------------------

on SFR_DictItem(itemName, itemValue)
	-- version 1.0
	
	return "<:" & SFR_Escape(itemName) & ":=" & SFR_Escape(itemValue) & ":>"
end SFR_DictItem

--------------------
-- END OF CODE
--------------------

on SFR_Escape(someString)
	tell application "fmGuiLib" to SFR_Escape(someString)
end SFR_Escape
