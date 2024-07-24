-- xor(firstBoolean, secondBoolean)
-- Erik Shagdar
-- perform an xor operation on 2 booleans

(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - 2017-10-17 ( eshagdar ): created
*)


on run
	xor(true, true)    -- returns false
	xor(true, false)    -- returns true
	xor(false, true)    -- returns true
	xor(false, false)    -- returns false
end run

--------------------
-- START OF CODE
--------------------

on xor(firstBoolean, secondBoolean)
	-- version 2020-03-04-1535
	try
		return (firstBoolean or secondBoolean) and (firstBoolean ­ secondBoolean)
	on error errMsg number errNum
		error "unable to xor - " & errMsg number errNum
	end try
end xor

--------------------
-- END OF CODE
--------------------
