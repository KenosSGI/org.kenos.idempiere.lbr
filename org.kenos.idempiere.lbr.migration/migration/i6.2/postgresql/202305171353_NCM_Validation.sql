-- 17 de mai de 2023 14:50:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133805,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1000009,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2023-05-17 14:50:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-05-17 14:50:42','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','66dff289-dc78-4593-859b-237dbb49ec3a','Y',0,'N','N','N')
;

-- 17 de mai de 2023 14:50:45 BRT
ALTER TABLE LBR_NCM ADD COLUMN ValidFrom TIMESTAMP DEFAULT NULL 
;

-- 17 de mai de 2023 14:50:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133806,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1000009,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2023-05-17 14:50:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-05-17 14:50:53','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','6031da28-0367-432f-82ff-e439cc745354','Y',0,'N','N','N')
;

-- 17 de mai de 2023 14:50:56 BRT
ALTER TABLE LBR_NCM ADD COLUMN ValidTo TIMESTAMP DEFAULT NULL 
;

-- 17 de mai de 2023 14:51:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131761,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1000004,1133805,'Y',7,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2023-05-17 14:51:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-05-17 14:51:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b3496fcd-e135-44b2-b66f-239a3c45d377','Y',100,2)
;

-- 17 de mai de 2023 14:51:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131762,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1000004,1133806,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2023-05-17 14:51:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-05-17 14:51:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6d17925d-66b4-454b-9486-ef47475c1d12','Y',110,2)
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000067
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000069
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131761
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131762
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000276
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106074
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131721
;

-- 17 de mai de 2023 14:52:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-05-17 14:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131758
;

-- 17 de mai de 2023 14:52:21 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2023-05-17 14:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133773
;

-- 17 de mai de 2023 15:00:42 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2023-05-17 15:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120603
;

-- 17 de mai de 2023 15:02:03 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120626,0,0,'Y',TO_TIMESTAMP('2023-05-17 15:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-05-17 15:02:02','YYYY-MM-DD HH24:MI:SS'),100,'Delete old/existing records','Otherwise records will be added',1120314,30,20,'N',1,'Y','Y','DeleteOld','Y','U',1669,'eb6faa58-d2dd-49ab-b40b-e0b977d9c515','N')
;

-- 17 de mai de 2023 16:14:03 BRT
UPDATE AD_Column SET FieldLength=2048, SeqNoSelection=10,Updated=TO_DATE('2023-05-17 16:14:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000248
;

-- 17 de mai de 2023 16:14:04 BRT
ALTER TABLE LBR_NCM MODIFY Description VARCHAR2(2048) DEFAULT NULL
;

-- 17 de mai de 2023 14:52:21 BRT
SELECT Register_Migration_Script ('202305171353_NCM_Validation.sql') FROM DUAL
;