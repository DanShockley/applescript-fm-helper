-- fileNameWithoutExtension({fileName:null})
-- Dan Shockley
-- Gets the file name without the extension. Expects a file name, not file path.


(*
HISTORY:
	1.1.1 - 2019-02-06 ( eshagdar ): wrapped with try block. updated description. removed returning of undeclared variable.
	1.1 - 2018-12-17 ( dshockley ): Fix to work with a file that begins with the only dot (e.g. ".DS_Store"). 
	1.0.1 - 2016-xx-xx ( eshagdar ): converted params to an applescript record.
	1.0 - 2010-xx-xx ( dshockley ): First created. Date unknown.
*)


on run
	fileNameWithoutExtension({fileName:"someFile.txt"})
	fileNameWithoutExtension({fileName:".DS_Store"})
end run

--------------------
-- START OF CODE
--------------------

on fileNameWithoutExtension(prefs)
	-- version 1.1.1
	
	try
		set fileName to fileName of prefs
		
		set reverseString to (reverse of characters of fileName) as string
		set offsetInReverse to (offset of "." in reverseString)
		
		if offsetInReverse is equal to length of fileName then
			-- original started with the only dot in the name, so we want the whole thing, including leading dot:
			return fileName
		else
			text (offsetInReverse + 1) thru -1 of reverseString
		end if
		
		
		return (reverse of characters of result) as string
	on error errMsg number errNum
		error "unable to fileNameWithoutExtension - " & errMsg number errNum
	end try
end fileNameWithoutExtension

--------------------
-- END OF CODE
--------------------
