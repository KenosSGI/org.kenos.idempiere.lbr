-- 14 de abr de 2021 15:11:28 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120756,'Score Provider','LBR_ScoreProvider',0,'3',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:11:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:11:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','7111834b-bb89-4c0e-bf8c-9902f6c43adb','N','N','N','N')
;

-- 14 de abr de 2021 15:12:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133695,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120756,116,'AD_Client_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:31','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','cce4c087-6625-4eda-a714-f7d3f9823077','N','N','N','D','N')
;

-- 14 de abr de 2021 15:12:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133696,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120756,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:33','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','400735fe-9a7c-4584-a9a7-6d0aa3fc4bc2','N','N','N','D','N')
;

-- 14 de abr de 2021 15:12:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133697,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120756,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','fe826195-0cc2-4284-8950-ca2e409e9417','N','N','N','N')
;

-- 14 de abr de 2021 15:12:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133698,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120756,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:34','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','5a9c4dca-f524-4cbe-8c3a-e2c50bd4012f','N','N','N','D','N')
;

-- 14 de abr de 2021 15:12:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133699,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120756,'Description',255,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','3236c433-d26a-41c6-b793-88938f22f806','Y',10,'N','N','N')
;

-- 14 de abr de 2021 15:12:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133700,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120756,'IsActive','''Y''',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','755945aa-7f27-43b4-8cfd-f4404566f4f1','N','N','N','N')
;

-- 14 de abr de 2021 15:12:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123380,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ScoreProvider_ID','Score Provider','Score Provider','LBRA','1e7121bb-b072-4f61-a565-e9e48a5464b0')
;

-- 14 de abr de 2021 15:12:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133701,0,'Score Provider',1120756,'LBR_ScoreProvider_ID',22,'Y','N','Y','N','Y',0,'N',13,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:36','YYYY-MM-DD HH24:MI:SS'),100,1123380,'N','N','LBRA','N','N','N','N','d4c6a64e-ea92-4857-8d72-ab0324e23c4a','N','N','N','N')
;

-- 14 de abr de 2021 15:12:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123381,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ScoreProvider_UU','LBR_ScoreProvider_UU','LBR_ScoreProvider_UU','LBRA','4bb8eeb2-7019-47dc-9557-9a144630c3a9')
;

-- 14 de abr de 2021 15:12:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133702,1.0,'LBR_ScoreProvider_UU',1120756,'LBR_ScoreProvider_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:37','YYYY-MM-DD HH24:MI:SS'),100,1123381,'Y','N','LBRA','N','N','N','Y','3157a3ce-b63a-476a-a6ca-cbdbc7736d25','N','N','N','N','N')
;

-- 14 de abr de 2021 15:12:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133703,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120756,'Name',60,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:39','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','ef0ca026-d46d-4609-ba8f-e8b0bcacc86e','Y',20,'N','N','N')
;

-- 14 de abr de 2021 15:12:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133704,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120756,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:39','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','7b5f7e7b-0bae-4cf4-b7ff-281e793a9ee4','N','N','N','N')
;

-- 14 de abr de 2021 15:12:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133705,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120756,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:12:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:12:40','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','e4c2ae56-56d2-47c3-95e4-8dac9f1ce07b','N','N','N','D','N')
;

-- 14 de abr de 2021 15:13:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133706,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120756,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:13:04','YYYY-MM-DD HH24:MI:SS'),100,187,'Y','N','LBRA','N','N','N','Y','87eb3d1a-4070-4bbc-997c-d0d620b800fc','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:13:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133707,0,'Classname','Java Classname','The Classname identifies the Java classname used by this report or process.',1120756,'Classname',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:13:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:13:23','YYYY-MM-DD HH24:MI:SS'),100,1299,'Y','N','LBRA','N','N','N','Y','95a17888-c246-4155-b15d-681dc9f134ac','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:13:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133708,0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120756,'URL',120,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:13:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:13:34','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','N','N','Y','d5a9a85f-763d-4039-9d8f-17426f804595','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:13:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133709,0,'User Name',1120756,'UserName',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:13:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:13:49','YYYY-MM-DD HH24:MI:SS'),100,1903,'Y','Y','LBRA','N','N','N','Y','04371df1-0dc4-4afa-a727-048d265485ba','Y',30,'N','N','N')
;

-- 14 de abr de 2021 15:14:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133710,0,'Password','Password of any length (case sensitive)','The Password for this User.  Passwords are required to identify authorized users.  For iDempiere Users, you can change the password via the Process "Reset Password".',1120756,'Password',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:00','YYYY-MM-DD HH24:MI:SS'),100,498,'Y','N','LBRA','N','N','N','Y','07d4af48-d1a8-48cb-a7a3-7b4335683b79','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:14:04 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRScoreProvider', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-14 15:14:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133706
;

