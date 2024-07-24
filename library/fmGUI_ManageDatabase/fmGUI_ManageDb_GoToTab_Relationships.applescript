-- fmGUI_ManageDb_GoToTab_Relationships({})
-- Dan Shockley
-- Go to the "Relationship" tab of manage database


(*
HISTORY:
	1.4 - 2016-06-30 ( eshagdar ): use fmGUI_ManageDb_GoToTab(prefs) handler. Renamed from 'fmGUI_ManageDb_RelationshipsTab' to 'fmGUI_ManageDb_GoToTab_Relationships'
	1.3 - 2016-03-18 ( eshagdar ): use reference to tab control object to deal with different FM app types running concurrently.
	1.2 - only click if needed
	1.1 - 
	1.0 - created


REQUIRES:
	fmGUI_ManageDb_GoToTab
*)


on run
	fmGUI_ManageDb_GoToTab_Relationships({})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageDb_GoToTab_Relationships(prefs)
	-- version 1.4
	
	fmGUI_ManageDb_GoToTab({tabName:"Relationships"})
	
end fmGUI_ManageDb_GoToTab_Relationships

--------------------
-- END OF CODE
--------------------

on fmGUI_ManageDb_GoToTab(prefs)
	tell application "fmGuiLib" to fmGUI_ManageDb_GoToTab(prefs)
end fmGUI_ManageDb_GoToTab
