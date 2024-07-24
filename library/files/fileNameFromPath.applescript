-- fileNameFromPath({filePath:null, pathDelim:null})
-- Dan Shockley
-- Gets the file (or folder) name from the path. 


(*
HISTORY:
	2023-09-07 ( danshockley ): Changed versioning to date. FIX so that paths ending with the path delimiter return the folder name, instead of just returning an error.
	20xx-xx-xx ( danshockley ): Unspecified changes in version 1.1. Date unknown.
	20xx-xx-xx ( danshockley ): Created, version 1.0. Date unknown.
*)


on run
	
	fileNameFromPath({filePath:"/my/fake/path/someFile.txt", pathDelim:"/"})
end run

--------------------
-- START OF CODE
--------------------

on fileNameFromPath(prefs)
	-- version 2023-09-07, Daniel A. Shockley
	
	set filePath to filePath of prefs
	set pathDelim to pathDelim of prefs
	
	if filePath ends with pathDelim then set filePath to text 1 thru -2 of filePath
	
	(reverse of characters of filePath) as string
	
	text 1 thru ((offset of pathDelim in result) - 1) of result
	
	return (reverse of characters of result) as string
	
end fileNameFromPath


--------------------
-- END OF CODE
--------------------
