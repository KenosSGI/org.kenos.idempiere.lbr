-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10 de ago de 2020 15:58:16 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120692,'Tax Control','Register information about Tax used do calculate or control','Register information about Tax used do calculate or control','LBR_Product_Tax_Control',0,'3',0,0,'Y',TO_TIMESTAMP('2020-08-10 15:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:58:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','db8c5a0a-69c6-4868-9241-1b69ec25aebd','N','N','N','N')
;

-- 10 de ago de 2020 15:58:17 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_Product_Tax_Control',1000000,'N','N','Table LBR_Product_Tax_Control','Y','Y',0,0,TO_TIMESTAMP('2020-08-10 15:58:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:58:16','YYYY-MM-DD HH24:MI:SS'),100,1153938,'Y',1000000,1,200000,'9cbe3b41-76b1-4285-af39-a3c0fc6286c1')
;

-- 10 de ago de 2020 16:00:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132484,1,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120692,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','4dbc6fd2-aa1d-499c-8934-37014cc44e0c','N','N','N','N','N')
;

-- 10 de ago de 2020 16:00:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132485,1,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120692,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','5ba93e29-41ba-46fa-bf9c-83e47e219925','N','N','N','N','N')
;

-- 10 de ago de 2020 16:00:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132486,1,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120692,'Created','SYSDATE',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','a0402bea-e6ce-421d-a647-e6494521188a','N','N','N','N')
;

-- 10 de ago de 2020 16:00:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132487,1,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120692,'CreatedBy',22,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','bf52dfcd-c071-4647-8ccd-3913b4711487','N','N','N','N','N')
;

-- 10 de ago de 2020 16:00:21 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123187,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Product_Tax_Control_ID','Tax Control','Tax Control','LBRA','0fc21cde-3c16-43f0-8ab6-2408b35f262a')
;

-- 10 de ago de 2020 16:00:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132488,1,'Tax Control',1120692,'LBR_Product_Tax_Control_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:21','YYYY-MM-DD HH24:MI:SS'),100,1123187,'N','N','LBRA','N','N','N','Y','dfd4afbe-44e8-4436-82ad-9b53759a046f','N','N','N','N')
;

-- 10 de ago de 2020 16:00:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123188,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Product_Tax_Control_UU','LBR_Product_Tax_Control_UU','LBR_Product_Tax_Control_UU','LBRA','7bb6e0e0-4160-4513-a804-b4dcbfc2eb1f')
;

-- 10 de ago de 2020 16:00:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132489,1.00,'LBR_Product_Tax_Control_UU',1120692,'LBR_Product_Tax_Control_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,1123188,'Y','N','LBRA','N','N','N','Y','aa4cbd16-b8c5-46dc-8c57-103d44a3e700','N','N','N','N')
;

-- 10 de ago de 2020 16:00:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132490,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120692,'Description',255,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:22','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','N','LBRA','N','N','N','Y','33069d66-0717-414b-a70c-324ed37978f4','Y',0,'N','N','N')
;

-- 10 de ago de 2020 16:00:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132491,1,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120692,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','77012c5c-00d3-4428-93ea-3b8b43fe7e58','N','N','N','N')
;

-- 10 de ago de 2020 16:00:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132492,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120692,'Name',120,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','N','LBRA','N','N','N','Y','0547769a-fe98-4a8d-abe1-142e0c0f8bf2','Y',0,'N','N','N')
;

-- 10 de ago de 2020 16:00:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132493,0,'Tax Provider Class',1120692,'TaxProviderClass',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:23','YYYY-MM-DD HH24:MI:SS'),100,202581,'Y','N','LBRA','N','N','N','Y','d5152c5e-b5fb-4f43-bb97-0f74c884e62b','Y',0,'N','N','N')
;

-- 10 de ago de 2020 16:00:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132494,1,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120692,'Updated','SYSDATE',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','1f124624-f229-456c-a5e2-f1a17d1b64e9','N','N','N','N')
;

