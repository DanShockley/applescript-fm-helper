-- parseByTags({sourceTEXT:"", itemStartStr:"", itemEndStr:"", includeMarkers:false})
-- Erik Shagdar
-- parse sourceText by tags, optionally including them


(*
HISTORY:
	2019-12-11 ( eshagdar ): created
*)


on run
	parseByTags({sourceTEXT:"a*bc|d*ef|g", itemStartStr:"*", itemEndStr:"|", includeMarkers:true})
end run

--------------------
-- START OF CODE
--------------------

on parseByTags(prefs)
	-- version 2019-12-11
	
	set prefs to prefs & {sourceTEXT:null, itemStartStr:null, itemEndStr:null, includeMarkers:false}
	set sourceTEXT to sourceTEXT of prefs
	set itemStartStr to itemStartStr of prefs
	set itemEndStr to itemEndStr of prefs
	set includeMarkers to includeMarkers of prefs
	set itemList to {}
	
	try
		-- ensure there are the same number of start and end strings.
		--NOTE: if the start and end strings don't alternate, this will break ( not a guarantee to be safe )
		set numStart to patternCount({sourceTEXT:sourceTEXT, searchString:itemStartStr})
		set numEnd to patternCount({sourceTEXT:sourceTEXT, searchString:itemEndStr})
		if numStart is not equal to numEnd then error "there must be the same number of start and end strings" number -1024
		
		
		repeat with oneItem from 1 to numStart
			copy getTextBetween({sourceTEXT:sourceTEXT, beforeTEXT:itemStartStr, afterTEXT:itemEndStr, textItemNum:oneItem + 1, includeMarkers:includeMarkers}) to end of itemList
		end repeat
		
		return itemList
	on error errMsg number errNum
		error "unable to parseByTags - " & errMsg number errNum
	end try
end parseByTags

--------------------
-- END OF CODE
--------------------

on patternCount(prefs)
	tell application "fmGuiLib" to patternCount(prefs)
end patternCount

on getTextBetween(prefs)
	tell application "fmGuiLib" to getTextBetween(prefs)
end getTextBetween

