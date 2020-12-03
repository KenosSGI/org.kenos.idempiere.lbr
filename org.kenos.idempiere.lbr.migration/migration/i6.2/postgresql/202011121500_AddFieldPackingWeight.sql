-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 11 de nov de 2020 16:52:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123229,0,0,'Y',TO_TIMESTAMP('2020-11-11 16:52:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-11-11 16:52:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PackingWeight','Packing Weight','Weight of the product''s Packing','The Packing Weight indicates the weight  of the product''s Packing in the Weight UOM of the Client','Packing Weight','LBRA','257dca22-bf84-4bfa-8aea-99f130048f5b')
;

-- 11 de nov de 2020 16:53:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132768,0,'Packing Weight','Weight of the product''s Packing','The Packing Weight indicates the weight  of the product''s Packing in the Weight UOM of the Client',208,'LBR_PackingWeight',131089,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2020-11-11 16:53:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-11-11 16:53:10','YYYY-MM-DD HH24:MI:SS'),100,1123229,'N','N','LBRA','N','N','N','Y','1620ae0d-da3b-40c8-a5c3-efe9bbc0ee74','Y',0,'N','N','N')
;

-- 11 de nov de 2020 16:54:15 BRT
UPDATE AD_Column SET IsUpdateable = 'Y', DefaultValue='0',Updated=TO_TIMESTAMP('2020-11-11 16:54:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132768
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 11 de nov de 2020 18:11:45 BRT
UPDATE AD_Column SET FieldLength=22, AD_Reference_ID=12,Updated=TO_TIMESTAMP('2020-11-11 18:11:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132768
;

-- 11 de nov de 2020 16:54:31 BRT
ALTER TABLE M_Product ADD COLUMN LBR_PackingWeight NUMERIC DEFAULT 0
;

-- 11 de nov de 2020 17:07:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130096,'Packing Weight','Weight of the product''s Packing','The Packing Weight indicates the weight  of the product''s Packing in the Weight UOM of the Client',180,1132768,'Y',NULL,1,231,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-11-11 17:07:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-11-11 17:07:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3c0364f-4633-4732-a215-22efd57d58b6','N',0,4,2,1,'N','N','N')
;

-- 11 de nov de 2020 17:08:19 BRT
UPDATE AD_Field SET SeqNo=201, DisplayLogic='@IsSummary@=''N'' & @ProductType@=I', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-11-11 17:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130096
;

SELECT Register_Migration_Script ('202011121500_AddFieldPackingWeight.sql') FROM DUAL
;