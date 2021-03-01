-- 27 de fev de 2021 21:56:20 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120727,'Product Config',140,'LBR_ProductConfig',0,'3',0,0,'Y',TO_TIMESTAMP('2021-02-27 21:56:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:56:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','0c5112c1-c426-4177-bdc7-dabbe1e813fc','N','N','N','N')
;

-- 27 de fev de 2021 21:56:20 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ProductConfig',1000000,'N','N','Table LBR_ProductConfig','Y','Y',0,0,TO_TIMESTAMP('2021-02-27 21:56:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:56:20','YYYY-MM-DD HH24:MI:SS'),100,1154001,'Y',1000000,1,200000,'b45699a5-c71b-4c91-9353-b2356bf98182')
;

-- 27 de fev de 2021 21:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133113,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120727,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','8f0a9a22-fce7-4b0f-8f82-ef58dfa3402a','N','D')
;

-- 27 de fev de 2021 21:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133114,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120727,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','8dc3e9bc-29c0-40de-97c4-db06ab432ce1','N','D')
;

-- 27 de fev de 2021 21:57:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133115,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120727,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:05','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','8ed0e6c8-3dec-4cc7-92fc-d0452986dbcb','N')
;

-- 27 de fev de 2021 21:57:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133116,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120727,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:06','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','d2483741-ed87-4ebc-9518-b0d547810a27','N','D')
;

-- 27 de fev de 2021 21:57:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133117,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120727,'DateDoc',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:06','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','328f8be3-ab9d-4f56-a0df-070dfa771551','N')
;

-- 27 de fev de 2021 21:57:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133118,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120727,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','e1ef1533-c3db-48e5-bcba-1f4ac12e595a',10,'N')
;

-- 27 de fev de 2021 21:57:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133119,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120727,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','b1c7c929-2e76-412d-8ae8-c88ccb3ad730','N')
;

-- 27 de fev de 2021 21:57:08 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123300,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductConfig_ID','Product Config','Product Config','LBRA','615f2348-aa07-418b-b087-3d9c977548ae')
;

-- 27 de fev de 2021 21:57:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133120,0.0,'Product Config',1120727,'LBR_ProductConfig_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:07','YYYY-MM-DD HH24:MI:SS'),100,1123300,'N','N','LBRA','N','f0825570-a35a-404d-bb19-5e04f7237e23','N')
;

-- 27 de fev de 2021 21:57:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123301,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductConfig_UU','LBR_ProductConfig_UU','LBR_ProductConfig_UU','LBRA','067bea82-886d-492d-b0a9-34b257c6a707')
;

-- 27 de fev de 2021 21:57:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133121,0.0,'LBR_ProductConfig_UU',1120727,'LBR_ProductConfig_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,1123301,'N','N','LBRA','N','377a72b2-9bfd-4518-8ae9-72ecff5c8bab','N')
;

-- 27 de fev de 2021 21:57:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133122,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120727,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:09','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','19fb2fa5-dc44-4547-94fc-5d0f1a611f13','N')
;

-- 27 de fev de 2021 21:57:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133123,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120727,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:57:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:57:09','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','a124299e-8961-4b93-a305-5c51cbd22105','N','D')
;

-- 27 de fev de 2021 21:58:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133124,0,'Manufactured','This product is manufactured',1120727,'IsManufactured',NULL,1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:58:35','YYYY-MM-DD HH24:MI:SS'),100,55245,'Y','N','LBRA','N','N','N','Y','8bc54aa7-9c65-4f25-a68a-4cb454f1143b','Y',0,'N','N','N')
;

-- 27 de fev de 2021 21:59:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133125,0,'Product Source','Defines the Product Source','Defines the Product Source',1120727,'lbr_ProductSource',NULL,1,'N','N','N','N','N',0,'N',17,1000031,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:59:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:59:04','YYYY-MM-DD HH24:MI:SS'),100,1000254,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','6716837c-67de-41f4-9760-e2f43759f15d','Y',0,'N','N','N')
;

-- 27 de fev de 2021 21:59:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133126,0,'UPC/EAN','Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ',1120727,'UPC',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-02-27 21:59:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 21:59:54','YYYY-MM-DD HH24:MI:SS'),100,603,'N','N','LBRA','N','N','N','Y','1c68c75c-f896-4c03-a53e-1379090f960d','Y',0,'N','N','N')
;

-- 27 de fev de 2021 22:01:16 BRT
CREATE TABLE LBR_ProductConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsManufactured CHAR(1) DEFAULT NULL , LBR_ProductConfig_ID NUMERIC(10) NOT NULL, LBR_ProductConfig_UU VARCHAR(36) DEFAULT NULL , UPC VARCHAR(30) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_ProductSource CHAR(1) DEFAULT NULL , CONSTRAINT LBR_ProductConfig_Key PRIMARY KEY (LBR_ProductConfig_ID), CONSTRAINT LBR_ProductConfig_UU_idx UNIQUE (LBR_ProductConfig_UU))
;

-- 27 de fev de 2021 22:01:54 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=202, AD_Reference_ID=18, AD_Reference_Value_ID=322, IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-02-27 22:01:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133114
;

