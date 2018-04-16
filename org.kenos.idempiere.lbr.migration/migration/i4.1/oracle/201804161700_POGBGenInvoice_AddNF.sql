SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16/04/2018 16h34min57s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120409,0,0,'Y',TO_DATE('2018-04-16 16:34:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-16 16:34:57','YYYY-MM-DD HH24:MI:SS'),100,'Customer NF Number','Number of the Customer NF','Number of the Customer NF',1120198,10,10,'N',0,'N','lbr_NFEntrada','Y','LBRA',1000364,'ef862980-815a-47c5-b7c2-31b7f750edfe','N')
;

SELECT Register_Migration_Script ('201804161700_POGBGenInvoice_AddNF.sql') FROM DUAL
;