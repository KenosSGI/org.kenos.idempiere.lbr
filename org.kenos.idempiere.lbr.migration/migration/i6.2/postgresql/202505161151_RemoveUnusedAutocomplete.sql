UPDATE AD_Column SET IsAutocomplete='N' WHERE IsAutocomplete='Y' AND AD_Column_ID IN (1130247,1000514)
;

SELECT Register_Migration_Script ('202505161151_RemoveUnusedAutocomplete.sql') FROM DUAL
;
