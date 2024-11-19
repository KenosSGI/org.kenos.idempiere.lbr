SET SQLBLANKLINES ON
SET DEFINE OFF

CREATE TABLE LBR_ExportDetail
( 
	LBR_ExportDetail_ID     NUMBER (10) NOT NULL,
	LBR_ExportDetail_UU     NVARCHAR2 (36) DEFAULT NULL,
	AD_Client_ID            NUMBER (10) NOT NULL,
	AD_Org_ID               NUMBER (10) NOT NULL,
	IsActive                CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL,
	Created                 DATE NOT NULL,
	CreatedBy               NUMBER (10) NOT NULL,
	Updated                 DATE NOT NULL,
	UpdatedBy               NUMBER (10) NOT NULL,
	LBR_NotaFiscalLine_ID   NUMBER (10) NOT NULL,
	LBR_Drawback            NVARCHAR2 (11) DEFAULT NULL,
	LBR_IsIndirectExport    CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL,
	LBR_ExportRegNo         NVARCHAR2 (12) DEFAULT NULL,
	LBR_NFeID               NVARCHAR2 (44) DEFAULT NULL,
	Qty                     NUMBER (10) DEFAULT NULL,
	PRIMARY KEY (LBR_ExportDetail_ID)
)
;

-- 19 de nov de 2024 11:02:21 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120783,'Export Detail','LBR_ExportDetail',0,'3',0,0,'Y',TO_DATE('2024-11-19 11:02:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','c42a688f-4728-4c39-a8cb-679139d825b9','N','N','N','N')
;

-- 19 de nov de 2024 11:02:22 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ExportDetail',1000000,'N','N','Table LBR_ExportDetail','Y','Y',0,0,TO_DATE('2024-11-19 11:02:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:21','YYYY-MM-DD HH24:MI:SS'),100,1154058,'Y',1000000,1,200000,'406a1fe1-2844-41c3-863a-529c1c0097c6')
;

-- 19 de nov de 2024 11:02:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123456,0,0,'Y',TO_DATE('2024-11-19 11:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ExportDetail_ID','Export Detail','Export Detail','LBRA','8f8677ae-a6bf-4506-a6c5-85dc9712a2ff')
;

-- 19 de nov de 2024 11:02:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134241,0.0,'Export Detail',1120783,'LBR_ExportDetail_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-11-19 11:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:32','YYYY-MM-DD HH24:MI:SS'),100,1123456,'N','N','LBRA','N','505a1de7-21b3-414a-9988-b7e8db062472','N')
;

-- 19 de nov de 2024 11:02:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123457,0,0,'Y',TO_DATE('2024-11-19 11:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ExportDetail_UU','LBR_ExportDetail_UU','LBR_ExportDetail_UU','LBRA','c6b41609-cfbc-4197-a60d-046da9e85331')
;

-- 19 de nov de 2024 11:02:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134242,0.0,'LBR_ExportDetail_UU',1120783,'LBR_ExportDetail_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-11-19 11:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:33','YYYY-MM-DD HH24:MI:SS'),100,1123457,'N','N','LBRA','N','cec667f0-42c1-4ef0-8a0b-081be20eec4a','N')
;

-- 19 de nov de 2024 11:02:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134243,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120783,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','13ba3512-aa8c-47b1-8222-bfb17b3b009b','N','D')
;

-- 19 de nov de 2024 11:02:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134244,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120783,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','61f56ef7-0ccd-44b4-8f77-675ffed80d2a','N','D')
;

-- 19 de nov de 2024 11:02:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134245,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120783,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:34','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','feaf97eb-4308-4121-9a24-e0d9a2d86124','N')
;

-- 19 de nov de 2024 11:02:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134246,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120783,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-11-19 11:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:35','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','55138326-13ef-4df6-b748-68b3d2f259df','N')
;

-- 19 de nov de 2024 11:02:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134247,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120783,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-11-19 11:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:35','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','c1dcd576-041c-4449-a57f-6f8d3baa6a39','N','D')
;

-- 19 de nov de 2024 11:02:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134248,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120783,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','40120d71-2795-41b7-a906-f9caeceb7940','N')
;

-- 19 de nov de 2024 11:02:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134249,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120783,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','e06e644f-a052-48fc-99e5-b1a87bf14b2f','N','D')
;

-- 19 de nov de 2024 11:02:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134250,0.0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120783,'LBR_NotaFiscalLine_ID',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:36','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','LBRA','N','215bc5cb-d1f6-4825-ba54-b92fc399dc0b','N','N')
;
-- 19 de nov de 2024 11:02:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134251,0.0,'Drawback No',1120783,'LBR_Drawback',11,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,1120018,'Y','N','LBRA','N','3cd99a82-5ff9-49b7-b742-de3b532861d1','N')
;

-- 19 de nov de 2024 11:02:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123459,0,0,'Y',TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,'lbr_exportregno','lbr_exportregno','lbr_exportregno','LBRA','55478863-60f7-4ee8-a5ac-515efe2746a3')
;

