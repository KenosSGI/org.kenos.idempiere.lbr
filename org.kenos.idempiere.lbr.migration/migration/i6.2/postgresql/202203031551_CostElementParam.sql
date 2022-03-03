-- 3 de mar de 2022 15:32:09 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120590,0,0,'Y',TO_TIMESTAMP('2022-03-03 15:32:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-03-03 15:32:07','YYYY-MM-DD HH24:MI:SS'),100,'Cost Element','Product Cost Element',1120155,10,19,'N',10,'Y','M_CostElement_ID','Y','LBRA',2700,'66a9fc7d-150f-4afc-a83b-e298f03bf59e','N')
;

-- 3 de mar de 2022 15:34:47 BRT
UPDATE AD_Process SET ShowHelp='Y',Updated=TO_TIMESTAMP('2022-03-03 15:34:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120155
;

-- 3 de mar de 2022 15:34:47 BRT
SELECT Register_Migration_Script ('202203031551_CostElementParam.sql') FROM DUAL
;

