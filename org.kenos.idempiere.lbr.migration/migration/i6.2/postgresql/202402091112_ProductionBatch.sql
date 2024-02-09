-- 9 de fev de 2024 10:35:58 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120763,'Production Batch','LBR_ProductionBatch',0,'3',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:35:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:35:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','57504b78-4bbe-4b1f-b770-77e3dae115a9','N','N','N','N')
;

-- 9 de fev de 2024 10:35:59 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ProductionBatch',1000000,'N','N','Table LBR_ProductionBatch','Y','Y',0,0,TO_TIMESTAMP('2024-02-09 10:35:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:35:58','YYYY-MM-DD HH24:MI:SS'),100,1154037,'Y',1000000,1,200000,'239c92d8-6177-44d3-88ba-d6e140c8d4eb')
;

-- 9 de fev de 2024 10:36:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133899,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120763,129,'AD_Client_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:55','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','88200f5b-1fba-42ea-96ab-89083a5327c5','N','N','N','D','N')
;

-- 9 de fev de 2024 10:36:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133900,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120763,'AD_Org_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','e7beba3b-14d2-4aad-8b0a-3ef34f2270e4','N','N','N','D','N')
;

-- 9 de fev de 2024 10:36:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133901,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120763,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','80beec6a-9f0f-4fc2-844e-ab0ba69758f7','N','N','N','N')
;

-- 9 de fev de 2024 10:36:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133902,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120763,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','7f53f12c-3bc0-4327-9e67-643d3bd8a405','N','N','N','D','N')
;

-- 9 de fev de 2024 10:36:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133903,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120763,'Description',255,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:57','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','88f50ea2-5356-4d65-8cb5-f61c08830987','Y',10,'N','N','N')
;

-- 9 de fev de 2024 10:36:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133904,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120763,'IsActive',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:57','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','6c7c4315-fa6a-4403-b09e-cddb1ed57402','N','N','N','N')
;

-- 9 de fev de 2024 10:36:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123405,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductionBatch_ID','Production Batch','Production Batch','LBRA','0c94114c-1be7-420c-acc1-6764c67d26c0')
;

-- 9 de fev de 2024 10:36:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133905,0,'Production Batch',1120763,'LBR_ProductionBatch_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:58','YYYY-MM-DD HH24:MI:SS'),100,1123405,'N','N','LBRA','N','N','N','Y','3d037810-59f8-4dd2-a55c-3160aa7704aa','N','N','N','N')
;

-- 9 de fev de 2024 10:36:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123406,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductionBatch_UU','LBR_ProductionBatch_UU','LBR_ProductionBatch_UU','LBRA','b7f23afd-19f2-417a-9c1f-a4cda8df7825')
;

-- 9 de fev de 2024 10:37:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133906,0,'LBR_ProductionBatch_UU',1120763,'LBR_ProductionBatch_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:36:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:36:59','YYYY-MM-DD HH24:MI:SS'),100,1123406,'Y','N','LBRA','N','N','N','Y','713c5da4-2ddd-4e2a-9e5f-29134b091df9','N','N','N','N')
;

-- 9 de fev de 2024 10:37:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133907,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120763,'Name',255,'N','N','N','N','Y',1,'N',10,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','18de3cb7-fc76-4ef9-89f8-cfc1fc1fdb9d','Y',20,'N','N','N')
;

-- 9 de fev de 2024 10:37:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133908,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120763,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','48143013-d4b1-4062-9b2e-0f55e8785f18','N','N','N','N')
;

-- 9 de fev de 2024 10:37:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133909,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120763,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:37:00','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','f62f092a-f87c-4a68-be10-e8ddbd439c54','N','N','N','D','N')
;

-- 9 de fev de 2024 10:37:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133910,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120763,'Value',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:37:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:37:01','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','N','N','N','Y','b38fbe5e-701e-4f1b-9591-9819b2606d8b','Y',30,'N','N','N')
;

-- 9 de fev de 2024 10:37:29 BRT
UPDATE AD_Column SET Name='Document No', Description='Document sequence number of the document', Help='The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', ColumnName='DocumentNo', FieldLength=30, AD_Element_ID=290, IsUpdateable='N', FKConstraintType=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133910
;