-- 14 de abr de 2021 15:14:04 BRT
CREATE TABLE LBR_ScoreProvider (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , Classname VARCHAR(60) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ScoreProvider_ID NUMERIC(10) NOT NULL, LBR_ScoreProvider_UU VARCHAR(36) DEFAULT NULL , Name VARCHAR(60) NOT NULL, Password VARCHAR(60) DEFAULT NULL , URL VARCHAR(120) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, UserName VARCHAR(60) DEFAULT NULL , CONSTRAINT LBR_ScoreProvider_Key PRIMARY KEY (LBR_ScoreProvider_ID), CONSTRAINT LBR_ScoreProvider_UU_idx UNIQUE (LBR_ScoreProvider_UU))
;

-- 14 de abr de 2021 15:14:04 BRT
ALTER TABLE LBR_ScoreProvider ADD CONSTRAINT CBPartner_LBRScoreProvider FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de abr de 2021 15:14:24 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120178,'Score Provider',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','3b909307-7114-492e-b76d-5b16a7484ecf')
;

-- 14 de abr de 2021 15:14:50 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120505,'Score Provider',1120178,10,'Y',1120756,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:50','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','e2859976-3aa4-43ef-afab-7f8caeb98713','B')
;

-- 14 de abr de 2021 15:14:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131522,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120505,1133695,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eae6ea60-668a-4cf5-9bf2-b6c82945665b','N',2)
;

-- 14 de abr de 2021 15:14:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131523,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120505,1133696,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','031c6dbd-bb4d-435a-93dd-53cf0e9e718f','Y','Y',10,4,2)
;

-- 14 de abr de 2021 15:15:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131524,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120505,1133703,'Y',60,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:14:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:14:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b0596b1b-385a-4117-bb1b-8b6a4ad3d1b7','Y',20,5)
;

-- 14 de abr de 2021 15:15:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1131525,'Description','Optional short description of the record','A description is limited to 255 characters.',1120505,1133699,'Y',255,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','313fa6c9-3aa9-40f0-8379-f91bb15b7741','Y',30,5,8)
;

-- 14 de abr de 2021 15:15:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131526,'Score Provider',1120505,1133701,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','153fde71-344c-47af-8e06-65c79de4edaf','N',2)
;

-- 14 de abr de 2021 15:15:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131527,'LBR_ScoreProvider_UU',1120505,1133702,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','06383398-f6f8-4bf2-ad6d-280f142c4941','N',2)
;

-- 14 de abr de 2021 15:15:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131528,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120505,1133706,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','25b7f64d-f6f0-49f0-938d-2cb0ad8bd282','Y',40,2)
;

-- 14 de abr de 2021 15:15:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131529,'Classname','Java Classname','The Classname identifies the Java classname used by this report or process.',1120505,1133707,'Y',60,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f8dab2e0-130f-4e92-9fdb-4f8a8bf92628','Y',50,5)
;

-- 14 de abr de 2021 15:15:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131530,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120505,1133708,'Y',120,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e0f56367-f707-478b-8b03-a90af125e40d','Y',60,5)
;

-- 14 de abr de 2021 15:15:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131531,'User Name',1120505,1133709,'Y',60,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dc5886e3-b3ba-43f9-83da-4a98820decb2','Y',70,5)
;

-- 14 de abr de 2021 15:15:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131532,'Password','Password of any length (case sensitive)','The Password for this User.  Passwords are required to identify authorized users.  For iDempiere Users, you can change the password via the Process "Reset Password".',1120505,1133710,'Y',60,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90e3e2cd-77b1-453d-8666-3ff9f3b1762f','Y',80,5)
;

-- 14 de abr de 2021 15:15:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131533,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120505,1133700,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:15:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:15:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a11a0fb4-e969-4a73-9f7e-4c907fc8fc3e','Y',90,2,2)
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131533
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET SeqNo=70, AD_FieldGroup_ID=200015, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131529
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET SeqNo=80, AD_FieldGroup_ID=200015, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131530
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET SeqNo=90, AD_FieldGroup_ID=200015, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131531
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_FieldGroup_ID=200015, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131532
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131527
;

-- 14 de abr de 2021 15:16:02 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131526
;

