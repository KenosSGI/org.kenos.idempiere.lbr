SET SQLBLANKLINES ON
SET DEFINE OFF

-- 9 de fev de 2024 11:10:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123024,'Distribute Equally',1120406,'=',0,0,'Y',TO_DATE('2024-02-09 11:10:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-09 11:10:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0ca848bb-dd34-4117-b9b8-6912d75b18ff')
;

-- 9 de fev de 2024 11:10:37 BRT
SELECT Register_Migration_Script ('202402091111_DiscountAppliedEqually.sql') FROM DUAL
;