-- 19 de nov de 2024 11:02:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134252,0.0,'lbr_exportregno',1120783,'lbr_exportregno',12,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:37','YYYY-MM-DD HH24:MI:SS'),100,1123459,'Y','N','LBRA','N','91a358f3-cc68-4a47-abda-a1cae51be1d8','N')
;

-- 19 de nov de 2024 11:02:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134253,0.0,'NFe ID','Identification of NFe',1120783,'lbr_NFeID',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-11-19 11:02:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:38','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N','LBRA','N','c95a3a48-3c75-46bf-938c-9fdd390f1d51','N','N')
;

-- 19 de nov de 2024 11:02:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134254,0.0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120783,'Qty',10,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2024-11-19 11:02:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:02:39','YYYY-MM-DD HH24:MI:SS'),100,526,'Y','N','LBRA','N','304de7fe-7541-4271-9164-29709efa58d1','N')
;

-- 19 de nov de 2024 11:05:07 BRT
UPDATE AD_Element SET ColumnName='LBR_ExportRegNo', Name='Export Register', PrintName='Export Register',Updated=TO_DATE('2024-11-19 11:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123459
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_Column SET ColumnName='LBR_ExportRegNo', Name='Export Register', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123459
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ExportRegNo', Name='Export Register', Description=NULL, Help=NULL, AD_Element_ID=1123459 WHERE UPPER(ColumnName)='LBR_EXPORTREGNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ExportRegNo', Name='Export Register', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123459 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ExportRegNo', Name='Export Register', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123459 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_Field SET Name='Export Register', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123459) AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:05:08 BRT
UPDATE AD_PrintFormatItem SET PrintName='Export Register', Name='Export Register' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123459)
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_Element SET Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', PrintName='Export Reg.',Updated=TO_DATE('2024-11-19 11:06:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123459
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_Column SET ColumnName='LBR_ExportRegNo', Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', Placeholder=NULL WHERE AD_Element_ID=1123459
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ExportRegNo', Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', AD_Element_ID=1123459 WHERE UPPER(ColumnName)='LBR_EXPORTREGNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ExportRegNo', Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', Placeholder=NULL WHERE AD_Element_ID=1123459 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ExportRegNo', Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', Placeholder=NULL WHERE AD_Element_ID=1123459 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_Field SET Name='Export Registration', Description='Export Registration', Help='Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations', Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123459) AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:06:44 BRT
UPDATE AD_PrintFormatItem SET PrintName='Export Reg.', Name='Export Registration' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123459)
;

-- 19 de nov de 2024 11:07:02 BRT
UPDATE AD_Table SET AD_Window_ID=1000015, PO_Window_ID=1000019,Updated=TO_DATE('2024-11-19 11:07:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120783
;

-- 19 de nov de 2024 11:07:42 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-11-19 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134250
;

-- 19 de nov de 2024 11:09:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123460,0,0,'Y',TO_DATE('2024-11-19 11:08:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:08:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsIndirectExport','Indirect Export',NULL,NULL,'Indirect Export','LBRA','eaedb51d-bbeb-4adf-9081-276da84a3208')
;

-- 19 de nov de 2024 11:09:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134255,0,'Indirect Export',1120783,'LBR_IsIndirectExport','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2024-11-19 11:09:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:09:42','YYYY-MM-DD HH24:MI:SS'),100,1123460,'Y','N','LBRA','N','N','N','Y','9cc2b803-6fa0-4b11-aa55-e1e99a32797b','Y',0,'N','N','N','N')
;

-- 19 de nov de 2024 11:11:33 BRT
UPDATE AD_Element SET Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries',Updated=TO_DATE('2024-11-19 11:11:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123460
;

-- 19 de nov de 2024 11:11:33 BRT
UPDATE AD_Column SET ColumnName='LBR_IsIndirectExport', Name='Indirect Export', Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries', Placeholder=NULL WHERE AD_Element_ID=1123460
;

-- 19 de nov de 2024 11:11:33 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsIndirectExport', Name='Indirect Export', Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries', AD_Element_ID=1123460 WHERE UPPER(ColumnName)='LBR_ISINDIRECTEXPORT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19 de nov de 2024 11:11:33 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsIndirectExport', Name='Indirect Export', Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries', Placeholder=NULL WHERE AD_Element_ID=1123460 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:11:34 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IsIndirectExport', Name='Indirect Export', Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries', Placeholder=NULL WHERE AD_Element_ID=1123460 AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:11:34 BRT
UPDATE AD_Field SET Name='Indirect Export', Description='Indicates whether the export operation is indirect', Help='Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries', Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123460) AND IsCentrallyMaintained='Y'
;

-- 19 de nov de 2024 11:13:42 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120534,'Export Detail',1000019,35,'Y',1120783,0,0,'Y',TO_DATE('2024-11-19 11:13:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:13:41','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',2,'N','LBRA','Y','N','ee9842eb-4eb6-47ce-b7ba-adfd16de7baa','B')
;

