SET SQLBLANKLINES ON
SET DEFINE OFF

-- 17 de jun de 2024 12:11:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133958,0,'Process Now',1120764,'Processing','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2024-06-17 12:11:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:11:17','YYYY-MM-DD HH24:MI:SS'),100,524,'Y','N','LBRA','N','N','N','Y','248f7fd3-e439-4b30-9c6a-a507d580a652','N',0,'N','N','N')
;

-- 17 de jun de 2024 12:11:21 BRT
ALTER TABLE LBR_ProofOfDelivery ADD Processing CHAR(1) DEFAULT 'N' CHECK (Processing IN ('Y','N')) NOT NULL
;

-- 17 de jun de 2024 12:12:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133959,0,'Tax ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',1120764,'TaxID',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-06-17 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,590,'Y','N','LBRA','N','N','N','Y','221e3e79-c9ec-4b77-973e-0416ea3b1b90','Y',0,'N','N','N')
;

-- 17 de jun de 2024 12:12:15 BRT
ALTER TABLE LBR_ProofOfDelivery ADD TaxID VARCHAR2(20) DEFAULT NULL 
;

-- 17 de jun de 2024 12:12:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131942,'Process Now',1120520,1133958,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-17 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:12:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37acce52-be29-4c9a-8501-6f292a755ce4','Y',150,2,2)
;

-- 17 de jun de 2024 12:12:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131943,'Tax ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',1120520,1133959,'Y',20,160,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-17 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:12:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d372e131-22a6-4f96-9027-d7ed0139e4c6','Y',160,2)
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131943
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 17 de jun de 2024 12:12:58 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131942
;

-- 17 de jun de 2024 12:13:25 BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 17 de jun de 2024 12:13:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123415,0,0,'Y',TO_DATE('2024-06-17 12:13:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:13:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DocumentSigned','Document Signed',NULL,NULL,'Document Signed','U','df8aa43d-0aba-4be6-b24c-6765f8049061')
;

-- 17 de jun de 2024 12:14:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133960,0,'Document Signed',1120764,'LBR_DocumentSigned','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2024-06-17 12:14:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:14:24','YYYY-MM-DD HH24:MI:SS'),100,1123415,'Y','N','LBRA','N','N','N','Y','0b0945fe-9079-45c6-843c-2cfbb9d48f09','Y',0,'N','N','N','N')
;

-- 17 de jun de 2024 12:14:27 BRT
ALTER TABLE LBR_ProofOfDelivery ADD LBR_DocumentSigned CHAR(1) DEFAULT 'N' CHECK (LBR_DocumentSigned IN ('Y','N')) NOT NULL
;

-- 17 de jun de 2024 12:14:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131944,'Document Signed',1120520,1133960,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-17 12:14:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-17 12:14:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','00cfef11-d396-44fc-90a0-473363d1d317','Y',170,2,2)
;

-- 17 de jun de 2024 12:15:35 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131940
;

-- 17 de jun de 2024 12:15:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131944
;

-- 17 de jun de 2024 12:15:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 17 de jun de 2024 12:15:35 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-17 12:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131942
;

-- 17 de jun de 2024 12:16:21 BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2024-06-17 12:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123415
;

-- 17 de jun de 2024 12:16:21 BRT
SELECT Register_Migration_Script ('202406112117_ProofOfDelivery.sql') FROM DUAL
;

