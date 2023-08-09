-- 9 de ago de 2023 11:57:44 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120402,'Export Extension','L',0,0,'Y',TO_TIMESTAMP('2023-08-09 11:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-08-09 11:57:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','17305b93-e414-4ea9-9b87-5fb4cbdb94c6')
;

-- 9 de ago de 2023 11:58:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123013,'CSV',1120402,'csv',0,0,'Y',TO_TIMESTAMP('2023-08-09 11:58:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-08-09 11:58:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5901e14f-a1dc-4578-8363-dd845f7b5d1c')
;

-- 9 de ago de 2023 11:58:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123014,'SSV',1120402,'ssv',0,0,'Y',TO_TIMESTAMP('2023-08-09 11:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-08-09 11:58:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d4f04b1a-335b-477a-94ae-c39874f7b1db')
;

-- 9 de ago de 2023 11:58:38 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120635,0,0,'Y',TO_TIMESTAMP('2023-08-09 11:58:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-08-09 11:58:37','YYYY-MM-DD HH24:MI:SS'),100,'Suffix','Suffix after the number','The Suffix indicates the characters to append to the document number.',200076,40,17,1120402,'N',0,'N','Suffix','Y','LBRA',579,'478d5af8-5741-4962-8c5e-c27821e96ff2','N')
;

-- 9 de ago de 2023 11:58:38 BRT
SELECT Register_Migration_Script ('202308091206_SSVImport.sql') FROM DUAL
;

