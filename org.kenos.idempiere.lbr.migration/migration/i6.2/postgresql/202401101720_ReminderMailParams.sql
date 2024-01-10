-- 10 de jan de 2024 17:15:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120639,0,0,'Y',TO_TIMESTAMP('2024-01-10 17:15:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-01-10 17:15:24','YYYY-MM-DD HH24:MI:SS'),100,'EMail Address','Electronic Mail Address','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.',1120327,40,10,'N',0,'N','EMail','Y','U',881,'58236b29-3956-4d4f-b1ef-5a89660b0210','N')
;

-- 10 de jan de 2024 17:16:05 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted) VALUES (1120640,0,0,'Y',TO_TIMESTAMP('2024-01-10 17:16:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-01-10 17:16:05','YYYY-MM-DD HH24:MI:SS'),100,'Include Attachment',1120327,50,20,'N',0,'N','Y','LBR_IncludeAttachment','N','LBRA','0b4ceeeb-884b-4c7c-bca9-4e49c4efb6ce','N')
;

-- 10 de jan de 2024 17:16:05 BRT
SELECT Register_Migration_Script ('202401101720_ReminderMailParams.sql') FROM DUAL
;

