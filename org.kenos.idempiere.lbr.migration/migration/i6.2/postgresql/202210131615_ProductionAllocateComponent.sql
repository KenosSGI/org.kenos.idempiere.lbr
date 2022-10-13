-- 13 de out de 2022 16:11:09 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120617,0,0,'Y',TO_TIMESTAMP('2022-10-13 16:11:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-10-13 16:11:09','YYYY-MM-DD HH24:MI:SS'),100,'Create Allocation',53226,100,20,'N',0,'Y','N','IsCreateAllocation','Y','LBRA',203347,'a6063e07-4824-47ab-bef7-ce9f3675432d','N')
;

-- 13 de out de 2022 16:12:13 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic) VALUES (1120618,0,0,'Y',TO_TIMESTAMP('2022-10-13 16:12:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-10-13 16:12:12','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',53226,110,18,197,'N',189,0,'N','M_Warehouse_ID','Y','LBRA',459,'@IsCreateAllocation@=Y','4f4115e0-68e3-499c-9723-55382e3c5f2d','N','@IsCreateAllocation@=Y')
;

-- 13 de out de 2022 16:12:13 BRT
SELECT Register_Migration_Script ('202210131615_ProductionAllocateComponent.sql') FROM DUAL
;

