SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10/05/2018 17h44min47s BRT
UPDATE AD_Process_Para SET DefaultValue='@AD_Org_ID@',Updated=TO_DATE('2018-05-10 17:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120368
;

-- 10/05/2018 17h45min0s BRT
UPDATE AD_Process_Para SET DefaultValue='@M_Movement_ID@',Updated=TO_DATE('2018-05-10 17:45:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120373
;

SELECT Register_Migration_Script ('201805101800_GenerateNF_DefaultValue.sql') FROM DUAL
;