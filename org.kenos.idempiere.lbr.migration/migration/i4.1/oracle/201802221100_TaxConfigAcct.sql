SET SQLBLANKLINES ON
SET DEFINE OFF

CREATE TABLE LBR_TaxConfigAcct 
(
	LBR_TaxConfigAcct_ID NUMBER(10) NOT NULL,
	AD_Client_ID NUMBER(10) NOT NULL,
	AD_Org_ID NUMBER(10) NOT NULL,
	IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL,
	Created DATE NOT NULL,
	CreatedBy NUMBER(10) NOT NULL,
	Updated DATE NOT NULL,
	UpdatedBy NUMBER(10) NOT NULL,
	C_BPartner_ID NUMBER(10) DEFAULT NULL,
	C_DocType_ID NUMBER(10) DEFAULT NULL,
	C_Region_ID NUMBER(10) DEFAULT NULL,
	Description NVARCHAR2(255) DEFAULT NULL,
	LBR_BPartnerCategory_ID NUMBER(10) DEFAULT NULL,
	LBR_FiscalGroup_BPartner_ID NUMBER(10) DEFAULT NULL,
	LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL,
	LBR_NCM_ID NUMBER(10) DEFAULT NULL,
	LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL,
	M_Product_ID NUMBER(10) DEFAULT NULL,
	LBR_TransactionType NVARCHAR2(3) DEFAULT NULL,
	LBR_TaxRegime NVARCHAR2(1) DEFAULT NULL,
	LBR_CFOP_ID NUMBER(10) DEFAULT NULL,
	C_AcctSchema_ID NUMBER(10) DEFAULT NULL,
    LBR_TaxConfigAcct_UU NVARCHAR2(36) DEFAULT NULL,
    ValidFrom DATE NOT NULL,
    ValidTo DATE DEFAULT NULL,
    LBR_RecoverablePIS CHAR(1) CHECK (LBR_RecoverablePIS IN ('Y','N')) DEFAULT NULL,
    LBR_RecoverableCOFINS CHAR(1) CHECK (LBR_RecoverableCOFINS IN ('Y','N')) DEFAULT NULL,
    LBR_RecoverableICMS CHAR(1) CHECK (LBR_RecoverableICMS IN ('Y','N')) DEFAULT NULL,
    LBR_RecoverableICMSST CHAR(1) CHECK (LBR_RecoverableICMSST IN ('Y','N')) DEFAULT NULL,
    LBR_RecoverableIPI CHAR(1) CHECK (LBR_RecoverableIPI IN ('Y','N')) DEFAULT NULL,
	CONSTRAINT LBR_TaxConfigAcct_Key PRIMARY KEY (LBR_TaxConfigAcct_ID)
)
;

-- 22/02/2018 11h5min21s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120597,'Tax Config for Accounting','LBR_TaxConfigAcct',0,'3',0,0,'Y',TO_DATE('2018-02-22 11:05:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:05:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','f895c232-6e26-456b-ba0e-621620639f0d','N','N','N','N')
;

