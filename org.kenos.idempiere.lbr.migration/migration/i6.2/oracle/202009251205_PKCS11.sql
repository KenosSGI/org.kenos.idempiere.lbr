SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de set de 2020 18:29:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132575,0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1100000,'URL',120,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_DATE('2020-09-24 18:29:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-24 18:29:13','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','N','N','Y','1c9d47db-14e3-4033-8c22-b2c91d4ab728','Y',0,'N','N','N')
;

-- 24 de set de 2020 18:29:18 BRT
ALTER TABLE LBR_DigitalCertificate ADD URL VARCHAR2(120) DEFAULT NULL 
;

-- 24 de set de 2020 18:31:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122411,'PKCS#11 (Network)',1100000,'N11',0,0,'Y',TO_DATE('2020-09-24 18:31:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-24 18:31:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b13d4d11-d46f-4115-af26-7ceb7ddd3834')
;

-- 24 de set de 2020 18:32:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129949,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1100000,1132575,'Y',120,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-09-24 18:32:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-24 18:32:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4301d7c3-89ec-4071-9998-72b4a745d6c3','Y',140,5)
;

-- 24 de set de 2020 18:32:37 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129949
;

-- 24 de set de 2020 18:32:37 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100006
;

-- 24 de set de 2020 18:32:37 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100013
;

-- 24 de set de 2020 18:32:37 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100014
;

-- 24 de set de 2020 18:32:37 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100015
;

-- 24 de set de 2020 18:32:38 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126171
;

-- 24 de set de 2020 18:32:38 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126172
;

-- 24 de set de 2020 18:32:38 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127024
;

-- 24 de set de 2020 18:32:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:32:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100010
;

-- 24 de set de 2020 18:33:45 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_CertType@=''R11'' | @ lbr_CertType@=''N11''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:33:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129949
;

-- 24 de set de 2020 18:34:11 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_CertType@!''R11'' & @ lbr_CertType@!''N11''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:34:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100006
;

-- 24 de set de 2020 18:34:18 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, MandatoryLogic='@lbr_CertType@=''R11'' | @ lbr_CertType@=''N11''', IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129949
;

-- 24 de set de 2020 18:34:25 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_CertType@!''R11'' & @ lbr_CertType@!''N11''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:34:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100013
;

-- 24 de set de 2020 18:35:02 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2020-09-24 18:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100009
;

-- 24 de set de 2020 18:35:02 BRT
SELECT Register_Migration_Script ('202009251205_PKCS11.sql') FROM DUAL
;

