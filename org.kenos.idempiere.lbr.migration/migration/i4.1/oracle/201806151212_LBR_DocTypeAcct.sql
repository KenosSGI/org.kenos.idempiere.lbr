SET SQLBLANKLINES ON
SET DEFINE OFF

-- Document Type Accounting
-- 15/06/2018 11h10min40s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120599,'Document Type Accounting','LBR_DocTypeAcct',0,'3',0,0,'Y',TO_DATE('2018-06-15 11:10:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:10:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','ed17e620-7823-45e9-b36d-2f9783fd802b','N','N','N','N')
;

-- 15/06/2018 11h10min40s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_DocTypeAcct',1000000,'N','N','Table LBR_DocTypeAcct','Y','Y',0,0,TO_DATE('2018-06-15 11:10:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:10:40','YYYY-MM-DD HH24:MI:SS'),100,1153599,'Y',1000000,1,200000,'6bf89468-a4d0-408c-93f4-70f992b66f9b')
;

-- 15/06/2018 11h14min12s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122517,0,0,'Y',TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DocTypeAcct_ID','Document Type Accounting','Document Type Accounting','LBRA','92b16d5a-e448-494a-9c1f-a9c1609a6b8a')
;

-- 15/06/2018 11h14min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130344,0.0,'Document Type Accounting',1120599,'LBR_DocTypeAcct_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,1122517,'N','N','LBRA','N','2b43b747-610a-4f98-add2-8089921c336e','N')
;

-- 15/06/2018 11h14min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130345,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120599,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:12','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','bf5cc99e-14b8-44c4-98da-6b390cdf9bdb','N','D')
;

-- 15/06/2018 11h14min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130346,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120599,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','d763b5f4-0548-467f-a49b-3c9bfd6dba5f','N','D')
;

-- 15/06/2018 11h14min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130347,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120599,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','a0c814d7-3158-4aa4-8d67-2793d355c463','N')
;

-- 15/06/2018 11h14min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130348,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120599,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:13','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','026e754f-5195-4cec-8272-1bbd4a1a62fd','N','D')
;

-- 15/06/2018 11h14min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130349,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120599,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2018-06-15 11:14:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:14','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','49e91200-5c9e-4372-91a3-a07f150da980','N')
;

-- 15/06/2018 11h14min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130350,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120599,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2018-06-15 11:14:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:14','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','5893fa8c-abe2-4753-8390-7f027fec359a','N')
;

-- 15/06/2018 11h14min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130351,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120599,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2018-06-15 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','69633068-1db5-4017-ba00-3816efa37e11','N','D')
;

-- 15/06/2018 11h14min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130352,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120599,'Name',4,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_DATE('2018-06-15 11:14:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:14:52','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','e3abfb9a-93a6-4f14-94ee-cf00312a572f','Y',0,'N','N')
;

-- 15/06/2018 11h15min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130353,0,'Tax Indicator','Short form for Tax to be printed on documents','The Tax Indicator identifies the short name that will print on documents referencing this tax.',1120599,'TaxIndicator',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-06-15 11:15:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:15:11','YYYY-MM-DD HH24:MI:SS'),100,1135,'Y','N','LBRA','N','N','N','Y','ccbf9000-f39b-42a5-a6af-8a603469822e','Y',0,'N','N')
;

-- 15/06/2018 11h15min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130354,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120599,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2018-06-15 11:15:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:15:23','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','b36e549a-6a85-434d-922d-85c0b8ac9034','Y',0,'N','N')
;

-- 15/06/2018 11h15min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130355,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120599,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2018-06-15 11:15:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:15:33','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','e39fe65b-a19c-451e-9643-0756f9018cce','Y',0,'N','N')
;

-- 15/06/2018 11h15min40s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2018-06-15 11:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130354
;

-- 15/06/2018 11h15min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130356,0,'Combination','Valid Account Combination','The Combination identifies a valid combination of element which represent a GL account.',1120599,'C_ValidCombination_ID',22,'N','N','N','N','N',0,'N',25,0,0,'Y',TO_DATE('2018-06-15 11:15:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:15:57','YYYY-MM-DD HH24:MI:SS'),100,222,'Y','N','LBRA','N','N','N','Y','9d9072d6-e5e6-42b0-9f42-f3f53b411dd2','Y',0,'N','N','N')
;

