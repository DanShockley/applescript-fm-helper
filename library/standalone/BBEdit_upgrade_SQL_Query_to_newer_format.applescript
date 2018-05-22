-- BBEdit_upgrade_SQL_Query_to_newer_format({})
-- Dan Shockley, NYHTC
-- BBEdit - upgrade SQL Query to newer format

(*
HISTORY:
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

on BBEdit_upgrade_SQL_Query_to_newer_format({})
	
	set regexSearch_SQL_Table to "Quote *\\( *TableNameOfField *\\( *([^\\)]+) *\\) *\\)"
	set regexReplace_SQL_Table to "SQL_Table ( \\1 )"
	
	set regexSearch_SQL_Field to "Quote *\\( ?FieldNameShort *\\( *([^\\)]+) *\\) *\\)"
	set regexReplace_SQL_Field to "SQL_Field ( \\1 )"
	
	
	
	set regexSearch_WhereEqualsClause to "^([\\t ]*)& *SQL_Field *\\( *([^\\)]+) *\\) 
[\\t ]*& \" *= *\" 
[\\t ]*& ([^\\r]+)\\r"
	
	set regexReplace_WhereEqualsClause to "\\1\\& SQL_Where ( \\2 ; \"=\" ; \\3 )\\r"
	
	
	set regexSearch_EscapeStringWARN to "SQL_EscapeString *\\( *([^\\)]+) *\\)"
	
	set regexReplace_EscapeStringWARN to "\\1 /* WARNING!! Had SQL_EscapeString probably NO LONGER NEEDED, so DISABLED! */"
	
	
	tell application "BBEdit"
		activate
		
		tell window 1
			
			replace regexSearch_SQL_Table using regexReplace_SQL_Table options {search mode:grep, starting at top:true}
			
			replace regexSearch_SQL_Field using regexReplace_SQL_Field options {search mode:grep, starting at top:true}
			
			replace regexSearch_WhereEqualsClause using regexReplace_WhereEqualsClause options {search mode:grep, starting at top:true}
			replace regexSearch_EscapeStringWARN using regexReplace_EscapeStringWARN options {search mode:grep, starting at top:true}
			
			
			try
				(* convert to using List ( ) for whitespace formatting of query: *)
				set stringStartQuery to "; sqlQuery = "
				set stringEndQuery to "^([\\t]+); sqlResult = "
				set posQueryStart to characterOffset of found object of (find stringStartQuery)
				set posQueryEnd to (characterOffset of found object of (find stringEndQuery options {search mode:grep})) - 1
				select (characters posQueryStart through posQueryEnd)
				
				
				replace "\"SELECT" using "List ( \\r\\t\\t  \"SELECT" searching in selection options {search mode:grep}
				replace "^([\\t]+)& " using "\\t\\t; " searching in selection options {search mode:grep}
				
				set character posQueryEnd to return & tab & tab & ")" & (contents of character posQueryEnd)
				
			end try
			
		end tell
		
	end tell
	
	
end BBEdit_upgrade_SQL_Query_to_newer_format

--------------------
-- END OF CODE
--------------------
