-- getObjectAndSubs({someObjectRef:null, outputType:"TEXT", maxSubLevel:null, subLevel:0})
-- Daniel A. Shockley & Erik Shagdar
-- Gets detailed UI Scripting info for the specified object, recursively for all sub-objects. 


(*
HISTORY:
	2024-07-16 ( danshockley ): NOTE: this may not yet work properly - needs more testing once compiled into applet. 
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by process ID (works-with-FM19+). Bumped handler version to reflect documentation change. 
	1.1 - 2017-06-29 ( dshockley ): added ensureObjectRef. 
	1.0 - 2016-10-21 ( dshockley ): first created.


TODO:
	2017-01-12 ( dshockley ): Try to figure out a way to preseve human-friendly class names (without the chevrons)


REQUIRES:
	coerceToString
	ensureObjectRef
	quoteString
	repeatString
*)


on run
	tell application "System Events"
		set fmProcID to id of first application process whose name contains "FileMaker"
		tell process id fmProcID
			set frontmost to true
			delay 0.5
			
			-- WARNING!!! If you pick a high (or no) maxSubLevel, it can take a LONG time for objects with many sub-objects.
			set objectString to my getObjectAndSubs({someObjectRef:window 1, maxSubLevel:4})
			
			set the clipboard to objectString
			
			return objectString
		end tell
	end tell
end run

--------------------
-- START OF CODE
--------------------

on getObjectAndSubs(prefs)
	-- version 2024-07-15
	
	set defaultPrefs to {someObjectRef:null, outputType:"TEXT", maxSubLevel:null, subLevel:0}
	(* 
		Other options: 
		  outputType:"TEXT", "Record"
	*)
	
	
	set prefs to prefs & defaultPrefs
	
	set someObjectRef to someObjectRef of prefs
	set outputType to outputType of prefs
	set maxSubLevel to maxSubLevel of prefs
	set subLevel to subLevel of prefs
	
	set someObjectRef to ensureObjectRef(someObjectRef)
	
	set indentString to my repeatString({someString:tab, repeatCount:subLevel})
	set subIndentString to my repeatString({someString:tab, repeatCount:subLevel + 1})
	
	
	tell application "System Events"
		
		set thisObjectInfo to properties of someObjectRef
		
		try
			set thisObjClass to class of someObjectRef
		end try
		try
			set thisObjectName to name of someObjectRef
		end try
		
		if maxSubLevel is null then
			set doSub to true
		else if subLevel is greater than or equal to maxSubLevel then
			set doSub to false
		else
			set doSub to true
		end if
		
		
		
		if not doSub then
			set thisSubObjectList to null
		else
			
			try
				set subObjects to UI elements of someObjectRef
				
				if outputType is "Record" then
					set thisSubObjectList to {}
				else if outputType is "TEXT" then
					if (count of subObjects) is 0 then
						set thisSubObjectList to "{}"
					else
						set subList_START to "{ Â" & return & subIndentString & "Â"
						set subList_BeforeEach to return & subIndentString
						set subList_BetweenAdjacent to ", Â" & return & subIndentString & "Â"
						set thisSubObjectList to subList_START
						set subObjectsListHasItems to false
						
					end if
				end if
				
				if (count of subObjects) is greater than 0 then
					
					repeat with oneSubObject in subObjects
						set subObjectInfo to my getObjectAndSubs({someObjectRef:oneSubObject, subLevel:subLevel + 1} & prefs)
						if outputType is "Record" then
							copy subObjectInfo to end of thisSubObjectList
						else if outputType is "TEXT" then
							if subObjectsListHasItems then
								set thisSubObjectList to thisSubObjectList & subList_BetweenAdjacent
							else
								set subObjectsListHasItems to true
							end if
							set thisSubObjectList to thisSubObjectList & subList_BeforeEach & subObjectInfo
						end if
					end repeat
					
					-- had sub-objects, so need to put on ending string:
					if outputType is "TEXT" then
						set thisSubObjectList to thisSubObjectList & "Â" & return & indentString & "}"
					end if
				end if
				
			on error errMsg number errNum
				if errNum is -128 then error -128
				-- had no sub-objects, so list will be/remain empty				
				if outputType is "TEXT" then set thisSubObjectList to "missing value"
			end try
			
			
			
		end if
		
		
		if outputType is "Record" then
			return {objClass:thisObjClass, objName:thisObjectName, objRef:someObjectRef, objInfo:thisObjectInfo, subObjList:thisSubObjectList}
		else if outputType is "TEXT" then
			
			(*  CANNOT make uppercase until we figure out how to preserve classes without chevrons... 2016-10-21 ( dshockley )
			-- make the class uppercase for legibility:
			set thisObjClass to my coerceToString(thisObjClass)
			set thisObjClass to do shell script "echo " & quoted form of thisObjClass & " | tr [:lower:] [:upper:]"
			*)
			
			set resultString to ""
			set resultString to resultString & Â
				"{objClass: " & my coerceToString(thisObjClass) & ", Â"
			
			set resultString to resultString & return & Â
				indentString & "objName: " & my quoteString(thisObjectName) & ", Â"
			
			set resultString to resultString & return & Â
				indentString & "objRef: " & my coerceToString(someObjectRef) & ", Â"
			
			set resultString to resultString & return & Â
				indentString & "objInfo: " & my coerceToString(thisObjectInfo) & ", Â"
			
			if thisSubObjectList is null then
				set resultString to resultString & return & Â
					indentString & "subObjList: " & thisSubObjectList & " Â"
			else if (count of thisSubObjectList) is 0 then
				set resultString to resultString & return & Â
					indentString & "subObjList: " & thisSubObjectList & " Â"
			else
				set resultString to resultString & return & Â
					indentString & "subObjList: " & thisSubObjectList & " Â"
				(* 
					set resultString to resultString & return & Â
					indentString & "subObjList: Â" & return & thisSubObjectList & " Â"
				*)
				
			end if
			
			set resultString to resultString & return & indentString & "}"
			
			return resultString
			
		end if
		
	end tell
	
end getObjectAndSubs

--------------------
-- END OF CODE
--------------------

on coerceToString(incomingObject)
	tell application "htcLib" to coerceToString(incomingObject)
end coerceToString

on ensureObjectRef(someObject)
	tell application "htcLib" to ensureObjectRef(someObject)
end ensureObjectRef

on quoteString(someString)
	tell application "htcLib" to quoteString(someString)
end quoteString

on repeatString(prefs)
	tell application "htcLib" to repeatString(prefs)
end repeatString
