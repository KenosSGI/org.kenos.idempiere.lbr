CREATE TABLE LBR_PresumedTaxCredit
( 
	LBR_PresumedTaxCredit_ID           NUMERIC (10,0) NOT NULL,
	LBR_PresumedTaxCredit_UU           VARCHAR (36) DEFAULT NULL,
	AD_Client_ID         NUMERIC (10,0) NOT NULL,
	AD_Org_ID            NUMERIC (10,0) NOT NULL,
	IsActive             CHAR (1) NOT NULL DEFAULT 'Y'::BPCHAR,
	Created              TIMESTAMP NOT NULL DEFAULT NOW(),
	CreatedBy            NUMERIC (10,0) NOT NULL,
	Updated              TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedBy            NUMERIC (10,0) NOT NULL,
	PRIMARY KEY (LBR_PresumedTaxCredit_ID)
)
;

CREATE TABLE LBR_NFLinePTaxCredit
( 
	LBR_NFLinePTaxCredit_ID           NUMERIC (10,0) NOT NULL,
	AD_Client_ID         NUMERIC (10,0) NOT NULL,
	AD_Org_ID            NUMERIC (10,0) NOT NULL,
	IsActive             CHAR (1) NOT NULL DEFAULT 'Y'::BPCHAR,
	Created              TIMESTAMP NOT NULL DEFAULT NOW(),
	CreatedBy            NUMERIC (10,0) NOT NULL,
	Updated              TIMESTAMP NOT NULL DEFAULT NOW(),
	UpdatedBy            NUMERIC (10,0) NOT NULL,
	LBR_NotaFiscalLine_ID           NUMERIC (10,0) NOT NULL,
	PRIMARY KEY (LBR_NFLinePTaxCredit_ID)
)
;

-- 6 de fev de 2025 08:24:36 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120786,'Presumed Tax Credit','Presumed Tax Credit table',1000002,'LBR_PresumedTaxCredit',0,'3',0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','9d9e26bb-95b4-4f10-bdb0-314378298fb8','N','N','N','N')
;

-- 6 de fev de 2025 08:24:36 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_PresumedTaxCredit',1000000,'N','N','Table LBR_PresumedTaxCredit','Y','Y',0,0,TO_TIMESTAMP('2025-02-06 08:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:36','YYYY-MM-DD HH24:MI:SS'),100,1154061,'Y',1000000,1,200000,'57642e84-6e64-4b88-922a-942b15b2633e')
;

-- 6 de fev de 2025 08:24:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123482,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PresumedTaxCredit_ID','Presumed Tax Credit','Presumed Tax Credit','LBRA','46cb8692-9c70-4923-bf95-029408265f75')
;

-- 6 de fev de 2025 08:24:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134311,0.0,'Presumed Tax Credit',1120786,'LBR_PresumedTaxCredit_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:45','YYYY-MM-DD HH24:MI:SS'),100,1123482,'N','N','LBRA','N','fe865745-2f5f-4312-9358-ed08e0452e67','N')
;

-- 6 de fev de 2025 08:24:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123483,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PresumedTaxCredit_UU','LBR_PresumedTaxCredit_UU','LBR_PresumedTaxCredit_UU','LBRA','b828b07e-8315-4a4c-965b-49035bd91036')
;

-- 6 de fev de 2025 08:24:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134312,0.0,'LBR_PresumedTaxCredit_UU',1120786,'LBR_PresumedTaxCredit_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:46','YYYY-MM-DD HH24:MI:SS'),100,1123483,'N','N','LBRA','N','86d5194c-1b67-45a3-be6e-3b439bff171a','N')
;

-- 6 de fev de 2025 08:24:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134313,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120786,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:47','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','b217076b-206a-44e9-97e7-87b7d1acfeb9','N','D')
;

-- 6 de fev de 2025 08:24:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134314,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120786,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:48','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','3311adc0-9187-4818-b539-d8c260eafbbe','N','D')
;

-- 6 de fev de 2025 08:24:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134315,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120786,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:48','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','1edc7b9b-8e0a-4c8e-b715-e32a1dd200fe','N')
;

-- 6 de fev de 2025 08:24:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134316,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120786,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','d05cec1c-2688-4518-8c6f-99ab97ef1376','N')
;

-- 6 de fev de 2025 08:24:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134317,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120786,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','0ea56a0a-257e-497d-9336-b6547d55604a','N','D')
;

