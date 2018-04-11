-- 15/02/2018 15h53min8s BRST
UPDATE AD_Column SET Callout=NULL WHERE AD_Column_ID=1129572
;

SELECT Register_Migration_Script ('201802151553_RemoveCalloutRMA.sql') FROM DUAL
;