-- BBEdit_upgrade_SQL_Query_to_newer_format({})
-- Dan Shockley
-- BBEdit - upgrade SQL Query to newer format

(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.8 - 2020-02-20 ( dshockley ): Added ExtraSpacesWithinSQLWhere. 
	1.7 - 2019-04-25 ( dshockley ): Added error-trapping and handling. The param for the handler is now named prefs instead of accidentally being an empty list. Disabled potentially-problematic "convert to using List for query whitespace formatting" code! 
	1.6 - 2019-04-17 ( dshockley ): Added ExecuteOLD2. Added SemicolonPilcrowLine. 
	1.5 - 2019-04-05 ( dshockley ): Added literalSearch_SpacesToTabs. Fixed "using List for query". Other minor changes. Disabled RemoveExtraSpacesBeforeSemicolon. Added RemoveSpacesBetweenLeadingTabsAndSemicolon. 
	1.4 - 2019-01-02 ( dshockley ): Added ExecuteOLD, QuotedPilcrow, IfSqlResultOLD, queryDebugOLD. 
	1.3 - 2018-09-04 ( dshockley ): Added regex to remove extra spaces before semicolons. Fix for optional space at end of SQL_Field line in whereEqualsClause regex search. 
	1.2 - 2018-05-22 ( dshockley ): modified to also convert the query to use List to separate the components of the query. 
	1.1 - 2017-12-11 ( dshockley ): disable the usually no-longer-needed SQL_EscapeString, but WARN and comment, since it might sitll be needed when using with something OTHER THAN SQL_Where criteria. 
	1.0 - 2017-09-15 ( dshockley ): first created. 
*)


on run
	BBEdit_upgrade_SQL_Query_to_newer_format({})
end run

--------------------
-- START OF CODE
--------------------