-- 6 de fev de 2025 08:24:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134318,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120786,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','aab13358-5544-4506-ab2b-ace3be164c30','N')
;

-- 6 de fev de 2025 08:24:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134319,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120786,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:24:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:24:50','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','9c56c57f-47cb-420f-82db-79714cc57e82','N','D')
;

-- 6 de fev de 2025 08:25:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134320,0,'NCM','Primary key table LBR_NCM','Primary key table LBR_NCM',1120786,'LBR_NCM_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:25:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:25:02','YYYY-MM-DD HH24:MI:SS'),100,1000134,'Y','N','LBRA','N','N','N','Y','20b86463-1e42-46df-b83f-e5587927550e','Y',0,'N','N','N')
;

-- 6 de fev de 2025 08:25:06 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2025-02-06 08:25:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134320
;

-- 6 de fev de 2025 08:25:07 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNCM_LBRPresumedTaxCredit', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-02-06 08:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134320
;

-- 6 de fev de 2025 08:25:07 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN LBR_NCM_ID NUMERIC(10) DEFAULT NULL 
;

-- 6 de fev de 2025 08:25:07 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD CONSTRAINT LBRNCM_LBRPresumedTaxCredit FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- 6 de fev de 2025 08:25:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134321,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120786,1000003,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:25:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:25:30','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','N','N','Y','e212eb98-62a0-4d60-a585-f6bc5f627924','Y',0,'N','N','N','N')
;

-- 6 de fev de 2025 08:25:33 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRPresumedTaxCredit', FKConstraintType='N',Updated=TO_TIMESTAMP('2025-02-06 08:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134321
;

-- 6 de fev de 2025 08:25:33 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- 6 de fev de 2025 08:25:33 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD CONSTRAINT CRegion_LBRPresumedTaxCredit FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 6 de fev de 2025 08:25:46 BRT
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2025-02-06 08:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134320
;

-- 6 de fev de 2025 08:25:48 BRT
INSERT INTO t_alter_column values('lbr_presumedtaxcredit','LBR_NCM_ID','NUMERIC(10)',null,null)
;

-- 6 de fev de 2025 08:25:48 BRT
INSERT INTO t_alter_column values('lbr_presumedtaxcredit','LBR_NCM_ID',null,'NOT NULL',null)
;

-- 6 de fev de 2025 08:26:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134322,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120786,'ValidFrom',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:25:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:25:59','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','4613eeee-6025-4c36-9e56-b92b24440527','Y',0,'N','N','N')
;

-- 6 de fev de 2025 08:26:29 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN ValidFrom TIMESTAMP NOT NULL
;

-- 6 de fev de 2025 08:26:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134323,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120786,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:26:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:26:54','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','f2c3202a-ec43-430a-8ca7-3b0b376e605e','Y',0,'N','N','N')
;

-- 6 de fev de 2025 08:26:56 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN ValidTo TIMESTAMP DEFAULT NULL 
;

-- 6 de fev de 2025 08:27:05 BRT
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_TIMESTAMP('2025-02-06 08:27:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134322
;

-- 6 de fev de 2025 08:28:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134324,0,'Tax Benefit Code',1120786,'LBR_TaxBenefitCode',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:28:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:28:01','YYYY-MM-DD HH24:MI:SS'),100,1122476,'Y','N','LBRA','N','N','N','Y','c8580661-f081-460d-8385-aa985679c8a3','Y',0,'N','N','N','N')
;

-- 6 de fev de 2025 08:28:06 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2025-02-06 08:28:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134324
;

-- 6 de fev de 2025 08:28:07 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN LBR_TaxBenefitCode VARCHAR(10) NOT NULL
;

-- 6 de fev de 2025 08:31:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134325,0,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120786,'Percentage','0',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:31:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:31:42','YYYY-MM-DD HH24:MI:SS'),100,2004,'Y','N','LBRA','N','N','N','Y','dbac27d3-e8b9-47c6-be98-136271edf834','Y',0,'N','N','N')
;

-- 6 de fev de 2025 08:31:45 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN Percentage NUMERIC DEFAULT '0' NOT NULL
;

-- 6 de fev de 2025 08:43:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134329,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120786,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-02-06 08:43:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 08:43:47','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','U','N','N','N','Y','17f28b81-c4f9-4f39-bfc2-1ef254324298','Y',10,'N','N','N')
;

-- 6 de fev de 2025 08:44:01 BRT
ALTER TABLE LBR_PresumedTaxCredit ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 6 de fev de 2025 09:56:21 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,PO_Window_ID,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120787,'Nota Fiscal Presumed Tax Credit',1000015,'LBR_NFLinePTaxCredit',0,'3',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L',1000019,'N','Y','3c5d103c-94e9-4bf4-a9f8-0c64b3ddcfd7','N','N','N','N')
;

-- 6 de fev de 2025 09:56:21 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFLinePTaxCredit',1000000,'N','N','Table LBR_NFLinePTaxCredit','Y','Y',0,0,TO_TIMESTAMP('2025-02-06 09:56:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:21','YYYY-MM-DD HH24:MI:SS'),100,1154062,'Y',1000000,1,200000,'3724e881-d343-4791-9f99-be4682ff108c')
;

-- 6 de fev de 2025 09:56:27 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123487,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFLinePTaxCredit_ID','Nota Fiscal Presumed Tax Credit','Nota Fiscal Presumed Tax Credit','LBRA','3566fcca-0135-493b-92ee-65bf3819bdcd')
;

-- 6 de fev de 2025 09:56:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134330,0.0,'Nota Fiscal Presumed Tax Credit',1120787,'LBR_NFLinePTaxCredit_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:27','YYYY-MM-DD HH24:MI:SS'),100,1123487,'N','N','LBRA','N','97dcf2e3-96ec-4e52-b1ff-7811b087eafb','N')
;

