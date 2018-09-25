-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 17/09/2018 18h8min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130450,0,'Fantasia',1000027,'lbr_Fantasia',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-09-17 18:08:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-17 18:08:59','YYYY-MM-DD HH24:MI:SS'),100,1000653,'Y','N','LBRA','N','N','N','Y','704f92f7-2197-4c9a-994e-a514b6d24277','Y',0,'N','N')
;

-- 17/09/2018 18h9min23s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_Fantasia VARCHAR(255) DEFAULT NULL 
;

-- 17/09/2018 18h11min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130451,0,'Tax ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',1000027,'TaxID',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-09-17 18:11:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-17 18:11:03','YYYY-MM-DD HH24:MI:SS'),100,590,'N','N','LBRA','N','N','N','Y','f02d65c4-f2ee-46f5-9db2-222fc272d8db','Y',0,'N','N')
;

-- 17/09/2018 18h11min27s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN TaxID VARCHAR(20) DEFAULT NULL 
;

-- 19/09/2018 17h46min41s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127500,'Fantasia',1000020,1130450,'Y',NULL,60,931,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-19 17:46:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 17:46:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','99bf72c7-964a-44f7-b3c4-ffd8c2ba21d9','N',0,1,5,1,'N','N','N')
;

-- 19/09/2018 17h50min35s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127501,'Tax ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',1000020,1130451,'Y',22,1068,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-19 17:50:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 17:50:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','d54d5598-369e-40b5-bcd2-e5ab523ae842','Y',4,2,1,'N','N','N')
;

-- 19/09/2018 17h55min24s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127502,'Fantasia',1000028,1130450,'Y',60,771,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-19 17:55:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 17:55:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','c7884aec-50b6-4b85-bd4f-2df0c7c67219','N',0,1,5,1,'N','N','N')
;

-- 19/09/2018 17h56min40s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127503,'Tax ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',1000028,1130451,'Y',22,903,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-19 17:56:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 17:56:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','2cb5cb06-3136-48a4-8334-b2d5f856984f','N',0,1,2,1,'N','N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 24/09/2018 18h45min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130471,0,'Country Code','Country Code used for issue Nota Fiscal','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)',1000027,'lbr_CountryCode',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-09-24 18:45:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-24 18:45:28','YYYY-MM-DD HH24:MI:SS'),100,1100058,'Y','N','LBRA','N','N','N','Y','f68a175b-bf7b-4bd4-a701-7e559551a951','Y',0,'N','N')
;

-- 24/09/2018 18h45min38s BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-09-24 18:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130471
;

-- 24/09/2018 18h45min44s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_CountryCode VARCHAR(5) DEFAULT NULL 
;

SELECT Register_Migration_Script ('201809241800_AddColumnLBRNotaFiscal.sql') FROM DUAL
;