-- 10 de ago de 2020 16:00:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132495,1,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120692,'UpdatedBy',22,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','f279b5a8-ce4d-48e5-b48d-efd0207f3a30','N','N','N','N','N')
;

-- 10 de ago de 2020 16:00:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132496,0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120692,'URL',120,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:00:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:00:25','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','N','N','Y','18427832-dc1b-4f7b-8f17-fc153fca78ff','Y',0,'N','N','N')
;

-- 10 de ago de 2020 16:00:39 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132493
;

-- 10 de ago de 2020 16:00:39 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132493
;

-- 10 de ago de 2020 16:00:49 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132492
;

-- 10 de ago de 2020 16:00:49 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132492
;

-- 10 de ago de 2020 16:01:00 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132496
;

-- 10 de ago de 2020 16:01:00 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132496
;

-- 10 de ago de 2020 16:05:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132497,0,'ICMS Substituto','Valor do ICMS próprio do Substituto','Valor do ICMS próprio do Substituto',1120692,'LBR_ICMSSubstituto','0',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:05:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:05:39','YYYY-MM-DD HH24:MI:SS'),100,1122882,'Y','N',NULL,'LBRA','N','N','N','Y','f58140ec-fa3d-41a4-9d1b-6a362e5b0a94','Y',0,'N','N','N')
;

-- 10 de ago de 2020 16:07:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123189,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:07:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:07:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_QtyICMSSubstituto','Qty ICMS Substituto','Quantidade aculada de entrada do produto referente ao ICMS próprio do Substituto','Quantidade aculada de entrada do produto referente ao ICMS próprio do Substituto','Qty ICMS Substituto','LBRA','bfb00067-ad0c-42fd-8393-6ba8cbcb181b')
;

-- 10 de ago de 2020 16:16:09 BRT
UPDATE AD_Element SET ColumnName='LBR_QtyICMSSubstitute', Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', PrintName='Qty ICMS Substitute',Updated=TO_TIMESTAMP('2020-08-10 16:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123189
;

-- 10 de ago de 2020 16:16:09 BRT
UPDATE AD_Column SET ColumnName='LBR_QtyICMSSubstitute', Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', Placeholder=NULL WHERE AD_Element_ID=1123189
;

-- 10 de ago de 2020 16:16:09 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_QtyICMSSubstitute', Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', AD_Element_ID=1123189 WHERE UPPER(ColumnName)='LBR_QTYICMSSUBSTITUTE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10 de ago de 2020 16:16:10 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_QtyICMSSubstitute', Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', Placeholder=NULL WHERE AD_Element_ID=1123189 AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 16:16:10 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_QtyICMSSubstitute', Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', Placeholder=NULL WHERE AD_Element_ID=1123189 AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 16:16:10 BRT
UPDATE AD_Field SET Name='Qty ICMS Substitute', Description='Amount Quanty related to Own Substitute ICMS', Help='Amount Quanty related to Own Substitute ICMS', Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123189) AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 16:16:10 BRT
UPDATE AD_PrintFormatItem SET PrintName='Qty ICMS Substitute', Name='Qty ICMS Substitute' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123189)
;

-- 10 de ago de 2020 16:16:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132499,0,'Qty ICMS Substitute','Amount Quanty related to Own Substitute ICMS','Amount Quanty related to Own Substitute ICMS',1120692,'LBR_QtyICMSSubstitute','0',14,'N','N','Y','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:16:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:16:39','YYYY-MM-DD HH24:MI:SS'),100,1123189,'Y','N','U','N','N','N','Y','4e6e280b-42f6-4202-8baf-6595b12d81a2','Y',0,'N','N','N','N')
;

-- 10 de ago de 2020 16:16:48 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-08-10 16:16:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132497
;

-- 10 de ago de 2020 16:16:58 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-08-10 16:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132499
;

-- 10 de ago de 2020 16:17:14 BRT
UPDATE AD_Column SET FKConstraintName='ADClient_MProductTaxControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-10 16:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132484
;

