-- 16 de out de 2020 17:59:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123218,0,0,'Y',TO_TIMESTAMP('2020-10-16 17:59:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-16 17:59:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ForceExec','Force Execution','Force Execution','LBRA','eb0a9a86-eabb-44ca-8073-7278a00442b9')
;

-- 16 de out de 2020 18:00:15 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120512,0,0,'Y',TO_TIMESTAMP('2020-10-16 18:00:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-16 18:00:15','YYYY-MM-DD HH24:MI:SS'),100,'Force Execution',1120159,30,20,'N',0,'N','N','LBR_ForceExec','Y','LBRA',1123218,'9e46b294-2249-44c7-9405-ba8a36d47ed9','N')
;

-- 16 de out de 2020 18:00:48 BRT
UPDATE AD_Column SET IsParent='Y', IsIdentifier='Y', SeqNo=1, IsUpdateable='N',Updated=TO_TIMESTAMP('2020-10-16 18:00:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132482
;

-- 16 de out de 2020 18:00:54 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2020-10-16 18:00:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132476
;

-- 16 de out de 2020 18:00:54 BRT
SELECT Register_Migration_Script ('202010161803_FixGetDFe.sql') FROM DUAL
;

