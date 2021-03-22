SET SQLBLANKLINES ON
SET DEFINE OFF

-- 22 de mar de 2021 11:58:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133510,0,'NFe Environment',1120461,'lbr_NFeEnv','1',1,'N','N','N','N','N',0,'N',17,1100001,0,0,'Y',TO_DATE('2021-03-22 11:58:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-22 11:58:05','YYYY-MM-DD HH24:MI:SS'),100,1100011,'N','N','LBRA','N','N','N','Y','3cc8ae04-ce7b-461c-bde6-208534b08d11','Y',0,'N','N','N','N')
;

-- 22 de mar de 2021 11:58:10 BRT
ALTER TABLE LBR_PartnerDFe ADD lbr_NFeEnv CHAR(1) DEFAULT '1'
;

-- 22 de mar de 2021 11:58:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131247,'Cancelled','The transaction was cancelled',1120197,1129814,'Y',1,220,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-22 11:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-22 11:58:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dda48535-5136-4ab1-a257-f0761ea41e03','Y',220,2,2)
;

-- 22 de mar de 2021 11:58:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131248,'NFe Environment',1120197,1133510,'Y',1,230,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-22 11:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-22 11:58:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','10e587b7-d43d-4789-9b2e-0db2b1b698d9','Y',230,2)
;

-- 22 de mar de 2021 12:01:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131248
;

-- 22 de mar de 2021 12:01:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125576
;

-- 22 de mar de 2021 12:01:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131247
;

-- 22 de mar de 2021 12:01:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128205
;

-- 22 de mar de 2021 12:01:37 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131247
;

-- 22 de mar de 2021 12:01:44 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128205
;

-- 22 de mar de 2021 12:01:49 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-22 12:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131248
;

-- 22 de mar de 2021 12:02:58 BRT
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_DATE('2021-03-22 12:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120512
;

-- 22 de mar de 2021 12:03:02 BRT
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2021-03-22 12:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120479
;

-- 22 de mar de 2021 12:04:15 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120547,0,0,'Y',TO_DATE('2021-03-22 12:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-22 12:04:15','YYYY-MM-DD HH24:MI:SS'),100,'NFe Environment',1120159,50,17,1100001,'N',0,'Y','1','lbr_NFeEnv','Y','LBRA',1100011,'8892e607-a3ae-4c8e-b6ec-392cb7cbc1fa','N')
;