-- 22/02/2018 11h5min21s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_TaxConfigAcct',2000000,'N','N','Table LBR_TaxConfigAcct','Y','Y',0,0,TO_DATE('2018-02-22 11:05:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:05:21','YYYY-MM-DD HH24:MI:SS'),100,1153597,'Y',1000000,1,200000,'1c88e2bf-182d-4c2e-a8c3-2463af61eb1e')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122443,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxConfigAcct_ID','Tax Config for Accounting','Tax Config for Accounting','LBRA','6e334130-66c4-4ca0-bb6d-aed6660ed859')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130208,0.0,'Tax Config for Accounting',1120597,'LBR_TaxConfigAcct_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1122443,'N','N','LBRA','N','a51e5e26-b38d-4418-bfbb-1e6d02fcb895','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130209,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120597,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','cfaba68c-134f-40fd-8a5f-7675af16d7b2','N','D')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130210,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120597,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','8f1168bb-9ea3-4aff-b749-82f5dbcb5404','N','D')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130211,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120597,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','9960f0d4-d146-4996-b487-000a98cf1a8b','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130212,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120597,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','ef5184dc-0002-4dfe-8eaa-766f19ae60a1','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130213,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120597,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','12b7747c-4660-45d9-b8be-53008846e298','N','D')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130214,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120597,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','175a9817-2084-4ada-b4f9-c54f6fcda4b4','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130215,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120597,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','dfcf6194-2aae-4dbd-bc08-5ae6c25655ce','N','D')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130216,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120597,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','e9ef0d55-086c-427c-8d1e-b496d202ed87','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130217,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120597,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','b8349d1a-819d-4d6a-9d02-872c0c9b6f85','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130218,0.0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120597,1000003,'C_Region_ID',10,'N','N','N','N','N','N',18,157,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','2c26c8cc-bd44-449a-9822-c32c4e071f1e','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130219,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120597,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','cbe5a47c-ee4b-4109-9548-fc0e32622ec8','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130220,0.0,'BPartner Category','Primary key table LBR_BPartnerCategory','Primary key table LBR_BPartnerCategory',1120597,'LBR_BPartnerCategory_ID',10,'N','N','N','N','N','N',18,1000015,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000149,'Y','N','LBRA','N','94429f99-a516-4d47-a9db-dda8dbb30234','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130221,0.0,'Fiscal Group - Business Partner','Primary key table LBR_FiscalGroup_BPartner','Primary key table LBR_FiscalGroup_BPartner',1120597,'LBR_FiscalGroup_BPartner_ID',10,'N','N','N','N','Y','N',19,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000157,'N','N','LBRA','N','02d08510-4cd1-4b5f-a3a4-ac39f6974430','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130222,0.0,'Fiscal Group - Product','Primary key table LBR_FiscalGroup_Product','Primary key table LBR_FiscalGroup_Product',1120597,'LBR_FiscalGroup_Product_ID',10,'N','N','N','N','N','N',18,1000018,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000156,'Y','N','LBRA','N','cec7fd41-b7e8-4d99-afba-eda98580383f','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130223,0.0,'NCM','Primary key table LBR_NCM','Primary key table LBR_NCM',1120597,'LBR_NCM_ID',10,'N','N','N','N','N','N',30,1000017,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000134,'Y','N','LBRA','N','c22aa54b-f622-4d6e-883d-9c3c1b286cc4','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130224,0.0,'Product Category','Primary key table LBR_ProductCategory','Primary key table LBR_ProductCategory',1120597,'LBR_ProductCategory_ID',10,'N','N','N','N','N','N',18,1000013,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000145,'Y','N','LBRA','N','e06e86ec-0af0-4efe-bb7c-d9d4697372a9','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130225,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120597,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','dbfafcae-e807-4f3b-98a9-47edb13b2a46','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130226,0.0,'Transaction Type','Defines the Transaction Type','Defines the Transaction Type',1120597,'lbr_TransactionType',3,'N','N','N','N','N','N',17,1000024,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000147,'Y','N','LBRA','N','4d062676-e880-41fd-a480-5c024a55a81f','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130227,0.0,'Tax Regime',1120597,'LBR_TaxRegime',1,'N','N','N','N','N','N',17,1120183,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1121529,'Y','N','LBRA','N','4c5fd1c0-1c03-4523-be6e-ccb812c4944b','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130228,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120597,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','5d3833d4-5b88-40b6-bb29-4971d6da8cd2','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130229,0.0,'Accounting Schema','Rules for accounting','An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',1120597,'C_AcctSchema_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,181,'N','N','LBRA','N','83d52bb6-ce9e-4e31-a162-52536cda6538','N','C')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122444,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxConfigAcct_UU','LBR_TaxConfigAcct_UU','LBR_TaxConfigAcct_UU','LBRA','fd6ec280-fb7a-45eb-861f-4ad8106fda33')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130230,0.0,'LBR_TaxConfigAcct_UU',1120597,'LBR_TaxConfigAcct_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,1122444,'N','N','LBRA','N','02eb37bf-9c93-4aa0-9615-7850644325c8','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130231,0.0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120597,'ValidFrom',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','e44d5e6c-5793-4e45-8152-daea0e7010a8','N')
;

