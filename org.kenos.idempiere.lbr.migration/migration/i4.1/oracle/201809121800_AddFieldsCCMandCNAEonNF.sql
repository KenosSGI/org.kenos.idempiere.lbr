SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 12/09/2018 11h29min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130429,0,'CNAE','Classificação Nacional de Atividades Econômicas',1000027,'lbr_CNAE',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-09-12 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-12 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,1100020,'Y','N','LBRA','N','N','N','Y','84ff2ed0-65c1-4bd6-9138-735d182d94c6','Y',0,'N','N')
;

-- 12/09/2018 11h30min6s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_CNAE VARCHAR2(10) DEFAULT NULL 
;

-- 12/09/2018 11h39min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127495,'CNAE','Classificação Nacional de Atividades Econômicas',1000020,1130429,'Y',22,1067,'N','N','N','N',0,0,'Y',TO_DATE('2018-09-12 11:39:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-12 11:39:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','29ab8ced-c460-44b6-acaf-21b2be4a77e5','Y',3,1,1,'N','N','N')
;

-- 12/09/2018 11h41min27s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127496,'Tax Regime',1000028,1130283,'Y',22,950,'Y','N','N','N',0,0,'Y',TO_DATE('2018-09-12 11:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-12 11:41:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','29667311-cf6b-4c7b-9e0a-84199f7ee95f','N',0,1,1,1,'N','N','N')
;

-- 12/09/2018 11h41min52s BRT
UPDATE AD_Field SET SeqNo=901, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:41:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127496
;

-- 12/09/2018 11h42min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127498,'CNAE','Classificação Nacional de Atividades Econômicas',1000028,1130429,'Y',22,902,'Y','N','N','N',0,0,'Y',TO_DATE('2018-09-12 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-12 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120053,'LBRA','5d1bc8cf-324d-47b1-805a-c8fb23540f2e','N',0,3,1,1,'N','N','N')
;

-- 12/09/2018 11h46min31s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:46:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127495
;

-- 12/09/2018 11h47min14s BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_DATE('2018-09-12 11:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130430
;

-- 12/09/2018 11h47min33s BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_DATE('2018-09-12 11:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130429
;

-- 12/09/2018 11h51min23s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:51:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127367
;

-- 12/09/2018 11h51min39s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127495
;

-- 12/09/2018 11h51min55s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127496
;

-- 12/09/2018 11h52min3s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 11:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127498
;

-- 12/09/2018 14h17min17s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=902, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 14:17:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001108
;

-- 12/09/2018 14h17min22s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=1155, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-09-12 14:17:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001084
;

SELECT Register_Migration_Script ('201809121800_AddFieldsCCMandCNAEonNF.sql') FROM DUAL
;