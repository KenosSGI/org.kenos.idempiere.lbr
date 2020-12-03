-- 3 de dez de 2020 10:03:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132770,0,'Nota Fiscal Description','Description Printed on Nota Fiscal','Description Printed on Nota Fiscal',318,'lbr_NFDescription',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-12-03 10:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-03 10:03:47','YYYY-MM-DD HH24:MI:SS'),100,1000229,'Y','N','LBRA','N','N','N','Y','7c012128-b7c3-47e4-acfa-7cba37d9df76','Y',0,'N','N','N')
;

-- 3 de dez de 2020 10:03:50 BRT
ALTER TABLE C_Invoice ADD COLUMN lbr_NFDescription VARCHAR(255) DEFAULT NULL 
;

-- 3 de dez de 2020 10:04:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130098,'Nota Fiscal Description','Description Printed on Nota Fiscal','Description Printed on Nota Fiscal',263,1132770,'N',0,20560,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-03 10:04:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-03 10:04:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0f458af6-d7f4-4b59-8259-fa40de0a6388','Y',460,1,1,1,'N','N','N')
;

-- 3 de dez de 2020 10:04:22 BRT
SELECT Register_Migration_Script ('202012031008_NFDescOnInvoice.sql') FROM DUAL
;

