SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 30/01/2018 18h14min8s BRST
UPDATE AD_Field SET SeqNo=34, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-30 18:14:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 30/01/2018 18h15min9s BRST
UPDATE AD_Column SET DefaultValue='@POReference@',Updated=TO_DATE('2018-01-30 18:15:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1125207
;

-- 30/01/2018 18h17min52s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1122437,0,0,'Y',TO_DATE('2018-01-30 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-30 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PORef_Item','Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document','Order Reference Item','LBRA','f7984ba1-b138-4e46-81be-41e176b9b025')
;

-- 30/01/2018 18h18min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130204,0,'Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document',260,'LBR_PORef_Item',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-01-30 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-30 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,1122437,'Y','N','LBRA','N','N','N','Y','41af4aaf-3d64-48eb-9911-5db63d357073','Y','N','N')
;

-- 30/01/2018 18h18min58s BRST
ALTER TABLE C_OrderLine ADD LBR_PORef_Item VARCHAR2(20) DEFAULT NULL 
;

-- 30/01/2018 18h22min7s BRST
UPDATE AD_Field SET SeqNo=161, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-30 18:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 30/01/2018 18h22min20s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127296,'Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document',187,1130204,'Y',0,20420,0,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-30 18:22:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-30 18:22:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','34142da5-2b5c-421d-a3a4-13b7569c0b17','Y',50,1,2,1,'N','N','N')
;

-- 30/01/2018 18h22min31s BRST
UPDATE AD_Field SET SeqNo=162, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-30 18:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

-- 30/01/2018 18h23min31s BRST
UPDATE AD_Field SET SeqNo=151, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-30 18:23:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 30/01/2018 18h23min40s BRST
UPDATE AD_Field SET SeqNo=152, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=60, IsToolbarButton=NULL,Updated=TO_DATE('2018-01-30 18:23:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

SELECT Register_Migration_Script ('201801301800_OrderLineXPedNItemPed.sql') FROM DUAL
;