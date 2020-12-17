-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de dez de 2020 10:48:35 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120707,'SPED Fiscal','Escrituração Fiscal Digital (EFD-ICMS/IPI) pelo contribuinte do ICMS e/ou IPI, pessoa física ou jurídica','Escrituração Fiscal Digital (EFD-ICMS/IPI) pelo contribuinte do ICMS e/ou IPI, pessoa física ou jurídica','LBR_SPEDFiscal',0,'3',0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','a92652fc-d1b7-43e9-a78a-0f4e7c92dcd6','N','N')
;

-- 15 de dez de 2020 10:48:35 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SPEDFiscal',1000000,'N','N','Table LBR_SPEDFiscal','Y','Y',0,0,TO_TIMESTAMP('2020-12-15 10:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:35','YYYY-MM-DD HH24:MI:SS'),100,1153953,'Y',1000000,1,200000,'125f0d9e-3f64-40ef-940e-06a9544939af')
;

-- 15 de dez de 2020 10:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132772,1.000000000000,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120707,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:47','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','dfb33f69-d9a2-49e7-9c7b-1dfad3e29c6e','N','N','N','D','N')
;

-- 15 de dez de 2020 10:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132773,1.000000000000,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120707,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','f3255e84-5af9-4630-b482-e8ca76e8072e','N','N','N','D','N')
;

-- 15 de dez de 2020 10:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132774,0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120707,199,'C_Period_ID',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,206,'Y','N','LBRA','N','N','N','Y','d4859727-5b86-420d-9118-102cef397d75','Y','N','N','N')
;

-- 15 de dez de 2020 10:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132775,1.000000000000,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120707,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','9d92337b-743a-4d33-948a-31c515bcf25c','N','N','N','N')
;

-- 15 de dez de 2020 10:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132776,1.000000000000,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120707,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','76e2b88b-6e7b-474b-b9e2-ef56fccd1f37','N','N','N','D','N')
;

-- 15 de dez de 2020 10:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132777,0,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120707,'C_Year_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:52','YYYY-MM-DD HH24:MI:SS'),100,223,'Y','N','LBRA','N','N','N','Y','4baff86d-b473-4c6a-93a9-c2e0fb3293a2','Y','N','N','N')
;

-- 15 de dez de 2020 10:48:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132778,0,'Generate To','Generate To',1120707,'GenerateTo',10,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,1491,'Y',1120227,'N','LBRA','N','N','N','Y','392e8816-11db-4b05-8a4e-95b450d51e44','Y','Y','N','N')
;

-- 15 de dez de 2020 10:48:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132779,1.000000000000,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120707,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','10c85f44-218e-4548-b27d-19a5b545ff32','N','N','N','N')
;

-- 15 de dez de 2020 10:48:53 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123231,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPEDFiscal_ID','SPED Fiscal','SPED Fiscal','LBRA','7174d8ef-39a8-4d0d-b1a9-06642ee6d2ba')
;

-- 15 de dez de 2020 10:48:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132780,1.000000000000,'SPED Fiscal',1120707,'LBR_SPEDFiscal_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,1123231,'N','N','LBRA','N','N','N','N','2524af27-1171-41f4-ba63-cdc851f88caf','N','N','N','N')
;

-- 15 de dez de 2020 10:48:54 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123232,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPEDFiscal_UU','LBR_SPEDFiscal_UU','LBR_SPEDFiscal_UU','LBRA','d10ba832-07c5-4ecc-bfd9-1becf73abf96')
;

-- 15 de dez de 2020 10:48:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132781,1.0,'LBR_SPEDFiscal_UU',1120707,'LBR_SPEDFiscal_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:54','YYYY-MM-DD HH24:MI:SS'),100,1123232,'Y','N','LBRA','N','N','N','Y','4420d240-4f84-4a96-ac11-959314254279','N','N','N','N','N')
;

-- 15 de dez de 2020 10:48:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132782,0,'Process Now',1120707,'Processing',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,524,'Y',1120114,'N','LBRA','N','N','N','Y','d354edb8-b0bb-4c4c-b5f8-157f79f3772b','N','B','N','N')
;