-- 15/06/2018 11h16min6s BRT
UPDATE AD_Column SET FKConstraintName='CValidCombination_LBRDocTypeAc', FKConstraintType='N',Updated=TO_DATE('2018-06-15 11:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130356
;

-- 15/06/2018 11h16min6s BRT
CREATE TABLE LBR_DocTypeAcct (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_ValidCombination_ID NUMBER(10) DEFAULT NULL , Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_DocTypeAcct_ID NUMBER(10) NOT NULL, Name VARCHAR2(4) NOT NULL, TaxIndicator VARCHAR2(10) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, ValidFrom DATE NOT NULL, ValidTo DATE DEFAULT NULL , CONSTRAINT LBR_DocTypeAcct_Key PRIMARY KEY (LBR_DocTypeAcct_ID))
;

-- 15/06/2018 11h16min6s BRT
ALTER TABLE LBR_DocTypeAcct ADD CONSTRAINT CValidCombination_LBRDocTypeAc FOREIGN KEY (C_ValidCombination_ID) REFERENCES c_validcombination(c_validcombination_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/06/2018 11h16min27s BRT
UPDATE AD_Table SET AD_Window_ID=135,Updated=TO_DATE('2018-06-15 11:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120599
;

-- 15/06/2018 11h17min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130357,0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120599,'C_DocType_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2018-06-15 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','N','N','Y','d411b012-57e1-4a1a-aad3-b9ba62a1d6e8','Y',0,'N','N')
;

-- 15/06/2018 11h17min20s BRT
UPDATE AD_Column SET FKConstraintName='CDocType_LBRDocTypeAcct', FKConstraintType='N',Updated=TO_DATE('2018-06-15 11:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130357
;

-- 15/06/2018 11h17min20s BRT
ALTER TABLE LBR_DocTypeAcct ADD C_DocType_ID NUMBER(10) NOT NULL
;

-- 15/06/2018 11h17min20s BRT
ALTER TABLE LBR_DocTypeAcct ADD CONSTRAINT CDocType_LBRDocTypeAcct FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/06/2018 11h18min46s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120289,'Accounting',135,999,'Y',1120599,0,0,'Y',TO_DATE('2018-06-15 11:18:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:46','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','a2d24b8a-877a-4c4a-a6d5-d1db5e6406d2','B')
;

-- 15/06/2018 11h18min55s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127471,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120289,1130345,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','394c1e0f-3c65-4408-92c5-9bf0188f6b8b','N',2)
;

-- 15/06/2018 11h18min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127472,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120289,1130346,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d73a672c-1672-40f4-b82e-b60f14d7f5d9','Y','Y',10,4,2)
;

-- 15/06/2018 11h18min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127473,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120289,1130352,'Y',4,30,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0327ef5e-b9f1-44b6-a499-18aaedd4f259','Y',20,2)
;

-- 15/06/2018 11h18min56s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127474,'Document Type Accounting',1120289,1130344,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','002d63af-21eb-4145-8a54-5ed4e9824c98','N',2)
;

-- 15/06/2018 11h18min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127475,'Tax Indicator','Short form for Tax to be printed on documents','The Tax Indicator identifies the short name that will print on documents referencing this tax.',1120289,1130353,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b9e1cbbe-8cff-4e2f-b4c1-9241be3296e0','Y',30,2)
;

-- 15/06/2018 11h18min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127476,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120289,1130354,'Y',7,50,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','97ab4186-625e-43e4-b6b3-3e430e3d93c3','Y',40,2)
;

-- 15/06/2018 11h18min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127477,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120289,1130355,'Y',7,60,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0ce2c752-050d-49e4-8e40-c628b02dbc22','Y',50,2)
;

-- 15/06/2018 11h18min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127478,'Combination','Valid Account Combination','The Combination identifies a valid combination of element which represent a GL account.',1120289,1130356,'Y',22,70,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','06c8aa1c-5aa9-40b1-bd81-ae6a0d3d69ee','Y',60,2)
;

-- 15/06/2018 11h18min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127479,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120289,1130357,'Y',22,80,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','76523464-8137-46da-857a-ee00bfdd3291','Y',70,2)
;

-- 15/06/2018 11h18min58s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127480,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120289,1130349,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2018-06-15 11:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-15 11:18:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5b000752-7212-4b9d-9695-2728391ded47','Y',80,2,2)
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127479
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127473
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127475
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127478
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127476
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127477
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127480
;

-- 15/06/2018 11h22min8s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-06-15 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127474
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127479
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127472
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127473
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127475
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127478
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127480
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127476
;

-- 15/06/2018 11h23min8s BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127477
;

-- 15/06/2018 12h0min19s BRT
UPDATE AD_Tab SET AD_Column_ID=1130357,Updated=TO_DATE('2018-06-15 12:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120289
;
    
-- 15/06/2018 12h0min19s BRT
SELECT Register_Migration_Script ('201806151212_LBR_DocTypeAcct.sql') FROM DUAL
;