-- 9 de fev de 2024 10:39:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133911,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120763,'DateDoc','@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:39:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:39:15','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','383cd4e6-7882-4cf2-8910-c8719ce2b470','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:39:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133912,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120763,'DocStatus','DR',2,'N','N','Y','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:39:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:39:48','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','N','N','Y','2b694be3-5673-4af3-ac5d-950ed17150ad','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:39:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133913,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120763,'DocAction','CO',2,'N','N','Y','N','N',0,'N',28,135,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:39:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:39:57','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','N','N','Y','d8988106-4f9a-4adb-b894-c55f9312c350','Y',0,'Y','N','N')
;

-- 9 de fev de 2024 10:40:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133914,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120763,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:40:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:40:05','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','Y','9bbd12cb-01c0-4e9c-ba2c-4db08b18103a','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:40:10 BRT
UPDATE AD_Column SET DefaultValue='N', IsMandatory='Y',Updated=TO_TIMESTAMP('2024-02-09 10:40:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133914
;

-- 9 de fev de 2024 10:45:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133915,0,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120763,'M_Warehouse_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:45:09','YYYY-MM-DD HH24:MI:SS'),100,459,'N','N','LBRA','N','N','N','Y','04de7121-009e-4403-8cb8-883fbb7269c2','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:51:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133916,0,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120763,'ProductionQty','0',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:51:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:51:41','YYYY-MM-DD HH24:MI:SS'),100,1343,'Y','N',NULL,'LBRA','N','N','N','Y','b2360253-9304-4435-aed8-1957a047943a','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:52:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133917,0,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120763,'QtyDelivered','0',10,'N','N','Y','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:52:38','YYYY-MM-DD HH24:MI:SS'),100,528,'N','N','U','N','N','N','Y','f6703ee0-573b-4f47-8954-ba0322ab4154','Y',0,'N','N','N')
;

-- 9 de fev de 2024 10:52:41 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2024-02-09 10:52:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133917
;

-- 9 de fev de 2024 10:52:44 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2024-02-09 10:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133917
;

-- 9 de fev de 2024 10:56:52 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120182,'Production Batch',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:56:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:56:51','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','dd988f31-4c01-4a94-a9e1-7e21f613a719')
;

-- 9 de fev de 2024 10:57:11 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120517,'Batch',1120182,10,'Y',1120763,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:11','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','1699439c-d26d-4b66-9896-625e24a7966e','B')
;

-- 9 de fev de 2024 10:57:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131827,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120517,1133899,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f35438e6-e5b0-48f3-88c1-7a2d0c1c6d8c','N',2)
;

-- 9 de fev de 2024 10:57:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131828,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120517,1133900,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fcf64353-27be-44f8-8cea-c75ce9ee56af','Y','Y',10,4,2)
;

-- 9 de fev de 2024 10:57:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131829,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120517,1133907,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13b080aa-1924-4a8b-9811-ee1c30b1c16e','Y',20,5)
;

-- 9 de fev de 2024 10:57:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1131830,'Description','Optional short description of the record','A description is limited to 255 characters.',1120517,1133903,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f42ae097-5d98-4e7f-b490-a32128f7f2e4','Y',30,5,3)
;

-- 9 de fev de 2024 10:57:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131831,'Production Batch',1120517,1133905,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','847ffefb-0cd9-41cb-9202-276d5dce8623','N',2)
;

-- 9 de fev de 2024 10:57:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131832,'LBR_ProductionBatch_UU',1120517,1133906,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c775d1e5-3603-45f7-a6ab-c009eb7cd713','N',2)
;

-- 9 de fev de 2024 10:57:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131833,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120517,1133910,'Y',30,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3f7b435-1a5d-4b9a-8971-46e518de938c','Y',40,2)
;

-- 9 de fev de 2024 10:57:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131834,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120517,1133911,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c2804f99-c56f-4c18-ab35-c30d038ae7ae','Y',50,2)
;

-- 9 de fev de 2024 10:57:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131835,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120517,1133912,'Y',2,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4f8cbe6e-20fa-4367-a6e6-db7b18b3739e','Y',60,2)
;

-- 9 de fev de 2024 10:57:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131836,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120517,1133913,'Y',2,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','72510308-f946-46d3-9f2b-187b5b4a7d99','Y',70,2,2)
;

-- 9 de fev de 2024 10:57:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131837,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120517,1133914,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c2cba4f-335a-4fc1-a89e-798f207f8574','Y',80,2,2)
;

-- 9 de fev de 2024 10:57:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131838,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120517,1133915,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e6149254-9700-4719-92db-698ea710b761','Y',90,2)
;

-- 9 de fev de 2024 10:57:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131839,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120517,1133916,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','20b8e83e-bd09-4a26-b37c-1de53fd557a6','Y',100,2)
;