-- 15 de dez de 2020 10:48:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132783,1.000000000000,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120707,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','bd6dc7ec-811d-4fb4-8ecc-0ffc07b7d352','N','N','N','N')
;

-- 15 de dez de 2020 10:48:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132784,1.000000000000,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120707,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:48:55','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','501dc14d-6d88-4887-a79b-c3b8a2c38e94','N','N','N','D','N')
;

-- 15 de dez de 2020 10:49:18 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132778
;

-- 15 de dez de 2020 10:49:18 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132778
;

-- 15 de dez de 2020 10:56:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132785,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120707,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:56:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:56:12','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','N','N','Y','627abcb2-5e21-4ec7-829e-a17f43a97e29','Y',0,'N','N','N')
;

-- 15 de dez de 2020 10:56:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132786,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120707,'DocAction','CO',2,'N','N','N','N','N',0,'N',28,135,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:56:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:56:19','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','N','N','Y','14d54ec2-ec9b-4859-a0de-e4d5439a76e6','Y',0,'Y','N','N')
;

-- 15 de dez de 2020 10:56:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132787,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120707,'DateDoc',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:56:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:56:26','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','bc7b7955-0789-410c-a9fe-bf2e38139f30','Y',0,'N','N','N')
;

-- 15 de dez de 2020 10:56:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132788,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120707,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:56:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:56:40','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','Y','6eb70e8e-e318-4bdc-a07a-a62ee3e8d270','Y',0,'N','N','N')
;

-- 15 de dez de 2020 10:57:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132789,0,'Accountant',1120707,'LBR_BP_Accountant_ID',10,'N','N','N','N','N',0,'N',18,138,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:57:00','YYYY-MM-DD HH24:MI:SS'),100,1121796,'N','N','LBRA','N','N','N','Y','261e3d51-efc1-4ff7-b8aa-f403f971ccf7','Y',0,'N','N','N')
;

-- 15 de dez de 2020 10:58:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132790,0,'Tipo de atividade','Tipo de atividade','Informar “0 - Industrial ou equiparado a industrial”, se o contribuinte é industrial ou equiparado a industrial, conforme legislação do Imposto sobre Produtos Industrializados (IPI). Se o estabelecimento não se enquadrar no disposto nos art. 8o, 9o., 10o e 11o e cujas operações não se enquadrem dentro do campo de incidência do IPI, conforme parágrafo único do art. 2o, todos do Decreto no 4.544/2002, ainda que seja uma indústria, deve informar a opção "1 - Outras"',1120707,'lbr_IndAtividade',1,'N','N','N','N','N',0,'N',17,1120223,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:58:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:58:10','YYYY-MM-DD HH24:MI:SS'),100,1121794,'N','N','LBRA','N','N','N','Y','6ee046b1-52c0-43e6-ab99-0fdb6720d460','Y',0,'N','N','N')
;

-- 15 de dez de 2020 10:58:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132791,0,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',1120707,'LBR_IndPerfil',1,'N','N','N','N','N',0,'N',17,1120336,0,0,'Y',TO_TIMESTAMP('2020-12-15 10:58:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 10:58:20','YYYY-MM-DD HH24:MI:SS'),100,1122995,'Y','N','LBRA','N','N','N','Y','9d33aede-4ce5-4978-b11e-ca7d2aaa93e5','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 11:03:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123233,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:03:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_COD_VER','Versão do arquivo','Código da versão do leiaute do Arquivo SPED','Código da versão do leiaute do Arquivo SPED','Versão do arquivo','LBRA','5a67c4cf-10dd-4af6-8b34-a2782685ec6d')
;

-- 15 de dez de 2020 11:06:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123234,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:06:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_COD_FIN','Finalidade do Arquivo','Finalidade do Arquivo SPED','Finalidade do Arquivo SPED
0 = Original
1 = Retificado','Finalidade do Arquivo','LBRA','a80096cb-d477-4253-b32f-9fd45e6ada41')
;

