SET SQLBLANKLINES ON
SET DEFINE OFF

-- Adicionar valores padrões no processo Consultar Disponibilidade da SEFAZ
-- 14/08/2018 12h13min15s BRT
UPDATE AD_Process_Para SET DefaultValue='@#AD_Org_ID@',Updated=TO_DATE('2018-08-14 12:13:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120258
;

-- 14/08/2018 12h13min26s BRT
UPDATE AD_Process_Para SET DefaultValue='55',Updated=TO_DATE('2018-08-14 12:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120353
;

SELECT Register_Migration_Script ('201808141218_AddDefaultValueInProcStatus.sql') FROM DUAL
;