-- 22/02/2018 11h6min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130232,0.0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120597,'ValidTo',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','3ce9d6ba-827a-43cd-a3dd-d68583c3dbcb','N')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122445,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,'lbr_recoverablepis','lbr_recoverablepis','lbr_recoverablepis','LBRA','525c84f4-f318-4f3a-8626-baaf1951d83e')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130233,0.0,'lbr_recoverablepis',1120597,'lbr_recoverablepis',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,1122445,'Y','N','LBRA','N','949d5267-2f89-42fb-b3de-da517f23ebb5','N')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122446,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,'lbr_recoverablecofins','lbr_recoverablecofins','lbr_recoverablecofins','LBRA','d842f5ec-b2a9-4405-a35b-dd4b99aa10b9')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130234,0.0,'lbr_recoverablecofins',1120597,'lbr_recoverablecofins',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,1122446,'Y','N','LBRA','N','a68faaaa-d7e0-41af-ad3b-e7180f908ab5','N')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122447,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,'lbr_recoverableicms','lbr_recoverableicms','lbr_recoverableicms','LBRA','46da61e2-d7f3-4550-9fea-5676b892e37f')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130235,0.0,'lbr_recoverableicms',1120597,'lbr_recoverableicms',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,1122447,'Y','N','LBRA','N','f2a9aa7f-1bf6-4984-bd2b-bd7d1225d771','N')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122448,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,'lbr_recoverableicmsst','lbr_recoverableicmsst','lbr_recoverableicmsst','LBRA','ca6b05f9-2c9d-4b3e-a3bc-c068ccfa0f50')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130236,0.0,'lbr_recoverableicmsst',1120597,'lbr_recoverableicmsst',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,1122448,'Y','N','LBRA','N','f8c96c59-df92-4bbb-a62f-e6181e93168e','N')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122449,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,'lbr_recoverableipi','lbr_recoverableipi','lbr_recoverableipi','LBRA','76ee7db9-e7c2-4ac5-89d1-6988a641b9d8')
;

-- 22/02/2018 11h6min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130237,0.0,'lbr_recoverableipi',1120597,'lbr_recoverableipi',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:06:42','YYYY-MM-DD HH24:MI:SS'),100,1122449,'Y','N','LBRA','N','0c9f614b-3edc-45de-91f3-1791db4ce2f9','N')
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_Element SET ColumnName='LBR_RecoverableCOFINS', Name='COFINS Recoverable', PrintName='COFINS Recoverable',Updated=TO_DATE('2018-02-22 11:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122446
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_Column SET ColumnName='LBR_RecoverableCOFINS', Name='COFINS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122446
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableCOFINS', Name='COFINS Recoverable', Description=NULL, Help=NULL, AD_Element_ID=1122446 WHERE UPPER(ColumnName)='LBR_RECOVERABLECOFINS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableCOFINS', Name='COFINS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122446 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_RecoverableCOFINS', Name='COFINS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122446 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_Field SET Name='COFINS Recoverable', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122446) AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h8min28s BRT
UPDATE AD_PrintFormatItem SET PrintName='COFINS Recoverable', Name='COFINS Recoverable' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122446)
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_Element SET ColumnName='LBR_RecoverableICMS', Name='ICMS Recoverable', PrintName='ICMS Recoverable',Updated=TO_DATE('2018-02-22 11:09:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122447
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_Column SET ColumnName='LBR_RecoverableICMS', Name='ICMS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122447
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableICMS', Name='ICMS Recoverable', Description=NULL, Help=NULL, AD_Element_ID=1122447 WHERE UPPER(ColumnName)='LBR_RECOVERABLEICMS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableICMS', Name='ICMS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122447 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_RecoverableICMS', Name='ICMS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122447 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_Field SET Name='ICMS Recoverable', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122447) AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min2s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS Recoverable', Name='ICMS Recoverable' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122447)
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_Element SET ColumnName='LBR_RecoverablePIS', Name='PIS Recoverable', PrintName='PIS Recoverable',Updated=TO_DATE('2018-02-22 11:09:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122445
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_Column SET ColumnName='LBR_RecoverablePIS', Name='PIS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122445
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverablePIS', Name='PIS Recoverable', Description=NULL, Help=NULL, AD_Element_ID=1122445 WHERE UPPER(ColumnName)='LBR_RECOVERABLEPIS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverablePIS', Name='PIS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122445 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_RecoverablePIS', Name='PIS Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122445 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_Field SET Name='PIS Recoverable', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122445) AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='PIS Recoverable', Name='PIS Recoverable' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122445)
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_Element SET ColumnName='LBR_RecoverableIPI', Name='IPI Recoverable', PrintName='IPI Recoverable',Updated=TO_DATE('2018-02-22 11:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122449
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_Column SET ColumnName='LBR_RecoverableIPI', Name='IPI Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122449
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableIPI', Name='IPI Recoverable', Description=NULL, Help=NULL, AD_Element_ID=1122449 WHERE UPPER(ColumnName)='LBR_RECOVERABLEIPI' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableIPI', Name='IPI Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122449 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_RecoverableIPI', Name='IPI Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122449 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_Field SET Name='IPI Recoverable', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122449) AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h9min59s BRT
UPDATE AD_PrintFormatItem SET PrintName='IPI Recoverable', Name='IPI Recoverable' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122449)
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_Element SET ColumnName='LBR_RecoverableICMSST', Name='ICMSST Recoverable', PrintName='ICMSST Recoverable',Updated=TO_DATE('2018-02-22 11:10:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122448
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_Column SET ColumnName='LBR_RecoverableICMSST', Name='ICMSST Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122448
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableICMSST', Name='ICMSST Recoverable', Description=NULL, Help=NULL, AD_Element_ID=1122448 WHERE UPPER(ColumnName)='LBR_RECOVERABLEICMSST' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_RecoverableICMSST', Name='ICMSST Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122448 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_RecoverableICMSST', Name='ICMSST Recoverable', Description=NULL, Help=NULL WHERE AD_Element_ID=1122448 AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_Field SET Name='ICMSST Recoverable', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122448) AND IsCentrallyMaintained='Y'
;