-- 15 de dez de 2020 11:08:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132792,0,'Versão do arquivo','Código da versão do leiaute do Arquivo SPED','Código da versão do leiaute do Arquivo SPED',1120707,'LBR_COD_VER',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:08:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:08:09','YYYY-MM-DD HH24:MI:SS'),100,1123233,'Y','N','LBRA','N','N','N','Y','b65cc9dd-f1ee-4767-b9b5-31ad776a7852','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 11:09:03 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120374,'Finalidade do Arquivo SPED','L',0,0,'Y',TO_TIMESTAMP('2020-12-15 11:09:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:09:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','ea96c238-510c-40e6-915d-39e01f672e54')
;

-- 15 de dez de 2020 11:09:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122900,'Original',1120374,'0',0,0,'Y',TO_TIMESTAMP('2020-12-15 11:09:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:09:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a0982b7e-79cd-4146-bfbb-ccc850f61c34')
;

-- 15 de dez de 2020 11:09:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122901,'Retificado',1120374,'1',0,0,'Y',TO_TIMESTAMP('2020-12-15 11:09:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:09:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b20f5c7f-ff9a-41ac-9d22-baff10bbef0f')
;

-- 15 de dez de 2020 11:09:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132793,0,'Finalidade do Arquivo','Finalidade do Arquivo SPED','Finalidade do Arquivo SPED
0 = Original
1 = Retificado',1120707,'LBR_COD_FIN','0',1,'N','N','Y','N','N',0,'N',17,1120374,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:09:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:09:54','YYYY-MM-DD HH24:MI:SS'),100,1123234,'Y','N','LBRA','N','N','N','Y','181a2f6e-4a5f-4657-be6a-3bc9adcf8270','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 11:11:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132794,0,'Process Tax Assessment',1120707,'LBR_ProcTaxAssessment','Y',1,'N','N','N','N','N',0,'N',1000006,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:11:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:11:35','YYYY-MM-DD HH24:MI:SS'),100,1122337,'Y','N','LBRA','N','N','N','Y','41bf5770-794d-4477-8ef6-f8755369c621','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 11:15:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123235,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:15:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:15:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProcBookInventory','Process Book Inventory','Process Book Inventory (SPED Bloco K)','Process Book Inventory (SPED Bloco K)','Process Book Inventory','LBRA','5cf5ee32-a952-47f3-afff-835a52bae7e4')
;

-- 15 de dez de 2020 11:16:04 BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-12-15 11:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123235
;

-- 15 de dez de 2020 11:16:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132795,0,'Process Book Inventory','Process Book Inventory (SPED Bloco K)','Process Book Inventory (SPED Bloco K)',1120707,'LBR_ProcBookInventory','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-12-15 11:16:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 11:16:43','YYYY-MM-DD HH24:MI:SS'),100,1123235,'Y','N','LBRA','N','N','N','Y','8b2be5c8-7301-4699-9264-8df6133c0354','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 11:17:41 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:17:41 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:17:41 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- 15 de dez de 2020 11:19:25 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:19:25 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:19:25 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;


-- 15 de dez de 2020 11:20:19 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:20:19 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:20:19 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- 15 de dez de 2020 11:20:59 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:20:59 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:20:59 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de dez de 2020 11:43:10 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-12-15 11:43:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132794
;

-- 15 de dez de 2020 11:44:01 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-12-15 11:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132788
;

