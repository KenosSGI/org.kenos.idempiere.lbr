UPDATE AD_Column SET IsActive='N' WHERE AD_Column_ID=1000955
;

SELECT Register_Migration_Script ('202008181440_RemoveUnusedProcess.sql') FROM DUAL
;