-- 14 de abr de 2021 15:16:20 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, IsAdvancedField='Y',Updated=TO_TIMESTAMP('2021-04-14 15:16:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131529
;

-- 14 de abr de 2021 15:16:24 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, IsAdvancedField='Y',Updated=TO_TIMESTAMP('2021-04-14 15:16:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131530
;

-- 14 de abr de 2021 15:16:59 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120757,'Score Status','LBR_ScoreStatus',0,'3',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','e2c25aa1-1adc-40fb-b668-8d644fec84ad','N','N','N','N')
;

-- 14 de abr de 2021 15:17:00 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ScoreStatus',1000000,'N','N','Table LBR_ScoreStatus','Y','Y',0,0,TO_TIMESTAMP('2021-04-14 15:16:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:16:59','YYYY-MM-DD HH24:MI:SS'),100,1154031,'Y',1000000,1,200000,'69e54dae-1445-4980-a545-f50d992ed667')
;

-- 14 de abr de 2021 15:17:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133711,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120757,116,'AD_Client_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:14','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','5214357a-fcc3-4403-95fb-9770c5f7ccc8','N','N','N','D','N')
;

-- 14 de abr de 2021 15:17:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133712,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120757,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:15','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','d55a38a6-fab9-429b-8f26-594e577f2cba','N','N','N','D','N')
;

-- 14 de abr de 2021 15:17:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133713,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120757,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:16','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','5afe3d67-9524-47b8-887c-028e49c7c18a','N','N','N','N')
;

-- 14 de abr de 2021 15:17:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133714,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120757,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:16','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','66ef0126-6890-4036-b623-a12871c0c729','N','N','N','D','N')
;

-- 14 de abr de 2021 15:17:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133715,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120757,'Description',255,'N','N','N','N','N',0,'N',34,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:17','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','88e7b3bb-cbcc-475a-b21b-abb06bdd26f4','Y',10,'N','N','N')
;

-- 14 de abr de 2021 15:17:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133716,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120757,'IsActive','''Y''',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','c916f359-756b-4f76-8f76-da8a6a389da1','N','N','N','N')
;

-- 14 de abr de 2021 15:17:18 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123382,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ScoreStatus_ID','Score Status','Score Status','LBRA','6843a229-83fb-490e-b981-b2d3e5474489')
;

-- 14 de abr de 2021 15:17:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133717,0,'Score Status',1120757,'LBR_ScoreStatus_ID',22,'Y','N','Y','N','Y',0,'N',13,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:18','YYYY-MM-DD HH24:MI:SS'),100,1123382,'N','N','LBRA','N','N','N','N','5acde8df-3637-4543-b140-b01d340e50fc','N','N','N','N')
;

-- 14 de abr de 2021 15:17:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123383,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ScoreStatus_UU','LBR_ScoreStatus_UU','LBR_ScoreStatus_UU','LBRA','ce9b61ff-cc17-42ab-906a-d472b5c5ff52')
;

-- 14 de abr de 2021 15:17:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133718,1.0,'LBR_ScoreStatus_UU',1120757,'LBR_ScoreStatus_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:19','YYYY-MM-DD HH24:MI:SS'),100,1123383,'Y','N','LBRA','N','N','N','Y','366c78a9-6447-4aa1-a2d0-dbf12c280237','N','N','N','N','N')
;

-- 14 de abr de 2021 15:17:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133719,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120757,'Name',60,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','b6670a75-22f1-4415-98cc-df88691749e6','Y',20,'N','N','N')
;

-- 14 de abr de 2021 15:17:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133720,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120757,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','2b19631e-7c00-4504-9b28-eec85cdb272d','N','N','N','N')
;

-- 14 de abr de 2021 15:17:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133721,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120757,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:17:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:17:21','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','cd02ced1-878e-4466-9333-22448ca1de62','N','N','N','D','N')
;

-- 14 de abr de 2021 15:17:56 BRT
UPDATE AD_Column SET Name='Transaction Date', Description='Transaction Date', Help='The Transaction Date indicates the date of the transaction.', ColumnName='DateTrx', FieldLength=7, AD_Reference_ID=15, AD_Element_ID=1297, IsSelectionColumn='N', FKConstraintType=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133719
;

-- 14 de abr de 2021 15:19:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133722,0,'Score Provider',1120757,'LBR_ScoreProvider_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:19:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:19:00','YYYY-MM-DD HH24:MI:SS'),100,1123380,'N','N','LBRA','N','N','N','Y','da214691-3898-4e54-b1e6-44beba77c7d7','Y',0,'N','N','N','N')
;

-- 14 de abr de 2021 15:19:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133723,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120757,'C_BPartner_ID',22,'N','N','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:19:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:19:32','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','N','N','Y','89d3a4d7-a096-4ce2-9d3e-30ebd692c385','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:19:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133724,0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120757,'C_BPartner_Location_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:19:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:19:51','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','N','N','Y','96f399b1-cda5-430b-88d1-d1ad13995c41','Y',0,'N','N','N')
;

