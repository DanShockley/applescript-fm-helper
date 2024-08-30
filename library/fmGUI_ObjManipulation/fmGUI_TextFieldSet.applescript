-- fmGUI_TextFieldSet({objRef:null, objValue:null})
-- Dan Shockley
-- Works on text fields and/or text areas, as referenced by the parameter.


(*
HISTORY:
	1.1 - 2017-09-05 ( eshagdar ): converted prefs to record.
	1.0 - created
*)


on run
	tell application "System Events"
		tell application process "FileMaker Pro"
			set frontmost to true
			--set FieldCommentInManageDatabase to text field "Comment:" of tab group 1 of window 1
			set privSetDescription to text field "Description" of window 1
		end tell
	end tell
	fmGUI_TextFieldSet({objRef:privSetDescription, objValue:"some comment"})
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_TextFieldSet(prefs)
	-- version 1.1
	
	set defaultPrefs to {objRef:null, objValue:null}
	set prefs to prefs & defaultPrefs
	set objRef to ensureObjectRef(objRef of prefs)
	set objValue to objValue of prefs
	
	try
		using terms from application "System Events"
			if objValue is not null then
				if value of objRef is not equal to (objValue) then
					set focused of objRef to true
					set value of objRef to objValue
					return true
				end if
			end if
		end using terms from
		
		return false
	on error errMsg number errNum
		error "Unable to fmGUI_TextFieldSet ( couldn't select '" & objValue & "' for text field ) - " & errMsg number errNum
	end try
end fmGUI_TextFieldSet

--------------------
-- END OF CODE
--------------------

on ensureObjectRef(someObjectRef)
	-- 2017-07-12 ( eshagdar ): bootstrap code to bring a ensureObjectRef into this file for the sample to run ( instead of having a copy of the handler locally ).
	
	tell application "Finder" to set ensureObjPath to (container of (container of (path to me)) as text) & "text parsing:ensureObjectRef.applescript"
	set codeEnsureObj to read file ensureObjPath as text
	tell application "fmGuiLib" to set codeEnsureObj to "script codeEnsureObj " & return & getTextBetween({sourceText:codeEnsureObj, beforeText:"-- START OF CODE", afterText:"-- END OF CODE"}) & return & "end script" & return & "return codeEnsureObj"
	set codeEnsureObj to run script codeEnsureObj
	tell codeEnsureObj to ensureObjectRef(someObjectRef)
end ensureObjectRef