-- 10 de ago de 2020 16:17:14 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_MProductTaxControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-10 16:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132485
;

-- 10 de ago de 2020 16:17:14 BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_MProductTaxControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-10 16:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132487
;

-- 10 de ago de 2020 16:17:14 BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_MProductTaxControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-10 16:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132495
;

-- 10 de ago de 2020 16:17:14 BRT
CREATE TABLE LBR_Product_Tax_Control (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ICMSSubstituto NUMERIC DEFAULT 0 NOT NULL, LBR_QtyICMSSubstitute NUMERIC DEFAULT 0 NOT NULL, LBR_Product_Tax_Control_ID NUMERIC(10) NOT NULL, LBR_Product_Tax_Control_UU VARCHAR(36) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_Product_Tax_Control_Key PRIMARY KEY (LBR_Product_Tax_Control_ID), CONSTRAINT LBR_Product_Tax_Control_UU_idx UNIQUE (LBR_Product_Tax_Control_UU))
;

-- 10 de ago de 2020 16:17:15 BRT
ALTER TABLE LBR_Product_Tax_Control ADD CONSTRAINT ADClient_MProductTaxControl FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de ago de 2020 16:17:15 BRT
ALTER TABLE LBR_Product_Tax_Control ADD CONSTRAINT ADOrg_MProductTaxControl FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de ago de 2020 16:17:15 BRT
ALTER TABLE LBR_Product_Tax_Control ADD CONSTRAINT CreatedBy_MProductTaxControl FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de ago de 2020 16:17:15 BRT
ALTER TABLE LBR_Product_Tax_Control ADD CONSTRAINT UpdatedBy_MProductTaxControl FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de ago de 2020 16:18:20 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120399,'Tax Control',140,160,'Y',1120692,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:19','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','N','N',0,'N','LBRA','N','N','4fa3bf31-dbca-425e-b914-9bb925ec9352','B')
;

-- 10 de ago de 2020 16:18:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129887,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120399,1132484,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c30e717f-6786-4f97-bd00-39be9c1e5c4d','N',2)
;

-- 10 de ago de 2020 16:18:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129888,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120399,1132485,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5d23fe55-f15e-4e15-82a7-888cf57395f6','Y','Y',10,4,2)
;

-- 10 de ago de 2020 16:18:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1129889,'Description','Optional short description of the record','A description is limited to 255 characters.',1120399,1132490,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7d9e35ca-ce93-4869-ac27-d01f37fb084e','Y',20,5,3)
;

-- 10 de ago de 2020 16:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129890,'Tax Control',1120399,1132488,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8c76231d-a5b3-4e87-ae34-650ae0be6cc4','N',2)
;

-- 10 de ago de 2020 16:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129891,'LBR_Product_Tax_Control_UU',1120399,1132489,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9a50663b-c90a-4b64-ae1a-e2fb673e816f','N',2)
;

-- 10 de ago de 2020 16:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129892,'ICMS Substituto','Valor do ICMS próprio do Substituto','Valor do ICMS próprio do Substituto',1120399,1132497,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b3d418b1-2fe2-4c25-821e-eac4136cca2e','Y',30,2)
;

-- 10 de ago de 2020 16:18:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129893,'Qty ICMS Substitute','Amount Quanty related to Own Substitute ICMS','Amount Quanty related to Own Substitute ICMS',1120399,1132499,'Y',14,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0305e1db-ec16-48fe-b9b0-50a40e7238a3','Y',40,2)
;

-- 10 de ago de 2020 16:18:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129894,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120399,1132491,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 16:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c08f0359-91d2-46cf-b9f0-33daf172e8f8','Y',50,2,2)
;

-- 10 de ago de 2020 16:19:18 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120090,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:19:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:19:17','YYYY-MM-DD HH24:MI:SS'),100,'ICMS Substitute','LBRA','N','e93179be-c37d-4924-b75a-5f0a98ec7524')
;

-- 10 de ago de 2020 16:20:25 BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=1120090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 16:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129892
;

