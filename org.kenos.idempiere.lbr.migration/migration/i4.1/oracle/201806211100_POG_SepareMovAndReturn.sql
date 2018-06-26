SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/06/2018 10h12min55s BRT
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=1120420
;

-- 21/06/2018 10h12min55s BRT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120420
;

-- 21/06/2018 10h18min21s BRT
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=1120422
;

-- 21/06/2018 10h18min21s BRT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120422
;

-- 21/06/2018 10h18min37s BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.base.process.POGReturnNotUsed',Updated=TO_DATE('2018-06-21 10:18:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120217
;

-- 21/06/2018 10h18min37s BRT
SELECT Register_Migration_Script ('201806211100_POG_SepareMovAndReturn.sql') FROM DUAL
;