SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 11 de ago de 2020 15:29:26 BRT
UPDATE AD_Window SET Name='Gerar SPED Fiscal',Updated=TO_DATE('2020-08-11 15:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120076
;

-- 11 de ago de 2020 15:29:27 BRT
UPDATE AD_Menu SET Name='Gerar SPED Fiscal', Description=NULL, IsActive='Y',Updated=TO_DATE('2020-08-11 15:29:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120180
;

-- 11 de ago de 2020 15:30:42 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120166,'Generate SPED Contributions',0,0,'Y',TO_DATE('2020-08-11 15:30:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:30:41','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','N','N',0,0,'N','0ab94f5e-6254-4ee4-b89b-b6eabfa3f960')
;

-- 11 de ago de 2020 15:32:35 BRT
UPDATE AD_Window SET Name='Generate SPED Contribution',Updated=TO_DATE('2020-08-11 15:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120166
;

-- 11 de ago de 2020 15:32:54 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120693,'SPED Contribution','LBR_SPEDContribution',0,'3',0,0,'Y',TO_DATE('2020-08-11 15:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:32:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','22527758-6633-4741-8542-1ca50cb14d35','N','N')
;

-- 11 de ago de 2020 15:32:54 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SPEDContribution',1000000,'N','N','Table LBR_SPEDContribution','Y','Y',0,0,TO_DATE('2020-08-11 15:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:32:54','YYYY-MM-DD HH24:MI:SS'),100,1153939,'Y',1000000,1,200000,'ce30a59e-1a1a-4ad6-a3b4-94fa3f8c04b8')
;

-- 11 de ago de 2020 15:33:28 BRT
UPDATE AD_Table SET Name='SPED',Updated=TO_DATE('2020-08-11 15:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120328
;

-- 11 de ago de 2020 15:33:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132501,1.000000000000,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120693,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-08-11 15:33:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:51','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','9afdd1f0-9057-42ed-8c50-2105692057c1','N','N','N','D','N')
;

-- 11 de ago de 2020 15:33:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132502,1.000000000000,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120693,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-08-11 15:33:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:52','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','8a5d9bb9-7717-443b-8529-9a6acf65c128','N','N','N','D','N')
;

-- 11 de ago de 2020 15:33:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132503,0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120693,199,'C_Period_ID',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-08-11 15:33:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:53','YYYY-MM-DD HH24:MI:SS'),100,206,'Y','N','LBRA','N','N','N','Y','c0cf4337-1848-4424-93e5-51431ed2bcb1','Y','N','N','N')
;

-- 11 de ago de 2020 15:33:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132504,1.000000000000,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120693,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2020-08-11 15:33:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:53','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','3f982aab-9a46-491d-a73a-6b0cbaa800bc','N','N','N','N')
;

-- 11 de ago de 2020 15:33:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132505,1.000000000000,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120693,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2020-08-11 15:33:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:54','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','fd95c17d-7759-4a47-bf05-5f0181d17f12','N','N','N','D','N')
;

-- 11 de ago de 2020 15:33:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132506,0,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120693,'C_Year_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-08-11 15:33:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:54','YYYY-MM-DD HH24:MI:SS'),100,223,'Y','N','LBRA','N','N','N','Y','3ab03424-182d-4ccc-9d46-76971bf2c382','Y','N','N','N')
;

-- 11 de ago de 2020 15:33:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132507,0,'Generate To','Generate To',1120693,'GenerateTo',10,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,1491,'Y',1120227,'N','LBRA','N','N','N','Y','737772bc-02e0-484e-a588-516c8195e3bc','Y','Y','N','N')
;

-- 11 de ago de 2020 15:33:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132508,1.000000000000,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120693,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','55e23c63-90da-40cf-a3f8-1ff98b2e3100','N','N','N','N')
;

-- 11 de ago de 2020 15:33:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123190,0,0,'Y',TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPEDContribution_ID','SPED Contribution','SPED Contribution','LBRA','8c21953b-ea62-4a1b-b20b-1714e4cca0a0')
;

-- 11 de ago de 2020 15:33:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132509,1.000000000000,'SPED Contribution',1120693,'LBR_SPEDContribution_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:55','YYYY-MM-DD HH24:MI:SS'),100,1123190,'N','N','LBRA','N','N','N','N','d8cb1332-e776-4062-9c00-95c2881106de','N','N','N','N')
;

-- 11 de ago de 2020 15:33:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123191,0,0,'Y',TO_DATE('2020-08-11 15:33:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPEDContribution_UU','LBR_SPEDContribution_UU','LBR_SPEDContribution_UU','LBRA','da913e57-3b1c-40fc-9a00-84ad721c1fa9')
;

-- 11 de ago de 2020 15:33:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132510,1.0,'LBR_SPEDContribution_UU',1120693,'LBR_SPEDContribution_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-08-11 15:33:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:56','YYYY-MM-DD HH24:MI:SS'),100,1123191,'Y','N','LBRA','N','N','N','Y','6d8b4384-ad4e-442b-a5bf-2459bef8810e','N','N','N','N','N')
;

-- 11 de ago de 2020 15:33:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132511,0,'Process Now',1120693,'Processing',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2020-08-11 15:33:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:57','YYYY-MM-DD HH24:MI:SS'),100,524,'Y',1120114,'N','LBRA','N','N','N','Y','01718463-5f6a-4918-aae3-411239c5d86b','N','B','N','N')
;

-- 11 de ago de 2020 15:33:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132512,1.000000000000,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120693,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2020-08-11 15:33:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:57','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','d5f9692c-bfcd-43f0-bb65-5929a66c4643','N','N','N','N')
;

