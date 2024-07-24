-- fmGUI_ManageLayouts_LayoutFolderSelect({folderName:null, folderStatus:"open"})
-- Dan Shockley
-- Select a layout folder in Manage Layouts window.


(*
HISTORY:
	2020-03-04 ( dshockley ): added call template in comment above, added folderName:null to defaultPrefs. 1638: Standardized version. Added fmGUI_ALL_Utilities_Close. 
	2020-03-03 ( dshockley, hdu ): Updated as standalone function for fm-scripts git repository. 
	1.1 - 201x-xx-xx ( dshockley ): ???
	1.0 - 201x-xx-xx ( dshockley ): created


REQUIRES:
	fmGUI_AppFrontMost
	fmGUI_ALL_Utilities_Close
	fmGUI_ManageLayouts_LayoutListFocus
	fmGUI_ManageLayouts_Open
	
*)


on run
	fmGUI_ManageLayouts_LayoutFolderSelect({layoutName:"Directory"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageLayouts_LayoutFolderSelect(prefs)
	-- version 2020-03-04-1638
	
	set defaultPrefs to {folderName:null, folderStatus:"open"}
	
	if class of prefs is class of {someKey:2} then
		set prefs to prefs & defaultPrefs
	else -- probably a string, so it is just the folderName
		set prefs to {folderName:prefs} & defaultPrefs
	end if
	set folderName to folderName of prefs
	set folderStatus to folderStatus of prefs
	
	try
		fmGUI_AppFrontMost()
		fmGUI_DataViewer_Close()
		fmGUI_ManageLayouts_Open({})
		fmGUI_ManageLayouts_LayoutListFocus({})
		
		tell application "System Events"
			tell application process "FileMaker Pro Advanced"
				set manageLayoutsWindow to window 1
				
				-- Expand every folder first: 
				repeat
					try
						set closedFolderRow to (first row of (outline 1 of scroll area 1 of manageLayoutsWindow) whose value of UI element 1 of group 1 is 0)
						click UI element 1 of group 1 of closedFolderRow
					on error errMsg number errNum
						exit repeat
					end try
				end repeat
				
				-- SELECT the easy way if the object is directly available:
				if (exists (first row of (outline 1 of scroll area 1 of manageLayoutsWindow) whose value of text field 1 of group 1 is folderName)) then
					set foundROW to (first row of outline 1 of scroll area 1 of manageLayoutsWindow whose value of text field 1 of group 1 is folderName)
					tell foundROW
						select it
						set statusToggle to UI element 1 of group 1
						if value of statusToggle is 0 and folderStatus is "open" then
							click statusToggle
						else if value of statusToggle is 1 and folderStatus is "closed" then
							click statusToggle
						end if
					end tell
					return true
				else
					return false
					
				end if
			end tell
		end tell
	on error errMsg number errNum
		error "Couldn't select the Layout Folder '" & folderName & "' - " & errMsg number errNum
	end try
	
end fmGUI_ManageLayouts_LayoutFolderSelect

--------------------
-- END OF CODE
--------------------

on fmGUI_AppFrontMost()
	tell application "fmGuiLib" to fmGUI_AppFrontMost()
end fmGUI_AppFrontMost

on fmGUI_ALL_Utilities_Close()
	tell application "fmGuiLib" to fmGUI_ALL_Utilities_Close()
end fmGUI_ALL_Utilities_Close

on fmGUI_ManageLayouts_LayoutListFocus(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_LayoutListFocus(prefs)
end fmGUI_ManageLayouts_LayoutListFocus

on fmGUI_ManageLayouts_Open(prefs)
	tell application "fmGuiLib" to fmGUI_ManageLayouts_Open(prefs)
end fmGUI_ManageLayouts_Open

