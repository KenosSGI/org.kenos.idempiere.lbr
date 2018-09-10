SET SQLBLANKLINES ON
SET DEFINE OFF

-- Criado uma lógica de visualização para não mostrar o campo Diretório no processo de Exportar XML da NF-e
-- 31/08/2018 15h38min30s BRT
UPDATE AD_Process_Para SET DisplayLogic='@#UIClient@!zk',Updated=TO_DATE('2018-08-28 15:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120220
;

SELECT Register_Migration_Script ('201808311519_DontShowFileDirInZK.sql') FROM DUAL
;
