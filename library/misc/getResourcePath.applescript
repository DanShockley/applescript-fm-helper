-- getResourcePath({resourceName:"", subDirectoryName:"", subDirectoryList:{}})
-- Daniel Shockley
-- return full filepath for a named resource ( optionally within a subfolder ).

(*
HISTORY:
	1.3 - 2019-02-01 ( eshagdar ): updated delim to be a var. delim is now '/' instead of ':'.
	1.2 - 2016-10-18 ( eshagdar ): on error, exit with an error number
	1.1 - 2016-09-29 ( eshagdar ): added subDirectoryList param to allow for nested sub-directories
	1.0 - 201x-xx-xx ( dshockley ): first created
*)


on run
	getResourcePath({resourceName:"bob", subDirectoryName:"", subDirectoryList:{}})
end run

--------------------
-- START OF CODE
--------------------

on getResourcePath(prefs)
	-- version 1.3
	
	try
		set defaultPrefs to {resourceName:"", subDirectoryName:"", subDirectoryList:{}}
		
		set prefs to prefs & defaultPrefs
		set directoryDelim to "/"
		
		set myPath to (path to me) as string
		
		
		if myPath ends with ".scpt" then
			-- running the script file within AppleScript Editor while testing, so relative path:
			set {od, AppleScript's text item delimiters} to {AppleScript's text item delimiters, directoryDelim}
			set resourcesFolderPath to ((text items 1 thru -3 of myPath) as string) & directoryDelim
			set AppleScript's text item delimiters to od
			
			if length of subDirectoryName of prefs > 0 then
				-- subDirectoryName specified, so look there
				set resourcePath to (resourcesFolderPath & subDirectoryName of prefs & directoryDelim & resourceName of prefs) as string
				
			else if length of subDirectoryList of prefs > 0 then
				-- list of subDirectory names is specified, look inside that
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {directoryDelim}}
				set subDirectoryNestedName to subDirectoryList of prefs as text
				set AppleScript's text item delimiters to oldDelims
				set resourcePath to (resourcesFolderPath & subDirectoryNestedName & directoryDelim & resourceName of prefs) as string
				
			else
				-- no subDirectory specified
				set resourcePath to (resourcesFolderPath & resourceName of prefs) as string
			end if
			
		else
			
			-- running as APP, so get resource path:
			if length of subDirectoryName of prefs > 0 then
				-- subDirectoryName specified, so look there
				set resourcePath to ((path to resource resourceName of prefs in directory (subDirectoryName of prefs)) as string)
				
			else if length of subDirectoryList of prefs > 0 then
				-- list of subDirectory names is specified, look inside that
				set {oldDelims, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {directoryDelim}}
				set subDirectoryNestedName to subDirectoryList of prefs as text
				set AppleScript's text item delimiters to oldDelims
				set resourcePath to ((path to resource resourceName of prefs in directory subDirectoryNestedName) as string)
				
				
			else
				-- no subDirectory specified
				set resourcePath to ((path to resource resourceName of prefs) as string)
			end if
		end if
		
		return resourcePath
		
	on error errMsg number errNum
		error "Couldn't getResourcePath - " & errMsg number errNum
	end try
	
end getResourcePath

--------------------
-- END OF CODE
--------------------
