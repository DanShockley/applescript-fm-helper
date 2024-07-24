-- fileChoose({prompt:"Choose items:", allowMulti:false})
-- Dan Shockley
-- Asks the user for one or more items (files OR folders). 


(*
HISTORY:
	1.0 - 2019-02-01 ( dshockley ): First created.
*)


on run
	
	fileChoose({prompt:"Pick some stuff!:", allowMulti:true})
end run

--------------------
-- START OF CODE
--------------------

on fileChoose(prefs)
	-- version 1.0, Daniel A. Shockley
	
	try
		set defaultPrefs to {prompt:"Choose files:", allowMulti:false}
		
		if ((class of prefs) as string is not "record") then
			error "chooseFiles FAILED: parameter should be a record." number 1024
		end if
		set prefs to prefs & defaultPrefs -- add on default preferences, if needed	
		set choosePrompt to prompt of prefs
		set allowMulti to allowMulti of prefs
		
		set fileList to (choose file with prompt choosePrompt multiple selections allowed allowMulti)
		
		if class of fileList is not equal to class of {"a", "b"} then set fileList to {fileList}
		
		-- sort the list of files FIRST:
		tell application "Finder" to set these_items_Sorted to (sort fileList by name)
		set fileList to {}
		repeat with thisPath in these_items_Sorted
			set fileList to fileList & (thisPath as alias)
		end repeat
		
		return fileList
		
	on error errMsg number errNum
		error errMsg number errNum
	end try
	
end fileChoose

--------------------
-- END OF CODE
--------------------