-- 15 de dez de 2020 11:44:13 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:44:13 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:44:13 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de dez de 2020 11:55:43 BRT
UPDATE AD_Column SET DefaultValue='''Y''',Updated=TO_TIMESTAMP('2020-12-15 11:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132794
;

-- 15 de dez de 2020 11:59:08 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132774
;

-- 15 de dez de 2020 11:59:08 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 15 de dez de 2020 11:59:08 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBRSPEDFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 11:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- 15 de dez de 2020 11:59:08 BRT
CREATE TABLE LBR_SPEDFiscal (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Period_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, C_Year_ID NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_BP_Accountant_ID NUMERIC(10) DEFAULT NULL , LBR_COD_FIN CHAR(1) DEFAULT '0' NOT NULL, LBR_COD_VER VARCHAR(3) DEFAULT NULL , lbr_IndAtividade CHAR(1) DEFAULT NULL , LBR_IndPerfil CHAR(1) DEFAULT NULL , LBR_ProcBookInventory CHAR(1) DEFAULT 'N' CHECK (LBR_ProcBookInventory IN ('Y','N')) NOT NULL, LBR_ProcTaxAssessment CHAR(1) DEFAULT 'Y' NOT NULL, LBR_SPEDFiscal_ID NUMERIC(10) NOT NULL, LBR_SPEDFiscal_UU VARCHAR(36) DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_SPEDFiscal_Key PRIMARY KEY (LBR_SPEDFiscal_ID), CONSTRAINT LBR_SPEDFiscal_UU_idx UNIQUE (LBR_SPEDFiscal_UU))
;

-- 15 de dez de 2020 11:59:09 BRT
ALTER TABLE LBR_SPEDFiscal ADD CONSTRAINT CPeriod_LBRSPEDFiscal FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de dez de 2020 11:59:09 BRT
ALTER TABLE LBR_SPEDFiscal ADD CONSTRAINT CYear_LBRSPEDFiscal FOREIGN KEY (C_Year_ID) REFERENCES c_year(c_year_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de dez de 2020 11:59:09 BRT
ALTER TABLE LBR_SPEDFiscal ADD CONSTRAINT LBRBPAccountant_LBRSPEDFiscal FOREIGN KEY (LBR_BP_Accountant_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de dez de 2020 12:21:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132796,0,'SPED Fiscal',1120466,'LBR_SPEDFiscal_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 12:21:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 12:21:48','YYYY-MM-DD HH24:MI:SS'),100,1123231,'N','N','LBRA','N','N','N','Y','a8e808c7-9db8-4779-a820-143bf247af5f','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 12:22:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132797,0,'SPED Contribution',1120466,'LBR_SPEDContribution_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-15 12:22:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 12:22:12','YYYY-MM-DD HH24:MI:SS'),100,1123190,'N','N','LBRA','N','N','N','Y','629f92f1-dce2-4e92-b9c2-3689aaad2404','Y',0,'N','N','N','N')
;

-- 15 de dez de 2020 12:22:48 BRT
UPDATE AD_Column SET FKConstraintName='LBRSPEDFiscal_LBRFactFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 12:22:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132796
;

-- 15 de dez de 2020 12:22:48 BRT
ALTER TABLE LBR_FactFiscal ADD COLUMN LBR_SPEDFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 15 de dez de 2020 12:22:48 BRT
ALTER TABLE LBR_FactFiscal ADD CONSTRAINT LBRSPEDFiscal_LBRFactFiscal FOREIGN KEY (LBR_SPEDFiscal_ID) REFERENCES lbr_spedfiscal(lbr_spedfiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de dez de 2020 12:22:53 BRT
UPDATE AD_Column SET FKConstraintName='LBRSPEDContribution_LBRFactFis', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-15 12:22:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132797
;

-- 15 de dez de 2020 12:22:53 BRT
ALTER TABLE LBR_FactFiscal ADD COLUMN LBR_SPEDContribution_ID NUMERIC(10) DEFAULT NULL 
;

-- 15 de dez de 2020 12:22:53 BRT
ALTER TABLE LBR_FactFiscal ADD CONSTRAINT LBRSPEDContribution_LBRFactFis FOREIGN KEY (LBR_SPEDContribution_ID) REFERENCES lbr_spedcontribution(lbr_spedcontribution_id) DEFERRABLE INITIALLY DEFERRED
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de dez de 2020 14:38:21 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120173,'Generate SPED Fiscal','Generate SPED Fiscal EFD ICMS/IPI',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:20','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','N','N',0,0,'N','915ff8c3-0add-438f-a8da-7fc92199e221')
;

-- 15 de dez de 2020 14:38:51 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120413,'SPED Fiscal',1120173,10,'Y',1120707,0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:50','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','95c19411-0715-4017-ab45-17e14bc72d4b','B')
;

-- 15 de dez de 2020 14:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130136,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120413,1132772,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c5e8f656-fc04-448d-9296-49cd40938fd4','N',2)
;

-- 15 de dez de 2020 14:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130137,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120413,1132773,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78c03f3d-26b5-4497-8cba-ed96e02e6511','Y','Y',10,4,2)
;

-- 15 de dez de 2020 14:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130138,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120413,1132774,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','18f1b8cd-a033-4803-8a1d-dc919223ee86','Y',20,2)
;

-- 15 de dez de 2020 14:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130139,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120413,1132777,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c0dc4399-b578-4b27-84af-618f8ae6f2ac','Y',30,2)
;

-- 15 de dez de 2020 14:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130140,'SPED Fiscal',1120413,1132780,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bcc0f9df-d597-4d3b-818c-89e11e71e77b','N',2)
;

-- 15 de dez de 2020 14:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130141,'LBR_SPEDFiscal_UU',1120413,1132781,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','91d7a7b4-22c5-4c49-9340-363fd4a91bfe','N',2)
;

-- 15 de dez de 2020 14:38:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130142,'Process Now',1120413,1132782,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8098680b-f48d-44b6-890e-0b0b7c119c07','Y',40,2,2)
;

-- 15 de dez de 2020 14:38:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130143,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120413,1132779,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:38:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:38:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e90b5be3-aa0f-4b9d-90fa-822612271627','Y',50,2,2)
;

-- 15 de dez de 2020 14:42:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130144,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120413,1132785,'Y',2,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ec9f2ac5-930f-435a-9156-868adb9506da','Y',60,2)
;

-- 15 de dez de 2020 14:42:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130145,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120413,1132786,'Y',2,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b2a614d8-c165-4c7d-9dce-37ef8af6d215','Y',70,2,2)
;

-- 15 de dez de 2020 14:42:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130146,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120413,1132787,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9d690bf3-e858-4726-8c99-070df148daa2','Y',80,2)
;

-- 15 de dez de 2020 14:42:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130147,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120413,1132788,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','62c64e43-6fd7-47c6-a6a4-9a9e2e96341f','Y',90,2,2)
;

-- 15 de dez de 2020 14:42:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130148,'Accountant',1120413,1132789,'Y',10,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0aca663d-a6f7-42d8-8862-5f2b719f3ae5','Y',100,2)
;

-- 15 de dez de 2020 14:42:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130149,'Tipo de atividade','Tipo de atividade','Informar “0 - Industrial ou equiparado a industrial”, se o contribuinte é industrial ou equiparado a industrial, conforme legislação do Imposto sobre Produtos Industrializados (IPI). Se o estabelecimento não se enquadrar no disposto nos art. 8o, 9o., 10o e 11o e cujas operações não se enquadrem dentro do campo de incidência do IPI, conforme parágrafo único do art. 2o, todos do Decreto no 4.544/2002, ainda que seja uma indústria, deve informar a opção "1 - Outras"',1120413,1132790,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','630b5961-cdc0-4f7d-962c-562c1d3aa784','Y',110,2)
;

-- 15 de dez de 2020 14:42:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130150,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',1120413,1132791,'Y',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','39a3017d-b93f-403e-b126-7b5cd77860c4','Y',120,2)
;

-- 15 de dez de 2020 14:42:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130151,'Versão do arquivo','Código da versão do leiaute do Arquivo SPED','Código da versão do leiaute do Arquivo SPED',1120413,1132792,'Y',3,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b12e15d0-c24d-4249-8b6a-e07c2bfdb47d','Y',130,2)
;

-- 15 de dez de 2020 14:42:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130152,'Finalidade do Arquivo','Finalidade do Arquivo SPED','Finalidade do Arquivo SPED
0 = Original
1 = Retificado',1120413,1132793,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fc207ae1-17f0-4840-ab81-837531c5373b','Y',140,2)
;

-- 15 de dez de 2020 14:42:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130153,'Process Tax Assessment',1120413,1132794,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e358858c-8b2b-4393-b5c4-589e71cd6297','Y',150,2)
;

-- 15 de dez de 2020 14:42:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130154,'Process Book Inventory','Process Book Inventory (SPED Bloco K)','Process Book Inventory (SPED Bloco K)',1120413,1132795,'Y',1,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-15 14:42:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:42:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dd35fa69-ceac-4fea-b921-2ad20863252e','Y',160,2,2)
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130139
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130138
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130143
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130146
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130145
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130147
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130144
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130151
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130152
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130150
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130148
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130153
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130154
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130141
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130142
;

-- 15 de dez de 2020 14:46:12 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130140
;

-- 15 de dez de 2020 14:47:05 BRT
UPDATE AD_Column SET AD_Reference_ID=20,Updated=TO_TIMESTAMP('2020-12-15 14:47:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132794
;

-- 15 de dez de 2020 14:47:08 BRT
INSERT INTO t_alter_column values('lbr_spedfiscal','LBR_ProcTaxAssessment','CHAR(1)',null,'Y')
;

-- 15 de dez de 2020 14:47:09 BRT
UPDATE LBR_SPEDFiscal SET LBR_ProcTaxAssessment='Y' WHERE LBR_ProcTaxAssessment IS NULL
;

-- 15 de dez de 2020 14:47:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130153
;

-- 15 de dez de 2020 14:55:04 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120091,0,0,'Y',TO_TIMESTAMP('2020-12-15 14:55:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:55:04','YYYY-MM-DD HH24:MI:SS'),100,'Parameter','LBRA','N','e99d0fc1-eb96-4407-b722-08c8ade00bc8')
;

-- 15 de dez de 2020 14:55:19 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120091, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 14:55:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130151
;

-- 15 de dez de 2020 14:58:23 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,WorkingTime,Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,AD_Table_ID,Value,WorkflowType,IsValid,DocumentNo,QtyBatchSize,IsBetaFunctionality,AD_Workflow_UU) VALUES ('Process_LBR_SPEDFiscal','(Standard Process Order)',1120036,0,0,'Y',TO_TIMESTAMP('2020-12-15 14:58:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:58:23','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','iDempiere, Inc.',0,1,0,0,'D',0,'R','N',1120707,'Process_LBR_SPEDFiscal','P','N','10000000',1,'N','410e614b-87ef-4e02-9d51-17cf6813e51d')
;

-- 15 de dez de 2020 14:59:48 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120140,'(DocAuto)','(Standard Node)',1120036,0,0,'Y',TO_TIMESTAMP('2020-12-15 14:59:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 14:59:48','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'f662b6ae-a4dc-4e67-ab42-3791f7fa757d',200000)
;

-- 15 de dez de 2020 15:00:22 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120141,'(DocComplete)','(Standard Node)',1120036,0,0,'Y',TO_TIMESTAMP('2020-12-15 15:00:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 15:00:22','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(DocComplete)',0,'N','N',0,0,100,'345cd49d-5e85-4b74-a817-4a1921d0f01b',200000)
;

-- 15 de dez de 2020 15:00:47 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120142,'(DocPrepare)','(Standard Node)',1120036,0,0,'Y',TO_TIMESTAMP('2020-12-15 15:00:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 15:00:47','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'71124731-016e-4b04-8cb2-c6444ff44d30',200000)
;

-- 15 de dez de 2020 15:01:08 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120143,'(Start)','(Standard Node)',1120036,0,0,'Y',TO_TIMESTAMP('2020-12-15 15:01:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 15:01:08','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'220e3536-2f51-4458-8a16-9d3a240c4a04',200000)
;

-- 15 de dez de 2020 15:01:25 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120143, IsValid='Y',Updated=TO_TIMESTAMP('2020-12-15 15:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120036
;

-- 15 de dez de 2020 15:02:36 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120375,'SPED Fiscal','W',1120173,0,0,'Y',TO_TIMESTAMP('2020-12-15 15:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 15:02:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','938b4e25-b6fa-4799-b676-b566fa6eaa11')
;

-- 15 de dez de 2020 15:02:36 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120375, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120375)
;

-- 15 de dez de 2020 15:03:06 BRT
UPDATE AD_Menu SET Name='Generate SPED Fiscal',Updated=TO_TIMESTAMP('2020-12-15 15:03:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120375
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120375
;

-- 15 de dez de 2020 15:03:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120365
;

-- 15 de dez de 2020 15:03:34 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_TIMESTAMP('2020-12-15 15:03:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120180
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de dez de 2020 17:12:59 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120260,0,0,'Y',TO_TIMESTAMP('2020-12-15 17:12:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-15 17:12:59','YYYY-MM-DD HH24:MI:SS'),100,'Process LBR_SPEDFiscal','N','LBR_SPEDFiscal Process','N','3','LBRA',0,0,1120036,'N','N','Y','N','c64387e1-51eb-4c21-81f9-e36951e705b5','P')
;

-- 15 de dez de 2020 17:13:27 BRT
UPDATE AD_Column SET AD_Process_ID=1120260,Updated=TO_TIMESTAMP('2020-12-15 17:13:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132786
;

-- 15 de dez de 2020 17:30:44 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 17:30:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130144
;

-- 15 de dez de 2020 17:31:31 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 17:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130147
;

-- 15 de dez de 2020 17:32:26 BRT
UPDATE AD_Column SET MandatoryLogic='@#Date@',Updated=TO_TIMESTAMP('2020-12-15 17:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132787
;

-- 15 de dez de 2020 17:32:36 BRT
UPDATE AD_Column SET MandatoryLogic=NULL,Updated=TO_TIMESTAMP('2020-12-15 17:32:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132787
;

-- 15 de dez de 2020 17:32:43 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, MandatoryLogic='@#Date@', IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-15 17:32:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130146
;

-- 15 de dez de 2020 17:34:18 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-12-15 17:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132790
;

-- 15 de dez de 2020 17:34:50 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-12-15 17:34:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132789
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de dez de 2020 12:14:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132798,0,'SPED Fiscal',1120608,'LBR_SPEDFiscal_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-12-16 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:14:07','YYYY-MM-DD HH24:MI:SS'),100,1123231,'N','N','LBRA','N','N','N','Y','a9dcf937-7483-4336-8bfd-b2c093a95255','Y',0,'N','N','N','N')
;

-- 16 de dez de 2020 12:14:21 BRT
UPDATE AD_Column SET FKConstraintName='LBRSPEDFiscal_LBRBookInventory', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-12-16 12:14:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132798
;

-- 16 de dez de 2020 12:14:21 BRT
ALTER TABLE LBR_BookInventory ADD COLUMN LBR_SPEDFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 16 de dez de 2020 12:14:22 BRT
ALTER TABLE LBR_BookInventory ADD CONSTRAINT LBRSPEDFiscal_LBRBookInventory FOREIGN KEY (LBR_SPEDFiscal_ID) REFERENCES lbr_spedfiscal(lbr_spedfiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de dez de 2020 12:18:01 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (1120414,'Book Inventory',1120173,20,'Y',1120608,0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:00','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132798,'IsReValidate = ''N''','N','N',1,'N','LBRA','Y','N',1132780,'ad29da77-108f-4b4d-9316-da1427bd484c','B')
;

-- 16 de dez de 2020 12:18:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130155,'Re-Validate','Re-Validate entries',1120414,1130592,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','''N''','ff19ca74-07e8-4782-8047-283e0055b28f','N',0,2,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130156,'Book Inventory',1120414,1130590,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d914d1fd-40ad-4644-9bd7-842d76665946','N',0,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130157,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120414,1130580,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a86b2022-c019-405a-b8a1-c11751d8021f','N',0,2,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130158,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120414,1130578,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','68624473-69de-4a92-8927-86dff87c58ad','Y',10,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130159,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120414,1130579,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f5dd2ea2-b82e-4d41-ac2d-77fa0b643272','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130160,'LBR_SPED_ID',1120414,1131267,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','61350429-28d3-4bcb-a068-b138dfafef84','Y',30,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130161,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120414,1130587,'N',7,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bd3a3ed1-ef9b-4809-b0b6-b5219c79c10a','N',40,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130162,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120414,1130585,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d401a157-c3ba-4047-9f53-f42bcfac3886','Y',50,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130163,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120414,1130588,'Y',22,60,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3e99a67-c827-4640-9dfc-a187b99380eb','Y',60,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130164,'Warehouse Type','Defines the Warehouse Type',1120414,1130589,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e2e359c6-9bbf-4e36-bee6-784e4aaeb2cd','Y',70,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:18:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130165,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120414,1130586,'Y','@lbr_WarehouseType@ ! ''OWN''',22,80,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:18:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:18:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cfc3eb10-36a6-482b-b258-ffede566fe7d','Y',80,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:44 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (1120415,'Book Inventory (ReValidate)','Re-validate Book Inventory for SPED for before period',NULL,1120173,30,'Y',1120608,0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:43','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132798,'IsReValidate = ''Y''','N','N',1,'N','LBRA','Y','N',1132780,'748af7b0-73db-4269-925e-6d7d1d157c58','B')
;

-- 16 de dez de 2020 12:19:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130166,'Book Inventory',1120415,1130590,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','14647181-d89e-4c14-9bdf-83efaee8acdb','N',0,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130167,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120415,1130580,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5897648f-35ea-498a-8651-b539ebede2a6','N',0,2,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130168,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120415,1130578,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','8224ae43-3bb9-49fc-9919-63eca57a6dbb','Y',10,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130169,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120415,1130579,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e56a1a1d-e26d-451a-aa0e-8667304e1ca6','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130170,'LBR_SPED_ID',1120415,1131267,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f4eec988-2b9d-49cf-bb9c-b82e252fe4fd','Y',30,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130171,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120415,1130587,'Y',7,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ad0dfea0-a7e4-4b58-bce5-c29a2b7a46d6','Y',40,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:19:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130172,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120415,1130585,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8c50d826-d49c-4b2e-99fb-9c02485e6fff','Y',50,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:20:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130173,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120415,1130588,'Y',22,60,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:19:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2ab1233-27d7-4c32-9230-56d076e01cba','Y',60,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:20:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130174,'Warehouse Type','Defines the Warehouse Type',1120415,1130589,'Y',3,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c5d08950-c4f5-4a5b-84d5-1baf8f049f59','Y',70,1,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:20:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130175,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120415,1130586,'Y','@lbr_WarehouseType@ ! ''OWN''',22,80,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9a1e6170-5bfc-490c-9cc8-27764d6f60e3','Y',80,4,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:20:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130176,'Re-Validate','Re-Validate entries',1120415,1130592,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 12:20:00','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','''Y''','0781146b-7190-452a-bd95-7ff0c4da3086','Y',90,2,2,1,'N','N','N')
;

-- 16 de dez de 2020 12:23:39 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2020-12-16 12:23:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130587
;

-- 16 de dez de 2020 12:23:41 BRT
INSERT INTO t_alter_column values('lbr_bookinventory','MovementDate','TIMESTAMP',null,'NULL')
;

-- 16 de dez de 2020 12:23:42 BRT
INSERT INTO t_alter_column values('lbr_bookinventory','MovementDate',null,'NULL',null)
;

-- 16 de dez de 2020 12:24:12 BRT
UPDATE AD_Field SET IsMandatory='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-12-16 12:24:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130171
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de dez de 2020 14:54:21 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120143,'Y',TO_TIMESTAMP('2020-12-16 14:54:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 14:54:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120140,'LBRA',10,1120088,'N','f87fcf91-5953-46a9-8262-f61aa3a781ca')
;

-- 16 de dez de 2020 14:54:32 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120143,'Y',TO_TIMESTAMP('2020-12-16 14:54:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 14:54:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120142,'LBRA',999,1120089,'N','60077e66-601f-40de-a904-ceb0af9414f2')
;

-- 16 de dez de 2020 14:54:35 BRT
UPDATE AD_WF_NodeNext SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-12-16 14:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=1120089
;

-- 16 de dez de 2020 14:55:07 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120142,'Y',TO_TIMESTAMP('2020-12-16 14:55:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-16 14:55:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120141,'LBRA',10,1120090,'N','f4871550-b92b-4ba3-ad8d-8bb527cc74eb')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de dez de 2020 15:25:13 BRT
UPDATE AD_WF_Node SET DocAction='--',Updated=TO_TIMESTAMP('2020-12-16 15:25:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120141
;

-- 16 de dez de 2020 15:25:13 BRT
SELECT Register_Migration_Script ('202012161800_SPEDImprovement.sql') FROM DUAL
;