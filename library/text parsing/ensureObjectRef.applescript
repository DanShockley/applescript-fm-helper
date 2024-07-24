-- ensureObjectRef(someObjectRef)
-- Dan Shockley, Erik Shagdar
-- Ensure the passed in object ( or string ) is actually an object reference

(*
HISTORY:
	2024-07-15 ( danshockley ): Updated SAMPLE USAGE CODE to tell app by name of process (works-with-FM19+). Bumped handler version to reflect documentation change. 
	1.1 - 2020-03-04 ( dshockley ): app name change - 17+ is always Advanced.
	1.0 - 2017-06-29 ( dshockley/eshagdar ): created
*)


on run
	ensureObjectRef("button \"Cancel\" of window \"Edit Privilege Set\" of (first process of application \"System Events\" whose name contains \"FileMaker\")")
end run

--------------------
-- START OF CODE
--------------------

on ensureObjectRef(someObjectRef)
	-- version 2024-07-15
	
	tell application "System Events"
		
		if class of someObjectRef is equal to class of "fakestring" then
			set objCode to "script someObject" & return & Â
				"tell app \"System Events\" to " & someObjectRef & return & Â
				"end script" & return & Â
				"run someObject"
			
			set someObjectRef to run script objCode
			
		end if
		
		return someObjectRef
		
	end tell
	
end ensureObjectRef

--------------------
-- END OF CODE
--------------------
