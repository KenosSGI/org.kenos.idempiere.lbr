SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de abr de 2022 14:32:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123394,0,0,'Y',TO_DATE('2022-04-19 14:32:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-19 14:32:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsUnlockCredit','Unlock Credit','Unlock Credit','LBRA','b5b2171b-0df4-45f6-b694-47dea7827588')
;

-- 19 de abr de 2022 14:33:39 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120593,0,0,'Y',TO_DATE('2022-04-19 14:33:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-19 14:33:38','YYYY-MM-DD HH24:MI:SS'),100,'Unlock Credit',1120310,30,20,'N',0,'Y','N','LBR_IsUnlockCredit','Y','LBRA',1123394,'2f63de5a-6fc5-4d31-bd65-f7a234139cbb','N')
;

-- 19 de abr de 2022 14:33:39 BRT
SELECT Register_Migration_Script ('202204191434_CreditCheck_Param.sql') FROM DUAL
;