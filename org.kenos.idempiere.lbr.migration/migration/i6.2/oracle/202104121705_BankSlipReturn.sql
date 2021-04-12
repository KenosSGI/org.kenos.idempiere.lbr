SET SQLBLANKLINES ON
SET DEFINE OFF

-- 12 de abr de 2021 17:02:15 BRT
UPDATE AD_Process_Para SET IsActive='N', SeqNo=30, IsMandatory='N',Updated=TO_DATE('2021-04-12 17:02:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000006
;

-- 12 de abr de 2021 17:02:21 BRT
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2021-04-12 17:02:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000005
;

-- 12 de abr de 2021 17:04:17 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120568,0,0,'Y',TO_DATE('2021-04-12 17:04:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-12 17:04:16','YYYY-MM-DD HH24:MI:SS'),100,'Bank Slip Contract',1000002,10,19,'N',0,'Y','LBR_BankSlipContract_ID','Y','LBRA',1123147,'3e2e9610-ea53-427e-a387-7186942306e8','N')
;

-- 12 de abr de 2021 17:04:17 BRT
SELECT Register_Migration_Script ('202104121705_BankSlipReturn.sql') FROM DUAL
;

