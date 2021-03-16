SET SQLBLANKLINES ON
SET DEFINE OFF

-- 16 de mar de 2021 13:27:40 BRT
UPDATE AD_Table SET AD_Window_ID=140,Updated=TO_DATE('2021-03-16 13:27:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120692
;

-- 16 de mar de 2021 13:28:47 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1129893
;

-- 16 de mar de 2021 13:28:47 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1129893
;

-- 16 de mar de 2021 13:28:48 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1129892
;

-- 16 de mar de 2021 13:28:48 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1129892
;

-- 16 de mar de 2021 13:30:03 BRT
UPDATE AD_Table SET Name='Tax old', TableName='LBR_TaxHold',Updated=TO_DATE('2021-03-16 13:30:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120692
;

-- 16 de mar de 2021 13:30:04 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_TaxHold',1000000,'N','N','Table LBR_TaxHold','Y','Y',0,0,TO_DATE('2021-03-16 13:30:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:30:04','YYYY-MM-DD HH24:MI:SS'),100,1154012,'Y',1000000,1,200000,'709f6fda-54a8-4c60-b397-90bb0e99a74a')
;

-- 16 de mar de 2021 13:30:32 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132497
;

-- 16 de mar de 2021 13:30:32 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132497
;

-- 16 de mar de 2021 13:30:46 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132499
;

-- 16 de mar de 2021 13:30:46 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132499
;

-- 16 de mar de 2021 13:31:03 BRT
UPDATE AD_Element SET ColumnName='LBR_TaxHold_ID',Updated=TO_DATE('2021-03-16 13:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123187
;

-- 16 de mar de 2021 13:31:03 BRT
UPDATE AD_Column SET ColumnName='LBR_TaxHold_ID', Name='Tax Control', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123187
;

-- 16 de mar de 2021 13:31:03 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxHold_ID', Name='Tax Control', Description=NULL, Help=NULL, AD_Element_ID=1123187 WHERE UPPER(ColumnName)='LBR_TAXHOLD_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 13:31:03 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxHold_ID', Name='Tax Control', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123187 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:31:03 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_TaxHold_ID', Name='Tax Control', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123187 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_Element SET ColumnName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU', PrintName='LBR_TaxHold_UU',Updated=TO_DATE('2021-03-16 13:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123188
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_Column SET ColumnName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123188
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU', Description=NULL, Help=NULL, AD_Element_ID=1123188 WHERE UPPER(ColumnName)='LBR_TAXHOLD_UU' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123188 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123188 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_Field SET Name='LBR_TaxHold_UU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123188) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:31:24 BRT
UPDATE AD_PrintFormatItem SET PrintName='LBR_TaxHold_UU', Name='LBR_TaxHold_UU' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123188)
;

-- 16 de mar de 2021 13:32:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133349,0,'ICMSST Base',1120692,'ICMSST_TaxBaseAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:32:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:32:07','YYYY-MM-DD HH24:MI:SS'),100,1121876,'N','N','LBRA','N','N','N','Y','4a573e4a-5f10-473e-9746-ed1972b18360','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:32:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133350,0,'icmsst_taxrate',1120692,'icmsst_taxrate',22,'N','N','Y','N','N',0,'N',22,0,0,'Y',TO_DATE('2021-03-16 13:32:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:32:33','YYYY-MM-DD HH24:MI:SS'),100,1121878,'N','N','LBRA','N','N','N','Y','a8179f13-adf6-4e6f-a4cc-d1c4cb72c38f','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:32:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133351,0,'icms_taxrate',1120692,'icms_taxrate',22,'N','N','Y','N','N',0,'N',22,0,0,'Y',TO_DATE('2021-03-16 13:32:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:32:42','YYYY-MM-DD HH24:MI:SS'),100,1121863,'N','N','LBRA','N','N','N','Y','c37942f2-1b2e-424e-9a2e-b4df27c8f24a','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:33:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133352,0,'ICMS',1120692,'ICMS_TaxAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,1121864,'N','N','LBRA','N','N','N','Y','c5e49aa6-daae-4be0-9288-cbe56b732eeb','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:33:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133353,0,'ICMS Base',1120692,'ICMS_TaxBaseAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:33:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:33:16','YYYY-MM-DD HH24:MI:SS'),100,1121861,'N','N','LBRA','N','N','N','Y','4cbdffbf-7c7d-439a-8f91-3bbdc79fa6dc','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:33:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133354,0,'FCP',1120692,'FCP_TaxAmt',131089,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:33:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:33:40','YYYY-MM-DD HH24:MI:SS'),100,1122461,'N','N','LBRA','N','N','N','Y','c337aabd-7f3e-454c-9c32-42259aa94b44','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:33:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133355,0,'FCP Base',1120692,'FCP_TaxBaseAmt',131089,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:33:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:33:46','YYYY-MM-DD HH24:MI:SS'),100,1122462,'N','N','U','N','N','N','Y','a8876463-b52a-4f14-86a7-91e9c913725f','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:33:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133356,0,'fcp_taxrate',1120692,'fcp_taxrate',131089,'N','N','Y','N','N',0,'N',22,0,0,'Y',TO_DATE('2021-03-16 13:33:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:33:53','YYYY-MM-DD HH24:MI:SS'),100,1122464,'N','N','LBRA','N','N','N','Y','9e9599b4-64c0-437c-a777-bea2211136b6','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:34:13 BRT
UPDATE AD_Column SET FieldLength=22,Updated=TO_DATE('2021-03-16 13:34:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133356
;

-- 16 de mar de 2021 13:34:26 BRT
UPDATE AD_Column SET FieldLength=22,Updated=TO_DATE('2021-03-16 13:34:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133355
;

-- 16 de mar de 2021 13:34:33 BRT
UPDATE AD_Column SET FieldLength=22,Updated=TO_DATE('2021-03-16 13:34:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133354
;

-- 16 de mar de 2021 13:35:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133357,0,'NFe ID','Identification of NFe',1120692,'lbr_NFeID',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-03-16 13:35:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:35:37','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','379f23bf-0bd7-4c39-9d24-6673ff1d8504','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:36:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133358,0,'Reference No','Your customer or vendor number at the Business Partner''s site','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.',1120692,'ReferenceNo',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-03-16 13:36:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:36:06','YYYY-MM-DD HH24:MI:SS'),100,540,'N','N','LBRA','N','N','N','Y','78d7d123-debb-4312-a5d8-4cdc1d9cd704','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:36:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133359,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120692,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2021-03-16 13:36:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:36:15','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','5ec1f628-22d9-4184-b7f6-6999df91a2df','Y',0,'N','N','N')
;

-- 16 de mar de 2021 13:36:20 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2021-03-16 13:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133359
;

-- 16 de mar de 2021 13:36:43 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133354
;

-- 16 de mar de 2021 13:36:52 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133355
;

-- 16 de mar de 2021 13:37:00 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132574
;

-- 16 de mar de 2021 13:37:06 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133349
;

-- 16 de mar de 2021 13:37:10 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133352
;

-- 16 de mar de 2021 13:37:14 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133353
;

-- 16 de mar de 2021 13:37:45 BRT
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_DATE('2021-03-16 13:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133359
;

-- 16 de mar de 2021 13:37:49 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133356
;

-- 16 de mar de 2021 13:37:54 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133351
;

-- 16 de mar de 2021 13:38:04 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-16 13:38:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133350
;

-- 16 de mar de 2021 13:38:14 BRT
UPDATE AD_Column SET IsUpdateable='N', ReadOnlyLogic=NULL,Updated=TO_DATE('2021-03-16 13:38:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133357
;

-- 16 de mar de 2021 13:38:27 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133350
;

-- 16 de mar de 2021 13:38:33 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133351
;

-- 16 de mar de 2021 13:38:38 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:38:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133356
;

-- 16 de mar de 2021 13:38:55 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:38:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133353
;

-- 16 de mar de 2021 13:38:59 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133352
;

-- 16 de mar de 2021 13:39:02 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:39:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133349
;

-- 16 de mar de 2021 13:39:10 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133355
;

-- 16 de mar de 2021 13:39:14 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2021-03-16 13:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133354
;

-- 16 de mar de 2021 13:41:08 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123332,0,0,'Y',TO_DATE('2021-03-16 13:40:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:40:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ICMSActualBaseAmt','ICMS Actual Base Amt','ICMS Actual Base Amt','LBRA','3e877923-32f2-4930-b852-dab79dd1d9d3')
;

-- 16 de mar de 2021 13:41:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123333,0,0,'Y',TO_DATE('2021-03-16 13:41:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:41:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ICMSActualBase','ICMS Actual Base','ICMS Actual Base','LBRA','707a3766-890b-4b8e-963b-8bfb8ecc94e1')
;

-- 16 de mar de 2021 13:42:06 BRT
UPDATE AD_Element SET Name='ICMS Actual Base Red.', PrintName='ICMS Actual Base Red.',Updated=TO_DATE('2021-03-16 13:42:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123333
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_Column SET ColumnName='LBR_ICMSActualBase', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ICMSActualBase', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, AD_Element_ID=1123333 WHERE UPPER(ColumnName)='LBR_ICMSACTUALBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ICMSActualBase', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ICMSActualBase', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_Field SET Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123333) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:42:07 BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS Actual Base Red.', Name='ICMS Actual Base Red.' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123333)
;

-- 16 de mar de 2021 13:42:11 BRT
UPDATE AD_Element SET ColumnName='LBR_ICMSActualBaseRed',Updated=TO_DATE('2021-03-16 13:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123333
;

-- 16 de mar de 2021 13:42:11 BRT
UPDATE AD_Column SET ColumnName='LBR_ICMSActualBaseRed', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333
;

-- 16 de mar de 2021 13:42:11 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ICMSActualBaseRed', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, AD_Element_ID=1123333 WHERE UPPER(ColumnName)='LBR_ICMSACTUALBASERED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 13:42:11 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ICMSActualBaseRed', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:42:11 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ICMSActualBaseRed', Name='ICMS Actual Base Red.', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123333 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:42:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123334,0,0,'Y',TO_DATE('2021-03-16 13:42:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:42:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ICMSActualAmt','ICMS Actual Amt','ICMS Actual Amt','LBRA','5931b5d0-732a-4764-b3d0-3370a6bef8b7')
;

-- 16 de mar de 2021 13:42:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123335,0,0,'Y',TO_DATE('2021-03-16 13:42:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:42:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ICMSActualRate','ICMS Actual Rate','ICMS Actual Rate','U','c254bc6d-7b57-427f-99b7-aa19fc6c3d08')
;

-- 16 de mar de 2021 13:43:35 BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2021-03-16 13:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123335
;

-- 16 de mar de 2021 13:43:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133360,0,'ICMS Actual Base Amt',1120692,'LBR_ICMSActualBaseAmt','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:43:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:43:41','YYYY-MM-DD HH24:MI:SS'),100,1123332,'Y','N','LBRA','N','N','N','Y','33da0f2b-615d-4ca2-8965-86624d62c7f5','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:43:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133361,0,'ICMS Actual Base Red.',1120692,'LBR_ICMSActualBaseRed','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:43:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:43:47','YYYY-MM-DD HH24:MI:SS'),100,1123333,'Y','N','LBRA','N','N','N','Y','2a536869-9546-4aa4-a86d-ad8aa8062756','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:43:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133362,0,'ICMS Actual Amt',1120692,'LBR_ICMSActualAmt','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:43:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:43:57','YYYY-MM-DD HH24:MI:SS'),100,1123334,'Y','N','LBRA','N','N','N','Y','69c988f5-7ce5-4e6d-bbb7-661a548d68b1','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:44:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133363,0,'ICMS Actual Rate',1120692,'LBR_ICMSActualRate','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_DATE('2021-03-16 13:44:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:44:08','YYYY-MM-DD HH24:MI:SS'),100,1123335,'Y','N','LBRA','N','N','N','Y','c3221855-1ab6-443c-ab68-ec494fa78fbb','Y',0,'N','N','N','N')
;

-- 16 de mar de 2021 13:44:18 BRT
CREATE TABLE LBR_TaxHold (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description VARCHAR2(255) DEFAULT NULL , FCP_TaxAmt NUMBER DEFAULT 0 NOT NULL, FCP_TaxBaseAmt NUMBER DEFAULT 0 NOT NULL, ICMSST_TaxAmt NUMBER DEFAULT 0 NOT NULL, ICMSST_TaxBaseAmt NUMBER DEFAULT 0 NOT NULL, ICMS_TaxAmt NUMBER DEFAULT 0 NOT NULL, ICMS_TaxBaseAmt NUMBER DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ICMSActualAmt NUMBER DEFAULT 0 NOT NULL, LBR_ICMSActualBaseAmt NUMBER DEFAULT 0 NOT NULL, LBR_ICMSActualBaseRed NUMBER DEFAULT 0 NOT NULL, LBR_ICMSActualRate NUMBER DEFAULT 0 NOT NULL, LBR_TaxHold_ID NUMBER(10) NOT NULL, LBR_TaxHold_UU VARCHAR2(36) DEFAULT NULL , M_Product_ID NUMBER(10) NOT NULL, ReferenceNo VARCHAR2(40) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, ValidFrom DATE NOT NULL, fcp_taxrate NUMBER DEFAULT 0 NOT NULL, icms_taxrate NUMBER DEFAULT 0 NOT NULL, icmsst_taxrate NUMBER DEFAULT 0 NOT NULL, lbr_NFeID VARCHAR2(44) DEFAULT NULL , CONSTRAINT LBR_TaxHold_Key PRIMARY KEY (LBR_TaxHold_ID), CONSTRAINT LBR_TaxHold_UU_idx UNIQUE (LBR_TaxHold_UU))
;

-- 16 de mar de 2021 13:44:18 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT ADClient_MProductTaxControl FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de mar de 2021 13:44:18 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT ADOrg_MProductTaxControl FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de mar de 2021 13:44:18 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT CreatedBy_MProductTaxControl FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de mar de 2021 13:44:18 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT MProduct_MProductTaxControl FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de mar de 2021 13:44:18 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT UpdatedBy_MProductTaxControl FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de mar de 2021 13:44:36 BRT
UPDATE AD_Tab SET Name='Tax Hold',Updated=TO_DATE('2021-03-16 13:44:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120399
;

-- 16 de mar de 2021 13:44:51 BRT
UPDATE AD_Table SET Name='Tax Hold',Updated=TO_DATE('2021-03-16 13:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120692
;

-- 16 de mar de 2021 13:45:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130971,'ICMSST Base',1120399,1133349,'Y',22,80,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','51404fe6-06b1-4b75-8f3f-58e00e934639','Y',70,2)
;

-- 16 de mar de 2021 13:45:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130972,'icmsst_taxrate',1120399,1133350,'Y',22,90,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b3565d11-96f2-4b4a-ac6b-18ba92b9cd9c','Y',80,2)
;

-- 16 de mar de 2021 13:45:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130973,'icms_taxrate',1120399,1133351,'Y',22,100,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bbd1f745-cc70-4b46-8b8f-47a1686bb8db','Y',90,2)
;

-- 16 de mar de 2021 13:45:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130974,'ICMS',1120399,1133352,'Y',22,110,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f640c52a-5a6b-41c8-b772-9ca7c6f7520b','Y',100,2)
;

-- 16 de mar de 2021 13:45:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130975,'ICMS Base',1120399,1133353,'Y',22,120,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6d22cf07-5c67-4c60-bd50-1d542236af5e','Y',110,2)
;

-- 16 de mar de 2021 13:45:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130976,'FCP',1120399,1133354,'Y',22,130,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','42752358-05c1-434a-83cf-9a65e37955da','Y',120,2)
;

-- 16 de mar de 2021 13:45:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130977,'fcp_taxrate',1120399,1133356,'Y',22,140,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','65adaf97-fea1-4022-a537-b99d0f92c769','Y',130,2)
;

-- 16 de mar de 2021 13:45:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130978,'NFe ID','Identification of NFe',1120399,1133357,'Y',44,150,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4b47ed04-680e-449f-8970-e941b7673ad1','Y',140,2)
;

-- 16 de mar de 2021 13:45:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130979,'Reference No','Your customer or vendor number at the Business Partner''s site','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.',1120399,1133358,'Y',40,160,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a4cc7fd8-1b13-4847-bcb1-100f0ae1a33c','Y',150,2)
;

-- 16 de mar de 2021 13:45:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130980,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120399,1133359,'Y',7,170,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','db6b06a6-e7c3-45dd-b9ac-384516d25d9a','Y',160,2)
;

-- 16 de mar de 2021 13:45:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130981,'ICMS Actual Base Amt',1120399,1133360,'Y',22,180,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c6ad4713-78ac-4bac-9691-43cf82b38b5e','Y',170,2)
;

-- 16 de mar de 2021 13:45:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130982,'ICMS Actual Base Red.',1120399,1133361,'Y',22,190,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','380d660d-6f82-4506-a321-ecdc2749bd83','Y',180,2)
;

-- 16 de mar de 2021 13:45:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130983,'ICMS Actual Amt',1120399,1133362,'Y',22,200,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','89481872-01b2-4e30-9391-2d7e91b9ee01','Y',190,2)
;

-- 16 de mar de 2021 13:45:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130984,'ICMS Actual Rate',1120399,1133363,'Y',22,210,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:45:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:45:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a4a4ad0c-12b2-408f-970e-d9535ff56d32','Y',200,2)
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129888
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130978
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130979
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129894
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130980
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=8, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129889
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_FieldGroup_ID=1120090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130971
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130972
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129948
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130975
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130973
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130974
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130976
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130977
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130981
;

-- 16 de mar de 2021 13:48:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130982
;

-- 16 de mar de 2021 13:48:29 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130984
;

-- 16 de mar de 2021 13:48:29 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130983
;

-- 16 de mar de 2021 13:48:29 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:48:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129887
;

-- 16 de mar de 2021 13:49:44 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2021-03-16 13:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133355
;

-- 16 de mar de 2021 13:49:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130985,'FCP Base',1120399,1133355,'Y',22,200,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 13:49:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 13:49:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3cad0f43-58da-4ed8-8622-fdcfc6014240','Y',210,2)
;

-- 16 de mar de 2021 13:51:12 BRT
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130978
;

-- 16 de mar de 2021 13:51:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130979
;

-- 16 de mar de 2021 13:51:12 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129895
;

-- 16 de mar de 2021 13:51:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130980
;

-- 16 de mar de 2021 13:51:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=9, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129894
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130985
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130976
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130981
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130982
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130984
;

-- 16 de mar de 2021 13:51:13 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 13:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130983
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_Element SET ColumnName='FCP_TaxRate', Name='Tax Rate', PrintName='Tax Rate',Updated=TO_DATE('2021-03-16 13:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122464
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_Column SET ColumnName='FCP_TaxRate', Name='Tax Rate', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122464
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxRate', Name='Tax Rate', Description=NULL, Help=NULL, AD_Element_ID=1122464 WHERE UPPER(ColumnName)='FCP_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxRate', Name='Tax Rate', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122464 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_InfoColumn SET ColumnName='FCP_TaxRate', Name='Tax Rate', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122464 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_Field SET Name='Tax Rate', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122464) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 13:57:20 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate', Name='Tax Rate' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122464)
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_Element SET ColumnName='COFINS_TaxRate', Name='Tax Rate COFINS', PrintName='Tax Rate COFINS',Updated=TO_DATE('2021-03-16 16:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121873
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_Column SET ColumnName='COFINS_TaxRate', Name='Tax Rate COFINS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121873
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxRate', Name='Tax Rate COFINS', Description=NULL, Help=NULL, AD_Element_ID=1121873 WHERE UPPER(ColumnName)='COFINS_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxRate', Name='Tax Rate COFINS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121873 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_InfoColumn SET ColumnName='COFINS_TaxRate', Name='Tax Rate COFINS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121873 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_Field SET Name='Tax Rate COFINS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121873) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:33 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate COFINS', Name='Tax Rate COFINS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121873)
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_Element SET ColumnName='DIFAL_TaxRate', Name='Tax Rate DIFAL', PrintName='Tax Rate DIFAL',Updated=TO_DATE('2021-03-16 16:26:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122467
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_Column SET ColumnName='DIFAL_TaxRate', Name='Tax Rate DIFAL', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122467
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxRate', Name='Tax Rate DIFAL', Description=NULL, Help=NULL, AD_Element_ID=1122467 WHERE UPPER(ColumnName)='DIFAL_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxRate', Name='Tax Rate DIFAL', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122467 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_InfoColumn SET ColumnName='DIFAL_TaxRate', Name='Tax Rate DIFAL', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122467 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_Field SET Name='Tax Rate DIFAL', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122467) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:26:54 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate DIFAL', Name='Tax Rate DIFAL' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122467)
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_Element SET ColumnName='DIFALO_TaxRate', Name='Tax Rate DIFAL Origin', PrintName='Tax Rate DIFAL Origin',Updated=TO_DATE('2021-03-16 16:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122470
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_Column SET ColumnName='DIFALO_TaxRate', Name='Tax Rate DIFAL Origin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122470
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxRate', Name='Tax Rate DIFAL Origin', Description=NULL, Help=NULL, AD_Element_ID=1122470 WHERE UPPER(ColumnName)='DIFALO_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxRate', Name='Tax Rate DIFAL Origin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122470 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_InfoColumn SET ColumnName='DIFALO_TaxRate', Name='Tax Rate DIFAL Origin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122470 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_Field SET Name='Tax Rate DIFAL Origin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122470) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:22 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate DIFAL Origin', Name='Tax Rate DIFAL Origin' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122470)
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_Element SET ColumnName='ICMS_TaxRate', Name='Tax Rate ICMS', PrintName='Tax Rate ICMS',Updated=TO_DATE('2021-03-16 16:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121863
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_Column SET ColumnName='ICMS_TaxRate', Name='Tax Rate ICMS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121863
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxRate', Name='Tax Rate ICMS', Description=NULL, Help=NULL, AD_Element_ID=1121863 WHERE UPPER(ColumnName)='ICMS_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxRate', Name='Tax Rate ICMS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121863 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_TaxRate', Name='Tax Rate ICMS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121863 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_Field SET Name='Tax Rate ICMS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121863) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:37 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate ICMS', Name='Tax Rate ICMS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121863)
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_Element SET ColumnName='ICMSST_TaxRate', Name='Tax Rate ICMSST', PrintName='Tax Rate ICMSST',Updated=TO_DATE('2021-03-16 16:27:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121878
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_Column SET ColumnName='ICMSST_TaxRate', Name='Tax Rate ICMSST', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121878
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxRate', Name='Tax Rate ICMSST', Description=NULL, Help=NULL, AD_Element_ID=1121878 WHERE UPPER(ColumnName)='ICMSST_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxRate', Name='Tax Rate ICMSST', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121878 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_TaxRate', Name='Tax Rate ICMSST', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121878 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_Field SET Name='Tax Rate ICMSST', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121878) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:27:51 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate ICMSST', Name='Tax Rate ICMSST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121878)
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_Element SET ColumnName='II_TaxRate', Name='Tax Rate II', PrintName='Tax Rate II',Updated=TO_DATE('2021-03-16 16:28:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121886
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_Column SET ColumnName='II_TaxRate', Name='Tax Rate II', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121886
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxRate', Name='Tax Rate II', Description=NULL, Help=NULL, AD_Element_ID=1121886 WHERE UPPER(ColumnName)='II_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxRate', Name='Tax Rate II', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121886 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_InfoColumn SET ColumnName='II_TaxRate', Name='Tax Rate II', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121886 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_Field SET Name='Tax Rate II', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121886) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:06 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate II', Name='Tax Rate II' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121886)
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_Element SET ColumnName='IPI_TaxRate', Name='Tax Rate IPI', PrintName='Tax Rate IPI',Updated=TO_DATE('2021-03-16 16:28:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121882
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_Column SET ColumnName='IPI_TaxRate', Name='Tax Rate IPI', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121882
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxRate', Name='Tax Rate IPI', Description=NULL, Help=NULL, AD_Element_ID=1121882 WHERE UPPER(ColumnName)='IPI_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxRate', Name='Tax Rate IPI', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121882 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_InfoColumn SET ColumnName='IPI_TaxRate', Name='Tax Rate IPI', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121882 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_Field SET Name='Tax Rate IPI', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121882) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:20 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate IPI', Name='Tax Rate IPI' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121882)
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_Element SET ColumnName='PIS_TaxRate', Name='Tax Rate PIS', PrintName='Tax Rate PIS',Updated=TO_DATE('2021-03-16 16:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121868
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_Column SET ColumnName='PIS_TaxRate', Name='Tax Rate PIS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121868
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxRate', Name='Tax Rate PIS', Description=NULL, Help=NULL, AD_Element_ID=1121868 WHERE UPPER(ColumnName)='PIS_TAXRATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxRate', Name='Tax Rate PIS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121868 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_InfoColumn SET ColumnName='PIS_TaxRate', Name='Tax Rate PIS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1121868 AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_Field SET Name='Tax Rate PIS', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121868) AND IsCentrallyMaintained='Y'
;

-- 16 de mar de 2021 16:28:39 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Rate PIS', Name='Tax Rate PIS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121868)
;

-- 16 de mar de 2021 16:29:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133365,0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120692,'Qty',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_DATE('2021-03-16 16:29:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 16:29:19','YYYY-MM-DD HH24:MI:SS'),100,526,'Y','N','LBRA','N','N','N','Y','e6967969-0592-4581-98cf-c8c52f2830c2','Y',0,'N','N','N')
;

-- 16 de mar de 2021 16:29:42 BRT
ALTER TABLE LBR_TaxHold ADD Qty NUMBER DEFAULT NULL 
;

-- 16 de mar de 2021 16:30:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130986,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120399,1133365,'Y',22,210,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-16 16:30:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-16 16:30:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','097bdf7f-9438-43f1-a20e-f5aecb712f2a','Y',220,2)
;

-- 16 de mar de 2021 16:30:46 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-16 16:30:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130986
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 16 de mar de 2021 18:21:59 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1129905
;

-- 16 de mar de 2021 18:21:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1129905
;

-- 16 de mar de 2021 18:22:12 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1129906
;

-- 16 de mar de 2021 18:22:12 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1129906
;

-- 16 de mar de 2021 18:22:20 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132514
;

-- 16 de mar de 2021 18:22:20 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132514
;

-- 16 de mar de 2021 18:22:39 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1128193
;

-- 16 de mar de 2021 18:22:39 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1128193
;

-- 16 de mar de 2021 18:22:47 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1131523
;

-- 16 de mar de 2021 18:22:47 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1131523
;

-- 16 de mar de 2021 18:22:53 BRT
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1122882
;

-- 16 de mar de 2021 18:22:53 BRT
DELETE FROM AD_Element WHERE AD_Element_ID=1122882
;

-- 16 de mar de 2021 18:59:03 BRT
DELETE FROM LBR_TaxStatus WHERE LBR_TaxStatus_ID=1120202
;

-- 16 de mar de 2021 18:59:03 BRT
DELETE FROM LBR_TaxStatus WHERE LBR_TaxStatus_ID=1120203
;

-- 16 de mar de 2021 18:59:09 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120051
;

-- 16 de mar de 2021 18:59:09 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120052
;

-- 16 de mar de 2021 18:59:09 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120053
;

-- 16 de mar de 2021 18:59:10 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120054
;

-- 16 de mar de 2021 18:59:12 BRT
DELETE FROM LBR_TaxName WHERE LBR_TaxName_ID=1120005
;

-- 16 de mar de 2021 18:59:19 BRT
DELETE FROM LBR_TaxStatus WHERE LBR_TaxStatus_ID=1120200
;

-- 16 de mar de 2021 18:59:19 BRT
DELETE FROM LBR_TaxStatus WHERE LBR_TaxStatus_ID=1120201
;

-- 16 de mar de 2021 18:59:23 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120047
;

-- 16 de mar de 2021 18:59:23 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120048
;

-- 16 de mar de 2021 18:59:24 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120049
;

-- 16 de mar de 2021 18:59:24 BRT
DELETE FROM LBR_TaxFormula WHERE LBR_TaxFormula_ID=1120050
;

-- 16 de mar de 2021 18:59:35 BRT
DELETE FROM LBR_TaxName WHERE LBR_TaxName_ID=1120004
;

-- 16 de mar de 2021 19:00:23 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120084
;

-- 16 de mar de 2021 19:00:28 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120086
;

-- 16 de mar de 2021 19:00:40 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120088
;

-- 16 de mar de 2021 19:00:46 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120089
;

-- 16 de mar de 2021 19:00:48 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120090
;

-- 16 de mar de 2021 19:00:50 BRT
UPDATE LBR_TaxStatus SET IsActive='N',Updated=TO_DATE('2021-03-16 19:00:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120091
;

-- 16 de mar de 2021 18:22:53 BRT
SELECT Register_Migration_Script ('202103161358_TaxHold.sql') FROM DUAL
;

