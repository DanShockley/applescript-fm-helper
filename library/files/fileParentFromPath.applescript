-- fileParentFromPath({filePath:null, pathDelim:null})
-- Dan Shockley
-- Gets the parent folder path of the path.


(*
HISTORY:
	1.2 -  requires record param, pathDelim.
	1.1 -  changed error handling.
	1.0 -  first created.
*)


on run
	
	fileParentFromPath({filePath:"/my/fake/path/someFile.txt", pathDelim:"/"})
	-- returns: "/my/fake/path/"
end run

--------------------
-- START OF CODE
--------------------

on fileParentFromPath(prefs)
	-- version 1.2, Daniel A. Shockley
	
	try
		set filePath to filePath of prefs
		set pathDelim to pathDelim of prefs
		
		set filePath to filePath as string
		if filePath is "" then
			error "Cannot find a parent folder for a path that is blank." number -1027
		end if
		
		if last character of filePath is pathDelim then
			-- if it ends with pathDelim (a folder), leave that off for the code below
			set filePath to (text 1 through -2 of filePath) as string
		end if
		
		set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, pathDelim}
		if (count of text items of filePath) is 1 then
			-- the item in question is a disk, so CANNOT return a parent folder
			set AppleScript's text item delimiters to od
			error "Cannot find a parent folder of a DISK: " & filePath & "." number -1027
		else
			set enclosingFolder to (text items 1 through -2 of filePath as string)
		end if
		
		set AppleScript's text item delimiters to od
		return enclosingFolder & pathDelim
		
	on error errMsg number errNum
		error "fileParentFromPath FAILED: " & errMsg number errNum
		
	end try
	
	
end fileParentFromPath


--------------------
-- END OF CODE
--------------------