on BBEdit_upgrade_SQL_Query_to_newer_format(prefs)
	-- version 2020-03-04-1535
	
	try
		
		set regexSearch_SQL_Table to "Quote *\\( *TableNameOfField *\\( *([^\\)]+) *\\) *\\)"
		set regexReplace_SQL_Table to "SQL_Table ( \\1 )"
		
		set regexSearch_SQL_Field to "Quote *\\( ?FieldNameShort *\\( *([^\\)]+) *\\) *\\)"
		set regexReplace_SQL_Field to "SQL_Field ( \\1 )"
		
		
		set regexSearch_WhereEqualsClause to "^([\\t ]*)& *SQL_Field *\\( *([^\\)]+) *\\) *\\r[\\t ]*& \" *([=<>²³­]+) *\" ?\\r[\\t ]*& ([^\\r\\n]+)\\r"
		
		set regexReplace_WhereEqualsClause to "\\1\\& SQL_Where ( \\2 ; \"\\3\" ; \\4 )\\r"
		
		
		set regexSearch_EscapeStringWARN to "SQL_EscapeString *\\( *([^\\)]+) *\\)"
		
		set regexReplace_EscapeStringWARN to "\\1 /* WARNING!! Had SQL_EscapeString probably NO LONGER NEEDED, so DISABLED! */"
		
		-- NOT SURE THIS IS NEEDED (or a good idea, since there might be matching DESIRED patterns inside quotes):		
		--	set regexSearch_RemoveExtraSpacesBeforeSemicolon to "([^;])  +;"
		--	set regexReplace_RemoveExtraSpacesBeforeSemicolon to "\\1 ;"
		
		
		set regexSearch_ExtraSpacesWithinSQLWhere to "([a-z0-9]) [ ]*; \"=\" ; ([^ ]+) [ ]*\\)"
		set regexReplace_ExtraSpacesWithinSQLWhere to "\\1 ; \"=\" ; \\2 )"
		
		set regexSearch_ExtraSpacesBeforeClosingParen to "([^ ]+) [ ]*\\)([ ]*)\\r"
		set regexReplace_ExtraSpacesBeforeClosingParen to "\\1 )\\2\\r"
		
		set regexSearch_RemoveSpacesBetweenLeadingTabsAndSemicolon to "^([	]+)[ ]+;"
		set regexReplace_RemoveSpacesBetweenLeadingTabsAndSemicolon to "\\1;"
		
		
		
		-- LITERAL SECTION:
		
		set literalSearch_SpacesToTabs to "       "
		set literalReplace_SpacesToTabs to ASCII character 9
		
		set literalSearch_ExecuteOLD1 to "sqlResult = ExecuteSQL ( sqlQuery; \";\"; \"¦\" )"
		set literalReplace_ExecuteOLD1 to "sqlResult = ExecuteSQL ( sqlQuery ; \";\" ; Char ( 13 ) )"
		
		set literalSearch_ExecuteOLD2 to "ExecuteSQL ( sqlQuery; Char ( 9 ); \"¦\" )"
		set literalReplace_ExecuteOLD2 to "ExecuteSQL ( sqlQuery ; Char ( 9 ) ; Char ( 13 ) )"
		
		
		set literalSearch_IfSqlResultOLD to "If ( sqlResult = \"?\"; \"\"; sqlResult )"
		set literalReplace_IfSqlResultOLD to "If ( sqlResult = \"?\" ; \"\" ; sqlResult )"
		
		set literalSearch_queryDebugOLD1 to "sqlQuery & \"¦==========¦¦\" &"
		set literalSearch_queryDebugOLD2 to "sqlQuery & \"¦==========¦\" &"
		set literalReplace_queryDebugOLD to "sqlQuery & Char ( 13 ) &  \"==========\" & Char ( 13 ) &" & return
		
		set literalSearch_QuotedPilcrow to "\"¦\""
		set literalReplace_QuotedPilcrow to "Char ( 13 )"
		
		
		
		
		-- FINAL CLEANUP REGEX:
		
		set regexSearch_SemicolonPilcrowLine to "^\\t+; ¦[ \\t]*\\r"
		set regexReplace_SemicolonPilcrowLine to ""
		
		
		tell application "BBEdit"
			activate
			delay 0.1 -- make sure script has time to start??
			
			tell window 1
				
				replace literalSearch_SpacesToTabs using literalReplace_SpacesToTabs options {search mode:literal, starting at top:true}
				
				replace regexSearch_SQL_Table using regexReplace_SQL_Table options {search mode:grep, starting at top:true}
				
				replace regexSearch_SQL_Field using regexReplace_SQL_Field options {search mode:grep, starting at top:true}
				
				replace regexSearch_WhereEqualsClause using regexReplace_WhereEqualsClause options {search mode:grep, starting at top:true}
				
				replace regexSearch_EscapeStringWARN using regexReplace_EscapeStringWARN options {search mode:grep, starting at top:true}
				
				replace regexSearch_RemoveSpacesBetweenLeadingTabsAndSemicolon using regexReplace_RemoveSpacesBetweenLeadingTabsAndSemicolon options {search mode:grep, starting at top:true}
				
				
				
				-- NOT SURE THIS IS NEEDED (or a good idea, since there might be matching DESIRED patterns inside quotes):			
				(*			replace regexSearch_RemoveExtraSpacesBeforeSemicolon using regexReplace_RemoveExtraSpacesBeforeSemicolon options {search mode:grep, starting at top:true}
				*)
				
				replace regexSearch_ExtraSpacesWithinSQLWhere using regexReplace_ExtraSpacesWithinSQLWhere options {search mode:grep, starting at top:true}

				replace regexSearch_ExtraSpacesBeforeClosingParen using regexReplace_ExtraSpacesBeforeClosingParen options {search mode:grep, starting at top:true}
				
				
				
				replace literalSearch_ExecuteOLD1 using literalReplace_ExecuteOLD1 options {search mode:literal, starting at top:true}
				replace literalSearch_ExecuteOLD2 using literalReplace_ExecuteOLD2 options {search mode:literal, starting at top:true}
				
				
				replace literalSearch_IfSqlResultOLD using literalReplace_IfSqlResultOLD options {search mode:literal, starting at top:true}
				replace literalSearch_queryDebugOLD1 using literalReplace_queryDebugOLD options {search mode:literal, starting at top:true}
				replace literalSearch_queryDebugOLD2 using literalReplace_queryDebugOLD options {search mode:literal, starting at top:true}
				replace literalSearch_QuotedPilcrow using literalReplace_QuotedPilcrow options {search mode:literal, starting at top:true}
				
				
				
				(* DISABLED, SINCE IT CAN MANGLE INTERNAL 'IF' blocks:
				EXAMPLE (the IF line SQL_Where gets put as the ELSE, instead of staying with " AND "!!!!): 
	; sqlQuery = 
		"SELECT " 
				& SQL_Field ( LR_LOCAL_REPORT::aLR__PrimaryKey ) 
				
			& " FROM " 
				& SQL_Table ( LR_LOCAL_REPORT::zAuto1 ) 
			
			& " WHERE " 
				& SQL_Where ( LR_LOCAL_REPORT::aLR_UID ; "=" ; UID ) 
			
			& " AND " 
				& SQL_Where ( LR_LOCAL_REPORT::aLR_LocalKey ; "=" ; localKey ) 
		
			& " AND " 
				& SQL_Where ( LR_LOCAL_REPORT::bLR_DateReportFor_Month1st ; ">=" ; dateMonthFor ) 
						
			& If ( not IsEmpty ( dateAcctPeriod )
				; " AND " 
					& SQL_Where ( LR_LOCAL_REPORT::bLR_DateAccountingPeriod_Month1st ; ">=" ; dateAcctPeriod ) 
				)

				
				try
					(* convert to using List for query whitespace formatting: *)
					set stringStartQuery to ";? ?sqlQuery = "
					set stringEndQuery to "^([\\t ]+); sqlResult = "
					set posQueryStart to characterOffset of found object of (find stringStartQuery options {search mode:grep, starting at top:true})
					set posQueryEnd to (characterOffset of found object of (find stringEndQuery options {search mode:grep, starting at top:true})) - 1
					select (characters posQueryStart through posQueryEnd)
					
					replace "\"SELECT" using "List ( \\r\\t\\t\\t  \"SELECT" searching in selection options {search mode:grep}
					replace "^([\\t ]+)& " using "\\t\\t\\t; " searching in selection options {search mode:grep}
					
					-- because changing the contents of the selection changes the position of the end, get the new end:
					set posQueryEnd_NEW to (characterOffset of selection) + (length of selection) - 1
					
					set character posQueryEnd_NEW to return & tab & tab & tab & ")" & (contents of character posQueryEnd_NEW) & return
					
				end try
				*)
				
				
				replace regexSearch_SemicolonPilcrowLine using regexReplace_SemicolonPilcrowLine options {search mode:grep, starting at top:true}
				
				
			end tell
			
		end tell
		
		
	on error errMsg number errNum
		tell application "BBEdit" to display dialog "Upgrade SQL Query: ERROR: " & errMsg & " - number: " & errNum
	end try
	
end BBEdit_upgrade_SQL_Query_to_newer_format

--------------------
-- END OF CODE
--------------------
