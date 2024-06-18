-- 18 de jun de 2024 14:45:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133961,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120764,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2024-06-18 14:45:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:45:21','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','0869b885-8cc7-4f50-9afd-40039d23f034','Y',30,'N','N','N')
;

-- 18 de jun de 2024 14:45:24 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 18 de jun de 2024 14:45:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131945,'Description','Optional short description of the record','A description is limited to 255 characters.',1120520,1133961,'Y',255,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:45:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:45:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5ff42922-2aaf-4cf3-92d8-c5bb18fc50b9','Y',180,5)
;

-- 18 de jun de 2024 14:45:58 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-18 14:45:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131945
;

-- 18 de jun de 2024 14:46:32 BRT
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2024-06-18 14:46:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133923
;

-- 18 de jun de 2024 14:46:55 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120408,'LBR_NotaFiscal IsDelivered','L',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:46:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:46:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','4792b8c7-6cf9-4ce9-8b53-7375979daef2')
;

-- 18 de jun de 2024 14:47:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123035,'No',1120408,'N',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:47:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:47:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e76d78ef-1cd0-4f6f-bbbc-333462cc7a96')
;

-- 18 de jun de 2024 14:47:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123036,'Yes, with proof',1120408,'Y',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:47:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:47:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','41315d6d-83f0-41fa-bb2e-750a1da8334f')
;

-- 18 de jun de 2024 14:48:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123037,'Yes, with SeFaz protocol',1120408,'S',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:48:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:48:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c79bdb44-b679-48e5-a2ca-b849b2820cb1')
;

-- 18 de jun de 2024 14:48:36 BRT
UPDATE AD_Ref_List SET Name='Yes, with SeFaz protocol (CT-e or NF-e event)',Updated=TO_TIMESTAMP('2024-06-18 14:48:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123037
;

-- 18 de jun de 2024 14:49:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123038,'Yes, with no proof',1120408,'P',0,0,'Y',TO_TIMESTAMP('2024-06-18 14:49:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-18 14:49:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','118953e9-cf97-48b8-ba0f-32d5592c0f26')
;

-- 18 de jun de 2024 14:51:09 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120408,Updated=TO_TIMESTAMP('2024-06-18 14:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133923
;

-- 18 de jun de 2024 14:51:16 BRT
UPDATE AD_Reference SET Name='LBR_NotaFiscal - IsDelivered',Updated=TO_TIMESTAMP('2024-06-18 14:51:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120408
;

-- 18 de jun de 2024 14:51:35 BRT
INSERT INTO t_alter_column values('lbr_notafiscal','IsDelivered','CHAR(1)',null,'N')
;

-- 18 de jun de 2024 14:51:35 BRT
UPDATE LBR_NotaFiscal SET IsDelivered='N' WHERE IsDelivered IS NULL
;

-- 18 de jun de 2024 14:52:25 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-18 14:52:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131902
;

-- 18 de jun de 2024 14:53:08 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-18 14:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125372
;

-- 18 de jun de 2024 14:53:08 BRT
SELECT Register_Migration_Script ('202406181508_ChangeIsDeliveredField.sql') FROM DUAL
;

