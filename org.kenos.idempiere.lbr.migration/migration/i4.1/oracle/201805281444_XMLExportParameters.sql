SET SQLBLANKLINES ON
SET DEFINE OFF

-- Parâmetros na exportação de XML
-- 28/05/2018 14h16min33s BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2018-05-28 14:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120219
;

-- 28/05/2018 14h16min43s BRT
UPDATE AD_Process_Para SET SeqNo=8,Updated=TO_DATE('2018-05-28 14:16:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120227
;

-- 28/05/2018 14h16min51s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2018-05-28 14:16:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120227
;

-- 28/05/2018 14h17min3s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2018-05-28 14:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120228
;

-- 28/05/2018 14h17min10s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2018-05-28 14:17:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120232
;

-- 28/05/2018 14h17min16s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2018-05-28 14:17:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120233
;

-- 28/05/2018 14h17min27s BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=319,DefaultValue='Y',Updated=TO_DATE('2018-05-28 14:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120234
;

-- 28/05/2018 14h18min37s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120410,0,0,'Y',TO_DATE('2018-05-28 14:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-28 14:18:37','YYYY-MM-DD HH24:MI:SS'),100,'NF de Saída',1120163,40,17,319,'N',0,'N','IsSOTrx','N','LBRA',1106,'67ebb474-78fd-4cef-8bf6-131b8786640e','N')
;

SELECT Register_Migration_Script ('201805281444_XMLExportParameters.sql') FROM DUAL
;