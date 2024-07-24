-- fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({extendPrivRows:null})
-- Erik Shagdar
-- helper handler that takes access type ( view/edit/create/delete ), table access ( yes/no ) or access calc ( when the poup is 'limited...' ) and if it matches the original calc, returns an access type ( yes/no/limited... ) and an access calc


(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-09-07 ( eshagdar ): moved from fmGUI_ManageSecurity_PrivSet_Update.


NOTE:
	error if original does NOT match access/calc. Calling handler needs to catch error.


REQUIRES:
	removeAllWhitespace
*)


on run
	set prefs to {currentTableAccess:"limited...", currentTableCalc:"/* StandardCalc_BEGIN */
/* version 1.4 */

_Access_canView ( zAutoOrgNum; SyncDeK_pubFlag )

/* StandardCalc_END */", original:"/* StandardCalc_BEGIN *//* version 1.4 */_Access_canView ( zAutoOrgNum; SyncDeK_pubFlag )/* StandardCalc_END */", new:"no", accessType:"view"}
	fmGUI_ManageSecurity_PrivSet_Update_DictAccessType(prefs)
	
	--fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableAccess:"yes", original:"yes", new:"True", accessType:"view"}) -- change view access from 'yes' to 'limited...' with a calc of 'True'
	--fmGUI_ManageSecurity_PrivSet_Update_DictAccessType({currentTableCalc:"True", original:"True", new:"yes", accessType:"create"}) -- change create access from 'limited...' with calc of 'True' to 'yes'
end run

--------------------
-- START OF CODE
--------------------

on fmGUI_ManageSecurity_PrivSet_Update_DictAccessType(prefs)
	-- version 2020-03-04-1534
	
	set defaultPrefs to {currentTableAccess:null, currentTableCalc:null, original:null, new:null, accessType:null}
	set prefs to prefs & defaultPrefs
	set accessType to accessType of prefs
	
	try
		
		-- get stringified text without any whitespace
		set compressed_original to removeAllWhitespace({str:original of prefs})
		set compressed_currentCalc to removeAllWhitespace({str:currentTableCalc of prefs})
		
		
		-- do comparison and create generic record
		if currentTableAccess of prefs is equal to compressed_original Â
			or compressed_currentCalc is equal to compressed_original then
			if new of prefs is in {"yes", "no"} then
				set updateRec to {access:new of prefs, calc:null}
			else
				set updateRec to {access:"limited...", calc:new of prefs}
			end if
		else
			error "original does not match currentAccess/Calc" number -1024
		end if
		
		
		-- generate record based on access type	
		if accessType is equal to "view" then
			return {viewAccess:access of updateRec, viewCalc:calc of updateRec}
		else if accessType is equal to "edit" then
			return {editAccess:access of updateRec, editCalc:calc of updateRec}
		else if accessType is equal to "create" then
			return {createAccess:access of updateRec, createCalc:calc of updateRec}
		else if accessType is equal to "delete" then
			return {deleteAccess:access of updateRec, deleteCalc:calc of updateRec}
		else
			error "accessType '" & accessType & "' is not a valid" number -1024
		end if
		
		
	on error errMsg number errNum
		error "unable to fmGUI_ManageSecurity_PrivSet_Update_DictAccessType - " & errMsg number errNum
	end try
end fmGUI_ManageSecurity_PrivSet_Update_DictAccessType

--------------------
-- END OF CODE
--------------------

on removeAllWhitespace(prefs)
	tell application "fmGuiLib" to removeAllWhitespace(prefs)
end removeAllWhitespace