-- 9 de fev de 2024 10:57:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131840,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120517,1133917,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b1bbd81f-8212-43a9-9a1c-c12e51eb89d2','Y',110,2)
;

-- 9 de fev de 2024 10:57:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131841,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120517,1133904,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 10:57:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:57:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','32ed450a-3711-4123-bcf9-ceeb84550355','Y',120,2,2)
;

-- 9 de fev de 2024 10:57:47 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131829
;

-- 9 de fev de 2024 10:57:47 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131829
;

-- 9 de fev de 2024 10:57:55 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1133907
;

-- 9 de fev de 2024 10:57:55 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133907
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131833
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131834
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131830
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131838
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131835
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131839
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131840
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131841
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131832
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131837
;

-- 9 de fev de 2024 10:58:57 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 10:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131831
;

-- 9 de fev de 2024 10:59:10 BRT
UPDATE AD_Column SET FKConstraintName='MWarehouse_LBRProductionBatch', FKConstraintType='N',Updated=TO_TIMESTAMP('2024-02-09 10:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133915
;

-- 9 de fev de 2024 10:59:10 BRT
CREATE TABLE LBR_ProductionBatch (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(30) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ProductionBatch_ID NUMERIC(10) NOT NULL, LBR_ProductionBatch_UU VARCHAR(36) DEFAULT NULL , M_Warehouse_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, ProductionQty NUMERIC DEFAULT 0 NOT NULL, QtyDelivered NUMERIC DEFAULT 0 NOT NULL, Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_ProductionBatch_Key PRIMARY KEY (LBR_ProductionBatch_ID), CONSTRAINT LBR_ProductionBatch_UU_idx UNIQUE (LBR_ProductionBatch_UU))
;

-- 9 de fev de 2024 10:59:10 BRT
ALTER TABLE LBR_ProductionBatch ADD CONSTRAINT MWarehouse_LBRProductionBatch FOREIGN KEY (M_Warehouse_ID) REFERENCES m_warehouse(m_warehouse_id) DEFERRABLE INITIALLY DEFERRED
;

-- 9 de fev de 2024 10:59:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133918,0,'Production Batch',325,'LBR_ProductionBatch_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2024-02-09 10:59:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 10:59:31','YYYY-MM-DD HH24:MI:SS'),100,1123405,'Y','N','LBRA','N','N','N','Y','77d0d83e-40e1-4320-94e4-b99b660dad3f','Y',0,'N','N','N','N')
;

-- 9 de fev de 2024 10:59:38 BRT
UPDATE AD_Column SET FKConstraintName='LBRProductionBatch_MProduction', FKConstraintType='N',Updated=TO_TIMESTAMP('2024-02-09 10:59:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133918
;

-- 9 de fev de 2024 10:59:38 BRT
ALTER TABLE M_Production ADD COLUMN LBR_ProductionBatch_ID NUMERIC(10) DEFAULT NULL 
;

-- 9 de fev de 2024 10:59:38 BRT
ALTER TABLE M_Production ADD CONSTRAINT LBRProductionBatch_MProduction FOREIGN KEY (LBR_ProductionBatch_ID) REFERENCES lbr_productionbatch(lbr_productionbatch_id) DEFERRABLE INITIALLY DEFERRED
;

-- 9 de fev de 2024 11:00:20 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120518,'Items',1120182,20,'Y',325,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:19','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1133918,'N','N',1,'N','LBRA','Y','N','d96f609f-b65f-4c0e-83d7-1e2e2fa38196','B')
;