-- 6 de fev de 2025 09:56:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134331,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120787,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','68bcca96-1049-4f48-933c-fe7e7cb2e87b','N','D')
;

-- 6 de fev de 2025 09:56:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134332,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120787,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','96b94f0d-5b5e-4596-af15-8f7d321618fd','N','D')
;

-- 6 de fev de 2025 09:56:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134333,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120787,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','5ee40d54-6359-4c51-9340-1910ce5027c7','N')
;

-- 6 de fev de 2025 09:56:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134334,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120787,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','3e5f7243-73d9-4147-9990-470a8bd3bf88','N')
;

-- 6 de fev de 2025 09:56:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134335,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120787,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:29','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','612fada4-c6c2-4b09-b1ed-23c851520820','N','D')
;

-- 6 de fev de 2025 09:56:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134336,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120787,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','363f1591-7dd3-4789-a65b-64a90da772ad','N')
;

-- 6 de fev de 2025 09:56:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134337,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120787,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','d48c9b24-f4e2-4d64-904e-7ead13fae685','N','D')
;

-- 6 de fev de 2025 09:56:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134338,0.0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120787,'LBR_NotaFiscalLine_ID',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:56:30','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','LBRA','N','3c479586-4bdf-47fd-aa02-a267e2f8e583','N','N')
;

-- 6 de fev de 2025 09:57:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134339,0,'Tax Benefit Code',1120787,'LBR_TaxBenefitCode',10,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:57:00','YYYY-MM-DD HH24:MI:SS'),100,1122476,'Y','N','LBRA','N','N','N','Y','e0b22075-36c2-4ab2-9e4c-6d95e29518e5','Y',0,'N','N','N','N')
;

-- 6 de fev de 2025 09:57:02 BRT
ALTER TABLE LBR_NFLinePTaxCredit ADD COLUMN LBR_TaxBenefitCode VARCHAR(10) NOT NULL
;

-- 6 de fev de 2025 09:57:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,ValueMin,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134340,0,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120787,'Percentage','0',10,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:57:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:57:50','YYYY-MM-DD HH24:MI:SS'),100,2004,'Y',NULL,'N','U','N','N','N','Y','b68549cd-fe04-4dc9-8f33-ab56c9422677','Y',0,'N','N','N')
;

-- 6 de fev de 2025 09:57:54 BRT
ALTER TABLE LBR_NFLinePTaxCredit ADD COLUMN Percentage NUMERIC DEFAULT '0' NOT NULL
;

-- 6 de fev de 2025 09:58:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134341,0,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120787,'Amount','0',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:58:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:58:12','YYYY-MM-DD HH24:MI:SS'),100,1367,'Y','N','U','N','N','N','Y','048ab4db-d64b-4679-8b5f-d771acc62a64','Y',0,'N','N','N')
;

-- 6 de fev de 2025 09:58:13 BRT
ALTER TABLE LBR_NFLinePTaxCredit ADD COLUMN Amount NUMERIC DEFAULT '0' NOT NULL
;

