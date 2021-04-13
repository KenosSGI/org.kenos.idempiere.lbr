SET SQLBLANKLINES ON
SET DEFINE OFF

-- 23 de mar de 2021 14:53:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123356,0,0,'Y',TO_DATE('2021-03-23 14:52:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-23 14:52:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DeletePaySchedule','Delete Pay Schedule',NULL,NULL,'Delete Pay Schedule','LBRA','32de7fd0-52f5-46c9-b2e2-25a85bf31ac3')
;

-- 23 de mar de 2021 14:54:19 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120548,0,0,'Y',TO_DATE('2021-03-23 14:54:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-23 14:54:18','YYYY-MM-DD HH24:MI:SS'),100,'Delete Pay Schedule',1120212,70,20,'N',1,'Y','Y','LBR_DeletePaySchedule','Y','LBRA',1123356,'bb152011-1fcf-47f7-b0f3-a5aee56485ab','N')
;

-- 23 de mar de 2021 14:54:19 BRT
SELECT Register_Migration_Script ('202103231500_ReProcessPaySchedule.sql') FROM DUAL
;