-- 11 de ago de 2020 15:33:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132513,1.000000000000,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120693,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2020-08-11 15:33:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:33:58','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','03a4f642-0b9c-4ecb-9f4e-6b9f4e4dc615','N','N','N','D','N')
;

-- 11 de ago de 2020 15:34:45 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSPEDContribution', FKConstraintType='N',Updated=TO_DATE('2020-08-11 15:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132503
;

-- 11 de ago de 2020 15:34:46 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBRSPEDContribution', FKConstraintType='N',Updated=TO_DATE('2020-08-11 15:34:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132506
;

-- 11 de ago de 2020 15:34:46 BRT
CREATE TABLE LBR_SPEDContribution (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Period_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_Year_ID NUMBER(10) NOT NULL, GenerateTo CHAR(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_SPEDContribution_ID NUMBER(10) NOT NULL, LBR_SPEDContribution_UU VARCHAR2(36) DEFAULT NULL , Processing CHAR(1) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_SPEDContribution_Key PRIMARY KEY (LBR_SPEDContribution_ID), CONSTRAINT LBR_SPEDContribution_UU_idx UNIQUE (LBR_SPEDContribution_UU))
;

-- 11 de ago de 2020 15:34:47 BRT
ALTER TABLE LBR_SPEDContribution ADD CONSTRAINT CPeriod_LBRSPEDContribution FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 11 de ago de 2020 15:34:47 BRT
ALTER TABLE LBR_SPEDContribution ADD CONSTRAINT CYear_LBRSPEDContribution FOREIGN KEY (C_Year_ID) REFERENCES c_year(c_year_id) DEFERRABLE INITIALLY DEFERRED
;

-- 11 de ago de 2020 15:35:50 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120400,'SPED Contribution',1120166,10,'Y',1120693,0,0,'Y',TO_DATE('2020-08-11 15:35:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:35:49','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','06593876-0385-4349-8e0b-c03520ec6f50','B')
;

-- 11 de ago de 2020 15:36:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129896,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120400,1132501,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','53d7c5a4-0a41-49db-8a2f-1b9a6c8e3904','N',2)
;

-- 11 de ago de 2020 15:36:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129897,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120400,1132502,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','048c1185-d6d5-4059-8dd0-7e9df0909cc0','Y','Y',10,4,2)
;

-- 11 de ago de 2020 15:36:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129898,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120400,1132503,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','744c1fdc-c4d4-4974-8f7a-97e2d63a874e','Y',20,2)
;

-- 11 de ago de 2020 15:36:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129899,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120400,1132506,'Y',22,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e6e08ea-f850-43f1-ac65-c1061fd19e2c','Y',30,2)
;

-- 11 de ago de 2020 15:36:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129900,'Generate To','Generate To',1120400,1132507,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2139e1a7-c7b5-4e2a-8ec9-02cdf425f1a7','Y',40,2,2)
;

-- 11 de ago de 2020 15:36:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129901,'SPED Contribution',1120400,1132509,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c6a0c60b-3746-456b-ab58-962c1f974694','N',2)
;

-- 11 de ago de 2020 15:36:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129902,'LBR_SPEDContribution_UU',1120400,1132510,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ef1920b8-c01b-4d54-a6e8-8c5bd7847706','N',2)
;

-- 11 de ago de 2020 15:36:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129903,'Process Now',1120400,1132511,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3799d790-4e37-4773-80c8-254cfe9d50eb','Y',50,2,2)
;

-- 11 de ago de 2020 15:36:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129904,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120400,1132508,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-11 15:36:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:36:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8cb0abdd-7402-42fa-bf3f-60f50c5915ef','Y',60,2,2)
;

-- 11 de ago de 2020 15:37:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-11 15:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129899
;

-- 11 de ago de 2020 15:37:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-11 15:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129898
;

-- 11 de ago de 2020 15:37:10 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-11 15:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129904
;

-- 11 de ago de 2020 15:37:10 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-11 15:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129902
;

-- 11 de ago de 2020 15:37:10 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-11 15:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129901
;

-- 11 de ago de 2020 15:44:15 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120252,0,0,'Y',TO_DATE('2020-08-11 15:44:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:44:15','YYYY-MM-DD HH24:MI:SS'),100,'Process SPED Contribution','N','Process SPED Contribution','N','org.adempierelbr.sped.process.GenerateSPEDContrib','3','LBRA',0,0,'N','N','Y','N','d149a49d-8b9b-4db2-ac0a-773ce3ae2a6e')
;

-- 11 de ago de 2020 15:44:57 BRT
UPDATE AD_Process SET AllowMultipleExecution=NULL,Updated=TO_DATE('2020-08-11 15:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120252
;

-- 11 de ago de 2020 15:45:34 BRT
UPDATE AD_Column SET AD_Process_ID=NULL,Updated=TO_DATE('2020-08-11 15:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132507
;

-- 11 de ago de 2020 15:46:36 BRT
UPDATE AD_Column SET AD_Process_ID=1120252,Updated=TO_DATE('2020-08-11 15:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132511
;

-- 11 de ago de 2020 15:47:22 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120365,'Generate SPED Contribution','W',1120166,0,0,'Y',TO_DATE('2020-08-11 15:47:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-11 15:47:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','90964063-68ed-4f16-b4ff-528ce84029b4')
;

-- 11 de ago de 2020 15:47:22 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120365, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120365)
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 11 de ago de 2020 15:47:35 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120365
;

SELECT Register_Migration_Script ('202011261800_FixSpedContrib.sql') FROM DUAL
;