-- 14 de abr de 2021 15:20:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123384,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:20:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:20:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Score','Score','Score','LBRA','9dd1ca1f-1198-4e8f-bd1e-bcbbcc647c82')
;

-- 14 de abr de 2021 15:21:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1123385,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:21:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:21:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InternalScore','Internal Score','Score in the organization scale','Internal Score','LBRA','cc07f87b-633b-49c2-b078-1a871b60714f')
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_Element SET Description='Score in the scale of score provider',Updated=TO_TIMESTAMP('2021-04-14 15:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123384
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_Column SET ColumnName='LBR_Score', Name='Score', Description='Score in the scale of score provider', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123384
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Score', Name='Score', Description='Score in the scale of score provider', Help=NULL, AD_Element_ID=1123384 WHERE UPPER(ColumnName)='LBR_SCORE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Score', Name='Score', Description='Score in the scale of score provider', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123384 AND IsCentrallyMaintained='Y'
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Score', Name='Score', Description='Score in the scale of score provider', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123384 AND IsCentrallyMaintained='Y'
;

-- 14 de abr de 2021 15:21:26 BRT
UPDATE AD_Field SET Name='Score', Description='Score in the scale of score provider', Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123384) AND IsCentrallyMaintained='Y'
;

-- 14 de abr de 2021 15:22:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133725,0,'Score','Score in the scale of score provider',1120757,'LBR_Score',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,1123384,'Y','N','LBRA','N','N','N','Y','6707e8cb-9611-4a5a-b7a7-c6d1a9a580e3','Y',0,'N','N','N','N')
;

-- 14 de abr de 2021 15:22:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133726,0,'Internal Score','Score in the organization scale',1120757,'LBR_InternalScore',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,1123385,'Y','N','LBRA','N','N','N','Y','9726cf4a-e137-4054-a6ac-8cb6bb6fdc1c','Y',0,'N','N','N','N')
;

-- 14 de abr de 2021 15:22:17 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRScoreStatus', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-14 15:22:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133723
;

-- 14 de abr de 2021 15:22:17 BRT
UPDATE AD_Column SET FKConstraintName='CBPartnerLocation_LBRScoreStat', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-14 15:22:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133724
;

-- 14 de abr de 2021 15:22:17 BRT
UPDATE AD_Column SET FKConstraintName='LBRScoreProvider_LBRScoreStatu', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-14 15:22:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133722
;

-- 14 de abr de 2021 15:22:17 BRT
CREATE TABLE LBR_ScoreStatus (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) NOT NULL, C_BPartner_Location_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateTrx TIMESTAMP NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_InternalScore VARCHAR(10) DEFAULT NULL , LBR_Score VARCHAR(10) DEFAULT NULL , LBR_ScoreProvider_ID NUMERIC(10) NOT NULL, LBR_ScoreStatus_ID NUMERIC(10) NOT NULL, LBR_ScoreStatus_UU VARCHAR(36) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_ScoreStatus_Key PRIMARY KEY (LBR_ScoreStatus_ID), CONSTRAINT LBR_ScoreStatus_UU_idx UNIQUE (LBR_ScoreStatus_UU))
;

-- 14 de abr de 2021 15:22:17 BRT
ALTER TABLE LBR_ScoreStatus ADD CONSTRAINT CBPartner_LBRScoreStatus FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de abr de 2021 15:22:17 BRT
ALTER TABLE LBR_ScoreStatus ADD CONSTRAINT CBPartnerLocation_LBRScoreStat FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de abr de 2021 15:22:17 BRT
ALTER TABLE LBR_ScoreStatus ADD CONSTRAINT LBRScoreProvider_LBRScoreStatu FOREIGN KEY (LBR_ScoreProvider_ID) REFERENCES lbr_scoreprovider(lbr_scoreprovider_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de abr de 2021 15:23:11 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120506,'Score Status',123,140,'Y',1120757,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:10','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1133723,'N','N',1,'N','LBRA','Y','N','7e31438c-3116-4d9c-9f9c-ccaed92a3221','B')
;

-- 14 de abr de 2021 15:23:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131534,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120506,1133711,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55e89d5a-98d4-47c1-a34e-24a8623943bd','N',2)
;

-- 14 de abr de 2021 15:23:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131535,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120506,1133712,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bff3ef4b-fb34-4eed-b84f-78606f71ab18','Y','Y',10,4,2)
;