-- 10 de ago de 2020 16:20:25 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_FieldGroup_ID=1120090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 16:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129893
;

-- 10 de ago de 2020 16:20:25 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 16:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129894
;

-- 10 de ago de 2020 16:20:25 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 16:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129891
;

-- 10 de ago de 2020 16:20:25 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 16:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129890
;

-- 10 de ago de 2020 17:44:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132500,0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120692,'M_Product_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2020-08-10 17:44:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 17:44:30','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','U','N','N','N','Y','b7ee626c-8614-4cea-89ef-373d19c42cf8','Y',0,'N','N','N')
;

-- 10 de ago de 2020 17:44:51 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-08-10 17:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132500
;

-- 10 de ago de 2020 17:44:55 BRT
UPDATE AD_Column SET FKConstraintName='MProduct_MProductTaxControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-10 17:44:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132500
;

-- 10 de ago de 2020 17:44:56 BRT
ALTER TABLE LBR_Product_Tax_Control ADD COLUMN M_Product_ID NUMERIC(10) NOT NULL
;

-- 10 de ago de 2020 17:44:56 BRT
ALTER TABLE LBR_Product_Tax_Control ADD CONSTRAINT MProduct_MProductTaxControl FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de ago de 2020 17:46:50 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-08-10 17:46:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132500
;

-- 10 de ago de 2020 17:47:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129895,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120399,1132500,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-10 17:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 17:47:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','43ca087b-e237-41d4-84bd-e542aa1d4914','Y',60,2)
;

-- 10 de ago de 2020 17:47:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 17:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129895
;

-- 10 de ago de 2020 17:47:50 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 17:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129889
;

-- 10 de ago de 2020 17:47:51 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 17:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129892
;

-- 10 de ago de 2020 17:47:51 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 17:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129893
;

-- 10 de ago de 2020 17:48:00 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-08-10 17:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129895
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 13 de ago de 2020 15:47:07 BRT
UPDATE AD_Tab SET AD_Column_ID=1132500,Updated=TO_TIMESTAMP('2020-08-13 15:47:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120399
;

-- 13 de ago de 2020 15:48:18 BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_TIMESTAMP('2020-08-13 15:48:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120399
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 13 de ago de 2020 17:13:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132514,0,'ICMS Substituto','Valor do ICMS próprio do Substituto','Valor do ICMS próprio do Substituto',1000007,'LBR_ICMSSubstituto','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-08-13 17:13:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-13 17:13:31','YYYY-MM-DD HH24:MI:SS'),100,1122882,'Y','N',NULL,'LBRA','N','N','0','N','Y','1415ee3e-ea31-4afa-934a-9b8287030f63','Y',0,'N','N','N')
;

-- 13 de ago de 2020 17:13:47 BRT
ALTER TABLE LBR_TaxLine ADD COLUMN LBR_ICMSSubstituto NUMERIC DEFAULT '0' NOT NULL
;

-- 13 de ago de 2020 17:16:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129905,'ICMS Substituto','Valor do ICMS próprio do Substituto','Valor do ICMS próprio do Substituto',1120263,1132514,'Y','@LBR_TaxName_ID@=1106012 & @LBR_TaxStatus_ID@=1120092',0,130,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-13 17:16:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-13 17:16:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e659e2b-710e-4eb1-9768-84087515fbf6','Y',130,1,1,1,'N','N','N')
;

-- 13 de ago de 2020 17:24:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129906,'ICMS Substituto','Valor do ICMS próprio do Substituto','Valor do ICMS próprio do Substituto',1120265,1132514,'Y','@LBR_TaxName_ID@=1106012 & @LBR_TaxStatus_ID@=1120092',0,130,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-08-13 17:24:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-13 17:24:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','30bf1092-c41f-4679-b507-7fa32eb5c225','Y',130,1,1,1,'N','N','N')
;

SELECT Register_Migration_Script ('202008181700_TaxControl_ICMSSubstitute.sql') FROM DUAL
;