-- 19 de nov de 2024 11:14:12 BRT
UPDATE AD_Tab SET Name='Export Detail/Drawback',Updated=TO_DATE('2024-11-19 11:14:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120534
;

-- 19 de nov de 2024 11:14:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132148,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120534,1134243,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6cb9d9e4-3217-47ea-b8bb-12a4c8ef2184','N',2)
;

-- 19 de nov de 2024 11:14:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132149,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120534,1134244,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','419c66c8-729b-4c76-9611-2a499d01a878','Y','Y',10,4,2)
;

-- 19 de nov de 2024 11:14:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132150,'Export Detail',1120534,1134241,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4efccf0e-54ab-498a-9141-92d39c0edbc4','N',2)
;

-- 19 de nov de 2024 11:14:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132151,'LBR_ExportDetail_UU',1120534,1134242,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2b5804c8-fbc8-42a6-8767-25c5779aaa45','N',2)
;

-- 19 de nov de 2024 11:14:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132152,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120534,1134250,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2fcea847-4912-4031-a174-f73818915bde','Y',20,2)
;

-- 19 de nov de 2024 11:14:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132153,'Drawback No.',1120534,1134251,'Y',11,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96c0bf67-5f90-41b7-a7db-49762f8dad0f','Y',30,2)
;

-- 19 de nov de 2024 11:14:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132154,'Export Registration','Export Registration','Identifies the unique number assigned to the Export Registration (RE), used for tracking and managing export operations',1120534,1134252,'Y',12,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b75216e2-da2a-449d-a3e6-7ec6f7aa8f69','Y',40,2)
;

-- 19 de nov de 2024 11:14:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132155,'NFe ID','Identification of NFe',1120534,1134253,'Y',44,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','99c08163-db56-4dc4-ab6b-d9a29e2f2879','Y',50,2)
;

-- 19 de nov de 2024 11:14:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132156,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120534,1134254,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5170860d-1d9b-44f6-bbe5-16d7f7c3fb2d','Y',60,2)
;

-- 19 de nov de 2024 11:14:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132157,'Indirect Export','Indicates whether the export operation is indirect','Indicates whether the export operation is indirect, meaning it is carried out through third parties, such as trading companies or other intermediaries',1120534,1134255,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9c9c0992-4886-4bd0-b1c0-1d2ec26e0ee3','Y',70,2,2)
;

-- 19 de nov de 2024 11:14:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132158,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120534,1134245,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 11:14:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 11:14:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','af659e55-ea26-4df5-a83e-8a552dfabba7','Y',80,2,2)
;

-- 19 de nov de 2024 11:16:08 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132153
;

-- 19 de nov de 2024 11:16:08 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132152
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132157
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132158
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132154
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132155
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132156
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132150
;

-- 19 de nov de 2024 11:16:09 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132151
;

-- 19 de nov de 2024 11:16:39 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsIndirectExport@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132154
;

-- 19 de nov de 2024 11:16:41 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsIndirectExport@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132155
;

-- 19 de nov de 2024 11:16:44 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsIndirectExport@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 11:16:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132156
;

-- 19 de nov de 2024 12:41:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132171,'Drawback No','Identifies the Drawback No',1100002,1120190,'Y',20,106,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 12:41:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 12:41:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','16436a61-ff48-4c2f-9571-eeb3d368765e','Y',106,2)
;

-- 19 de nov de 2024 12:41:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132172,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1100002,1120191,'Y',1,116,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 12:41:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 12:41:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fcfb9dce-6a9b-49b9-bbd7-7eb9b4817e65','Y',116,2)
;

-- 19 de nov de 2024 12:42:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134257,0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1100002,'DiscountAmt','0',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2024-11-19 12:42:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 12:42:19','YYYY-MM-DD HH24:MI:SS'),100,1395,'Y','N','U','N','N','N','Y','9bdfaf29-96b4-4f25-97e8-cc91af21f0f2','Y',0,'N','N','N')
;

-- 19 de nov de 2024 12:42:21 BRT
ALTER TABLE LBR_NFDI ADD DiscountAmt NUMBER DEFAULT 0
;

-- 19 de nov de 2024 12:42:40 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2024-11-19 12:42:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134257
;

-- 19 de nov de 2024 12:42:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132173,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1100002,1134257,'Y',22,126,'N','N','N','N',0,0,'Y',TO_DATE('2024-11-19 12:42:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-19 12:42:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8a31ad18-d0d7-451b-8c2b-b113829b77d6','Y',126,2)
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100060
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100057
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100062
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100058
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100054
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100076
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132173
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132172
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132171
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100053
;

-- 19 de nov de 2024 12:43:52 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 12:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100056
;

-- 19 de nov de 2024 13:36:08 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-11-19 13:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132172
;

-- 19 de nov de 2024 11:16:44 BRT
SELECT Register_Migration_Script ('202411191133_NFExportDetail.sql') FROM DUAL
;

