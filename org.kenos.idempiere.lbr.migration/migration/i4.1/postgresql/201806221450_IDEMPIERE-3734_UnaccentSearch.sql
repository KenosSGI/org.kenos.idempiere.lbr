CREATE EXTENSION UNACCENT
;

CREATE OR REPLACE FUNCTION "adempiere"."unaccent_upper" (varchar) RETURNS varchar AS
'
BEGIN
	RETURN upper (unaccent ($1));
END
'
LANGUAGE 'plpgsql'
;

-- 22/06/2018 15h53min3s BRT
SELECT Register_Migration_Script ('201806221450_IDEMPIERE-3734_UnaccentSearch.sql') FROM DUAL
;