-- 1 de abr de 2021 13:59:49 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120549,0,0,'Y',TO_TIMESTAMP('2021-04-01 13:59:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-01 13:59:48','YYYY-MM-DD HH24:MI:SS'),100,'Is Own Document','Identifies this is an own document','Identifies this is an own document',1120245,25,20,'N',1,'N','@IsSOTrx@','lbr_IsOwnDocument','Y','LBRA',1000256,'5668370c-e6c7-4f5b-8fcb-d5e46b366acb','N')
;

-- 1 de abr de 2021 14:00:48 BRT
UPDATE AD_Process_Para SET DisplayLogic='@lbr_IsOwnDocument@=Y',Updated=TO_TIMESTAMP('2021-04-01 14:00:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120504
;

-- 1 de abr de 2021 14:01:45 BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@IsSOTrx@=Y',Updated=TO_TIMESTAMP('2021-04-01 14:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120549
;

-- 1 de abr de 2021 14:05:14 BRT
UPDATE AD_Process_Para SET DisplayLogic='@lbr_IsOwnDocument@=N',MandatoryLogic='@lbr_IsOwnDocument@=N',Updated=TO_TIMESTAMP('2021-04-01 14:05:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120504
;

-- 1 de abr de 2021 14:05:14 BRT
SELECT Register_Migration_Script ('202104011407_OwnDocOtherNF.sql') FROM DUAL
;