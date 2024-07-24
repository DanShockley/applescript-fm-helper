-- writeToFile({outputText:"", fullFilePath:null, fileName:null, fileDirectory:null, appendText:false, appendLine:true})
-- Erik Shagdar
-- Write some text to a file


(*
HISTORY:
	1.2.1 - 2018-04-17 ( eshagdar ): allow fullFilePath to be a POSIX path
	1.2 - 2017-07-14 ( eshagdar ): allow appending to file ( appends a new line by default )
	1.1 - 2017-06-29 ( eshagdar ): changed default outputFile name
	1.0 - 2016-06-29 ( eshagdar ): first created
*)


on run
	writeToFile({outputText:"bob", appendText:true})
	--writeToFile({fileName:"test.txt", fileDirectory:(path to documents folder) as string, outputText:"bob"})
	--writeToFile({fullFilePath:((path to documents folder) as string) & "test.txt", outputText:"bob"})
end run

--------------------
-- START OF CODE
--------------------

on writeToFile(prefs)
	-- version 1.2
	
	set defaultPrefs to {outputText:"", fullFilePath:null, fileName:null, fileDirectory:(path to desktop) as string, appendText:false, appendLine:true}
	set prefs to prefs & defaultPrefs
	set outputText to outputText of prefs
	
	
	-- determine file path
	if fullFilePath of prefs is not null then
		set outputFile to fullFilePath of prefs
	else if fileName of prefs is not null then
		set outputFile to fileDirectory of prefs & fileName of prefs
	else
		set outputFile to ((path to desktop) as string) & "ASFileWrittenBy_fmGuiLib.txt"
	end if
	
	
	
	
	-- now write output text to file
	try
		try
			set fileReference to open for access file outputFile with write permission
		on error
			set fileReference to open for access POSIX file outputFile with write permission
		end try
		if appendText of prefs is false then
			set eof of the fileReference to 0
		else if appendLine of prefs is true then
			set outputText to return & outputText
		end if
		write outputText to fileReference starting at eof
		close access fileReference
		return true
	on error
		try
			close access file outputFile
			return true
		end try
	end try
	return false
end writeToFile

--------------------
-- END OF CODE
--------------------