-- 9 de fev de 2024 11:00:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131842,'M_Production_UU',1120518,60928,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','714c47e9-1adf-4f4c-a650-8951cc8de364','N',1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131843,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120518,59049,'N',20,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7cd613df-dbb1-4c0a-ad50-f384198937f0','N',0,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131844,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120518,3596,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','361db949-c3c4-46ca-80ee-e967a4e76a2a','N',0,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131845,'Process Now',1120518,3610,'N',1,0,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f6886e05-48cb-422b-8959-acbdf92ddb34','N',0,5,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131846,'Complete Production','Complete Production','Indication that this is complete',1120518,61940,'N',1,0,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','f3e3db3f-a5fa-4dfe-8af0-2b6f7c4b8e7b','Y',130,5,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131847,'Use Production Plan',1120518,210981,'N',0,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','N','088ae24c-c2d7-4477-91a7-fbbb3a5f3634','N',210,1,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131848,'Project Task','Actual Project Task in a Phase','A Project Task in a Project Phase represents the actual work.',1120518,211818,'N',0,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9a6a3d6b-c93a-4d04-b38f-badac22253bb','Y',240,1,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131849,'Project Phase','Phase of a Project',1120518,211817,'N',0,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e2a0beb-2ba3-430c-adc3-8834d35b1f3a','Y',230,1,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131850,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120518,3597,'Y',22,10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:39','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','aff4f218-ee73-421b-a162-9f2dfb962b14','N',10,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131851,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120518,3598,'Y',22,20,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','@AD_Org_ID@','789f4270-5e7e-4b71-a7a6-09172a4cfa07','Y','Y',20,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131852,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120518,59961,'Y',22,30,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0414f23e-3f2f-44af-ba8a-9ab106c5bd82','Y',30,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131853,'Production Group',1120518,1129930,'Y',0,40,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','04c99738-dc88-4c06-a6d7-35fb86023955','Y',260,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131854,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120518,3604,'Y',60,50,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1551a02d-bc4b-403d-8ea5-f2a477010c49','Y',40,1,5,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131855,'Description','Optional short description of the record','A description is limited to 255 characters.',1120518,3605,'Y',255,60,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','61d9c5c2-cb8d-4654-906d-4d61aedbb3d8','Y',50,1,5,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131856,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120518,59966,'Y',7,70,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9eef2013-936c-448c-8b72-2e73eb5d04b2','Y',70,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131857,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120518,3608,'Y',7,80,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f58a1eca-de5f-46f0-a0ad-19026e5df0c9','Y',80,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131858,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120518,59962,'Y',22,90,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','Y','175abea4-ce15-47d2-8c40-1695c80630e5','Y',90,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,IsMandatory,AD_Reference_Value_ID,AD_Val_Rule_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131859,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120518,59963,'Y',10,100,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA',30,'Y',191,52087,'4fcd565b-08fa-486e-ae74-bc7fed455cff','Y',100,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131860,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120518,59964,'Y',10,110,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4bea4350-407a-4b8e-a07b-f1820e9caa82','Y',110,1,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131861,'Create/Update Production lines','Process which will create production lines based on BOM, or recreate with an optional adjusted quantity',1120518,61943,'N',1,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:44','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','3e07c4ed-8aa2-43b9-b9ea-2d064ebeb4ff','Y',120,2,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131862,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120518,1129931,'Y',0,130,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5861d011-b84f-48da-8b8f-55fd27b498e4','Y',250,4,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131863,'Records created',1120518,4752,'Y',1,140,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:45','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','65098659-6a71-4a9a-ab12-bf363220429e','Y',140,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131864,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120518,3599,'Y',1,160,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7d3d4ac2-db0e-4937-b654-947997e20a05','Y',60,5,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131865,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120518,61941,'Y',10,170,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',104,'LBRA','f2262026-110e-4627-b85b-3f23e1115a59','Y',170,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131866,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120518,61942,'Y',10,180,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',104,'LBRA','e11b4d62-ea3c-4320-a629-87e80c38f45d','Y',180,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131867,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120518,9551,'Y','@$Element_PJ@=''Y''',22,190,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','b79e122d-9a71-4f22-99a2-7de89729c2df','Y',160,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131868,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120518,9554,'Y','@$Element_AY@=''Y''',22,200,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','90be0188-4ab6-4094-9db4-33ae05b8e3a7','Y',150,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131869,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120518,9555,'Y','@$Element_MC@=Y',22,210,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','8b87fca7-e462-4505-a6c5-2f833ad0b798','Y',170,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131870,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120518,9552,'Y','@$Element_OT@=Y',22,220,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','da8b5405-026f-4675-b53f-c983266cc05e','Y',180,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131871,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120518,9556,'Y','@$Element_U1@=Y',22,230,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','946bfc7b-f31b-4f45-9ce8-70abb61c6fac','Y',190,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131872,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120518,9553,'Y','@$Element_U1@=Y',22,240,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','b86f8d12-77a5-4abc-b318-5e44296d90cf','Y',200,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131873,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120518,210984,'Y',0,250,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','e5477961-a5fa-4e38-bad6-5d287a3883ee','Y',220,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131874,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120518,210983,'Y',0,251,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','2642c56d-ea31-440a-b175-51abd1d68604','Y',130,5,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131875,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120518,3609,'Y',1,260,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','41a8c789-172e-4a77-9097-94893553f092','Y',150,2,1,1,'N','N','N')
;

