-- DF-e Unavailable Download Flag
-- 28/09/2018 11h15min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130473,0,'NFe Status','Status of NFe',1120461,'lbr_NFeStatus',3,'N','N','N','N','N',0,'N',17,1100004,0,0,'Y',TO_TIMESTAMP('2018-09-28 11:15:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-28 11:15:21','YYYY-MM-DD HH24:MI:SS'),100,1100018,'N','N','LBRA','N','N','N','Y','8879f3d1-626e-4826-9419-81ae420a0853','Y',0,'N','N')
;

-- 28/09/2018 11h17min13s BRT
ALTER TABLE LBR_PartnerDFe ADD COLUMN lbr_NFeStatus VARCHAR(3) DEFAULT NULL 
;

-- 28/09/2018 11h17min39s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127507,'NFe Status','Status of NFe',1120197,1130473,'Y',3,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-28 11:17:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-28 11:17:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','58aea036-92fc-4cd6-a3b9-6cc20b11908b','Y',210,2)
;

-- 28/09/2018 11h18min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-28 11:18:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127507
;

-- 28/09/2018 11h18min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-28 11:18:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125576
;

-- 28/09/2018 11h18min8s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-28 11:18:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125541
;

-- 28/09/2018 11h18min8s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-28 11:18:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125513
;

-- 28/09/2018 11h18min20s BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-28 11:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127507
;

SELECT Register_Migration_Script ('201809281142_DownloadXMLStatus.sql') FROM DUAL
;
