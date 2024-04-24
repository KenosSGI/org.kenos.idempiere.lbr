SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de abr de 2024 17:27:17 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120646,0,0,'Y',TO_DATE('2024-04-24 17:27:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-04-24 17:27:16','YYYY-MM-DD HH24:MI:SS'),100,'Redefine Tax',211,30,20,'N',0,'Y','Y','LBR_RedefineTax','Y','LBRA',1122428,'19bbf485-d01b-4120-94a5-95443f9b0e0b','N')
;

-- 24 de abr de 2024 17:27:17 BRT
SELECT Register_Migration_Script ('202404241728_RedefineTaxOnCopyFrom.sql') FROM DUAL
;

