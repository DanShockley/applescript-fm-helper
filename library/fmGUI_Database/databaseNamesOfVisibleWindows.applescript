-- databaseNamesOfVisibleWindows({fmAppType:"Pro"})
-- Dan Shockley
-- return a list of db names for the specified window names


(*
HISTORY:
	1.7 - 2018-10-16 ( eshagdar ): FM17 has only FMP ( no more FMA)
	1.6 - 2018-09-20 ( eshagdar ): FileMaker 17 has only version so talk to it by name.
	1.5 - added a time-out loop for dealing with delay in being able to get list of databases. 
	1.4 - added error-handling
	1.3 - 
	1.2 - 
	1.1 - 
	1.0 - created


REQUIRES:
	dbNameOfWindowName
*)


on run
	databaseNamesOfVisibleWindows({})
end run

--------------------
-- START OF CODE
--------------------

on databaseNamesOfVisibleWindows(prefs)
	-- version 1.7
	
	set defaultPrefs to {}
	set prefs to prefs & defaultPrefs
	
		
	using terms from application "FileMaker Pro Advanced"
		tell application ID "com.filemaker.client.pro12"
			set visibleWindowNames to name of every window whose visible is true
		end tell
		
		set visibleDatabases to {}
		repeat with oneWindowName in visibleWindowNames
			set oneDBName to dbNameOfWindowName(oneWindowName)
			if visibleDatabases does not contain oneDBName then
				copy oneDBName to end of visibleDatabases
			end if
		end repeat
		return visibleDatabases
	end using terms from
end databaseNamesOfVisibleWindows

--------------------
-- END OF CODE
--------------------

on dbNameOfWindowName(someWindowName)
	tell application "fmGuiLib" to dbNameOfWindowName(someWindowName)
end dbNameOfWindowName
