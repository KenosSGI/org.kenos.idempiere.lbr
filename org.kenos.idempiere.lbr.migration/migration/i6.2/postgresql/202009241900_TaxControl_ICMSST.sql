-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de set de 2020 19:04:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132574,0,'ICMSST',1120692,'ICMSST_TaxAmt','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-09-15 19:04:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-15 19:04:43','YYYY-MM-DD HH24:MI:SS'),100,1121879,'N','N','LBRA','N','N','N','Y','cd393716-b54d-4bf4-8669-4c309731ee22','Y',0,'N','N','N')
;

-- 15 de set de 2020 19:05:59 BRT
ALTER TABLE LBR_Product_Tax_Control ADD COLUMN ICMSST_TaxAmt NUMERIC DEFAULT '0' NOT NULL
;

-- 15 de set de 2020 19:06:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129948,'ICMSST',1120399,1132574,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-09-15 19:06:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-15 19:06:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120090,'U','ccdd24ed-7d67-472a-959e-c7e11d300726','Y',30,1,2,1,'N','N','N')
;

-- 15 de set de 2020 19:07:10 BRT
UPDATE AD_Field SET EntityType='LBRA', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-09-15 19:07:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129948
;

-- 15 de set de 2020 19:07:55 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-09-15 19:07:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129893
;

-- 15 de set de 2020 19:07:55 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-09-15 19:07:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129892
;

-- 15 de set de 2020 19:07:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-09-15 19:07:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129948
;

SELECT Register_Migration_Script ('202009241900_TaxControl_ICMSST.sql') FROM DUAL
;
