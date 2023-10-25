SET SQLBLANKLINES ON
SET DEFINE OFF

-- 25 de out de 2023 15:09:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123015,'Intercompany Invoice AR',1000043,'FAEE-',0,0,'Y',TO_DATE('2023-10-25 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-10-25 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d6131a1f-ec3b-40be-862c-f93f13c1c312')
;

-- 25 de out de 2023 15:09:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123016,'Intercompany Invoice AP',1000043,'FAEE+',0,0,'Y',TO_DATE('2023-10-25 15:09:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-10-25 15:09:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e7fbd284-7bef-47dc-b798-3d885467c8b0')
;

-- 25 de out de 2023 15:09:21 BRT
SELECT Register_Migration_Script ('202310251516_DocBaseLBR_Intercompany.sql') FROM DUAL
;