-- 22/02/2018 11h10min20s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST Recoverable', Name='ICMSST Recoverable' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122448)
;

-- 22/02/2018 11h12min49s BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FKConstraintType=NULL,Updated=TO_DATE('2018-02-22 11:12:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130234
;

-- 22/02/2018 11h12min59s BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FKConstraintType=NULL,Updated=TO_DATE('2018-02-22 11:12:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130235
;

-- 22/02/2018 11h13min7s BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FKConstraintType=NULL,Updated=TO_DATE('2018-02-22 11:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130236
;

-- 22/02/2018 11h13min14s BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FKConstraintType=NULL,Updated=TO_DATE('2018-02-22 11:13:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130237
;

-- 22/02/2018 11h13min24s BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319, FKConstraintType=NULL,Updated=TO_DATE('2018-02-22 11:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130233
;

-- 22/02/2018 11h14min41s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120284,'Tax Config',125,99,'Y',1120597,0,0,'Y',TO_DATE('2018-02-22 11:14:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:14:41','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1130229,'N','N',1,'N','LBRA','Y','N','39f0d901-a49e-414b-9f84-abf87f63c2b4','B')
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127297,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120284,1130209,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fc109275-0a46-4588-b3b6-616dc542daed','N',2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127298,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120284,1130210,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96a20ea9-c870-4efe-814f-5c7debab372c','Y','Y',10,4,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127299,'Description','Optional short description of the record','A description is limited to 255 characters.',1120284,1130219,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f32667bb-4a41-40ea-8b02-47bff2bfce6b','Y',20,5)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127300,'Tax Config for Accounting',1120284,1130208,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1bba02eb-985e-4090-a756-74ab650a7f26','N',2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127301,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120284,1130216,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dc401cd7-638f-4af1-a6ba-5948dcc387a2','Y',30,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127302,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120284,1130217,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e0cf1dfa-275b-44db-a203-bb921c5f7096','Y',40,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127303,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120284,1130218,'Y',10,60,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a002e546-2d9b-464f-b87f-eb18d286dd41','Y',50,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127304,'BPartner Category','Primary key table LBR_BPartnerCategory','Primary key table LBR_BPartnerCategory',1120284,1130220,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','34c105a6-bf86-4c41-8d6b-365bccd0be5d','Y',60,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127305,'Fiscal Group - Business Partner','Primary key table LBR_FiscalGroup_BPartner','Primary key table LBR_FiscalGroup_BPartner',1120284,1130221,'Y',10,80,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b81dac8-74b0-48a0-ba4b-865baeaaa17f','Y',70,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127306,'Fiscal Group - Product','Primary key table LBR_FiscalGroup_Product','Primary key table LBR_FiscalGroup_Product',1120284,1130222,'Y',10,90,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e3ca4508-ef3b-40b5-a834-b0d42a19d80a','Y',80,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127307,'NCM','Primary key table LBR_NCM','Primary key table LBR_NCM',1120284,1130223,'Y',10,100,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','911c4da0-648d-48e6-bd62-7540e4b2c5db','Y',90,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127308,'Product Category','Primary key table LBR_ProductCategory','Primary key table LBR_ProductCategory',1120284,1130224,'Y',10,110,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d4fc93d0-7362-483e-885c-e53923fd9dc8','Y',100,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127309,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120284,1130225,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b099ad5b-e11d-4eab-8af1-bd7f92232708','Y',110,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127310,'Transaction Type','Defines the Transaction Type','Defines the Transaction Type',1120284,1130226,'Y',3,130,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','29ad4f13-3af7-4b03-9b2c-343ee7c83a58','Y',120,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127311,'Tax Regime',1120284,1130227,'Y',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7046cbeb-08a9-4948-aa91-dfa9b34ca322','Y',130,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127312,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120284,1130228,'Y',10,150,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ec1aea8b-678a-4230-b37d-6109a836dbd9','Y',140,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127313,'Accounting Schema','Rules for accounting','An Accounting Schema defines the rules used in accounting such as costing method, currency and calendar',1120284,1130229,'Y',10,160,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8c7ff06a-0acd-4914-aaf2-946a36f71006','Y',150,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127314,'LBR_TaxConfigAcct_UU',1120284,1130230,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','502ffdba-8ac8-44f0-87d3-68ac9b84da9b','N',2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127315,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120284,1130231,'Y',29,170,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1659569c-4202-48c3-9e2f-5066f4126f50','Y',160,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127316,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120284,1130232,'Y',29,180,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5e8ce7dc-0fba-4840-a602-350fc5fb79ea','Y',170,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127317,'PIS Recoverable',1120284,1130233,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f29217e0-a444-4954-978b-074bea99fe00','Y',180,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127318,'COFINS Recoverable',1120284,1130234,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','347dc012-7823-423d-a655-3acf7a4686e6','Y',190,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127319,'ICMS Recoverable',1120284,1130235,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3a850246-98c4-4673-b4ff-58a23eb04b6d','Y',200,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127320,'ICMSST Recoverable',1120284,1130236,'Y',1,220,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7a14d526-08e6-416d-b5fc-e222b1f1d433','Y',210,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127321,'IPI Recoverable',1120284,1130237,'Y',1,230,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d5981618-9ed6-46d1-97a6-9ca8dd910ae4','Y',220,2)
;

-- 22/02/2018 11h15min0s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127322,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120284,1130211,'Y',1,240,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-22 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eb1d798c-ddc7-4e3b-8aee-5a50336af615','Y',230,2,2)
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127315
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127316
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127299
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127312
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127322
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127301
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127304
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127302
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127310
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127303
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127305
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127306
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127309
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127308
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127311
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127307
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=190, AD_FieldGroup_ID=111, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127317
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127318
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127320
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127313
;

-- 22/02/2018 11h17min24s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127314
;

-- 22/02/2018 11h17min25s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-22 11:17:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127300
;

-- 22/02/2018 14h3min38s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2018-02-22 14:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130216
;

-- 22/02/2018 14h3min46s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2018-02-22 14:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130217
;

-- 22/02/2018 14h3min57s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2018-02-22 14:03:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130221
;

-- 22/02/2018 14h4min11s BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2018-02-22 14:04:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130225
;

SELECT Register_Migration_Script ('201802221100_TaxConfigAcct.sql') FROM DUAL
;
