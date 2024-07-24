-- fmGUI_ALL_Utilities_Close()
-- Dan Shockley
-- Closes ALL (known) possible utility windows. 


(*
HISTORY:
	2020-03-04 ( dshockley ): First created. 


REQUIRES:
	fmGUI_2empowerFM_Toolbox_Close
	fmGUI_DataViewer_Close
	fmGUI_Inspector_Close
	
*)


on run
	fmGUI_ALL_Utilities_Close()
end run


--------------------
-- START OF CODE
--------------------

on fmGUI_ALL_Utilities_Close()
	-- version 2020-03-04-1645
	
	fmGUI_2empowerFM_Toolbox_Close()
	fmGUI_DataViewer_Close()
	fmGUI_Inspector_Close()
	
end fmGUI_ALL_Utilities_Close

--------------------
-- END OF CODE
--------------------


on fmGUI_2empowerFM_Toolbox_Close()
	tell application "fmGuiLib" to fmGUI_2empowerFM_Toolbox_Close()
end fmGUI_2empowerFM_Toolbox_Close

on fmGUI_DataViewer_Close()
	tell application "fmGuiLib" to fmGUI_DataViewer_Close()
end fmGUI_DataViewer_Close

on fmGUI_Inspector_Close()
	tell application "fmGuiLib" to fmGUI_Inspector_Close()
end fmGUI_Inspector_Close

