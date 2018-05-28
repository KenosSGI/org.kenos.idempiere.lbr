SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 23/05/2018 16h6min45s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122472,0,0,'Y',TO_DATE('2018-05-23 16:06:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:06:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBPTConfiguration','IBPT Configuration','IBPT Configuration','LBRA','ecac81eb-614e-41c7-a7aa-ea6c4c61b86d')
;

-- 23/05/2018 16h7min44s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120268,'IBPT Configuration List','IBPT Configuration List','L',0,0,'Y',TO_DATE('2018-05-23 16:07:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:07:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','24736887-8314-4caf-9059-46e30c97a679')
;

-- 23/05/2018 16h10min27s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121839,'Import IBPT from API (Online)','Get the IBPT data from the internet API',1120268,'A',0,0,'Y',TO_DATE('2018-05-23 16:10:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:10:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a697fbe2-b905-4515-ba83-f7259473ff67')
;

-- 23/05/2018 16h12min4s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121840,'Import IBPT from CSV','Get the IBPT data from the CSV File',1120268,'C',0,0,'Y',TO_DATE('2018-05-23 16:12:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:12:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','163a4955-dd0d-4109-b0a7-a6b534d4350d')
;

-- 23/05/2018 16h19min14s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121841,'Real Tax Value','Calcule using Real Tax Value',1120268,'R',0,0,'Y',TO_DATE('2018-05-23 16:19:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:19:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','36e06ceb-9514-4ada-b2ad-ff2e3665a74e')
;

-- 23/05/2018 16h27min6s BRT
UPDATE AD_Reference SET Help='Choose one of the options
 - API (Online)
 - Offline (IBPT Table)
 - Real Tax Value',Updated=TO_DATE('2018-05-23 16:27:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120268
;

-- 23/05/2018 16h29min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130274,0,'IBPT Configuration',1120547,'LBR_IBPTConfiguration','C',1,'N','N','Y','N','N',0,'N',17,1120268,0,0,'Y',TO_DATE('2018-05-23 16:29:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:29:45','YYYY-MM-DD HH24:MI:SS'),100,1122472,'Y','N','LBRA','N','N','N','Y','592879c7-7f69-400c-800b-35562a410919','Y','N','N')
;

-- 23/05/2018 16h30min15s BRT
ALTER TABLE LBR_NFConfig ADD LBR_IBPTConfiguration CHAR(1) DEFAULT 'C' NOT NULL
;

-- 23/05/2018 16h30min34s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127345,'IBPT Configuration',1120216,1130274,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2018-05-23 16:30:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-23 16:30:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0502b532-fb9d-4dc2-b4e0-bb2ff0379c61','Y',100,2)
;

-- 25/05/2018 17h42min44s BRT
UPDATE AD_Ref_List SET Description='Calculate Total Tax of Nota Fiscal from API (Online) IBPT',Updated=TO_DATE('2018-05-25 17:42:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121839
;

-- 25/05/2018 17h46min46s BRT
UPDATE AD_Ref_List SET Name='API (Online)',Updated=TO_DATE('2018-05-25 17:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121839
;

-- 25/05/2018 17h49min3s BRT
UPDATE AD_Ref_List SET Name='Offline (IBPT Table)', Description='Calculate Total Tax of Nota Fiscal from IBPT Table.',Updated=TO_DATE('2018-05-25 17:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121840
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28/05/2018 15h40min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1122473,0,0,'Y',TO_DATE('2018-05-28 15:40:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-28 15:40:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBPT_API_Key','IBPT API Key','Key to Conect to IBPT API','IBPT API Key','LBRA','46296287-f942-4867-8978-0deff7205ffd')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28/05/2018 16h6min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130275,0,'IBPT API Key','Key to Conect to IBPT API',1120547,'LBR_IBPT_API_Key',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-05-28 16:06:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-28 16:06:38','YYYY-MM-DD HH24:MI:SS'),100,1122473,'Y','N','LBRA','N','N','N','Y','5b3a2554-2627-419f-8b7a-20228f2431cc','Y',0,'N','N')
;

-- 28/05/2018 16h7min29s BRT
ALTER TABLE LBR_NFConfig ADD LBR_IBPT_API_Key VARCHAR2(255) DEFAULT NULL 
;

-- 28/05/2018 16h9min2s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127362,'IBPT API Key','Key to Conect to IBPT API',1120216,1130275,'Y',0,110,0,'N','N','N','N',0,0,'Y',TO_DATE('2018-05-28 16:09:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-28 16:09:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2986d4a9-911d-4437-b2ab-612f5259d4d0','Y',110,4,2,1,'N','N','N')
;

-- 28/05/2018 16h10min53s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IBPTConfiguration@=A', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-05-28 16:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28/05/2018 16h46min4s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120411,0,0,'Y',TO_DATE('2018-05-28 16:46:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-28 16:46:04','YYYY-MM-DD HH24:MI:SS'),100,'IBPT API Key','Key to Conect to IBPT API',1120126,15,10,'N',0,'N','LBR_IBPT_API_Key','Y','LBRA',1122473,'2b57e6e8-abd3-4f6a-9d8a-b9159c277c7b','N')
;

-- 28/05/2018 16h46min32s BRT
UPDATE AD_Process_Para SET DisplayLogic='@OProcessing@=Y',Updated=TO_DATE('2018-05-28 16:46:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120411
;

-- 28/05/2018 16h53min28s BRT
UPDATE AD_Process_Para SET DisplayLogic='@OProcessing@=Y & @AD_Org_ID@ > 0',Updated=TO_DATE('2018-05-28 16:53:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120411
;

-- 28/05/2018 16h53min44s BRT
UPDATE AD_Process_Para SET FieldLength=255,Updated=TO_DATE('2018-05-28 16:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120411
;

-- 28/05/2018 16h56min36s BRT
UPDATE AD_Process_Para SET Updated=TO_DATE('2018-05-28 16:56:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120411
;

SELECT Register_Migration_Script ('201805281800_IBPTConfiguration.sql') FROM DUAL
;