-- 14 de abr de 2021 15:23:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1131536,'Description','Optional short description of the record','A description is limited to 255 characters.',1120506,1133715,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cc453a45-f256-4b89-b21a-6e58683a441a','Y',20,5,8)
;

-- 14 de abr de 2021 15:23:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131537,'Score Status',1120506,1133717,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','52c99a5c-8c53-4652-bca6-31524a078953','N',2)
;

-- 14 de abr de 2021 15:23:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131538,'LBR_ScoreStatus_UU',1120506,1133718,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','88a632de-efac-437f-9b5f-8396f95a050f','N',2)
;

-- 14 de abr de 2021 15:23:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131539,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120506,1133719,'Y',7,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','17b4e688-bfdb-46f3-9592-afc64f9ac042','Y',30,2)
;

-- 14 de abr de 2021 15:23:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131540,'Score Provider',1120506,1133722,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4ed9261b-464a-428a-ac61-61755f5fd65d','Y',40,2)
;

-- 14 de abr de 2021 15:23:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131541,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120506,1133723,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3e27d6c-f352-4260-b69d-43dd36e99d83','Y',50,2)
;

-- 14 de abr de 2021 15:23:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131542,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120506,1133724,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e7568a6-1af6-4633-9d81-0c499320f33f','Y',60,2)
;

-- 14 de abr de 2021 15:23:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131543,'Score','Score in the scale of score provider',1120506,1133725,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8f9215de-1066-451c-80c6-42ecc2053bd6','Y',70,2)
;

-- 14 de abr de 2021 15:23:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131544,'Internal Score','Score in the organization scale',1120506,1133726,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3c9c1340-ba90-48e5-ac8d-adfea1ec5165','Y',80,2)
;

-- 14 de abr de 2021 15:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131545,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120506,1133716,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8abb9d2b-7fcf-4e57-a64f-afd149b6b5d9','Y',90,2,2)
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131541
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131542
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131539
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131545
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131540
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131544
;

-- 14 de abr de 2021 15:24:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=5, NumLines=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131536
;

-- 14 de abr de 2021 15:24:20 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131538
;

-- 14 de abr de 2021 15:24:20 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-14 15:24:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131537
;

-- 14 de abr de 2021 15:24:56 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120395,'Score Provider','W',1120178,0,0,'Y',TO_TIMESTAMP('2021-04-14 15:24:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-14 15:24:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','190e8fbb-0e3e-4f3d-b656-291eda4f49dc')
;

-- 14 de abr de 2021 15:24:56 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120395, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120395)
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=266
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=232
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=190
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=127
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=133
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=172
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=173
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53256
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=110
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=394
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=544
;

-- 14 de abr de 2021 15:25:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=512
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=506
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=420
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=451
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=186
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=473
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=531
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=530
;

-- 14 de abr de 2021 15:25:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=165, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120395
;

-- 14 de abr de 2021 15:36:57 BRT
UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2021-04-14 15:36:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133701
;

-- 14 de abr de 2021 15:37:06 BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2021-04-14 15:37:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133703
;

-- 14 de abr de 2021 15:37:25 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-04-14 15:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133725
;

-- 14 de abr de 2021 15:37:28 BRT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2021-04-14 15:37:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133725
;

-- 14 de abr de 2021 15:37:30 BRT
INSERT INTO t_alter_column values('lbr_scorestatus','LBR_Score','VARCHAR(10)',null,null)
;

-- 14 de abr de 2021 15:37:34 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2021-04-14 15:37:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133725
;

-- 14 de abr de 2021 15:37:38 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-04-14 15:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133725
;

-- 14 de abr de 2021 15:37:44 BRT
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-04-14 15:37:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133726
;

-- 14 de abr de 2021 15:37:48 BRT
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2021-04-14 15:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133726
;

-- 14 de abr de 2021 15:37:50 BRT
INSERT INTO t_alter_column values('lbr_scorestatus','LBR_InternalScore','VARCHAR(10)',null,null)
;

-- 14 de abr de 2021 15:38:06 BRT
UPDATE AD_Column SET DefaultValue=NULL, IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-04-14 15:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133719
;

-- 14 de abr de 2021 15:38:10 BRT
UPDATE AD_Column SET DefaultValue='@#Date@', IsUpdateable='N',Updated=TO_TIMESTAMP('2021-04-14 15:38:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133719
;

-- 14 de abr de 2021 15:38:15 BRT
INSERT INTO t_alter_column values('lbr_scorestatus','DateTrx','TIMESTAMP',null,null)
;

-- 14 de abr de 2021 15:38:15 BRT
SELECT Register_Migration_Script ('202104141540_ScoreProvider.sql') FROM DUAL
;