-- 9 de fev de 2024 11:00:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131876,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120518,6537,'Y','@Processed@=Y',1,270,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:00:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:00:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','9d9c352b-bd48-4787-a6f3-25091659e866','Y',160,5,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131846
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131874
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131863
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131868
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131875
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131876
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131867
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131869
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131865
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131870
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131866
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131871
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131872
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131873
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131849
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131848
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131862
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131853
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131861
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131856
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131855
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131864
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131854
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131851
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131850
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131847
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131852
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131857
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131858
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131859
;

-- 9 de fev de 2024 11:01:23 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131860
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131841
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131837
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131836
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131830
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131833
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131834
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131835
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131838
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131839
;

-- 9 de fev de 2024 11:01:51 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131840
;

-- 9 de fev de 2024 11:02:20 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120519,'Line',1120182,30,'Y',326,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:19','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',2,'N','LBRA','Y','N','f1b1f41b-adf9-4302-b7eb-9c11de5472de','B')
;

-- 9 de fev de 2024 11:02:33 BRT
UPDATE AD_Tab SET AD_Column_ID=59960,Updated=TO_TIMESTAMP('2024-02-09 11:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120519
;

-- 9 de fev de 2024 11:02:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131877,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120519,12073,'N',1,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','42827216-7fa3-4f4c-9589-6920bc1aabb7','N',0,2,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131878,'Production Plan','Plan for how a product is produced','The Production Plan identifies the items and steps in generating a product.',1120519,4753,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','73f5cacd-c027-4da5-b9b5-5d45ad0d4d98','N',0,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131879,'Production Line','Document Line representing a production','The Production Line indicates the production document line (if applicable) for this transaction',1120519,3611,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d44fd388-a701-469b-8afc-0b2fd47d5ca0','N',0,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131880,'Product Type','Type of product','The type of product also determines accounting consequences.',1120519,61947,'N',1,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1ddcb169-f164-4797-9934-0fb598a40de5','N',0,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131881,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120519,3612,'Y',22,10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4cef0f29-8847-49a8-94d3-e379e2cc1ea2','N',10,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131882,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120519,3613,'Y',22,20,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','99d310e5-380a-43cf-9f38-b381c2811a8b','Y','Y',20,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131883,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120519,59960,'Y',10,30,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','Y','3443221e-888e-47ea-bcd9-b36c251940c0','Y',30,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131884,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120519,4768,'Y',22,40,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f21f977a-0ccb-4614-ad5d-ab2d0330c186','Y',40,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131885,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120519,3620,'Y',22,50,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','02275512-890d-48df-8fcc-c839b2fe4fed','Y',50,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131886,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120519,1130238,'Y',0,51,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','993fdf71-bf5b-4cb6-9f4e-edd0f35633de','Y',150,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131887,'End Product','End Product of production',1120519,61945,'Y',1,60,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7f145f25-2528-495f-a85b-071edebeee39','Y',60,2,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131888,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120519,8552,'Y',22,70,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0d2ad6f9-15f7-45e7-9810-1a3b6a51377e','Y',70,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131889,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120519,3614,'Y',1,80,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','190e4358-6506-407c-9ab2-bf7f1809d8a1','Y',80,2,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131890,'Planned Quantity','Planned quantity for this project','The Planned Quantity indicates the anticipated quantity for this project or project line',1120519,59967,'Y',10,90,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','bc935688-48d0-496b-a249-7f32d2643d2e','Y',90,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131891,'Quantity Used',1120519,61944,'Y','@IsEndProduct@=N',10,100,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cd80d71a-b867-4611-a849-8ab33f4254d7','Y',100,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131892,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120519,3622,'Y','@IsEndProduct@=Y',22,110,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','300b724f-0760-40dd-b184-08eb905bbbfd','Y',110,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131893,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120519,3619,'Y',22,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA',30,191,52087,'5b1ca791-ef20-4313-bd09-b46c1fcf77de','Y',120,1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131894,'Available Quantity','Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity',1120519,61946,'Y',22,130,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','db014aa2-0c52-4a0c-8134-1ec38a8701b6','Y',130,4,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131895,'Description','Optional short description of the record','A description is limited to 255 characters.',1120519,3623,'Y',255,140,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e18687e-55be-447a-abf7-b32f28eb44d5','Y',140,1,5,1,'N','N','N')
;

-- 9 de fev de 2024 11:02:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131896,'M_ProductionLine_UU',1120519,60929,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:02:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0c47674e-f18c-4a39-b991-0fcf233988f9','N',1,2,1,'N','N','N')
;

-- 9 de fev de 2024 11:03:48 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120427,'Production Batch','W',1120182,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:03:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','d693080e-cdd5-4cc7-8ddb-3dc51fbd2b57')
;

-- 9 de fev de 2024 11:03:48 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120427, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120427)
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53350
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53351
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53298
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53299
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53300
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53301
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53352
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53302
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53353
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53354
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=228
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53297
;