-- 27 de fev de 2021 22:03:25 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Not allowed to have more than one record per Organization',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:03:25','YYYY-MM-DD HH24:MI:SS'),100,1120054,'OneRecordPerOrgOnly','LBRA','249f8ca3-e148-478d-a672-878f5239fd31')
;

-- 27 de fev de 2021 22:03:54 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,AD_Message_ID,TableIndexDrop,IsKey) VALUES (0,0,1120009,'243a0d0f-e9c8-4ad0-92da-c58d2d05cfc8',TO_TIMESTAMP('2021-02-27 22:03:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_ProductConfig_AD_Org_Unq',TO_TIMESTAMP('2021-02-27 22:03:54','YYYY-MM-DD HH24:MI:SS'),100,1120727,'Y','Y','N',1120054,'N','N')
;

-- 27 de fev de 2021 22:04:05 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120017,'9162cd14-4af6-4540-a421-6a70fa76d68a',TO_TIMESTAMP('2021-02-27 22:04:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2021-02-27 22:04:05','YYYY-MM-DD HH24:MI:SS'),100,1133113,1120009,0)
;

-- 27 de fev de 2021 22:04:14 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120018,'6b0a4612-0a26-409c-90ba-b601704389c6',TO_TIMESTAMP('2021-02-27 22:04:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2021-02-27 22:04:13','YYYY-MM-DD HH24:MI:SS'),100,1133114,1120009,0)
;

-- 27 de fev de 2021 22:04:20 BRT
UPDATE AD_IndexColumn SET SeqNo=1,Updated=TO_TIMESTAMP('2021-02-27 22:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_IndexColumn_ID=1120017
;

-- 27 de fev de 2021 22:04:23 BRT
UPDATE AD_IndexColumn SET SeqNo=2,Updated=TO_TIMESTAMP('2021-02-27 22:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_IndexColumn_ID=1120018
;

-- 27 de fev de 2021 22:04:28 BRT
ALTER TABLE LBR_ProductConfig ADD CONSTRAINT LBR_ProductConfig_AD_Org_Unq UNIQUE (AD_Client_ID,AD_Org_ID)
;

-- 27 de fev de 2021 22:05:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133127,0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120727,'M_Product_ID',22,'N','Y','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-02-27 22:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:05:53','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','N','N','Y','b441611e-7f95-4051-95af-89fc1ea216f9','Y',0,'N','N','N')
;

-- 27 de fev de 2021 22:05:59 BRT
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2021-02-27 22:05:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133127
;

-- 27 de fev de 2021 22:06:00 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='MProduct_LBRProductConfig', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-02-27 22:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133127
;

-- 27 de fev de 2021 22:06:00 BRT
ALTER TABLE LBR_ProductConfig ADD COLUMN M_Product_ID NUMERIC(10) NOT NULL
;

-- 27 de fev de 2021 22:06:00 BRT
ALTER TABLE LBR_ProductConfig ADD CONSTRAINT MProduct_LBRProductConfig FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de fev de 2021 22:06:18 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120441,'Product Config',140,170,'Y',1120727,0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:18','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1133127,'N','N',1,'N','LBRA','Y','N','54ad01ff-624e-403f-b202-855b6d8f6719','B')
;

-- 27 de fev de 2021 22:06:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130561,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120441,1133113,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fa2c0137-1ccf-484c-942e-469702e4f9fd','N',2)
;

-- 27 de fev de 2021 22:06:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130562,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120441,1133114,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','aeba6c0b-1af8-4581-958d-d919f27ab3bf','Y','Y',10,4,2)
;

-- 27 de fev de 2021 22:06:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130563,'Description','Optional short description of the record','A description is limited to 255 characters.',1120441,1133118,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2e07f816-e25b-48d0-97db-7dce8b99f14b','Y',20,5)
;

-- 27 de fev de 2021 22:06:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130564,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120441,1133117,'Y',29,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7baaf0d7-f44d-47aa-b17c-25a24964ce35','Y',30,2)
;

-- 27 de fev de 2021 22:06:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130565,'Product Config',1120441,1133120,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55ade0b5-4914-4a8a-b18b-5813f48b3158','N',2)
;

-- 27 de fev de 2021 22:06:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130566,'LBR_ProductConfig_UU',1120441,1133121,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0108948d-cb66-412f-bea7-2613f02e4f2f','N',2)
;

-- 27 de fev de 2021 22:06:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130567,'Manufactured','This product is manufactured',1120441,1133124,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d306142d-7a19-42cd-9a61-b4dac481ab36','Y',40,2)
;

-- 27 de fev de 2021 22:06:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130568,'Product Source','Defines the Product Source','Defines the Product Source',1120441,1133125,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8dfcd7b5-db28-46f0-a96d-75f56baf8662','Y',50,2)
;

-- 27 de fev de 2021 22:06:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130569,'UPC/EAN','Bar Code (Universal Product Code or its superset European Article Number)','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ',1120441,1133126,'Y',30,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9e6d1370-fb3f-48b9-bf43-f25c170e93fb','Y',60,2)
;

