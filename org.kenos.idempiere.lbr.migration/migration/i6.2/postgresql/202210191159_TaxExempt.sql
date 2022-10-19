-- 3 de jun de 2022 11:42:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123395,0,0,'Y',TO_TIMESTAMP('2022-06-03 11:42:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-06-03 11:42:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxExemptAmt','Tax Exempt Amt','Tax Exempt Amt','LBRA','e0db3726-7090-41b1-ae09-97d2c2ff147c')
;

-- 3 de jun de 2022 11:43:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133774,0,'Tax Exempt Amt',1000035,'LBR_TaxExemptAmt','0',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2022-06-03 11:43:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-06-03 11:43:30','YYYY-MM-DD HH24:MI:SS'),100,1123395,'Y','N','LBRA','N','N','N','Y','db1559fe-fbb8-4934-95b6-c0a9835ce479','Y',0,'N','N','N','N')
;

-- 3 de jun de 2022 11:43:35 BRT
ALTER TABLE LBR_NFLineTax ADD COLUMN LBR_TaxExemptAmt NUMERIC DEFAULT '0' NOT NULL
;

-- 3 de jun de 2022 11:43:46 BRT
UPDATE AD_Table SET PO_Window_ID=1000019,Updated=TO_TIMESTAMP('2022-06-03 11:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000035
;

-- 3 de jun de 2022 11:44:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131722,'Tax Exempt Amt',1000031,1133774,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2022-06-03 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-06-03 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d3a13fa5-a344-41ad-8647-9d597c1e4e0d','Y',60,2)
;

-- 3 de jun de 2022 11:44:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131722
;

-- 3 de jun de 2022 11:44:21 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125773
;

-- 3 de jun de 2022 11:44:21 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125772
;

-- 3 de jun de 2022 11:44:21 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125775
;

-- 3 de jun de 2022 11:44:21 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:44:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000614
;

-- 3 de jun de 2022 11:44:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131723,'Tax Exempt Amt',1000027,1133774,'Y',10,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2022-06-03 11:44:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-06-03 11:44:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','58f60b53-e53a-4d2f-b212-705b8b994c07','Y',60,2)
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131723
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124960
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124959
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124961
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106069
;

-- 3 de jun de 2022 11:45:03 BRT
SELECT Register_Migration_Script ('202210191159_TaxExempt.sql') FROM DUAL
;

-- 3 de jun de 2022 11:45:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-06-03 11:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000491
;