-- 9 de fev de 2024 11:04:43 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53296, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120427
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131886
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131895
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131889
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131887
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131883
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131882
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131881
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131884
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131885
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131888
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131893
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131890
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131891
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131892
;

-- 9 de fev de 2024 11:05:27 BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131894
;

-- 9 de fev de 2024 11:53:57 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,WorkingTime,Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,AD_Table_ID,Value,WorkflowType,IsValid,DocumentNo,QtyBatchSize,IsBetaFunctionality,Yield,AD_Workflow_UU) VALUES ('Process_LBR_ProductionBatch','(Standard Process Production Batch)',1120038,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:53:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:53:56','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','Kenos Ltda',0,1,0,0,'D',0,'R','N',1120763,'Process_LBR_ProductionBatch','P','N','10000000',1,'N',100,'d2bc3c11-92f9-4db9-85dc-b792cbdd237c')
;

-- 9 de fev de 2024 11:54:31 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120148,'(DocAuto)','(Standard Node)',1120038,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:54:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:54:30','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'c6a8d57b-a235-446e-bb82-3f301e1366c8',200000)
;

-- 9 de fev de 2024 11:54:40 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120148, IsValid='Y',Updated=TO_TIMESTAMP('2024-02-09 11:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120038
;

-- 9 de fev de 2024 11:54:58 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120329,0,0,'Y',TO_TIMESTAMP('2024-02-09 11:54:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 11:54:58','YYYY-MM-DD HH24:MI:SS'),100,'Process Production Batch','N','LBR_ProductionBatch Process','N','3','LBRA',0,0,1120038,'N','N','Y','N','5bb26b9d-5ff9-4740-a86f-5d5531012b3b','P')
;

-- 9 de fev de 2024 11:55:11 BRT
UPDATE AD_Column SET AD_Process_ID=1120329,Updated=TO_TIMESTAMP('2024-02-09 11:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133913
;

-- 9 de fev de 2024 15:03:54 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123407,0,0,'Y',TO_TIMESTAMP('2024-02-09 15:03:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 15:03:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PercentageProduced','Percentage Produced','Percentage Produced','LBRA','44182b19-74ee-4412-bed2-0c29cee4014e')
;

-- 9 de fev de 2024 15:05:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,ColumnSQL,IsAutocomplete,IsAllowLogging,FormatPattern,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133919,0,'Percentage Produced',1120763,'LBR_PercentageProduced',14,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_TIMESTAMP('2024-02-09 15:05:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 15:05:22','YYYY-MM-DD HH24:MI:SS'),100,1123407,'N','N','LBRA','N','N','(SELECT SUM(CASE WHEN p.DocStatus IN (''CL'',''CO'') THEN pl.MovementQty ELSE 0 END) / NULLIF (SUM(pl.MovementQty), 0)
FROM M_Production p, M_ProductionLine pl 
WHERE p.M_Production_ID=pl.M_Production_ID 
AND p.LBR_ProductionBatch_ID=LBR_ProductionBatch.LBR_ProductionBatch_ID
AND pl.IsEndProduct=''Y'')','N','Y','0.00%','6bbca4a7-b025-4a13-b65a-6cc8b955e5da','N',0,'N','N','N','N')
;

-- 9 de fev de 2024 15:06:05 BRT
UPDATE AD_Table SET AD_Window_ID=1120182,Updated=TO_TIMESTAMP('2024-02-09 15:06:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120763
;

-- 9 de fev de 2024 15:06:16 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 15:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131840
;

-- 9 de fev de 2024 15:06:18 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-02-09 15:06:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131839
;

-- 9 de fev de 2024 15:06:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131897,'Percentage Produced',1120517,1133919,'Y',14,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-02-09 15:06:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-02-09 15:06:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','091fae20-2a55-434a-aa2f-051b0a32c9b9','Y',80,2)
;

-- 9 de fev de 2024 11:10:37 BRT
SELECT Register_Migration_Script ('202402091112_ProductionBatch.sql') FROM DUAL
;