-- 27 de fev de 2021 22:06:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130570,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120441,1133127,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b741d058-f386-42b3-ae61-dad4365833eb','Y',70,2)
;

-- 27 de fev de 2021 22:06:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130571,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120441,1133119,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:06:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:06:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7e03d3b2-65ee-48fe-964d-93e7e7daee61','Y',80,2,2)
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130563
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130570
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130571
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130567
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130568
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130569
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130564
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130566
;

-- 27 de fev de 2021 22:07:32 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130565
;

-- 27 de fev de 2021 22:07:49 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130570
;

-- 27 de fev de 2021 22:07:49 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130564
;

-- 27 de fev de 2021 22:07:50 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130563
;

-- 27 de fev de 2021 22:07:50 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130567
;

-- 27 de fev de 2021 22:07:50 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130568
;

-- 27 de fev de 2021 22:07:50 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130569
;

-- 27 de fev de 2021 22:07:50 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130571
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130564
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130561
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130562
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130563
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130570
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130571
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130567
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130568
;

-- 27 de fev de 2021 22:08:04 BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1130569
;

-- 27 de fev de 2021 22:08:13 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1130564
;

-- 27 de fev de 2021 22:08:13 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130564
;

-- 27 de fev de 2021 22:08:29 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1133117
;

-- 27 de fev de 2021 22:08:29 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133117
;

-- 27 de fev de 2021 22:11:38 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-02-27 22:11:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133126
;

-- 27 de fev de 2021 22:11:44 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:11:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133125
;

-- 27 de fev de 2021 22:12:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133128,0,'CEST','Brazilian Specifier code Tax','Brazilian Specifier code Tax',1106001,'LBR_CEST_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-02-27 22:12:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:12:24','YYYY-MM-DD HH24:MI:SS'),100,1122214,'Y','N','LBRA','N','N','N','Y','199d250d-eb17-41e3-961c-d751a2447347','Y',0,'N','N','N')
;

-- 27 de fev de 2021 22:12:26 BRT
UPDATE AD_Column SET FKConstraintName='LBRCEST_LBRTaxDefinition', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-02-27 22:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133128
;

-- 27 de fev de 2021 22:12:26 BRT
ALTER TABLE LBR_TaxDefinition ADD COLUMN LBR_CEST_ID NUMERIC(10) DEFAULT NULL 
;

-- 27 de fev de 2021 22:12:26 BRT
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBRCEST_LBRTaxDefinition FOREIGN KEY (LBR_CEST_ID) REFERENCES lbr_cest(lbr_cest_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27 de fev de 2021 22:13:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130572,'CEST','Brazilian Specifier code Tax','Brazilian Specifier code Tax',1106002,1133128,'Y',10,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:13:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:13:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f5895c7f-238c-4473-a136-a82e2cfd8621','Y',70,2)
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125689
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125688
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106035
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106033
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106031
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106045
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106048
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125667
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125668
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125665
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106037
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106043
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106044
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106038
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58883
;

-- 27 de fev de 2021 22:13:31 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106041
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106039
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130572
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106049
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106032
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125717
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125690
;

-- 27 de fev de 2021 22:13:32 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-27 22:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106046
;

-- 27 de fev de 2021 22:14:03 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120384,'LBR_CEST','T',0,0,'Y',TO_TIMESTAMP('2021-02-27 22:14:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:14:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','d8b9aa99-6b9a-4d8d-bdc1-060185d2fdcb')
;

-- 27 de fev de 2021 22:14:32 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120384,1120531,1128613,1128621,0,0,'Y',TO_TIMESTAMP('2021-02-27 22:14:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-27 22:14:32','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','86506830-557a-411e-9dc9-9b5dc0465a2d')
;

-- 27 de fev de 2021 22:14:52 BRT
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=1120384,Updated=TO_TIMESTAMP('2021-02-27 22:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133128
;

-- 28 de fev de 2021 08:51:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133129,0,'Manufactured','This product is manufactured',1106001,'IsManufactured','B',1,'N','N','Y','N','N',0,'N',17,1000027,0,0,'Y',TO_TIMESTAMP('2021-02-28 08:51:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-28 08:51:39','YYYY-MM-DD HH24:MI:SS'),100,55245,'Y','N','LBRA','N','N','N','Y','e7d7b0ed-001a-4e16-b317-dd85d704f385','Y',0,'N','N','N','N')
;

-- 28 de fev de 2021 08:51:42 BRT
ALTER TABLE LBR_TaxDefinition ADD COLUMN IsManufactured CHAR(1) DEFAULT 'B' NOT NULL
;

-- 28 de fev de 2021 08:52:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130573,'Manufactured','This product is manufactured',1106002,1133129,'Y',1,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-02-28 08:52:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-28 08:52:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7300f430-8fa4-4d43-86ce-e68f51eb5820','Y',80,2)
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130573
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106049
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106032
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125717
;

-- 28 de fev de 2021 08:52:31 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-02-28 08:52:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125690
;

SELECT Register_Migration_Script ('202102272216_ProductConfigOrg.sql') FROM DUAL
;