-- 6 de fev de 2025 09:58:21 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2025-02-06 09:58:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134338
;

-- 6 de fev de 2025 09:59:38 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120538,'Presumed Credit',1000015,57,'Y',1120787,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:38','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',2,'N','U','Y','N','dbf535a4-6b42-4565-92ed-f1b0fbbadb2d','B')
;

-- 6 de fev de 2025 09:59:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132217,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120538,1134331,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','547114a8-326c-4829-b565-96ade4ddcb96','N',2)
;

-- 6 de fev de 2025 09:59:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132218,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120538,1134332,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','acbbf8db-5971-4add-8664-5e160f2e0ff3','Y','Y',10,4,2)
;

-- 6 de fev de 2025 09:59:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132219,'Nota Fiscal Presumed Tax Credit',1120538,1134330,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','20cb7c16-70a1-4f54-97c9-f7c5e6b15746','N',2)
;

-- 6 de fev de 2025 09:59:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132220,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120538,1134338,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','80ddd363-ee78-4ed4-8493-7a69403490e5','Y',20,2)
;

-- 6 de fev de 2025 09:59:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132221,'Tax Benefit Code',1120538,1134339,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','82dc816a-7dcb-45ee-983d-d72cf5923e50','Y',30,2)
;

-- 6 de fev de 2025 09:59:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132222,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120538,1134333,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d1514f27-aea1-43ac-9cb1-52082a37088f','Y',40,2,2)
;

-- 6 de fev de 2025 10:00:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134342,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120787,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2025-02-06 09:59:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 09:59:59','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','U','N','N','N','Y','cd05b1d6-882a-452f-a6a6-9c191b4920cf','Y',10,'N','N','N')
;

-- 6 de fev de 2025 10:00:02 BRT
ALTER TABLE LBR_NFLinePTaxCredit ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 6 de fev de 2025 10:00:17 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2025-02-06 10:00:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134342
;

-- 6 de fev de 2025 10:00:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132223,'Description','Optional short description of the record','A description is limited to 255 characters.',1120538,1134342,'Y',255,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:00:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:00:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6ce150c2-a20d-4541-bd9d-dbe2ffbd898c','Y',50,5)
;

-- 6 de fev de 2025 10:00:59 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2025-02-06 10:00:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134341
;

-- 6 de fev de 2025 10:01:03 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2025-02-06 10:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134340
;

-- 6 de fev de 2025 10:01:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132224,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120538,1134340,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4cf9e5a5-8045-454e-ad0d-7011c97a18d9','Y',60,2)
;

-- 6 de fev de 2025 10:01:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132225,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120538,1134341,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a1cd93c8-e333-4e51-87e5-75f4e699322e','Y',70,2)
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132222
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132221
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132224
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132225
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132223
;

-- 6 de fev de 2025 10:01:39 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 10:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132219
;

-- 6 de fev de 2025 10:01:55 BRT
UPDATE AD_Tab SET Name='dito P',Updated=TO_TIMESTAMP('2025-02-06 10:01:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120538
;

-- 6 de fev de 2025 10:02:38 BRT
UPDATE AD_Tab SET Name='Presumed Credit',Updated=TO_TIMESTAMP('2025-02-06 10:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120538
;

-- 6 de fev de 2025 10:02:45 BRT
UPDATE AD_Tab SET EntityType='LBRA',Updated=TO_TIMESTAMP('2025-02-06 10:02:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120538
;

-- 6 de fev de 2025 10:03:56 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120539,'Presumed Credit',1000019,80,'Y',1120787,0,0,'Y',TO_TIMESTAMP('2025-02-06 10:03:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:03:55','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',2,'N','LBRA','Y','N','bffe63f9-b000-4f7d-b6f3-164bbb5dbd11','B')
;

-- 6 de fev de 2025 10:04:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132226,'Nota Fiscal Presumed Tax Credit',1120539,1134330,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','631d8ae7-12db-441e-9831-f542c1935d84','N',1,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132227,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120539,1134331,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d891252f-345b-430b-9c09-ea942e74ff12','N',1,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132228,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120539,1134332,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6449d8d2-8a41-4ca8-9fa7-3e692c049afb','Y','Y',10,4,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132229,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120539,1134338,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37d6ef11-229a-4d91-a6df-5b8e4ebb8a29','Y',20,1,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132230,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120539,1134333,'Y',1,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ddb42508-86fb-467d-8991-b54ee99964ef','Y',40,5,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132231,'Tax Benefit Code',1120539,1134339,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c7c83ef8-d690-4f06-a9a5-7d970fddb770','Y',30,1,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132232,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120539,1134340,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e7fe2588-0c85-4e86-a665-796421ff0552','Y',60,1,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132233,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120539,1134341,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','94df3a10-2bbf-471c-a0c7-5b6034a6ee8b','Y',70,4,2,1,'N','N','N')
;

-- 6 de fev de 2025 10:04:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1132234,'Description','Optional short description of the record','A description is limited to 255 characters.',1120539,1134342,'Y',255,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 10:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 10:04:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d7ad90ef-2342-481d-826d-190543c47dbb','Y',50,1,5,3,'N','N','N')
;

-- 6 de fev de 2025 10:05:54 BRT
UPDATE AD_Column SET Name='Tax Benefit Code', Description=NULL, Help=NULL, ColumnName='LBR_TaxBenefitCode', AD_Element_ID=1122476,Updated=TO_TIMESTAMP('2025-02-06 10:05:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134324
;

-- 6 de fev de 2025 13:47:36 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120540,'Presumed Tax',1000002,40,'Y',1120786,0,0,'Y',TO_TIMESTAMP('2025-02-06 13:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:47:35','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','d8a77264-442f-451e-8fe8-ce6f507ecfb5','B')
;

-- 6 de fev de 2025 13:47:45 BRT
UPDATE AD_Tab SET Name='Presumed Tax Credit',Updated=TO_TIMESTAMP('2025-02-06 13:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120540
;

-- 6 de fev de 2025 13:48:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132235,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120540,1134313,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9dc8abfd-31c5-447c-8a6d-2359042d97ba','N',2)
;

-- 6 de fev de 2025 13:48:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132236,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120540,1134314,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','43aa504a-dff6-4066-abd7-9644966249a0','Y','Y',10,4,2)
;

-- 6 de fev de 2025 13:48:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132237,'Presumed Tax Credit',1120540,1134311,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e91f2f6c-a809-436b-a402-ba2b34e2aeca','N',2)
;

-- 6 de fev de 2025 13:48:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132238,'LBR_PresumedTaxCredit_UU',1120540,1134312,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','abb33309-2d9b-46c8-a7ac-4fc5a4090690','N',2)
;

-- 6 de fev de 2025 13:48:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132239,'NCM','Primary key table LBR_NCM','Primary key table LBR_NCM',1120540,1134320,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1280e1a4-b2d8-4d1f-96de-17eeac4b8473','Y',20,2)
;

-- 6 de fev de 2025 13:48:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132240,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120540,1134321,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3343d61b-0544-4851-b64d-58b8473567a1','Y',30,2)
;

-- 6 de fev de 2025 13:48:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132241,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120540,1134322,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1bdcbddc-82ab-4c8c-b7ce-a53fcbbdbd4c','Y',40,2)
;

-- 6 de fev de 2025 13:48:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132242,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120540,1134323,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','16d70a3a-a884-45d8-82aa-caada40705f0','Y',50,2)
;

-- 6 de fev de 2025 13:48:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132243,'Tax Benefit Code',1120540,1134324,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3f59323-a4db-4b74-a007-9387d9d6841c','Y',60,2)
;

-- 6 de fev de 2025 13:48:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132244,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120540,1134325,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c4cedf19-f5e2-47df-b2b6-94b39a59050a','Y',70,2)
;

-- 6 de fev de 2025 13:48:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132245,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120540,1134315,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2025-02-06 13:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2025-02-06 13:48:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0cfd89e4-28d2-46c7-a9b0-311656332559','Y',80,2,2)
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132245
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132240
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132241
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132242
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132243
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132244
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132238
;

-- 6 de fev de 2025 13:48:50 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2025-02-06 13:48:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132237
;

-- 6 de fev de 2025 13:51:08 BRT
UPDATE AD_Column SET FormatPattern='#,##0.00 %',Updated=TO_TIMESTAMP('2025-02-06 13:51:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134325
;

-- 6 de fev de 2025 13:51:36 BRT
UPDATE AD_Column SET FormatPattern='#,##0.00 %',Updated=TO_TIMESTAMP('2025-02-06 13:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134340
;

-- 6 de fev de 2025 10:05:54 BRT
SELECT Register_Migration_Script ('202502061217_PresumedTaxCredit.sql') FROM DUAL
;

