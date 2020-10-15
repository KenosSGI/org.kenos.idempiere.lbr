-- 14 de out de 2020 16:16:02 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120698,'SIMP','LBR_SIMP',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','86d765e9-33bf-4a42-9fb8-8c4b833cd119','N','N','N','N')
;

-- 14 de out de 2020 16:16:02 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SIMP',1000000,'N','N','Table LBR_SIMP','Y','Y',0,0,TO_TIMESTAMP('2020-10-14 16:16:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:02','YYYY-MM-DD HH24:MI:SS'),100,1153945,'Y',1000000,1,200000,'6897c20d-d667-4444-82c7-cd8b6c65d3e4')
;

-- 14 de out de 2020 16:16:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123200,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SIMP_ID','SIMP','SIMP','LBRA','1667655f-2753-4249-9046-1134a0525cba')
;

-- 14 de out de 2020 16:16:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132576,0.0,'SIMP',1120698,'LBR_SIMP_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:15','YYYY-MM-DD HH24:MI:SS'),100,1123200,'N','N','LBRA','N','e1e717ba-82c1-4828-9757-07562a39dff4','N')
;

-- 14 de out de 2020 16:16:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132577,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120698,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:16','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','675f9dfe-d8f0-47a3-85db-8fd8684b40e7','N','D')
;

-- 14 de out de 2020 16:16:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132578,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120698,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','cd913b00-d349-4469-9df6-020ad39febe7','N','D')
;

-- 14 de out de 2020 16:16:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132579,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120698,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','dddf2109-aa5c-419a-a30d-58ccc43051e2','N')
;

-- 14 de out de 2020 16:16:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132580,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120698,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:17','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','1adb314b-9f3f-4c4b-9ecf-8354d4d0c3a7','N','D')
;

-- 14 de out de 2020 16:16:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132581,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120698,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:18','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','e8800b1e-bddf-428b-b737-60ecff769f92','N')
;

-- 14 de out de 2020 16:16:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132582,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120698,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:18','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','6251c474-8ab2-4854-8003-c230675537d7','N')
;

-- 14 de out de 2020 16:16:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132583,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120698,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:19','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','903233e1-7065-4230-89a8-a881a0a6baf0','N','D')
;

-- 14 de out de 2020 16:16:35 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120699,'SIMP Line','LBR_SIMPLine',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','aa3617e4-c99b-4548-a0b3-f432fab3f917','N','N','N','N')
;

-- 14 de out de 2020 16:16:36 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SIMPLine',1000000,'N','N','Table LBR_SIMPLine','Y','Y',0,0,TO_TIMESTAMP('2020-10-14 16:16:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:35','YYYY-MM-DD HH24:MI:SS'),100,1153946,'Y',1000000,1,200000,'18649df4-1f47-4651-8418-93c9f523b83c')
;

-- 14 de out de 2020 16:16:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123201,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SIMPLine_ID','SIMP Line','SIMP Line','LBRA','424617dd-0de3-4dcb-aaf8-76397c432ae4')
;

-- 14 de out de 2020 16:16:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132584,0.0,'SIMP Line',1120699,'LBR_SIMPLine_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:43','YYYY-MM-DD HH24:MI:SS'),100,1123201,'N','N','LBRA','N','2f47ec06-89a8-4d24-8222-4d51922dede9','N')
;

-- 14 de out de 2020 16:16:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132585,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120699,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:44','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','1930c5cc-b597-40b2-a843-538c10cd93d8','N','D')
;

-- 14 de out de 2020 16:16:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132586,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120699,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:44','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e0c9eb4b-9880-4839-a257-651c8573f2ea','N','D')
;

-- 14 de out de 2020 16:16:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132587,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120699,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','f483397f-d8a3-486d-a49c-087cf0f26f5f','N')
;

-- 14 de out de 2020 16:16:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132588,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120699,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','91c11104-bf60-4c42-8ebe-bc2248341bdc','N','D')
;

-- 14 de out de 2020 16:16:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132589,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120699,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','d8c51f68-d48e-40ca-95c3-de3c08606a2d','N')
;

-- 14 de out de 2020 16:16:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132590,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120699,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:46','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','414ae784-d8d1-4da7-8975-e8551191a83f','N')
;

-- 14 de out de 2020 16:16:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132591,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120699,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:16:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:16:46','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','71bc3b59-ba61-4548-b60b-bf72338f5bb8','N','D')
;

-- 14 de out de 2020 16:17:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132592,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120698,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:17:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:17:15','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','N','N','Y','b27c96d0-f8e9-4bfb-99d8-5e1b526a341f','Y',0,'N','N','N')
;

-- 14 de out de 2020 16:17:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132593,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120698,'DocAction','CO',2,'N','N','N','N','N',0,'N',28,135,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:17:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:17:24','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','N','N','Y','c2f63f58-442d-4f36-b6b8-869aa1ce2e92','Y',0,'Y','N','N')
;

-- 14 de out de 2020 16:17:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132594,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120698,'DateDoc','@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:17:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:17:36','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','0f75340d-aabd-4fa8-bf12-7ac7f7c88458','Y',0,'N','N','N')
;

-- 14 de out de 2020 16:17:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132595,0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120698,'C_Period_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,206,'N','N','LBRA','N','N','N','Y','3f79f007-d3de-4047-8ff5-6d0c51aae828','Y',0,'N','N','N')
;

-- 14 de out de 2020 16:21:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132596,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120698,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:21:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:21:48','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','Y','d9396a1f-c490-4971-9f85-820959a7accc','Y',0,'N','N','N')
;

-- 14 de out de 2020 16:23:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123202,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:23:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ChemicalAgent','Chemical Agent','Chemical Agent','LBRA','874a25e2-36ed-42bf-94fb-9a7b1b63786e')
;

-- 14 de out de 2020 16:24:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123203,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:24:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:24:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InstallCode1','Install Code 1','Install Code 1','LBRA','cf113f2c-02a3-4e6c-9857-1d07b2831533')
;

-- 14 de out de 2020 16:24:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123204,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:24:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InstallCode2','Install Code 2','Install Code 2','LBRA','edd94e2b-d35e-4483-a579-3b649e25e20a')
;

-- 14 de out de 2020 16:26:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132597,0,'Chemical Agent',1120698,'LBR_ChemicalAgent',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:26:20','YYYY-MM-DD HH24:MI:SS'),100,1123202,'Y','N','LBRA','N','N','N','Y','433ca020-3c3b-4520-972f-910a7574f37a','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 16:26:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132598,0,'Install Code 1',1120698,'LBR_InstallCode1',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:26:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:26:58','YYYY-MM-DD HH24:MI:SS'),100,1123203,'Y','N','LBRA','N','N','N','Y','e8788352-6f0d-426f-93ed-b654a2704a40','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 16:27:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132599,0,'Install Code 2',1120698,'LBR_InstallCode2',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:27:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:27:09','YYYY-MM-DD HH24:MI:SS'),100,1123204,'Y','N','U','N','N','N','Y','e3853e61-dfb4-40a0-9143-ff8b1caefad5','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 16:27:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132600,0,'SIMP',1120699,'LBR_SIMP_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:27:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:27:47','YYYY-MM-DD HH24:MI:SS'),100,1123200,'N','N','LBRA','N','N','N','Y','b5fdc3bb-8641-4fa8-9d7c-2f142ebfb1ef','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 16:27:49 BRT
UPDATE AD_Column SET FKConstraintName='LBRSIMP_LBRSIMPLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-14 16:27:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132600
;

-- 14 de out de 2020 16:41:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132601,0,'Operation','Compare Operation',1120699,'Operation',7,'N','N','N','N','N',0,'N',17,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:41:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:41:50','YYYY-MM-DD HH24:MI:SS'),100,1454,'Y','N','LBRA','N','N','N','Y','8af42823-487b-4de8-8bac-e019fa951e72','Y',0,'N','N','N')
;

-- 14 de out de 2020 16:43:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132602,0,'Install Code 1',1120699,'LBR_InstallCode1',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:43:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:43:46','YYYY-MM-DD HH24:MI:SS'),100,1123203,'Y','N','LBRA','N','N','N','Y','9c9b65ee-53e3-45ba-b7c2-d1ad71a37b22','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 16:43:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132603,0,'Install Code 2',1120699,'LBR_InstallCode2',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 16:43:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 16:43:52','YYYY-MM-DD HH24:MI:SS'),100,1123204,'Y','N','LBRA','N','N','N','Y','4af21926-462d-4b80-a854-947f88e52c2a','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:16:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132604,0,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120699,'Line',22,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:16:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:16:10','YYYY-MM-DD HH24:MI:SS'),100,439,'N','N','LBRA','N','N','N','Y','47424d13-658e-466c-8083-049deed02fc1','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:17:49 BRT
UPDATE AD_Column SET DefaultValue='@SQL=SELECT MAX (COALESCE (Line, 10)) FROM LBR_SIMPLine WHERE LBR_SIMP_ID=@LBR_SIMP_ID@', IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-14 17:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132604
;

-- 14 de out de 2020 17:28:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123205,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:28:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:28:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TranspModal','Transport Modal','Transport Modal','LBRA','1a0e50f4-a332-41ec-a5d5-f8d49677a9aa')
;

-- 14 de out de 2020 17:28:49 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120368,'LBR_SIMPLine - LBR_TranspModal','L',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:28:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:28:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','e768433f-f724-4978-97fc-b8bed751e886')
;

-- 14 de out de 2020 17:29:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122458,'Rodoviário',1120368,'1',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','7a04514e-270d-4d53-b533-d10fbb37db04')
;

-- 14 de out de 2020 17:29:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122459,'Ferroviário',1120368,'2',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0f3a01c6-a461-4307-8021-6c905a9420ab')
;

-- 14 de out de 2020 17:29:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122460,'Multimodal ou Rodo/Ferroviário',1120368,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e50ec832-8134-4a0b-a0c2-50aa17ce7858')
;

-- 14 de out de 2020 17:29:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122461,'Aquaviário',1120368,'4',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','fd333fa1-53ef-4136-8a54-68d32d1cc3cb')
;

-- 14 de out de 2020 17:29:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122462,'Dutoviário',1120368,'5',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f6e466d3-ca0c-4198-af10-3aa653849fc3')
;

-- 14 de out de 2020 17:29:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122463,'Aéreo',1120368,'6',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3a7075ab-6c75-4308-8110-d03040ab949f')
;

-- 14 de out de 2020 17:29:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122464,'Navegação Interior',1120368,'7',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','692b7803-0a47-40ba-a733-59aa28b1fed2')
;

-- 14 de out de 2020 17:29:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122465,'Cabotagem/Longo Curso',1120368,'8',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','66217620-46e1-4f46-87e4-79f864743311')
;

-- 14 de out de 2020 17:29:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122466,'Sem Modal',1120368,'9',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:29:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:29:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','95bff5e2-ded6-4508-b249-4773de06db96')
;

-- 14 de out de 2020 17:30:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132605,0,'Transport Modal',1120699,'LBR_TranspModal',1,'N','N','N','N','N',0,'N',17,1120368,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:30:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:30:05','YYYY-MM-DD HH24:MI:SS'),100,1123205,'Y','N','LBRA','N','N','N','Y','206270fc-0d95-4c14-93c4-7e2d16502cdd','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:32:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132606,0,'CNPJ/CPF','CNPJ ou CPF do cliente',1120699,'LBR_CNPJF',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:32:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:32:30','YYYY-MM-DD HH24:MI:SS'),100,1122336,'Y','N',NULL,'LBRA','N','N','N','Y','b4aab6f2-6e33-41e2-9dc0-5dd5dfa5ad8e','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:32:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132607,0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120699,'Qty',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:32:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:32:47','YYYY-MM-DD HH24:MI:SS'),100,526,'Y','N','LBRA','N','N','N','Y','938badac-9d45-40fe-ad5b-2c8909001e5f','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:32:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132608,0,'Price','Price','The Price indicates the Price for a product or service.',1120699,'Price',14,'N','N','N','N','N',0,'N',37,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:32:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:32:59','YYYY-MM-DD HH24:MI:SS'),100,1416,'Y','N','LBRA','N','N','N','Y','e9a71263-f644-454c-9b13-c4f822683521','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:33:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132609,0,'Product Key','Key of the Product',1120699,'ProductValue',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:33:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:33:07','YYYY-MM-DD HH24:MI:SS'),100,1675,'N','N','LBRA','N','N','N','Y','e16d8373-f1e5-4562-9c0a-4558873a2a94','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:33:32 BRT
UPDATE AD_Column SET FieldLength=9,Updated=TO_TIMESTAMP('2020-10-14 17:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132609
;

-- 14 de out de 2020 17:39:53 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123206,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PipelineCode','Pipeline Code','Pipeline Code','LBRA','ff553b7f-fd6d-42a0-9787-109e3b6a2bfa')
;

-- 14 de out de 2020 17:40:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132610,0,'Pipeline Code',1120699,'LBR_PipelineCode',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:40:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:40:06','YYYY-MM-DD HH24:MI:SS'),100,1123206,'Y','N','LBRA','N','N','N','Y','52dede42-803e-4bc4-a9f3-265c82f9684e','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:40:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132611,0,'Cod. Cidade (IBGE)','Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)',1120699,'lbr_CityCode',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:40:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:40:40','YYYY-MM-DD HH24:MI:SS'),100,1000650,'Y','N','LBRA','N','N','N','Y','584849c8-3b18-4400-90db-8cdac9b080bd','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:40:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132612,0,'CNAE','Classificação Nacional de Atividades Econômicas',1120699,'lbr_CNAE',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:40:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:40:57','YYYY-MM-DD HH24:MI:SS'),100,1100020,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','60d14714-63fc-4136-91e2-a78bb5f8d061','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:41:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132613,0,'Country Code','Country Code used for issue Nota Fiscal','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)',1120699,'lbr_CountryCode',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:41:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:41:08','YYYY-MM-DD HH24:MI:SS'),100,1100058,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','f7167a64-6ef3-4555-8e7f-be1d311af744','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:41:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132614,0,'DI','N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)','N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)',1120699,'lbr_DI',12,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:41:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:41:38','YYYY-MM-DD HH24:MI:SS'),100,1100030,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','67e8f264-d787-4a6b-bea3-b9ec2ddb311f','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:42:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1123207,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:42:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:42:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LI','LI','Licença de Importação','LI','LBRA','bc836cd0-de19-4c80-980d-e6cb9d725194')
;

-- 14 de out de 2020 17:42:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132615,0,'LI','Licença de Importação',1120699,'LBR_LI',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:42:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:42:43','YYYY-MM-DD HH24:MI:SS'),100,1123207,'Y','N','LBRA','N','N','N','Y','3734d114-059d-4b08-9a89-3add4ca6592a','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 17:42:55 BRT
UPDATE AD_Column SET FieldLength=10,Updated=TO_TIMESTAMP('2020-10-14 17:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132614
;

-- 14 de out de 2020 17:43:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132616,0,'NFe No',1120699,'lbr_NFENo',7,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:43:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:43:24','YYYY-MM-DD HH24:MI:SS'),100,1000325,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','cf5cdec1-8cd7-46e2-8d1e-a9abf95cf9c1','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:43:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132617,0,'NF Serie',1120699,'lbr_NFSerie',2,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:43:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:43:40','YYYY-MM-DD HH24:MI:SS'),100,1100010,'Y','N','LBRA','N','N','N','Y','9177fc1f-d1c7-42b6-bd0c-91d658c727c4','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:43:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132618,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120699,'DateDoc','@#Date@',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:43:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:43:54','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','a237ca1c-b142-4b38-b22b-7e20a2c683c3','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:44:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132619,0,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1120699,'lbr_ServiceCode',1,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:44:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:44:23','YYYY-MM-DD HH24:MI:SS'),100,1100059,'Y','N','LBRA','N','N','N','Y','2265f9ca-f679-49f9-a243-74a0b5859587','Y',0,'N','N','N')
;

-- 14 de out de 2020 17:45:09 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120369,'LBR_SIMPLine - ServiceCode','L',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:45:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','156e2643-3363-4286-9672-d0c58bc6020c')
;

-- 14 de out de 2020 17:45:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122467,'Firme',1120369,'1',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:45:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:45:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','beba4722-d4d1-4456-97a4-bfd6f2e08a1b')
;

-- 14 de out de 2020 17:45:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122468,'Não Firme',1120369,'2',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:45:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:45:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f6242281-d3a4-4ba5-b36e-fbd96a0d56ff')
;

-- 14 de out de 2020 17:45:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122469,'Deslocamento',1120369,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:45:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:45:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e51fc0b6-6b41-4993-b55a-f5771cf4390d')
;

-- 14 de out de 2020 17:45:51 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120369,Updated=TO_TIMESTAMP('2020-10-14 17:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132619
;

-- 14 de out de 2020 17:50:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1123208,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:50:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:50:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PhysicalChar','Physical Char','Physical Characteristic','Physical Char','LBRA','e8bcd59f-d254-4134-ae7a-3e4fbd1248d0')
;

-- 14 de out de 2020 17:51:21 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120370,'LBR_SIMPLine - LBR_PhysicalChar','L',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:51:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:51:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','189e7712-29c5-444d-a5c9-6cd9650b6909')
;

-- 14 de out de 2020 17:57:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122470,'Acidez',1120370,'146',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:39','YYYY-MM-DD HH24:MI:SS'),100,'U','7a81dd85-4d67-4cde-ad04-f2264b61d219')
;

-- 14 de out de 2020 17:57:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122471,'Acidez total - mg KOH/g',1120370,'44',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:39','YYYY-MM-DD HH24:MI:SS'),100,'U','a0871055-57f0-47e4-878c-c5374018a310')
;

-- 14 de out de 2020 17:57:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122472,'Acidez total (como ácido acético) - mg/L',1120370,'32',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:40','YYYY-MM-DD HH24:MI:SS'),100,'U','3c6825de-a63f-4775-9573-4278b1e52589')
;

-- 14 de out de 2020 17:57:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122473,'Aditivos',1120370,'19',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:40','YYYY-MM-DD HH24:MI:SS'),100,'U','5b495453-5269-4c47-8b94-04791761a8d6')
;

-- 14 de out de 2020 17:57:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122474,'Água e Sedimentos - %volume',1120370,'31',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,'U','315bd64f-87d4-4495-9b4a-d4d7d392c5ce')
;

-- 14 de out de 2020 17:57:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122475,'Água Livre',1120370,'81',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,'U','b0a7cc32-214c-409d-b2ab-851628267706')
;

-- 14 de out de 2020 17:57:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122476,'Álcool Etílico Anidro Combustível - AEAC - %volume',1120370,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:41','YYYY-MM-DD HH24:MI:SS'),100,'U','35e84393-8329-4f79-8741-1485cb7d75c7')
;

-- 14 de out de 2020 17:57:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122477,'Antioxidante - mg/L',1120370,'66',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:42','YYYY-MM-DD HH24:MI:SS'),100,'U','137f80a8-d210-41c0-9266-0d23dfd2eb05')
;

-- 14 de out de 2020 17:57:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122478,'Aromáticos - %volume',1120370,'20',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:42','YYYY-MM-DD HH24:MI:SS'),100,'U','ed502ad9-8e7f-405f-9023-ea3983d13d06')
;

-- 14 de out de 2020 17:57:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122479,'Aromáticos totais - %volume',1120370,'45',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,'U','54ff6aba-a989-4a21-ad4a-f30fd75f7401')
;

-- 14 de out de 2020 17:57:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122480,'Aspecto',1120370,'2',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,'U','28da4960-8486-4912-8bd8-f2b22af34395')
;

-- 14 de out de 2020 17:57:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122481,'Aumento do ponto de amolecimento - °C',1120370,'141',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,'U','189dce3c-ca29-49f4-afb5-b92794ee4072')
;

-- 14 de out de 2020 17:57:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122482,'Benzeno - %volume',1120370,'17',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:44','YYYY-MM-DD HH24:MI:SS'),100,'U','0195046c-9300-4d5e-bab6-5bfb70fc058e')
;

-- 14 de out de 2020 17:57:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122483,'Cálcio + Magnésio - mg/Kg',1120370,'95',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:44','YYYY-MM-DD HH24:MI:SS'),100,'U','cb074a9a-09b8-432b-abe2-a758771576b2')
;

-- 14 de out de 2020 17:57:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122484,'Carga de Partícula',1120370,'118',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:45','YYYY-MM-DD HH24:MI:SS'),100,'U','5549142f-2d99-47ba-aaa4-8be9bed1041d')
;

-- 14 de out de 2020 17:57:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122485,'Chumbo - g/L',1120370,'18',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:45','YYYY-MM-DD HH24:MI:SS'),100,'U','c3eb954d-be46-4b6c-8a9d-65afaa8711e7')
;

-- 14 de out de 2020 17:57:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122486,'Chumbo Tetraetila - CTE - mL/L',1120370,'153',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,'U','33846e0a-cf83-4218-b308-c77745d356ec')
;

-- 14 de out de 2020 17:57:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122487,'Cinzas - %massa',1120370,'30',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,'U','2c464c7d-d638-4c95-8d7a-f9e0cbfc167f')
;

-- 14 de out de 2020 17:57:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122488,'Cinzas sulfatadas - %massa',1120370,'93',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:46','YYYY-MM-DD HH24:MI:SS'),100,'U','2618a7a9-17aa-4a71-a245-ca8d3437ca85')
;

-- 14 de out de 2020 17:57:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122489,'Cobre - mg/Kg',1120370,'43',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:47','YYYY-MM-DD HH24:MI:SS'),100,'U','7d04bb16-43bc-466d-b37b-5362b0609975')
;

-- 14 de out de 2020 17:57:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122490,'Condutividade elétrica - mS/m',1120370,'33',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:47','YYYY-MM-DD HH24:MI:SS'),100,'U','7fdb8833-c028-4de0-8163-5a2f28e49b96')
;

-- 14 de out de 2020 17:57:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122491,'Condutividade Elétrica - pS/m',1120370,'149',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,'U','f2337074-41b8-43e8-b838-c93779ea738e')
;

-- 14 de out de 2020 17:57:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122492,'Cor',1120370,'1',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,'U','10053095-683a-426c-b2bf-5dd67b5ea52b')
;

-- 14 de out de 2020 17:57:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122493,'Cor ASTM',1120370,'83',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:48','YYYY-MM-DD HH24:MI:SS'),100,'U','2b5270ae-a090-43e2-b2f5-f2e20f8c855a')
;

-- 14 de out de 2020 17:57:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122494,'Cor Saybolt',1120370,'143',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:49','YYYY-MM-DD HH24:MI:SS'),100,'U','a58fe7ec-7fae-4f89-96fd-29bf4bc0cbc1')
;

-- 14 de out de 2020 17:57:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122495,'Corante - mg/L',1120370,'154',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:49','YYYY-MM-DD HH24:MI:SS'),100,'U','0e94c259-ce3d-4997-a297-33611e5176d6')
;

-- 14 de out de 2020 17:57:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122496,'Corrosividade à prata',1120370,'57',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:50','YYYY-MM-DD HH24:MI:SS'),100,'U','6b37164a-a372-456d-8774-418b7b1eade3')
;

-- 14 de out de 2020 17:57:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122497,'Corrosividade ao Cobre a 37,8°C 1 hora',1120370,'77',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:50','YYYY-MM-DD HH24:MI:SS'),100,'U','b7964078-64b4-4f71-b03a-8ec6cbd34113')
;

-- 14 de out de 2020 17:57:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122498,'Corrosividade ao Cobre a 50°C, 3h',1120370,'15',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,'U','cc22b927-6af7-4bd4-9d75-ea67db12dea2')
;

-- 14 de out de 2020 17:57:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122499,'Corrosividade ao cobre (2h a 100°C)',1120370,'58',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,'U','8a46d7f9-2cc9-4fd2-998d-3323e87e3e60')
;

-- 14 de out de 2020 17:57:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122500,'Densidade 20/4°C',1120370,'89',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:51','YYYY-MM-DD HH24:MI:SS'),100,'U','49c02ee1-4411-449f-bea2-e235fc9c4b3f')
;

-- 14 de out de 2020 17:57:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122501,'Desativador de metal - mg/L',1120370,'67',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:52','YYYY-MM-DD HH24:MI:SS'),100,'U','98279a2a-3c18-4d9b-b34e-b5d766477bcc')
;

-- 14 de out de 2020 17:57:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122502,'Destilação - PFE - °C',1120370,'8',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:52','YYYY-MM-DD HH24:MI:SS'),100,'U','28283123-8d30-4536-aaf4-46f0dab3c12e')
;

-- 14 de out de 2020 17:57:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122503,'Destilação - PIE - °C',1120370,'48',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,'U','4c97369c-a20c-427a-af3f-ee16138a9471')
;

-- 14 de out de 2020 17:57:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122504,'Destilação - recuperado - %volume',1120370,'160',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,'U','6474e103-2a0a-443f-be08-5b5e07548616')
;

-- 14 de out de 2020 17:57:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122505,'Destilação - Resíduo. - %volume',1120370,'9',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:53','YYYY-MM-DD HH24:MI:SS'),100,'U','1e8e660f-d5cc-4bc1-aec3-e8783c9ebfa5')
;

-- 14 de out de 2020 17:57:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122506,'Destilação - soma 10% evaporado + 50% evaporado - °C',1120370,'159',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:54','YYYY-MM-DD HH24:MI:SS'),100,'U','e76afe08-e187-45bb-b649-e77bb797155f')
;

-- 14 de out de 2020 17:57:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122507,'Destilação - 10% evaporado - °C',1120370,'5',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:54','YYYY-MM-DD HH24:MI:SS'),100,'U','c008916a-2520-4624-b95b-2926565f6c28')
;

-- 14 de out de 2020 17:57:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122508,'Destilação - 10% vol. Recuperado - °C',1120370,'49',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,'U','10f4dafd-82ec-4ceb-9887-c6f027da8aee')
;

-- 14 de out de 2020 17:57:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122509,'Destilação - 50% evaporado - °C',1120370,'6',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,'U','9179ad65-9e72-42ab-9d50-5051915f18bb')
;

-- 14 de out de 2020 17:57:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122510,'Destilação - 50% vol., recuperado - °C',1120370,'23',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:55','YYYY-MM-DD HH24:MI:SS'),100,'U','b8076042-ca61-4655-bb5d-62a98e663116')
;

-- 14 de out de 2020 17:57:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122511,'Destilação - 80% evaporado - °C',1120370,'147',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:56','YYYY-MM-DD HH24:MI:SS'),100,'U','aec16da9-e98e-4673-83a2-5be4d6bd76bd')
;

-- 14 de out de 2020 17:57:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122512,'Destilação - 85 % vol., recuperado - °C',1120370,'24',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:56','YYYY-MM-DD HH24:MI:SS'),100,'U','6d8574c4-f0de-488c-8865-ea177489e6f6')
;

-- 14 de out de 2020 17:57:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122513,'Destilação - 90% evaporado - °C',1120370,'7',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:57','YYYY-MM-DD HH24:MI:SS'),100,'U','828aab99-502a-4c37-b3d2-99b6a50b8a72')
;

-- 14 de out de 2020 17:57:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122514,'Destilação - 90% vol. Recuperado - °C',1120370,'50',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:57','YYYY-MM-DD HH24:MI:SS'),100,'U','d093f472-c1b5-4487-89f2-4c334fec89bb')
;

-- 14 de out de 2020 17:57:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122515,'Destilação em 105°C - %volume',1120370,'157',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,'U','d12cb945-1dba-4ca6-b238-a9c7f4e3f4ee')
;

-- 14 de out de 2020 17:57:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122516,'Destilação em 135°C - %volume',1120370,'158',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,'U','9b5ac2d4-03a1-4d52-a4fe-581df9ead9e7')
;

-- 14 de out de 2020 17:57:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122517,'Destilação em 190°C - %volume',1120370,'125',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:58','YYYY-MM-DD HH24:MI:SS'),100,'U','beefd5bc-dd49-43a3-a464-be21d9da4701')
;

-- 14 de out de 2020 17:57:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122518,'Destilação em 225°C - %volume',1120370,'126',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:59','YYYY-MM-DD HH24:MI:SS'),100,'U','d8c503f9-3e30-4825-a686-15494b880263')
;

-- 14 de out de 2020 17:57:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122519,'Destilação em 260°C - %volume',1120370,'127',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:57:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:57:59','YYYY-MM-DD HH24:MI:SS'),100,'U','eff20398-b068-4141-8759-d1a3e3c62d16')
;

-- 14 de out de 2020 17:58:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122520,'Destilação em 316°C - %volume',1120370,'128',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,'U','f888353a-f6e7-4a89-b4df-13f98984422b')
;

-- 14 de out de 2020 17:58:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122521,'Destilação em 360°C, resíduo por diferença - %volume',1120370,'130',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,'U','de7d5044-d9b4-49c9-ac8e-3258afb9325a')
;

-- 14 de out de 2020 17:58:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122522,'Destilação em 75°C - %volume',1120370,'156',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:00','YYYY-MM-DD HH24:MI:SS'),100,'U','7f182ff7-4906-4211-bee6-cd0a656b857c')
;

-- 14 de out de 2020 17:58:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122523,'Destilação, resíduo - %massa',1120370,'120',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,'U','e1c47641-f284-4783-8ae4-8ce9f1a9b2cd')
;

-- 14 de out de 2020 17:58:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122524,'Destilação, solvente destilado, %volume sobre o total da emulsão - %volume',1120370,'119',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,'U','7a0e70d9-4f71-429b-8fcd-d5640a9beeea')
;

-- 14 de out de 2020 17:58:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122525,'Detetor de vazamentos - mg/Kg',1120370,'70',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,'U','9bd056a7-9e7a-4321-b95a-7b62f7164046')
;

-- 14 de out de 2020 17:58:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122526,'Diglicerídeos - %massa',1120370,'101',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,'U','f2ac60d8-6cc7-4667-8e3e-12e9d190c915')
;

-- 14 de out de 2020 17:58:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122527,'Dissipador de cargas estáticas - mg/L',1120370,'68',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,'U','06e50f9f-a044-4af8-84cd-6ee87c17f15a')
;

-- 14 de out de 2020 17:58:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122528,'Ductilidade a 25°C - cm',1120370,'123',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,'U','91b47f46-2681-4156-b6c3-300242c77fe2')
;

-- 14 de out de 2020 17:58:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122529,'Efeito do calor e do ar a 163°C (RTFOT ou TFOT) - Razão de Viscosidade',1120370,'111',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:03','YYYY-MM-DD HH24:MI:SS'),100,'U','c7b54b92-e96b-4731-bc80-2138a3eb2471')
;

-- 14 de out de 2020 17:58:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122530,'Efeito do calor e do ar a 163°C (RTFOT ou TFOT) - Variação de Massa - %massa',1120370,'112',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:04','YYYY-MM-DD HH24:MI:SS'),100,'U','99bdd8ef-96e2-4413-8350-48b9764e27ef')
;

-- 14 de out de 2020 17:58:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122531,'Ensaio Doctor',1120370,'84',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:04','YYYY-MM-DD HH24:MI:SS'),100,'U','398c5fe4-56da-4150-a994-093854b8e680')
;

-- 14 de out de 2020 17:58:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122532,'Enxofre - %massa',1120370,'16',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,'U','d50d7f84-dd44-4f05-8987-09908af8d803')
;

-- 14 de out de 2020 17:58:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122533,'Enxofre mercaptídico - %massa',1120370,'46',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,'U','a62dd347-ac78-4d02-9807-0ea00ae3923d')
;

-- 14 de out de 2020 17:58:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122534,'Enxofre Total - %massa',1120370,'22',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:05','YYYY-MM-DD HH24:MI:SS'),100,'U','94b90106-d85a-40cd-a7f9-d97fa7ba074b')
;

-- 14 de out de 2020 17:58:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122535,'Enxofre Total para GLP - mg/Kg',1120370,'108',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:06','YYYY-MM-DD HH24:MI:SS'),100,'U','8bec13b6-0892-4f6e-a919-9ffe0c0c1701')
;

-- 14 de out de 2020 17:58:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122536,'Enxofre Total para GN - mg/m³',1120370,'107',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:06','YYYY-MM-DD HH24:MI:SS'),100,'U','e49a8528-7842-4e23-8bce-16a36c579203')
;

-- 14 de out de 2020 17:58:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122537,'Estabilidade à oxidação a 110° C - h',1120370,'105',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,'U','8eee79a0-d72f-47e8-98a4-749026e2cd0d')
;

-- 14 de out de 2020 17:58:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122538,'Estabilidade à oxidação (16h), chumbo precipitado - mg/100mL',1120370,'163',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,'U','fb3402f5-f387-476a-a758-7eea1dacef54')
;

-- 14 de out de 2020 17:58:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122539,'Estabilidade à oxidação (16h), goma potencial - mg/100mL',1120370,'162',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:07','YYYY-MM-DD HH24:MI:SS'),100,'U','0ac3c506-fb11-43a8-bbdf-dcbcd8abc954')
;

-- 14 de out de 2020 17:58:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122540,'Estabilidade térmica a 260°C',1120370,'145',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:08','YYYY-MM-DD HH24:MI:SS'),100,'U','2239919f-d7ae-4806-b234-cdadc5c346b5')
;

-- 14 de out de 2020 17:58:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122541,'Estabilidade térmica a 260°C - depósito no tubo (visual)',1120370,'60',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:08','YYYY-MM-DD HH24:MI:SS'),100,'U','e83de0ef-486b-4de7-b4b7-42eed465d653')
;

-- 14 de out de 2020 17:58:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122542,'Estabilidade térmica a 260°C - queda de pressão no filtro - mmHg',1120370,'59',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:09','YYYY-MM-DD HH24:MI:SS'),100,'U','8b4ac598-7e6f-4a73-97f1-7c72b87b3548')
;

-- 14 de out de 2020 17:58:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122543,'Ferro - mg/Kg',1120370,'41',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:09','YYYY-MM-DD HH24:MI:SS'),100,'U','f5740431-4d7f-41be-993f-154885db8dc2')
;

-- 14 de out de 2020 17:58:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122544,'Fósforo - mg/Kg',1120370,'96',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,'U','3aa73cdf-21c0-4979-8fdd-c96481eb1a89')
;

-- 14 de out de 2020 17:58:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122545,'Fração hidroprocessada',1120370,'85',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,'U','5acd4f79-218a-4be1-b5fc-f3dffc2c2c79')
;

-- 14 de out de 2020 17:58:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122546,'Fração severamente hidroprocessada - %volume',1120370,'47',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:10','YYYY-MM-DD HH24:MI:SS'),100,'U','2e383e8e-0198-46bf-ad03-f75abfc0065c')
;

-- 14 de out de 2020 17:58:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122547,'Glicerina livre - %massa',1120370,'98',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:11','YYYY-MM-DD HH24:MI:SS'),100,'U','8da34288-ca23-401c-8153-b06223d42fb8')
;

-- 14 de out de 2020 17:58:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122548,'Glicerina total - %massa',1120370,'99',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:11','YYYY-MM-DD HH24:MI:SS'),100,'U','f6ddb9d9-9f96-400b-ba2e-9f7899bdc0a2')
;

-- 14 de out de 2020 17:58:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122549,'Goma atual - mg/100mL',1120370,'61',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:12','YYYY-MM-DD HH24:MI:SS'),100,'U','830904e4-5ced-4e81-9b7a-501e18d0a7d3')
;

-- 14 de out de 2020 17:58:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122550,'Goma Atual Lavada - mg/100mL',1120370,'13',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:12','YYYY-MM-DD HH24:MI:SS'),100,'U','b413d3b3-af51-4d37-9d01-017332ac47b5')
;

-- 14 de out de 2020 17:58:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122551,'H2S',1120370,'76',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,'U','33fbd3c2-22e3-4221-8a53-afa0d8dff631')
;

-- 14 de out de 2020 17:58:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122552,'Índice Antidetonante - IAD',1120370,'11',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,'U','95db62c5-6617-4665-8d74-1857b9486f01')
;

-- 14 de out de 2020 17:58:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122553,'Índice de acidez - mg KOH/g',1120370,'97',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:13','YYYY-MM-DD HH24:MI:SS'),100,'U','7539edea-fb25-430b-b3fb-6f21e91effb6')
;

-- 14 de out de 2020 17:58:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122554,'Índice de Cetano',1120370,'106',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:14','YYYY-MM-DD HH24:MI:SS'),100,'U','36e33eba-416d-43e2-a96b-76d87681b70d')
;

-- 14 de out de 2020 17:58:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122555,'Índice de iodo',1120370,'104',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:14','YYYY-MM-DD HH24:MI:SS'),100,'U','c6d7d584-18be-4cac-b1ae-09354fe804df')
;

-- 14 de out de 2020 17:58:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122556,'Índice de separação de água - Com dissipador de cargas estáticas',1120370,'63',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,'U','20ec4567-2870-49c6-8e70-1045fe7fced3')
;

-- 14 de out de 2020 17:58:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122557,'Índice de separação de água - Sem dissipador de cargas estáticas',1120370,'64',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,'U','992f04ba-8c80-4a49-88f0-71496cd5291c')
;

-- 14 de out de 2020 17:58:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122558,'Índice de susceptibilidade térmica',1120370,'138',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:15','YYYY-MM-DD HH24:MI:SS'),100,'U','5b5d9fa7-5bbe-4b35-b008-f90db760bdfd')
;

-- 14 de out de 2020 17:58:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122559,'Inibidor de formação de gelo - %volume',1120370,'69',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:16','YYYY-MM-DD HH24:MI:SS'),100,'U','8986a352-427e-4e26-883d-83cd18ab000e')
;

-- 14 de out de 2020 17:58:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122560,'Íon Cloreto - mg/Kg',1120370,'38',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:16','YYYY-MM-DD HH24:MI:SS'),100,'U','79bb3a1d-5827-4eb0-baf2-c35b7b602d39')
;

-- 14 de out de 2020 17:58:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122561,'Íon Sulfato - mg/Kg',1120370,'40',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:17','YYYY-MM-DD HH24:MI:SS'),100,'U','657a474f-c9d4-4dfa-8d44-e7687d0685d8')
;

-- 14 de out de 2020 17:58:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122562,'Lubricidade, BOCLE - mm',1120370,'65',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:17','YYYY-MM-DD HH24:MI:SS'),100,'U','af936850-9458-4365-a7c9-79b3ae825ff7')
;

-- 14 de out de 2020 17:58:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122563,'Massa específica a 20°C - Kg/m³',1120370,'4',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,'U','302297a7-ab42-4c0a-ad52-cfb0eb9ac59f')
;

-- 14 de out de 2020 17:58:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122564,'Melhorador de Lubricidade',1120370,'86',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,'U','b59715e2-883b-4c5d-a5ff-f17fb6731a48')
;

-- 14 de out de 2020 17:58:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122565,'Metanol ou Etanol - %massa',1120370,'103',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:18','YYYY-MM-DD HH24:MI:SS'),100,'U','0403d756-b9b3-4078-b5f8-b61a71b85768')
;

-- 14 de out de 2020 17:58:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122566,'Mistura com Cimento - %',1120370,'116',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:19','YYYY-MM-DD HH24:MI:SS'),100,'U','1ece1c4e-8414-4fcd-bee0-b369fcee884f')
;

-- 14 de out de 2020 17:58:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122567,'Mistura com Filer Silícico',1120370,'117',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:19','YYYY-MM-DD HH24:MI:SS'),100,'U','42bc8368-5876-4d5a-95f4-ab3031bc87a3')
;

-- 14 de out de 2020 17:58:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122568,'Monoglicerídeos - %massa',1120370,'100',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,'U','2777e518-e786-44fc-8052-b03fcf96d806')
;

-- 14 de out de 2020 17:58:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122569,'N° de Octano Motor - MON.',1120370,'10',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,'U','3dd058e3-c346-4d04-94ad-70e149f2425e')
;

-- 14 de out de 2020 17:58:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122570,'Naftalenos - %volume',1120370,'56',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:20','YYYY-MM-DD HH24:MI:SS'),100,'U','6aee0ea2-505b-45c5-b095-43d395538481')
;

-- 14 de out de 2020 17:58:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122571,'Número de Cetano',1120370,'28',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,'U','7039cf88-b3be-49d3-a7fc-037678f0c61b')
;

-- 14 de out de 2020 17:58:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122572,'Odorização',1120370,'82',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,'U','1c39ea45-74a7-4830-960f-fa8b0474fa93')
;

-- 14 de out de 2020 17:58:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122573,'Olefínicos - %volume',1120370,'21',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,'U','310cae73-0b3b-4ea8-af2c-5a25506db706')
;

-- 14 de out de 2020 17:58:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122574,'Partículas Contaminantes - mg/L',1120370,'144',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,'U','ccb9e8b5-3122-41fe-b804-4cbc35b54b34')
;

-- 14 de out de 2020 17:58:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122575,'Peneiração (retido na peneira n° 20 - 0,84 mm) - %',1120370,'115',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:22','YYYY-MM-DD HH24:MI:SS'),100,'U','a584549a-5f5f-4af1-a0e5-35bcaaad76b1')
;

-- 14 de out de 2020 17:58:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122576,'Penetração retida - %',1120370,'142',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:23','YYYY-MM-DD HH24:MI:SS'),100,'U','ed782470-634d-4749-b9ad-ba5c6b30e996')
;

-- 14 de out de 2020 17:58:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122577,'Penetração (100g, 5s e 25°C) - 0,1 mm',1120370,'121',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:23','YYYY-MM-DD HH24:MI:SS'),100,'U','ce18db41-f43b-40a8-8070-51dd7494f549')
;

-- 14 de out de 2020 17:58:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122578,'Perda - %volume',1120370,'51',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,'U','97f5a272-ece4-4c11-955e-9879e80ab3c2')
;

-- 14 de out de 2020 17:58:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122579,'Período de Indução a 100°C - min',1120370,'14',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,'U','dd8fff16-6150-4ee0-a9c8-a4b60b2fc156')
;

-- 14 de out de 2020 17:58:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122580,'Poder antidetonante, mistura pobre, método aviação, índice de desempenho',1120370,'151',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,'U','3124b42c-4d3d-44e7-bae5-7965ee39554d')
;

-- 14 de out de 2020 17:58:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122581,'Poder antidetonante, mistura pobre, método aviação, índice de octano',1120370,'150',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:25','YYYY-MM-DD HH24:MI:SS'),100,'U','db869a54-349c-4826-9120-cf31f827b06b')
;

-- 14 de out de 2020 17:58:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122582,'Poder antidetonante, mistura rica, método superalimentação, índice de desempenho',1120370,'152',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:25','YYYY-MM-DD HH24:MI:SS'),100,'U','c8a1ba2d-3367-4da5-8b5c-82e0d5ab9787')
;

-- 14 de out de 2020 17:58:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122583,'Poder calorífico inferior - MJ/Kg',1120370,'54',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,'U','3660f63c-284f-439f-9379-19d111ba4bb7')
;

-- 14 de out de 2020 17:58:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122584,'Ponto de amolecimento°C - °C',1120370,'131',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,'U','3cf26222-853d-4f85-8fb7-377c42665386')
;

-- 14 de out de 2020 17:58:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122585,'Ponto de Congelamento - °C',1120370,'52',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:26','YYYY-MM-DD HH24:MI:SS'),100,'U','55642160-803c-4212-b5e8-9380614095bf')
;

-- 14 de out de 2020 17:58:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122586,'Ponto de Entupimento de Filtro à Frio - °C',1120370,'27',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,'U','37cd3678-522f-4184-8394-36fd4d02872f')
;

-- 14 de out de 2020 17:58:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122587,'Ponto de Fluidez Superior - °C',1120370,'90',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:27','YYYY-MM-DD HH24:MI:SS'),100,'U','c125b1b9-6d07-483b-a9ac-8e4177019975')
;

-- 14 de out de 2020 17:58:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122588,'Ponto de Fulgor - °C',1120370,'25',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,'U','5dd0fead-1652-4d7b-8edb-91dadc7b1f99')
;

-- 14 de out de 2020 17:58:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122589,'Ponto de fuligem - mm',1120370,'55',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,'U','913028aa-7403-443c-9864-c57db2156f47')
;

-- 14 de out de 2020 17:58:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122590,'Potencial hidrogeniônico (pH)',1120370,'35',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,'U','ee686674-449d-4c18-861c-2f11727b7240')
;

-- 14 de out de 2020 17:58:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122591,'Pressão de Vapor a 37,8 °C - KPa',1120370,'12',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,'U','d9637819-5b79-4891-b34c-835422106204')
;

-- 14 de out de 2020 17:58:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122592,'Pressão de vapor Reid - KPa',1120370,'161',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,'U','72c6c9f5-9801-49a7-b8cb-112eff82a2b8')
;

-- 14 de out de 2020 17:58:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122593,'Produto do Ponto de anilina x densidade',1120370,'155',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,'U','d41edf6a-7072-4a31-b231-203323111d68')
;

-- 14 de out de 2020 17:58:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122594,'Propano - %volume',1120370,'78',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,'U','9915724d-4b04-471f-b0a4-69f425f2fa9a')
;

-- 14 de out de 2020 17:58:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122595,'Propeno - %volume',1120370,'79',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,'U','c035c979-f63a-43e3-ae0e-c149e19b0237')
;

-- 14 de out de 2020 17:58:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122596,'Resíduo de carbono dos 100% destilados - %massa',1120370,'109',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,'U','96ce0c53-49f6-4419-bb41-72723ce1ae5d')
;

-- 14 de out de 2020 17:58:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122597,'Resíduo de Carbono Ramsbottom no Resíduo dos 10% finais da Destilação - %massa',1120370,'29',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,'U','e4a25eab-0f56-433a-bd73-63facf9ddb54')
;

-- 14 de out de 2020 17:58:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122598,'Resíduo por evaporação - mg/100mL',1120370,'36',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,'U','19c79c29-d26b-4f50-b0aa-257ad9dd302c')
;

-- 14 de out de 2020 17:58:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122599,'Resíduo volátil - Butanos e mais pesados - %volume',1120370,'72',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,'U','23f5df63-8086-43e0-a209-3b8712ddc181')
;

-- 14 de out de 2020 17:58:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122600,'Resíduo volátil - Pentanos e mais pesados - %volume',1120370,'73',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,'U','abbc24da-b220-4ff1-beb2-f595de6e9d6a')
;

-- 14 de out de 2020 17:58:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122601,'Resíduo volátil - Ponto de Ebulição 95% evaporados - °C',1120370,'71',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,'U','69f238eb-7654-4486-82df-16e291bf7779')
;

-- 14 de out de 2020 17:58:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122602,'Resíduo, 100 ml evaporados - mL',1120370,'74',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,'U','5d2414e9-5fe2-4ec2-99c0-64c0d549086d')
;

-- 14 de out de 2020 17:58:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122603,'Sedimentação, 5 dias por diferença - %',1120370,'114',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,'U','b3b45313-021b-45d8-a392-020dc622d933')
;

-- 14 de out de 2020 17:58:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122604,'Sódio - mg/Kg',1120370,'42',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,'U','f5b5cd8d-9034-4e59-9c33-760b0646950e')
;

-- 14 de out de 2020 17:58:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122605,'Sódio + Potássio. - mg/Kg',1120370,'94',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,'U','e05df284-544a-43b9-b4b2-e9c81f5d543b')
;

-- 14 de out de 2020 17:58:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122606,'Solubilidade em tricoroetileno - %massa',1120370,'139',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,'U','251eb78c-7da0-4fdc-a445-d73e99320e5b')
;

-- 14 de out de 2020 17:58:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122607,'Teor alcoólico - °INPM',1120370,'34',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,'U','addf73f9-ed86-48f6-a6df-8b98a3e2ad84')
;

-- 14 de out de 2020 17:58:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122608,'Teor de água - %volume',1120370,'129',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,'U','0b880740-731b-4468-8b58-af9c05298331')
;

-- 14 de out de 2020 17:58:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122609,'Teor de Betume - %massa',1120370,'122',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,'U','67dc6530-456b-409c-843d-f02fda0c5840')
;

-- 14 de out de 2020 17:58:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122610,'Teor de éster - %massa',1120370,'92',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,'U','e06612b4-9203-4eaa-b0f9-58f1ea6edfef')
;

-- 14 de out de 2020 17:58:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122611,'Teor de etanol - %volume',1120370,'39',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,'U','cd828596-dc1c-4d61-b373-2cd648ea7ff8')
;

-- 14 de out de 2020 17:58:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122612,'Teor de hidrocarbonetos - %volume',1120370,'37',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:38','YYYY-MM-DD HH24:MI:SS'),100,'U','3ec52e3d-91c5-4049-bbae-613d22423dbd')
;

-- 14 de out de 2020 17:58:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122613,'Teor de Saturados - %massa',1120370,'110',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:38','YYYY-MM-DD HH24:MI:SS'),100,'U','86fcaa01-7514-4bc6-86a5-af7f81780f72')
;

-- 14 de out de 2020 17:58:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122614,'Teste da Mancha',1120370,'75',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),100,'U','e45f171b-354e-4168-8d46-6b6125b128cb')
;

-- 14 de out de 2020 17:58:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122615,'Tolerância à água - condições de separação',1120370,'164',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:39','YYYY-MM-DD HH24:MI:SS'),100,'U','4cc1f02c-fc56-4021-95a6-cc08a9dabedb')
;

-- 14 de out de 2020 17:58:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122616,'Tolerância à água - condições interfaciais, máx.',1120370,'62',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,'U','40edcb35-9bea-49f1-8655-95c3fa64d961')
;

-- 14 de out de 2020 17:58:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122617,'Tolerância à água - mudança de volume - mL',1120370,'165',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,'U','3409d086-246f-4cdc-b1ca-dadc76fcc517')
;

-- 14 de out de 2020 17:58:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122618,'Triglicerídeos - %massa',1120370,'102',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:40','YYYY-MM-DD HH24:MI:SS'),100,'U','846148a6-88e5-4a7f-9677-d29d3f6540a7')
;

-- 14 de out de 2020 17:58:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122619,'Umidade',1120370,'80',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:41','YYYY-MM-DD HH24:MI:SS'),100,'U','d1edd0c7-c36d-4c78-a60f-e00275306bce')
;

-- 14 de out de 2020 17:58:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122620,'Vanádio - mg/Kg',1120370,'91',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:41','YYYY-MM-DD HH24:MI:SS'),100,'U','feec96d0-965e-4212-86bc-bfefb91ef35f')
;

-- 14 de out de 2020 17:58:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122621,'Variação em massa - %massa',1120370,'140',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,'U','8ca3e85f-a950-46c3-8b25-a2986b6ba2de')
;

-- 14 de out de 2020 17:58:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122622,'Viscosidade a -20°C - (mm2/s)cst',1120370,'53',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,'U','638ba225-2c9c-4e57-a332-6bf137d36999')
;

-- 14 de out de 2020 17:58:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122623,'Viscosidade a 20°C - (mm2/s)cst',1120370,'148',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:42','YYYY-MM-DD HH24:MI:SS'),100,'U','cab762cb-f9c6-46fc-a53d-2d0a7f266e33')
;

-- 14 de out de 2020 17:58:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122624,'Viscosidade a 40°C - (mm2/s)cst',1120370,'26',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:43','YYYY-MM-DD HH24:MI:SS'),100,'U','15654831-f820-4d96-9ae6-8739534cc036')
;

-- 14 de out de 2020 17:58:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122625,'Viscosidade Brookfield a 135°C, SP 21 - cP',1120370,'135',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:43','YYYY-MM-DD HH24:MI:SS'),100,'U','3fbf4107-1a57-4068-8d8b-371be59aaeb4')
;

-- 14 de out de 2020 17:58:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122626,'Viscosidade Brookfield a 150°C, SP 21 - cP',1120370,'136',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:44','YYYY-MM-DD HH24:MI:SS'),100,'U','7b9ee090-fdc9-49ea-acd4-de12fd64599c')
;

-- 14 de out de 2020 17:58:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122627,'Viscosidade Brookfield a 177°C, SP 21 - cP',1120370,'137',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:44','YYYY-MM-DD HH24:MI:SS'),100,'U','6f39427d-1db6-473f-97b0-4175784876aa')
;

-- 14 de out de 2020 17:58:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122628,'Viscosidade Cinemática a 60°C - (mm2/s)cst',1120370,'87',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,'U','614ebbc2-0bf8-47fd-a5f1-47d82258b50a')
;

-- 14 de out de 2020 17:58:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122629,'Viscosidade Saybolt Furol a 135°C - SSF',1120370,'132',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,'U','57f7748d-f1bc-4eb0-bb9b-44a515b09ed2')
;

-- 14 de out de 2020 17:58:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122630,'Viscosidade Saybolt Furol a 150°C - SSF',1120370,'133',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:45','YYYY-MM-DD HH24:MI:SS'),100,'U','ec911ee0-0177-4766-98e4-726a7f7d1a42')
;

-- 14 de out de 2020 17:58:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122631,'Viscosidade Saybolt Furol a 177°C - SSF',1120370,'134',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:46','YYYY-MM-DD HH24:MI:SS'),100,'U','ab6845e4-73c8-4d92-b957-47fd92fd146c')
;

-- 14 de out de 2020 17:58:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122632,'Viscosidade Saybolt Furol a 25°C - SSF',1120370,'113',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:46','YYYY-MM-DD HH24:MI:SS'),100,'U','62bd765b-0733-466b-92a6-b482661ca66c')
;

-- 14 de out de 2020 17:58:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122633,'Viscosidade Saybolt Furol a 60°C - %volume',1120370,'124',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100,'U','d85cf87c-0661-485c-a47a-dc434542d38a')
;

-- 14 de out de 2020 17:58:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122634,'Viscosidade Saybolt Furola a 50°C - SSF',1120370,'88',0,0,'Y',TO_TIMESTAMP('2020-10-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100,'U','26748e5a-7eb8-4b01-b9ea-172f90aa3b6f')
;

-- 14 de out de 2020 17:59:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132620,0,'Physical Char','Physical Characteristic',1120699,'LBR_PhysicalChar',3,'N','N','N','N','N',0,'N',17,1120370,0,0,'Y',TO_TIMESTAMP('2020-10-14 17:59:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 17:59:21','YYYY-MM-DD HH24:MI:SS'),100,1123208,'Y','N','LBRA','N','N','N','Y','23336162-578a-4880-9b19-2036a47c3cbb','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 18:03:10 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120371,'LBR_SIMPLine - Method','L',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','7e6cec3c-5ca6-4fbf-93b2-341dcc3d2b33')
;

-- 14 de out de 2020 18:03:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122635,'ABNT/MB 104',1120371,'215',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:32','YYYY-MM-DD HH24:MI:SS'),100,'U','d242b195-07ed-4f42-8735-38b96969a6ac')
;

-- 14 de out de 2020 18:03:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122636,'ABNT/MB 162',1120371,'230',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,'U','09a47872-715f-4a40-aedd-ebaf470a69fa')
;

-- 14 de out de 2020 18:03:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122637,'ABNT/MB 205',1120371,'114',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,'U','ddb265fc-6388-4497-b00e-d76804318964')
;

-- 14 de out de 2020 18:03:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122638,'ABNT/MB 237',1120371,'233',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,'U','6c74eaa0-9efe-4860-bfd4-b1c8a1d1c4d0')
;

-- 14 de out de 2020 18:03:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122639,'ABNT/MB 281',1120371,'116',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,'U','49933fdf-76ea-4a5f-be1c-1c2929f99d0d')
;

-- 14 de out de 2020 18:03:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122640,'ABNT/MB 282',1120371,'118',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,'U','4f65e7fc-5dd9-4e93-a5e0-230e4c136bc8')
;

-- 14 de out de 2020 18:03:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122641,'ABNT/MB 285',1120371,'115',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,'U','4128ae06-2a58-4f80-be79-1db17770dcd0')
;

-- 14 de out de 2020 18:03:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122642,'ABNT/MB 287',1120371,'214',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,'U','7cb1e7a0-e6be-4f80-95c8-04a2cf02a370')
;

-- 14 de out de 2020 18:03:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122643,'ABNT/MB 289',1120371,'234',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,'U','7ecbf0ef-e021-43a7-a9ef-d4d87dceb0b7')
;

-- 14 de out de 2020 18:03:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122644,'ABNT/MB 293',1120371,'219',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,'U','9595316a-11be-41b8-8be8-064d9515bb87')
;

-- 14 de out de 2020 18:03:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122645,'ABNT/MB 294',1120371,'127',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,'U','b78434dd-7390-49c8-b043-53ace5c9f93f')
;

-- 14 de out de 2020 18:03:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122646,'ABNT/MB 295',1120371,'218',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,'U','f9aa9572-5b21-45c2-92dc-a328b0fd0412')
;

-- 14 de out de 2020 18:03:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122647,'ABNT/MB 296',1120371,'213',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,'U','ebaeaa66-155d-4cb6-85f3-7b1cf9ad7bd6')
;

-- 14 de out de 2020 18:03:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122648,'ABNT/MB 299',1120371,'229',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,'U','ae14b3dd-d7f6-4376-a8b2-023afedf9ae6')
;

-- 14 de out de 2020 18:03:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122649,'ABNT/MB 326',1120371,'124',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,'U','0613e14e-f36b-4ded-a1d0-05c6b256aecb')
;

-- 14 de out de 2020 18:03:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122650,'ABNT/MB 327',1120371,'220',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,'U','daac9c20-d69e-4a9e-9fd8-e2d669d3447a')
;

-- 14 de out de 2020 18:03:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122651,'ABNT/MB 37',1120371,'126',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,'U','25c99f3a-62e3-4643-b760-b872970fb088')
;

-- 14 de out de 2020 18:03:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122652,'ABNT/MB 42',1120371,'217',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,'U','99b85122-8fca-417c-81b1-e867487c535b')
;

-- 14 de out de 2020 18:03:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122653,'ABNT/MB 424',1120371,'84',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,'U','8a13c623-2bcf-4cf1-858e-f54d5ec5b3e8')
;

-- 14 de out de 2020 18:03:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122654,'ABNT/MB 425',1120371,'170',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,'U','4a651adf-4301-449e-aee6-e3d73f864ccf')
;

-- 14 de out de 2020 18:03:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122655,'ABNT/MB 43',1120371,'190',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,'U','56edd68a-d1e5-41f5-b453-4004bd70de02')
;

-- 14 de out de 2020 18:03:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122656,'ABNT/MB 45',1120371,'216',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,'U','ac1f2ca3-8b53-4c21-93d7-7a33ad0186be')
;

-- 14 de out de 2020 18:03:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122657,'ABNT/MB 452',1120371,'235',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,'U','d9052ca4-e0df-42f3-9296-b1152b2ab6f1')
;

-- 14 de out de 2020 18:03:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122658,'ABNT/MB 457',1120371,'76',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,'U','f57ad41c-58cb-44fc-a92a-3dff560cd6db')
;

-- 14 de out de 2020 18:03:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122659,'ABNT/MB 48',1120371,'128',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,'U','641bcf73-8304-4aa6-9caf-92628bbe3305')
;

-- 14 de out de 2020 18:03:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122660,'ABNT/MB 826',1120371,'169',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,'U','9b04b11f-059d-43d5-a696-9285c1eea3e5')
;

-- 14 de out de 2020 18:03:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122661,'ABNT/MB 902',1120371,'125',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,'U','a06c0c8a-f233-4a4a-8b40-146e18c0afeb')
;

-- 14 de out de 2020 18:03:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122662,'ABNT/MB 903',1120371,'117',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,'U','50fede50-5b21-4bee-a17f-7ab727bcb0a1')
;

-- 14 de out de 2020 18:03:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122663,'ABNT/NBR 10422',1120371,'104',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,'U','6e7d284d-65a8-48c9-aee1-582bc23a9c16')
;

-- 14 de out de 2020 18:03:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122664,'ABNT/NBR 10441',1120371,'89',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,'U','4ef0a244-d91f-4e5c-ab82-533fdf7322be')
;

-- 14 de out de 2020 18:03:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122665,'ABNT/NBR 10547',1120371,'95',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,'U','e11556da-83c5-46ff-8261-f7d15f176b66')
;

-- 14 de out de 2020 18:03:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122666,'ABNT/NBR 10891',1120371,'97',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,'U','fa08a11b-6516-4a88-9ddb-643a5f7c0fa0')
;

-- 14 de out de 2020 18:03:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122667,'ABNT/NBR 10893',1120371,'105',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,'U','9df14576-6ea4-4340-b350-3ed94797fe1e')
;

-- 14 de out de 2020 18:03:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122668,'ABNT/NBR 10894',1120371,'100',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,'U','ab792b4a-3c73-4f1b-86d1-0587ff1facc1')
;

-- 14 de out de 2020 18:03:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122669,'ABNT/NBR 10895',1120371,'101',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,'U','ccc1fd22-2d5e-4a13-ac91-5320de5887dc')
;

-- 14 de out de 2020 18:03:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122670,'ABNT/NBR 1109',1120371,'111',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,'U','5080ac5a-bc21-4153-951b-f4ae7458567c')
;

-- 14 de out de 2020 18:03:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122671,'ABNT/NBR 11331',1120371,'103',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,'U','c6ac9b31-7c32-4d3a-8781-e90f25ffb67b')
;

-- 14 de out de 2020 18:03:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122672,'ABNT/NBR 11341',1120371,'171',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,'U','45d591bc-a440-4324-ad4a-e819603b8ad5')
;

-- 14 de out de 2020 18:03:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122673,'ABNT/NBR 11349',1120371,'129',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,'U','db4d0664-bef8-435b-b93c-66cc1b7c69a2')
;

-- 14 de out de 2020 18:03:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122674,'ABNT/NBR 11909',1120371,'110',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,'U','4467de2b-cb1d-4794-9965-bb7b6b45d27f')
;

-- 14 de out de 2020 18:03:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122675,'ABNT/NBR 12120',1120371,'102',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,'U','067f6b79-c113-4ef6-8828-b0c4f3f72aa5')
;

-- 14 de out de 2020 18:03:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122676,'ABNT/NBR 13992',1120371,'72',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,'U','07f8df6c-e0ad-4d09-99ab-bda9ba7364a6')
;

-- 14 de out de 2020 18:03:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122677,'ABNT/NBR 13993',1120371,'99',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,'U','355532bc-22a5-4f62-9314-0a00b571b1ca')
;

-- 14 de out de 2020 18:03:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122678,'ABNT/NBR 14065',1120371,'74',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,'U','4d12d897-bf1a-4e68-ba87-846affbee870')
;

-- 14 de out de 2020 18:03:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122679,'ABNT/NBR 14156',1120371,'78',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:50','YYYY-MM-DD HH24:MI:SS'),100,'U','7aed2c90-38f1-40b5-9d0e-be207c9cc233')
;

-- 14 de out de 2020 18:03:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122680,'ABNT/NBR 14359',1120371,'81',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:51','YYYY-MM-DD HH24:MI:SS'),100,'U','9e599f04-ab02-4eb6-a19a-3d7415cfc8b4')
;

-- 14 de out de 2020 18:03:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122681,'ABNT/NBR 14448',1120371,'139',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:51','YYYY-MM-DD HH24:MI:SS'),100,'U','297cf7a1-415a-4662-83cc-3ea63af5cbf5')
;

-- 14 de out de 2020 18:03:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122682,'ABNT/NBR 14478',1120371,'80',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:52','YYYY-MM-DD HH24:MI:SS'),100,'U','4aa17cd7-3469-448d-9742-794d15d65d91')
;

-- 14 de out de 2020 18:03:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122683,'ABNT/NBR 14483',1120371,'85',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:52','YYYY-MM-DD HH24:MI:SS'),100,'U','5136e991-4b8b-4d4e-b0d7-f88f57eed0a0')
;

-- 14 de out de 2020 18:03:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122684,'ABNT/NBR 1452',1120371,'112',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,'U','ee68fc18-fdf0-4d14-95cb-95a52c25bd73')
;

-- 14 de out de 2020 18:03:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122685,'ABNT/NBR 14525',1120371,'79',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,'U','048e80db-db43-40b7-a407-02651ae76165')
;

-- 14 de out de 2020 18:03:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122686,'ABNT/NBR 14533',1120371,'83',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:53','YYYY-MM-DD HH24:MI:SS'),100,'U','55c23cb6-934c-469f-a94c-f5a56b445f5c')
;

-- 14 de out de 2020 18:03:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122687,'ABNT/NBR 14598',1120371,'88',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:54','YYYY-MM-DD HH24:MI:SS'),100,'U','922a94df-17e3-4629-a774-fd78b233da0a')
;

-- 14 de out de 2020 18:03:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122688,'ABNT/NBR 14642',1120371,'108',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:54','YYYY-MM-DD HH24:MI:SS'),100,'U','60e80567-ebb6-4082-9da4-371cd517b01e')
;

-- 14 de out de 2020 18:03:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122689,'ABNT/NBR 14647',1120371,'93',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,'U','f86f80cd-207f-447c-8db7-1e2b022ed96b')
;

-- 14 de out de 2020 18:03:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122690,'ABNT/NBR 14747',1120371,'90',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,'U','bae539c5-1fca-4cfe-acc4-d7b4d9cdef56')
;

-- 14 de out de 2020 18:03:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122691,'ABNT/NBR 14855',1120371,'201',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:55','YYYY-MM-DD HH24:MI:SS'),100,'U','f481f528-b5d8-4706-bb61-bcf7019360d6')
;

-- 14 de out de 2020 18:03:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122692,'ABNT/NBR 14875',1120371,'106',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,'U','175f22da-8106-4a2b-b5aa-f18a2d8f30b0')
;

-- 14 de out de 2020 18:03:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122693,'ABNT/NBR 14921',1120371,'206',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:56','YYYY-MM-DD HH24:MI:SS'),100,'U','960258d7-df23-4494-ac57-a78d0a770034')
;

-- 14 de out de 2020 18:03:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122694,'ABNT/NBR 14932',1120371,'210',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:57','YYYY-MM-DD HH24:MI:SS'),100,'U','5ca39e82-c216-43c2-b78b-305759508bda')
;

-- 14 de out de 2020 18:03:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122695,'ABNT/NBR 14950',1120371,'199',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:57','YYYY-MM-DD HH24:MI:SS'),100,'U','672bae1a-d838-4c8a-b97a-99a8487877c9')
;

-- 14 de out de 2020 18:03:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122696,'ABNT/NBR 15184',1120371,'200',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,'U','e0785b01-8b9f-45f9-9e5c-11b95d8faba2')
;

-- 14 de out de 2020 18:03:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122697,'ABNT/NBR 4149',1120371,'77',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,'U','863d60cc-4654-4d88-89cb-f9e0256342af')
;

-- 14 de out de 2020 18:03:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122698,'ABNT/NBR 5765',1120371,'189',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:58','YYYY-MM-DD HH24:MI:SS'),100,'U','feef41b1-e477-4d7a-9b7f-d449b5e2fded')
;

-- 14 de out de 2020 18:03:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122699,'ABNT/NBR 5847',1120371,'123',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,'U','661d8ed1-f3f6-40a7-819b-ff450adfc404')
;

-- 14 de out de 2020 18:04:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122700,'ABNT/NBR 5847 (2)',1120371,'191',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,'U','71ee0a40-d4fb-4042-a554-acff03ca7080')
;

-- 14 de out de 2020 18:04:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122701,'ABNT/NBR 5992',1120371,'96',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,'U','e98d905e-98c0-4896-97cd-e07e85dbaec9')
;

-- 14 de out de 2020 18:04:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122702,'ABNT/NBR 6293',1120371,'192',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,'U','fb6a12a3-187c-4453-8648-f8fcdd7d74e8')
;

-- 14 de out de 2020 18:04:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122703,'ABNT/NBR 6296',1120371,'172',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:01','YYYY-MM-DD HH24:MI:SS'),100,'U','e59e9929-3dd3-4e01-8c65-646ecaab95ba')
;

-- 14 de out de 2020 18:04:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122704,'ABNT/NBR 6298',1120371,'107',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:01','YYYY-MM-DD HH24:MI:SS'),100,'U','cbc99b62-b3b4-4072-b6bc-f842a1d3eb21')
;

-- 14 de out de 2020 18:04:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122705,'ABNT/NBR 6560',1120371,'198',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,'U','99c1abed-6d89-4770-987e-a87f27c48778')
;

-- 14 de out de 2020 18:04:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122706,'ABNT/NBR 6563',1120371,'82',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,'U','5a25ae8c-aace-4348-9533-71057dc517d9')
;

-- 14 de out de 2020 18:04:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122707,'ABNT/NBR 6576',1120371,'197',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,'U','141a44fe-6068-404f-8fc3-3a0ccee9337d')
;

-- 14 de out de 2020 18:04:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122708,'ABNT/NBR 6577',1120371,'113',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:03','YYYY-MM-DD HH24:MI:SS'),100,'U','48264f4c-c35a-4c43-bffc-7a94bf0e9bc9')
;

-- 14 de out de 2020 18:04:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122709,'ABNT/NBR 7148',1120371,'73',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:03','YYYY-MM-DD HH24:MI:SS'),100,'U','0efae006-74f8-4f55-b917-088c7ad2f2fe')
;

-- 14 de out de 2020 18:04:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122710,'ABNT/NBR 7974',1120371,'87',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:04','YYYY-MM-DD HH24:MI:SS'),100,'U','812762e0-9abd-4b4f-b6eb-9bd23e59389c')
;

-- 14 de out de 2020 18:04:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122711,'ABNT/NBR 7975',1120371,'109',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:04','YYYY-MM-DD HH24:MI:SS'),100,'U','d802773a-344f-4127-8f3b-a1d601b0da70')
;

-- 14 de out de 2020 18:04:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122712,'ABNT/NBR 8644',1120371,'98',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,'U','891b2c8e-58af-4126-856b-88f8b473c3d3')
;

-- 14 de out de 2020 18:04:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122713,'ABNT/NBR 9619',1120371,'75',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,'U','0c359a41-3cb6-4671-90fa-09646132ce79')
;

-- 14 de out de 2020 18:04:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122714,'ABNT/NBR 9842',1120371,'92',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:05','YYYY-MM-DD HH24:MI:SS'),100,'U','e8c557e7-333a-4432-a333-0f8cea2f11a8')
;

-- 14 de out de 2020 18:04:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122715,'ABNT/NBR 9866',1120371,'94',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:06','YYYY-MM-DD HH24:MI:SS'),100,'U','97599ff8-2542-4f61-9e09-7797a16eb8be')
;

-- 14 de out de 2020 18:04:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122716,'ABNT/NBR14318',1120371,'91',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:06','YYYY-MM-DD HH24:MI:SS'),100,'U','7d07a6df-f280-4b95-b176-8e461484ff10')
;

-- 14 de out de 2020 18:04:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122717,'ABNT/NBR14533',1120371,'86',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,'U','64b205b5-73f4-4df9-8aa6-8bd617da0a51')
;

-- 14 de out de 2020 18:04:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122718,'ASTM/D 1094',1120371,'55',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,'U','dc969e7e-7eba-43dc-871c-8e2673620e5a')
;

-- 14 de out de 2020 18:04:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122719,'ASTM/D 1125',1120371,'37',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:07','YYYY-MM-DD HH24:MI:SS'),100,'U','2c37eeb1-c27c-4aea-a86a-95a06c1dc8ee')
;

-- 14 de out de 2020 18:04:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122720,'ASTM/D 113',1120371,'196',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,'U','aab70d35-435a-49ff-bb54-3fb265538a81')
;

-- 14 de out de 2020 18:04:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122721,'ASTM/D 1160',1120371,'157',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,'U','20b4f86f-8a5c-4fa1-809a-dc047fccb28f')
;

-- 14 de out de 2020 18:04:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122722,'ASTM/D 1266',1120371,'14',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,'U','73434080-bbd9-4b46-99a4-29729f4ebe19')
;

-- 14 de out de 2020 18:04:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122723,'ASTM/D 1267',1120371,'58',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,'U','efaa9ed4-2e9f-4c94-8dd8-48132b94f0eb')
;

-- 14 de out de 2020 18:04:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122724,'ASTM/D 1298',1120371,'2',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,'U','13426b3f-e122-4afe-bc01-ce3c5d557f41')
;

-- 14 de out de 2020 18:04:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122725,'ASTM/D 130',1120371,'13',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,'U','e4c937c4-1c6f-4681-9024-699febde107c')
;

-- 14 de out de 2020 18:04:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122726,'ASTM/D 1319',1120371,'23',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,'U','f3b9145a-aeb2-4fa0-a58a-c96cc56e1fce')
;

-- 14 de out de 2020 18:04:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122727,'ASTM/D 1319 (2)',1120371,'42',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,'U','5b1cf540-14b6-41bc-9273-7b6ab4fab869')
;

-- 14 de out de 2020 18:04:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122728,'ASTM/D 1322',1120371,'52',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,'U','0dc05537-2177-4dea-ba7c-625fdd9db969')
;

-- 14 de out de 2020 18:04:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122729,'ASTM/D 1405',1120371,'226',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,'U','7896105c-a7d9-499d-923c-b5473040902b')
;

-- 14 de out de 2020 18:04:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122730,'ASTM/D 1500',1120371,'24',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,'U','b568b2b3-fdfc-4d0b-ab8f-746ea519e8f3')
;

-- 14 de out de 2020 18:04:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122731,'ASTM/D 1552',1120371,'25',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'U','76912fa9-47d8-44a7-adf1-f2f24900829b')
;

-- 14 de out de 2020 18:04:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122732,'ASTM/D 156',1120371,'207',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'U','63778ff7-46d6-4b20-adf9-283c14352967')
;

-- 14 de out de 2020 18:04:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122733,'ASTM/D 1613',1120371,'36',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'U','a0a837a3-a1e3-4784-a5fd-5dd44550a1cf')
;

-- 14 de out de 2020 18:04:14 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122734,'ASTM/D 1657',1120371,'168',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,'U','37007463-894d-4376-847b-1d332b049554')
;

-- 14 de out de 2020 18:04:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122735,'ASTM/D 1754',1120371,'177',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,'U','3bd3cc99-cbf8-4439-91d6-85281716ea00')
;

-- 14 de out de 2020 18:04:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122736,'ASTM/D 1796',1120371,'35',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'U','72bb9d3c-0d73-4dd0-af13-2d2f552cdb9d')
;

-- 14 de out de 2020 18:04:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122737,'ASTM/D 1837',1120371,'60',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'U','d1197cbd-2838-4721-9c01-8aeea95204d7')
;

-- 14 de out de 2020 18:04:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122738,'ASTM/D 1838',1120371,'70',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'U','d797dcab-1870-4f4c-83b3-bd4c7a0fe1a8')
;

-- 14 de out de 2020 18:04:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122739,'ASTM/D 1840',1120371,'53',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,'U','a8af72c9-1f2c-4378-8118-19ac8c6a8c48')
;

-- 14 de out de 2020 18:04:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122740,'ASTM/D 189',1120371,'159',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,'U','34432290-ad25-439a-9620-265968d93ce9')
;

-- 14 de out de 2020 18:04:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122741,'ASTM/D 2007',1120371,'175',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,'U','882c5646-2581-45f4-a3ff-74581bdc0e81')
;

-- 14 de out de 2020 18:04:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122742,'ASTM/D 2042',1120371,'195',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,'U','7f510893-31e1-43c3-911a-1f522476f9a8')
;

-- 14 de out de 2020 18:04:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122743,'ASTM/D 2158',1120371,'62',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'U','39340da1-e177-42aa-8d6a-26906a8c8a4e')
;

-- 14 de out de 2020 18:04:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122744,'ASTM/D 2163',1120371,'61',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'U','352d58f0-182e-4745-b133-2fbc174beca1')
;

-- 14 de out de 2020 18:04:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122745,'ASTM/D 2170',1120371,'173',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'U','dd1e9e38-20cf-4f6a-bd24-013901760490')
;

-- 14 de out de 2020 18:04:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122746,'ASTM/D 2171',1120371,'130',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'U','515af4d3-73bb-448a-908c-01d87aa8bed2')
;

-- 14 de out de 2020 18:04:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122747,'ASTM/D 2382',1120371,'228',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'U','fc5fa919-eadb-4d5e-b5d5-b9e40aa0b20b')
;

-- 14 de out de 2020 18:04:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122748,'ASTM/D 2386',1120371,'47',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,'U','c7b6055b-802c-4f94-81cd-c6a38d43031e')
;

-- 14 de out de 2020 18:04:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122749,'ASTM/D 2392',1120371,'225',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,'U','234bbc46-7b9c-46cb-9d6e-c46d15207df6')
;

-- 14 de out de 2020 18:04:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122750,'ASTM/D 2420',1120371,'69',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:21','YYYY-MM-DD HH24:MI:SS'),100,'U','8f02db7d-914d-4aec-9061-272d13f26b60')
;

-- 14 de out de 2020 18:04:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122751,'ASTM/D 2547',1120371,'223',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:21','YYYY-MM-DD HH24:MI:SS'),100,'U','167725ab-e1c5-431e-a5c6-01d12d7447c9')
;

-- 14 de out de 2020 18:04:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122752,'ASTM/D 2551',1120371,'232',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,'U','46d1b3b7-2b48-4f0a-986a-761f46c7aaad')
;

-- 14 de out de 2020 18:04:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122753,'ASTM/D 2598',1120371,'59',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,'U','d31d48db-1f22-4ecd-9be8-ec09e38de3b0')
;

-- 14 de out de 2020 18:04:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122754,'ASTM/D 2599',1120371,'224',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:22','YYYY-MM-DD HH24:MI:SS'),100,'U','a7b778d0-eed1-41ae-bbcd-a1a0bf66de12')
;

-- 14 de out de 2020 18:04:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122755,'ASTM/D 2622',1120371,'15',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:23','YYYY-MM-DD HH24:MI:SS'),100,'U','c73bd7a1-429a-4c86-a6a1-852e68d592a6')
;

-- 14 de out de 2020 18:04:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122756,'ASTM/D 2624',1120371,'56',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:23','YYYY-MM-DD HH24:MI:SS'),100,'U','87e98208-bc80-430d-9446-efc3fc294c67')
;

-- 14 de out de 2020 18:04:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122757,'ASTM/D 2699',1120371,'6',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:24','YYYY-MM-DD HH24:MI:SS'),100,'U','5dddcc34-fa76-4216-a968-d8607f549391')
;

-- 14 de out de 2020 18:04:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122758,'ASTM/D 2700',1120371,'5',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:24','YYYY-MM-DD HH24:MI:SS'),100,'U','e053d8c8-a096-4cfd-b3c1-ccc325c29f13')
;

-- 14 de out de 2020 18:04:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122759,'ASTM/D 2709',1120371,'140',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,'U','6f96659a-5c56-4016-ba6c-1b1eabf6b9b6')
;

-- 14 de out de 2020 18:04:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122760,'ASTM/D 2713',1120371,'71',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,'U','a6a24310-24d8-444d-8c47-1c8fa6660303')
;

-- 14 de out de 2020 18:04:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122761,'ASTM/D 2784',1120371,'63',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:25','YYYY-MM-DD HH24:MI:SS'),100,'U','13d0529f-1ace-4c9c-916b-bcd21ccf9e96')
;

-- 14 de out de 2020 18:04:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122762,'ASTM/D 2872',1120371,'176',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),100,'U','5d36320a-a84a-4de6-a0c4-46571bd792ff')
;

-- 14 de out de 2020 18:04:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122763,'ASTM/D 3120',1120371,'16',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:26','YYYY-MM-DD HH24:MI:SS'),100,'U','cfd77861-67fd-4d82-8728-3f16feee814e')
;

-- 14 de out de 2020 18:04:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122764,'ASTM/D 3143',1120371,'193',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:27','YYYY-MM-DD HH24:MI:SS'),100,'U','bcbb07f9-5ef7-4bbf-858d-544c4e37bc3c')
;

-- 14 de out de 2020 18:04:27 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122765,'ASTM/D 3227',1120371,'45',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:27','YYYY-MM-DD HH24:MI:SS'),100,'U','b26670b0-586d-49e6-9ee4-4d3e0050e7fd')
;

-- 14 de out de 2020 18:04:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122766,'ASTM/D 323',1120371,'231',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,'U','d6fbb137-2d95-4737-9e1f-78a546493eee')
;

-- 14 de out de 2020 18:04:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122767,'ASTM/D 3237',1120371,'22',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,'U','ad6f7bbe-fe72-42d0-8be6-d910c1254373')
;

-- 14 de out de 2020 18:04:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122768,'ASTM/D 3241',1120371,'54',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,'U','0d1c7f98-b8a5-4935-b743-404105b3802c')
;

-- 14 de out de 2020 18:04:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122769,'ASTM/D 3242',1120371,'41',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,'U','e4ae1000-bca0-47f3-8919-2c6c097bfb96')
;

-- 14 de out de 2020 18:04:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122770,'ASTM/D 3246',1120371,'64',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,'U','67c0f708-43a2-4e5b-b8c6-4e60c6b0f0b4')
;

-- 14 de out de 2020 18:04:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122771,'ASTM/D 3338',1120371,'50',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:30','YYYY-MM-DD HH24:MI:SS'),100,'U','ee16445b-de81-49d3-964b-e5a11e1cd2fa')
;

-- 14 de out de 2020 18:04:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122772,'ASTM/D 3341',1120371,'222',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:30','YYYY-MM-DD HH24:MI:SS'),100,'U','2ca85bd0-dedf-4885-9555-38682ce55e10')
;

-- 14 de out de 2020 18:04:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122773,'ASTM/D 36',1120371,'203',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,'U','72ee70bd-c95b-493b-a474-50624c66d9f1')
;

-- 14 de out de 2020 18:04:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122774,'ASTM/D 3606',1120371,'19',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,'U','bcd2ae33-543d-4dd9-858e-bb6de3ac5017')
;

-- 14 de out de 2020 18:04:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122775,'ASTM/D 381',1120371,'11',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:31','YYYY-MM-DD HH24:MI:SS'),100,'U','3f77103b-ab71-4597-8f7f-9c4117c1782e')
;

-- 14 de out de 2020 18:04:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122776,'ASTM/D 3828',1120371,'29',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:32','YYYY-MM-DD HH24:MI:SS'),100,'U','da086ac4-a456-48ae-a528-744ff90f67f1')
;

-- 14 de out de 2020 18:04:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122777,'ASTM/D 3948',1120371,'121',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:32','YYYY-MM-DD HH24:MI:SS'),100,'U','aab57898-a34c-4f78-b0ec-9263ad3adf2f')
;

-- 14 de out de 2020 18:04:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122778,'ASTM/D 402',1120371,'194',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:33','YYYY-MM-DD HH24:MI:SS'),100,'U','54425af1-b9bb-4d3d-8a71-2e3e2a6c7ebd')
;

-- 14 de out de 2020 18:04:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122779,'ASTM/D 4052',1120371,'26',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:33','YYYY-MM-DD HH24:MI:SS'),100,'U','e43fd04b-6313-450c-a335-350dfb50b9aa')
;

-- 14 de out de 2020 18:04:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122780,'ASTM/D 4176',1120371,'40',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,'U','09270f38-b16c-49b2-9039-589925aae363')
;

-- 14 de out de 2020 18:04:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122781,'ASTM/D 4249',1120371,'44',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,'U','56c409f1-a669-4ab2-b374-da5a1b6af7b4')
;

-- 14 de out de 2020 18:04:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122782,'ASTM/D 4294',1120371,'17',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:34','YYYY-MM-DD HH24:MI:SS'),100,'U','3a7708f8-c90d-44cb-85a9-16516fa26fa3')
;

-- 14 de out de 2020 18:04:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122783,'ASTM/D 445',1120371,'30',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:35','YYYY-MM-DD HH24:MI:SS'),100,'U','75bdd70b-eb2c-4bef-ac42-01d17d2cc711')
;

-- 14 de out de 2020 18:04:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122784,'ASTM/D 4468',1120371,'65',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:35','YYYY-MM-DD HH24:MI:SS'),100,'U','627729f4-5105-4f21-b40e-4eb2a6b55861')
;

-- 14 de out de 2020 18:04:36 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122785,'ASTM/D 4530',1120371,'158',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:36','YYYY-MM-DD HH24:MI:SS'),100,'U','332a4308-2c98-42e6-9a53-06e1d8932829')
;

-- 14 de out de 2020 18:04:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122786,'ASTM/D 473',1120371,'133',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:36','YYYY-MM-DD HH24:MI:SS'),100,'U','3402b132-9dd8-4e43-ad47-b5c6895e5aff')
;

-- 14 de out de 2020 18:04:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122787,'ASTM/D 4737',1120371,'120',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:37','YYYY-MM-DD HH24:MI:SS'),100,'U','6add78bd-6250-4430-b420-53fcde0d4293')
;

-- 14 de out de 2020 18:04:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122788,'ASTM/D 4809',1120371,'51',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:37','YYYY-MM-DD HH24:MI:SS'),100,'U','3cb62842-e212-4c96-a996-86cdf2704e7b')
;

-- 14 de out de 2020 18:04:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122789,'ASTM/D 482',1120371,'34',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,'U','b10b73b4-95eb-4ff5-b4b5-bddc8be1c304')
;

-- 14 de out de 2020 18:04:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122790,'ASTM/D 4951',1120371,'142',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,'U','027e2a30-be44-4932-bc5e-c3def00406da')
;

-- 14 de out de 2020 18:04:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122791,'ASTM/D 4952',1120371,'46',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:38','YYYY-MM-DD HH24:MI:SS'),100,'U','b80d1bba-ce2f-428c-9dc1-d61e96efefca')
;

-- 14 de out de 2020 18:04:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122792,'ASTM/D 4953',1120371,'7',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,'U','db32f44f-126c-4972-854a-68377ee289cf')
;

-- 14 de out de 2020 18:04:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122793,'ASTM/D 5',1120371,'202',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:39','YYYY-MM-DD HH24:MI:SS'),100,'U','e7856640-a7e9-44ca-bb40-b34d07fc9e0f')
;

-- 14 de out de 2020 18:04:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122794,'ASTM/D 5001',1120371,'57',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:40','YYYY-MM-DD HH24:MI:SS'),100,'U','4e9ce8b4-4ccd-4274-ad48-2370da724231')
;

-- 14 de out de 2020 18:04:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122795,'ASTM/D 5042',1120371,'3',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:40','YYYY-MM-DD HH24:MI:SS'),100,'U','f9fc48a1-2c8c-456e-b07e-552587384e4e')
;

-- 14 de out de 2020 18:04:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122796,'ASTM/D 512',1120371,'38',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,'U','ce4a4f5a-dc82-431e-b40a-23e21f958ba6')
;

-- 14 de out de 2020 18:04:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122797,'ASTM/D 5190',1120371,'8',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,'U','5830832d-ceb7-4e58-a46c-edd77c07a1ce')
;

-- 14 de out de 2020 18:04:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122798,'ASTM/D 5191',1120371,'9',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:41','YYYY-MM-DD HH24:MI:SS'),100,'U','7c92ed51-acdd-4cae-866b-de2a45458d0f')
;

-- 14 de out de 2020 18:04:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122799,'ASTM/D 524',1120371,'33',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:42','YYYY-MM-DD HH24:MI:SS'),100,'U','87289428-5ad8-47f7-862d-e2d8b370a4d6')
;

-- 14 de out de 2020 18:04:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122800,'ASTM/D 525',1120371,'12',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:42','YYYY-MM-DD HH24:MI:SS'),100,'U','c47fca0f-a735-4911-84d4-d7405f51d866')
;

-- 14 de out de 2020 18:04:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122801,'ASTM/D 5443',1120371,'20',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,'U','f4184ccb-9485-4e74-bcd1-d5513cadf852')
;

-- 14 de out de 2020 18:04:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122802,'ASTM/D 5452',1120371,'209',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,'U','fdf67f50-c6da-4634-8bfb-cfa747b218bf')
;

-- 14 de out de 2020 18:04:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122803,'ASTM/D 5453',1120371,'18',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,'U','21e97748-a9aa-4f1d-874e-ac0c2068e053')
;

-- 14 de out de 2020 18:04:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122804,'ASTM/D 5482',1120371,'10',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,'U','c7551499-11d2-40df-ad81-d24a78bd711b')
;

-- 14 de out de 2020 18:04:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122805,'ASTM/D 5501',1120371,'39',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,'U','303dad9b-af33-4fbd-bf27-199ed21455d7')
;

-- 14 de out de 2020 18:04:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122806,'ASTM/D 5504',1120371,'66',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,'U','cb6c9672-66dc-4de0-8622-bf3c9e0139dd')
;

-- 14 de out de 2020 18:04:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122807,'ASTM/D 56',1120371,'27',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,'U','3e49b4b8-3104-477b-be5f-8429d8501f64')
;

-- 14 de out de 2020 18:04:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122808,'ASTM/D 5623',1120371,'67',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:45','YYYY-MM-DD HH24:MI:SS'),100,'U','2bae73f9-2b65-4885-9159-a6d939673222')
;

-- 14 de out de 2020 18:04:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122809,'ASTM/D 5708',1120371,'137',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,'U','77200643-9fca-4cab-8cae-ebdbf3cad0a9')
;

-- 14 de out de 2020 18:04:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122810,'ASTM/D 5863',1120371,'136',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,'U','9ac9f18f-79a4-4f37-b037-aa379721722c')
;

-- 14 de out de 2020 18:04:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122811,'ASTM/D 5972',1120371,'48',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:47','YYYY-MM-DD HH24:MI:SS'),100,'U','2140795c-f3db-48e6-a962-32fe93afee73')
;

-- 14 de out de 2020 18:04:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122812,'ASTM/D 6045',1120371,'208',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:47','YYYY-MM-DD HH24:MI:SS'),100,'U','0e784887-51e4-4aee-9bfc-2b4a40b7df34')
;

-- 14 de out de 2020 18:04:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122813,'ASTM/D 611',1120371,'227',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,'U','1d436621-ce13-48a7-bda6-7324984883c8')
;

-- 14 de out de 2020 18:04:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122814,'ASTM/D 613',1120371,'32',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,'U','16f2d7ed-d763-4a72-84e3-98427563f732')
;

-- 14 de out de 2020 18:04:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122815,'ASTM/D 6277',1120371,'21',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:48','YYYY-MM-DD HH24:MI:SS'),100,'U','4b7ee471-9b42-4d6f-b319-5d3bed7cab45')
;

-- 14 de out de 2020 18:04:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122816,'ASTM/D 6371',1120371,'31',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:49','YYYY-MM-DD HH24:MI:SS'),100,'U','55693d28-013e-4d33-a6b2-303d1e3d6564')
;

-- 14 de out de 2020 18:04:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122817,'ASTM/D 6379',1120371,'43',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:49','YYYY-MM-DD HH24:MI:SS'),100,'U','8236295a-0884-42b1-a428-3ef206ac8712')
;

-- 14 de out de 2020 18:04:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122818,'ASTM/D 6584',1120371,'144',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:50','YYYY-MM-DD HH24:MI:SS'),100,'U','e47602ac-e272-4623-bbc6-6ab3b065d0e8')
;

-- 14 de out de 2020 18:04:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122819,'ASTM/D 664',1120371,'143',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:50','YYYY-MM-DD HH24:MI:SS'),100,'U','6c8fcc9c-ac8b-48b2-8f0d-769490d5d809')
;

-- 14 de out de 2020 18:04:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122820,'ASTM/D 6667',1120371,'68',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:51','YYYY-MM-DD HH24:MI:SS'),100,'U','d7771aa3-1c49-4c75-addd-c9c7ac374ec9')
;

-- 14 de out de 2020 18:04:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122821,'ASTM/D 70',1120371,'178',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:51','YYYY-MM-DD HH24:MI:SS'),100,'U','50b1b53b-e331-463e-a9af-90d1a9c49fb8')
;

-- 14 de out de 2020 18:04:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122822,'ASTM/D 7153',1120371,'211',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,'U','b86817c7-8ede-4349-b1a4-d54769a6e444')
;

-- 14 de out de 2020 18:04:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122823,'ASTM/D 7154',1120371,'212',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,'U','1855e615-4f48-43fe-8020-efe8d5ee9a6b')
;

-- 14 de out de 2020 18:04:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122824,'ASTM/D 86',1120371,'4',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,'U','a989ece3-ad94-4d91-ad3a-c06fbd4909e2')
;

-- 14 de out de 2020 18:04:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122825,'ASTM/D 873',1120371,'236',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,'U','3869dfa8-b996-44f5-9c7c-b9b13c0136bc')
;

-- 14 de out de 2020 18:04:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122826,'ASTM/D 874',1120371,'141',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,'U','046b2b16-e2b7-4249-921b-219e158efdcc')
;

-- 14 de out de 2020 18:04:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122827,'ASTM/D 88',1120371,'131',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'U','9d2d1a61-ab8a-44de-b62f-d47be4fb96c9')
;

-- 14 de out de 2020 18:04:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122828,'ASTM/D 910',1120371,'221',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'U','2735fd46-894c-4df4-9ec0-8289524169c2')
;

-- 14 de out de 2020 18:04:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122829,'ASTM/D 92',1120371,'174',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'U','555a585e-289f-4c1c-bba9-4ae5eaffd557')
;

-- 14 de out de 2020 18:04:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122830,'ASTM/D 93',1120371,'28',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,'U','062abd9f-340e-4cb1-982d-4cb47bdc2d41')
;

-- 14 de out de 2020 18:04:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122831,'ASTM/D 95',1120371,'132',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,'U','f436e5b4-de0f-4784-a36b-ea0516a004df')
;

-- 14 de out de 2020 18:04:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122832,'ASTM/D 97',1120371,'135',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'U','b8045346-ffc9-43da-9675-8eff850d8249')
;

-- 14 de out de 2020 18:04:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122833,'ASTM/D4529',1120371,'49',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'U','c929b71f-e198-4bd3-b0db-a970a0c99910')
;

-- 14 de out de 2020 18:04:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122834,'ASTM/E 102',1120371,'204',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'U','07771d21-3eea-4bb1-90cd-52a122c9feb0')
;

-- 14 de out de 2020 18:04:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122835,'ASTM/E 4402',1120371,'205',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'U','d079fa60-2e48-4a0f-8fad-835b12ec3ca3')
;

-- 14 de out de 2020 18:04:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122836,'EN 14103',1120371,'145',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'U','ed77e6ac-37a0-4aae-9591-a7da9a9cb1f9')
;

-- 14 de out de 2020 18:04:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122837,'EN 14104',1120371,'151',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,'U','272dc6c7-dda0-4e4c-ab98-83459337a071')
;

-- 14 de out de 2020 18:04:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122838,'EN 14105',1120371,'152',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,'U','bdbb3906-a911-484d-8f54-d7f0387858b2')
;

-- 14 de out de 2020 18:04:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122839,'EN 14106',1120371,'153',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:59','YYYY-MM-DD HH24:MI:SS'),100,'U','002bf279-f63d-4ea0-a0f2-e3ce94cf2b35')
;

-- 14 de out de 2020 18:04:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122840,'EN 14107',1120371,'150',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:04:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:04:59','YYYY-MM-DD HH24:MI:SS'),100,'U','e944225f-3359-4767-8007-748d149c7ee4')
;

-- 14 de out de 2020 18:05:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122841,'EN 14108',1120371,'147',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,'U','271f2888-de63-4d9a-8bdf-b19d242266dc')
;

-- 14 de out de 2020 18:05:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122842,'EN 14109',1120371,'148',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,'U','f58576af-4829-40c4-a041-1abc85694cc3')
;

-- 14 de out de 2020 18:05:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122843,'EN 14110',1120371,'154',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,'U','7ab42d15-8d45-4e82-85e6-36b84374a0de')
;

-- 14 de out de 2020 18:05:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122844,'EN 14111',1120371,'155',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:01','YYYY-MM-DD HH24:MI:SS'),100,'U','d65d5781-f676-40b8-a701-a5db89e850cd')
;

-- 14 de out de 2020 18:05:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122845,'EN 14112',1120371,'156',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:01','YYYY-MM-DD HH24:MI:SS'),100,'U','0abf8de1-52f3-4c4b-a006-f307fbe800b6')
;

-- 14 de out de 2020 18:05:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122846,'EN 14538',1120371,'149',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,'U','52a7e3c3-92b0-4976-94ed-f59c247913ce')
;

-- 14 de out de 2020 18:05:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122847,'EN/ISO 10370',1120371,'164',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,'U','d46d1fd4-12f7-4df0-878e-26735cbfd866')
;

-- 14 de out de 2020 18:05:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122848,'EN/ISO 12662',1120371,'162',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:02','YYYY-MM-DD HH24:MI:SS'),100,'U','2ef527e6-6d71-4f97-933f-d4f0af0a021f')
;

-- 14 de out de 2020 18:05:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122849,'EN/ISO 12937',1120371,'161',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:03','YYYY-MM-DD HH24:MI:SS'),100,'U','c90ecc2b-da7c-4e09-b294-5fafd167d2f0')
;

-- 14 de out de 2020 18:05:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122850,'EN/ISO 14569',1120371,'165',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:03','YYYY-MM-DD HH24:MI:SS'),100,'U','241ffb4e-0d59-4c4d-8f0e-c42eab58e995')
;

-- 14 de out de 2020 18:05:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122851,'EN/ISO 2160',1120371,'166',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,'U','ce638610-ce03-4dcc-9eb1-6d35565a2a07')
;

-- 14 de out de 2020 18:05:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122852,'EN/ISO 3104',1120371,'160',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,'U','0e11bea7-0e18-4541-93ed-81202d0a499b')
;

-- 14 de out de 2020 18:05:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122853,'EN/ISO 3679',1120371,'163',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,'U','6b0e22d4-d100-409a-9b49-c389d402bfe4')
;

-- 14 de out de 2020 18:05:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122854,'EN/ISO 5165',1120371,'167',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:05','YYYY-MM-DD HH24:MI:SS'),100,'U','64ffa8da-55b6-418b-a4f6-99554c4d7ccd')
;

-- 14 de out de 2020 18:05:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122855,'IP 227',1120371,'122',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:05','YYYY-MM-DD HH24:MI:SS'),100,'U','6a8aca02-5d44-4d8e-b6c7-fbbcbe54559c')
;

-- 14 de out de 2020 18:05:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122856,'ISO 3987',1120371,'146',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,'U','8427a861-cad5-4501-967f-93c88786397b')
;

-- 14 de out de 2020 18:05:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122857,'Não Aplicável',1120371,'138',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,'U','8074fe46-1966-4472-9776-e658abb4fcbd')
;

-- 14 de out de 2020 18:05:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122858,'NFPA58',1120371,'119',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:06','YYYY-MM-DD HH24:MI:SS'),100,'U','f7897989-bf53-4c88-bd1b-e0a76d0f4516')
;

-- 14 de out de 2020 18:05:07 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122859,'P-MB-107',1120371,'186',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:07','YYYY-MM-DD HH24:MI:SS'),100,'U','76768fc8-f167-4086-97b6-a17011742415')
;

-- 14 de out de 2020 18:05:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122860,'P-MB-166',1120371,'187',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:07','YYYY-MM-DD HH24:MI:SS'),100,'U','d5a05449-4c87-4670-bfa8-1bc24709fd54')
;

-- 14 de out de 2020 18:05:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122861,'P-MB-167',1120371,'188',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,'U','9935e366-9308-4a5e-a53b-0bd7105cfd56')
;

-- 14 de out de 2020 18:05:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122862,'P-MB-496',1120371,'182',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,'U','82da9692-9f74-4c62-8f3d-3a073ca9747c')
;

-- 14 de out de 2020 18:05:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122863,'P-MB-563',1120371,'184',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:08','YYYY-MM-DD HH24:MI:SS'),100,'U','cbccd6e4-f03d-4469-8ee4-bf8cc62b12ea')
;

-- 14 de out de 2020 18:05:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122864,'P-MB-581',1120371,'179',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:09','YYYY-MM-DD HH24:MI:SS'),100,'U','0a38d2be-808a-43c8-a28d-46042c6fc315')
;

-- 14 de out de 2020 18:05:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122865,'P-MB-586',1120371,'185',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:09','YYYY-MM-DD HH24:MI:SS'),100,'U','701ebc53-84a7-4244-96cd-50ee2dce0a19')
;

-- 14 de out de 2020 18:05:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122866,'P-MB-609',1120371,'181',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,'U','c7bf09a3-c0eb-483f-9dd1-17563737348f')
;

-- 14 de out de 2020 18:05:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122867,'P-MB-722',1120371,'180',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,'U','b28c8e4d-4a39-4d6a-a8e9-2c77a60c0cdb')
;

-- 14 de out de 2020 18:05:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122868,'P-MB-795',1120371,'183',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:11','YYYY-MM-DD HH24:MI:SS'),100,'U','9f2b1d2d-2b3a-454a-9719-0dbdb74a1efa')
;

-- 14 de out de 2020 18:05:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122869,'VISUAL',1120371,'1',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:05:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:05:11','YYYY-MM-DD HH24:MI:SS'),100,'U','3a5a759a-e461-4edf-9369-13c777b3ea93')
;

-- 14 de out de 2020 18:06:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132621,0,'Method',1120699,'Method',3,'N','N','N','N','N',0,'N',17,1120371,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:06:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:06:31','YYYY-MM-DD HH24:MI:SS'),100,200239,'Y','N','LBRA','N','N','N','Y','28a182ec-d491-4ff6-b3be-920435b9a93a','Y',0,'N','N','N')
;

-- 14 de out de 2020 18:07:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132622,0,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120699,'LBR_FreightCostRule',1,'N','N','N','N','N',0,'N',17,1120147,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:07:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:07:54','YYYY-MM-DD HH24:MI:SS'),100,1121100,'Y','N','U','N','N','N','Y','3c9cd3ab-d227-453d-8f56-7cb55a11066d','Y',0,'N','N','N')
;

-- 14 de out de 2020 18:11:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132623,0,'Result','Result of the action taken','The Result indicates the result of any action taken on this request.',1120699,'Result',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:11:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:11:16','YYYY-MM-DD HH24:MI:SS'),100,546,'N','N','LBRA','N','N','N','Y','3ff9aed7-5373-41dc-80d3-d2b49f5b3cb7','Y',0,'N','N','N')
;

-- 14 de out de 2020 18:16:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132624,0,'Selected Product Value',1120699,'SelectedProductValue',9,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:16:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:16:15','YYYY-MM-DD HH24:MI:SS'),100,202256,'N','N','LBRA','N','N','N','Y','ca5bfc87-6e6c-41ef-ade4-91597c3942bb','Y',0,'N','N','N')
;

-- 14 de out de 2020 18:17:08 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123209,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:17:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:17:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GLPContainer','GLP Container','GLP Container','LBRA','f476bbdc-1172-42e2-9dbe-fb9d8a8b2c54')
;

-- 14 de out de 2020 18:17:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132625,0,'GLP Container',1120699,'LBR_GLPContainer',2,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:17:49','YYYY-MM-DD HH24:MI:SS'),100,1123209,'Y','N','LBRA','N','N','N','Y','4d43189d-6998-4e6e-ad78-9c474feea583','Y',0,'N','N','N','N')
;

-- 14 de out de 2020 18:18:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132626,0,'NFe ID','Identification of NFe',1120699,'lbr_NFeID',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:18:19','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','fd679256-0769-4fe4-af74-6b87eaa41581','Y',0,'N','N','N')
;

-- 14 de out de 2020 18:19:34 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120368,'Combustíveis',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:19:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:19:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','N','LBRA','N','4c6edbec-00c0-4396-a37e-128691075249')
;

-- 14 de out de 2020 18:19:34 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120368, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120368)
;

-- 14 de out de 2020 18:19:42 BRT
UPDATE AD_Menu SET Name='Fuel',Updated=TO_TIMESTAMP('2020-10-14 18:19:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120368
;

-- 14 de out de 2020 18:20:06 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120168,'i-SIMP',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:20:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:20:06','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','cbb92d96-4c54-4eaf-912b-3ce7dd73bbda')
;

-- 14 de out de 2020 18:20:23 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120404,'Cabeçalho',1120168,10,'Y',1120698,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:20:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:20:23','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','06bf7704-c578-4a70-bef5-711b0a837fe7','B')
;

-- 14 de out de 2020 18:20:30 BRT
UPDATE AD_Tab SET Name='Header',Updated=TO_TIMESTAMP('2020-10-14 18:20:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120404
;

-- 14 de out de 2020 18:20:51 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120405,'Line',1120168,20,'Y',1120699,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:20:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:20:51','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132600,'N','N',1,'N','LBRA','Y','N','3fe424fd-a250-4bb7-ae56-ef6603aefc55','B')
;

-- 14 de out de 2020 18:21:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129950,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120404,1132577,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','025ec503-d5a3-43dd-910c-fca8d3233204','N',2)
;

-- 14 de out de 2020 18:21:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129951,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120404,1132578,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','99732fda-3eb8-4dd2-8952-939db5012ae4','Y','Y',10,4,2)
;

-- 14 de out de 2020 18:21:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129952,'SIMP',1120404,1132576,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8daf5eed-e95e-46d5-8292-bae1a8aacca3','N',2)
;

-- 14 de out de 2020 18:21:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129953,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120404,1132592,'Y',2,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e8b7a97-debc-4fbb-bb10-36f605327721','Y',20,2)
;

-- 14 de out de 2020 18:21:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129954,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120404,1132593,'Y',2,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','42eca3f4-aecb-4f48-b000-3e1225dda45c','Y',30,2,2)
;

-- 14 de out de 2020 18:21:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129955,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120404,1132594,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e3f8ba7d-f7bd-44b2-93bf-75e1cb194b5e','Y',40,2)
;

-- 14 de out de 2020 18:21:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129956,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120404,1132595,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d2fd951b-0f9a-4e54-90c6-c04e95bc7c2b','Y',50,2)
;

-- 14 de out de 2020 18:21:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129957,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120404,1132596,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','19dbec57-3249-4a74-88f4-16c8a0ccb1eb','Y',60,2,2)
;

-- 14 de out de 2020 18:21:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129958,'Chemical Agent',1120404,1132597,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2c6daebd-d277-4f68-ad7c-afeae5ce9d38','Y',70,2)
;

-- 14 de out de 2020 18:21:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129959,'Install Code 1',1120404,1132598,'Y',7,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cbde3c02-62f0-4a15-bb21-c47bff60cd3b','Y',80,2)
;

-- 14 de out de 2020 18:21:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129960,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120404,1132581,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:21:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:21:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5cd5ca46-7b9d-4d1d-a093-e37660b05a92','Y',90,2,2)
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129954
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129956
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129955
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129958
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129953
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129959
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129960
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129957
;

-- 14 de out de 2020 18:21:41 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:21:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129952
;

-- 14 de out de 2020 18:22:02 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-14 18:22:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132599
;

-- 14 de out de 2020 18:22:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129961,'Install Code 2',1120404,1132599,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:22:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:22:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f119dac1-cc92-4deb-a3bb-d21455a97c7f','Y',100,2)
;

-- 14 de out de 2020 18:22:47 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:22:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129961
;

-- 14 de out de 2020 18:22:47 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:22:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129960
;

-- 14 de out de 2020 18:22:47 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:22:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129957
;

-- 14 de out de 2020 18:23:00 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-14 18:22:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132595
;

-- 14 de out de 2020 18:23:03 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-14 18:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132595
;

-- 14 de out de 2020 18:23:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129962,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120405,1132585,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4a2b0a9a-8a1f-4607-a2e9-d459e4d6f646','N',2)
;

-- 14 de out de 2020 18:23:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129963,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120405,1132586,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3ad74767-ea88-4fda-8462-7c7a1983a423','Y','Y',10,4,2)
;

-- 14 de out de 2020 18:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129964,'SIMP Line',1120405,1132584,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','348f0904-e3fa-4b43-b53f-1b191f37f8d5','N',2)
;

-- 14 de out de 2020 18:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129965,'SIMP',1120405,1132600,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','accdce0c-e5f1-4f23-ab4f-ee310302c7d2','Y',20,2)
;

-- 14 de out de 2020 18:23:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129966,'Operation','Compare Operation',1120405,1132601,'Y',7,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f2bdb423-b68b-4bcc-8739-8031cd203c58','Y',30,2)
;

-- 14 de out de 2020 18:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129967,'Install Code 1',1120405,1132602,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e14cb3f0-8e7c-4800-bea9-259ac7071224','Y',40,2)
;

-- 14 de out de 2020 18:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129968,'Install Code 2',1120405,1132603,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55ee1b96-b9a4-4eab-aea8-d5f2a1539c83','Y',50,2)
;

-- 14 de out de 2020 18:23:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129969,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120405,1132604,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','edb46279-7324-47b5-8ffb-233f35aad321','Y',60,2)
;

-- 14 de out de 2020 18:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129970,'Transport Modal',1120405,1132605,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','42669cdc-8dc2-462a-9ea7-610c28da1c62','Y',70,2)
;

-- 14 de out de 2020 18:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129971,'CNPJ/CPF','CNPJ ou CPF do cliente',1120405,1132606,'Y',18,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bf643929-a993-474e-b5e6-51cad4c9435c','Y',80,2)
;

-- 14 de out de 2020 18:23:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129972,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120405,1132607,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','52c8c4d7-471d-41d0-99f3-1979ab864a05','Y',90,2)
;

-- 14 de out de 2020 18:23:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129973,'Price','Price','The Price indicates the Price for a product or service.',1120405,1132608,'Y',14,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','98e19d25-55a2-43da-9fdd-d5aaf8d61cb6','Y',100,2)
;

-- 14 de out de 2020 18:23:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129974,'Product Key','Key of the Product',1120405,1132609,'Y',9,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','19fffddb-b707-4a6e-aa6c-d6754967a182','Y',110,2)
;

-- 14 de out de 2020 18:23:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129975,'Pipeline Code',1120405,1132610,'Y',7,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','be820a5a-c266-45ae-b6fd-1c5fcc692ce8','Y',120,2)
;

-- 14 de out de 2020 18:23:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129976,'Cod. Cidade (IBGE)','Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)',1120405,1132611,'Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4a920ee8-3ab8-4ff2-af07-8d55f0c726cb','Y',130,2)
;

-- 14 de out de 2020 18:23:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129977,'CNAE','Classificação Nacional de Atividades Econômicas',1120405,1132612,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','04a73b4d-1ff9-4384-85f8-754dc1a15414','Y',140,2)
;

-- 14 de out de 2020 18:23:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129978,'Country Code','Country Code used for issue Nota Fiscal','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)',1120405,1132613,'Y',5,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','59db5d36-4d74-421d-9a08-ba0508b18703','Y',150,2)
;

-- 14 de out de 2020 18:23:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129979,'DI','N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)','N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)',1120405,1132614,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9603c3a8-7ee3-4c2f-a0f2-3e357918653d','Y',160,2)
;

-- 14 de out de 2020 18:23:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129980,'LI','Licença de Importação',1120405,1132615,'Y',10,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3c7ed0d9-7a92-405b-a51f-edf63f61eafe','Y',170,2)
;

-- 14 de out de 2020 18:23:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129981,'NFe No',1120405,1132616,'Y',7,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','38bc876a-5aad-4737-8c09-53126b929c05','Y',180,2)
;

-- 14 de out de 2020 18:23:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129982,'NF Serie',1120405,1132617,'Y',2,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','828f5218-8071-453d-9458-c9de3b964195','Y',190,2)
;

-- 14 de out de 2020 18:23:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129983,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120405,1132618,'Y',7,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','53f2863b-c4a5-4cd7-8e4a-8a7ff1dafa4e','Y',200,2)
;

-- 14 de out de 2020 18:23:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129984,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1120405,1132619,'Y',1,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4a604f84-2ea8-4109-b0f8-19c4ab151bc2','Y',210,2)
;

-- 14 de out de 2020 18:23:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129985,'Physical Char','Physical Characteristic',1120405,1132620,'Y',3,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8fb0c1f1-c013-4801-9065-522323a4b0ce','Y',220,2)
;

-- 14 de out de 2020 18:23:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129986,'Method',1120405,1132621,'Y',3,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','076fb13f-c56b-4bcc-b9db-ddcedb9561fb','Y',230,2)
;

-- 14 de out de 2020 18:23:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129987,'Result','Result of the action taken','The Result indicates the result of any action taken on this request.',1120405,1132623,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cbd6dea0-7072-4cc3-9649-9130bb88fedb','Y',240,2)
;

-- 14 de out de 2020 18:23:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129988,'Selected Product Value',1120405,1132624,'Y',9,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c009f670-47a9-4115-a671-a317e90f9cd7','Y',250,2)
;

-- 14 de out de 2020 18:23:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129989,'GLP Container',1120405,1132625,'Y',2,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','522b8a06-1785-4c4f-bc37-53a199ca51f4','Y',260,2)
;

-- 14 de out de 2020 18:23:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129990,'NFe ID','Identification of NFe',1120405,1132626,'Y',44,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cea2c227-75a5-45ec-9d40-85a1a5f5033e','Y',270,2)
;

-- 14 de out de 2020 18:23:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129991,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120405,1132589,'Y',1,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-14 18:23:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:23:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e166ee42-40a0-4f11-bb63-8910aefea450','Y',280,2,2)
;

-- 14 de out de 2020 18:25:51 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129991
;

-- 14 de out de 2020 18:25:51 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129969
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129965
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129967
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129968
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129966
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129970
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129971
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129978
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129972
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129973
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129976
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129977
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129974
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129975
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129980
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129979
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129981
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129982
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129983
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129984
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129985
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129986
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129987
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129988
;

-- 14 de out de 2020 18:25:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129989
;

-- 14 de out de 2020 18:25:53 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129990
;

-- 14 de out de 2020 18:25:53 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129964
;

-- 14 de out de 2020 18:26:05 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120369,'i-SIMP','W',1120168,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:26:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:26:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','ece7a499-b4f5-4b0a-bdc3-3c8abd5c0b9c')
;

-- 14 de out de 2020 18:26:05 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120369, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120369)
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 14 de out de 2020 18:26:14 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120369
;

-- 14 de out de 2020 18:26:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 14 de out de 2020 18:26:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 14 de out de 2020 18:26:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 14 de out de 2020 18:26:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 14 de out de 2020 18:32:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123210,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SIMP_UU','LBR_SIMP_UU',NULL,NULL,'LBR_SIMP_UU','LBRA','e584e517-9b29-4b9c-baa3-c20d2bad3a4a')
;

-- 14 de out de 2020 18:32:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132628,0,'LBR_SIMP_UU',1120698,'LBR_SIMP_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:32:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:32:47','YYYY-MM-DD HH24:MI:SS'),100,1123210,'N','N','LBRA','N','N','N','Y','c023545d-aebd-45e0-8381-3b99125907e9','N',0,'N','N','N','N')
;

-- 14 de out de 2020 18:33:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123211,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:33:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:33:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SIMPLine_UU','LBR_SIMPLine_UU',NULL,NULL,'LBR_SIMPLine_UU','LBRA','8de64848-89f4-42a3-8521-bc3ad95ffb56')
;

-- 14 de out de 2020 18:33:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132629,0,'LBR_SIMPLine_UU',1120699,'LBR_SIMPLine_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:33:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:33:20','YYYY-MM-DD HH24:MI:SS'),100,1123211,'N','N','LBRA','N','N','N','Y','91eafecf-f89d-496a-9828-f84ccba1443e','N',0,'N','N','N')
;

-- 14 de out de 2020 18:33:27 BRT
CREATE TABLE LBR_SIMPLine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CNPJF VARCHAR(18) DEFAULT NULL , LBR_FreightCostRule CHAR(1) DEFAULT NULL , LBR_GLPContainer VARCHAR(2) DEFAULT NULL , LBR_InstallCode1 VARCHAR(7) DEFAULT NULL , LBR_InstallCode2 VARCHAR(7) DEFAULT NULL , LBR_LI VARCHAR(10) DEFAULT NULL , LBR_PhysicalChar VARCHAR(3) DEFAULT NULL , LBR_PipelineCode VARCHAR(7) DEFAULT NULL , LBR_SIMPLine_ID NUMERIC(10) NOT NULL, LBR_SIMPLine_UU VARCHAR(36) DEFAULT NULL , LBR_SIMP_ID NUMERIC(10) DEFAULT NULL , LBR_TranspModal CHAR(1) DEFAULT NULL , Line NUMERIC(10) NOT NULL, Method VARCHAR(3) DEFAULT NULL , Operation VARCHAR(7) DEFAULT NULL , Price NUMERIC DEFAULT NULL , ProductValue VARCHAR(9) DEFAULT NULL , Qty NUMERIC DEFAULT NULL , Result VARCHAR(10) DEFAULT NULL , SelectedProductValue VARCHAR(9) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_CNAE VARCHAR(10) DEFAULT NULL , lbr_CityCode NUMERIC(10) DEFAULT NULL , lbr_CountryCode VARCHAR(5) DEFAULT NULL , lbr_DI VARCHAR(10) DEFAULT NULL , lbr_NFENo VARCHAR(7) DEFAULT NULL , lbr_NFSerie VARCHAR(2) DEFAULT NULL , lbr_NFeID VARCHAR(44) DEFAULT NULL , lbr_ServiceCode CHAR(1) DEFAULT NULL , CONSTRAINT LBR_SIMPLine_Key PRIMARY KEY (LBR_SIMPLine_ID), CONSTRAINT LBR_SIMPLine_UU_idx UNIQUE (LBR_SIMPLine_UU))
;

-- 14 de out de 2020 18:33:35 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSIMP', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-14 18:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132595
;

-- 14 de out de 2020 18:33:35 BRT
CREATE TABLE LBR_SIMP (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Period_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR(2) DEFAULT 'DR', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ChemicalAgent VARCHAR(10) DEFAULT NULL , LBR_InstallCode1 VARCHAR(7) DEFAULT NULL , LBR_InstallCode2 VARCHAR(7) DEFAULT NULL , LBR_SIMP_ID NUMERIC(10) NOT NULL, LBR_SIMP_UU VARCHAR(36) DEFAULT NULL , Processed CHAR(1) DEFAULT NULL CHECK (Processed IN ('Y','N')), Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_SIMP_Key PRIMARY KEY (LBR_SIMP_ID), CONSTRAINT LBR_SIMP_UU_idx UNIQUE (LBR_SIMP_UU))
;

-- 14 de out de 2020 18:33:35 BRT
ALTER TABLE LBR_SIMP ADD CONSTRAINT CPeriod_LBRSIMP FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de out de 2020 18:34:52 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:34:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129960
;

-- 14 de out de 2020 18:34:58 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129957
;

-- 14 de out de 2020 18:35:03 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129953
;

-- 14 de out de 2020 18:35:07 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-14 18:35:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129955
;

-- 14 de out de 2020 18:37:53 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,Priority,WorkingTime,"limit",Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,ValidateWorkflow,AD_Table_ID,Value,WorkflowType,IsValid,SetupTime,MovingTime,DocumentNo,QtyBatchSize,QueuingTime,IsBetaFunctionality,Yield,UnitsCycles,OverlapUnits,AD_Workflow_UU) VALUES ('Process_LBR_SIMP','(Standard Process SIMP)',1120034,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:37:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:37:53','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','Kenos Ltda',0,0,0,0,0,0,'D',0,'R','N','N',1120698,'Process_LBR_SIMP','P','N',0,0,'10000001',1,0,'N',100,0,0,'3da4f85a-5a28-4793-bf6a-9d122805f0e6')
;

-- 14 de out de 2020 18:38:18 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120132,'(DocAuto)',1120034,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:38:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:38:17','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'1e084f6b-0f71-4b5c-ad11-7838083cbb24',200000)
;

-- 14 de out de 2020 18:38:36 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120133,'(DocComplete)',1120034,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:38:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:38:36','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocComplete)',0,'N','N',0,0,100,'1d237de2-82bc-45ac-99ab-3866f5b30586',200000)
;

-- 14 de out de 2020 18:38:56 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120134,'(DocPrepare)',1120034,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:38:56','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'2d154dec-0927-45af-9b3c-fc6c42c29bff',200000)
;

-- 14 de out de 2020 18:39:06 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120135,'(Start)',1120034,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:39:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:39:06','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'U',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'4a0e0e87-a528-4e94-a466-8e2e72dcca45',200000)
;

-- 14 de out de 2020 18:39:21 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120135,'Y',TO_TIMESTAMP('2020-10-14 18:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:39:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120132,'U',10,1120082,'N','160015fd-bbc0-498f-99a4-cc9ffc668f30')
;

-- 14 de out de 2020 18:39:28 BRT
UPDATE AD_WF_NodeNext SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-14 18:39:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=1120082
;

-- 14 de out de 2020 18:39:35 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120135,'Y',TO_TIMESTAMP('2020-10-14 18:39:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:39:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120134,'LBRA',999,1120083,'N','2cbfa611-bbe3-4b5d-b722-593edda68bd5')
;

-- 14 de out de 2020 18:39:50 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120134,'Y',TO_TIMESTAMP('2020-10-14 18:39:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:39:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120133,'LBRA',10,1120084,'N','4c110b25-f9fe-4fe5-a546-8a9e12c7c350')
;

-- 14 de out de 2020 18:40:11 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120135, IsValid='Y',Updated=TO_TIMESTAMP('2020-10-14 18:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120034
;

-- 14 de out de 2020 18:40:21 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120255,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:40:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Process LBR_SIMP','N','LBR_SIMP Process','N','3','LBRA',0,0,1120034,'N','N','Y','N','96b51dde-234e-4c60-a05d-c48168400804','P')
;

-- 14 de out de 2020 18:40:40 BRT
UPDATE AD_Column SET AD_Process_ID=1120255,Updated=TO_TIMESTAMP('2020-10-14 18:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132593
;

-- 15 de out de 2020 07:21:04 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120701,'Fuel Operation','LBR_FuelOperation',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','U','N','Y','L','N','Y','4a169bc0-e59e-4bee-807d-afeec8f58839','N','N','N','N')
;

-- 14 de out de 2020 18:32:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123212,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FuelOperation_ID','LBR_FuelOperation_ID',NULL,NULL,'LBR_FuelOperation_ID','LBRA','46f340f6-1f22-4bfd-9ff9-bbed15fdd9fd')
;

-- 14 de out de 2020 18:32:34 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123213,0,0,'Y',TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-14 18:32:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FuelOperation_UU','LBR_FuelOperation_UU',NULL,NULL,'LBR_FuelOperation_UU','LBRA','6823ef07-7644-4ffb-b402-1a28540724c6')
;

-- 15 de out de 2020 07:21:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132640,0.0,'Fuel Operation',1120701,'LBR_FuelOperation_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:20','YYYY-MM-DD HH24:MI:SS'),100,1123212,'N','N','LBRA','N','7ca5bef5-0d90-4305-b171-dfdaf16b5cea','N')
;

-- 15 de out de 2020 07:21:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132641,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120701,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:21','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','b5a69617-6e5b-47b0-adbd-dc9acffeba01','N','D')
;

-- 15 de out de 2020 07:21:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132642,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120701,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:21','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','cb974d21-0f69-4f35-9caa-afd39c16a2c3','N','D')
;

-- 15 de out de 2020 07:21:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132643,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120701,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','b309f232-88b5-4265-8ea1-69ca7d14230c','N')
;

-- 15 de out de 2020 07:21:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132644,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120701,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','51da46fd-84bc-4ede-9a2d-168d09366e42','N','D')
;

-- 15 de out de 2020 07:21:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132645,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120701,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:22','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','7f905a1e-8b99-4527-b8f8-fb0a58464ab4','N')
;

-- 15 de out de 2020 07:21:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132646,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120701,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:23','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','5817fed7-de64-40e3-aac5-b938bb7f4dd5','N')
;

-- 15 de out de 2020 07:21:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132647,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120701,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:21:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:21:23','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','ea916ac7-64c8-4d05-a6d5-5d29f9740cf4','N','D')
;

-- 15 de out de 2020 07:22:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132648,0,'LBR_FuelOperation_UU',1120701,'LBR_FuelOperation_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:22:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:22:10','YYYY-MM-DD HH24:MI:SS'),100,1123213,'N','N','LBRA','N','N','N','Y','ad321079-fb0a-430f-b387-acc466b1eeaf','N',0,'N','N','N','N')
;

-- 15 de out de 2020 07:22:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132649,0,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120701,'Type',2,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:22:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:22:36','YYYY-MM-DD HH24:MI:SS'),100,600,'Y','N','LBRA','N','N','N','Y','eb57a841-d567-44f9-9113-f87e009a27a9','Y',0,'N','N','N')
;

-- 15 de out de 2020 07:23:06 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123214,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:22:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:22:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Finality','Finality',NULL,NULL,'Finality','LBRA','679c8754-d1b3-499f-8ffd-85975ba01a27')
;

-- 15 de out de 2020 07:23:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132650,0,'Finality',1120701,'LBR_Finality',2,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:23:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:23:17','YYYY-MM-DD HH24:MI:SS'),100,1123214,'Y','N','LBRA','N','N','N','Y','7eb17944-9f36-40fd-8ab0-f5be3ec98121','Y',0,'N','N','N','N')
;

-- 15 de out de 2020 07:23:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132651,0,'Classification','Classification for grouping','The Classification can be used to optionally group products.',1120701,'Classification',5,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:23:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:23:50','YYYY-MM-DD HH24:MI:SS'),100,852,'N','N','LBRA','N','N','N','Y','bc81f120-1cbc-47a7-afba-96f9f275fbc3','Y',0,'N','N','N')
;

-- 15 de out de 2020 07:24:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132652,0,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120701,'SeqNo',22,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:24:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:24:23','YYYY-MM-DD HH24:MI:SS'),100,566,'Y','N','LBRA','N','N','N','Y','500b2068-5707-46f8-894d-2e26ceb8f145','Y',0,'N','N','N')
;

-- 15 de out de 2020 07:24:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132653,0,'Value','Numeric Value',1120701,'ValueNumber',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:24:36','YYYY-MM-DD HH24:MI:SS'),100,2579,'Y','N','LBRA','N','N','N','Y','b2ad8591-ef2a-4b48-8d8a-9459d5a569a0','Y',0,'N','N','N','N')
;

-- 15 de out de 2020 07:25:12 BRT
UPDATE AD_Column SET Name='Search Key', Description='Search key for the record in the format required - must be unique', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', ColumnName='Value', FieldLength=7, AD_Reference_ID=10, AD_Element_ID=620, IsSelectionColumn='Y', SeqNoSelection=10, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:25:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132653
;

-- 15 de out de 2020 07:25:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132654,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120701,'Name',180,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:25:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:25:45','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','d143a0f3-677d-4542-a4e3-c3ec12f06c5f','Y',20,'N','N','N')
;

-- 15 de out de 2020 07:28:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132655,0,'Fuel Operation',1120699,'LBR_FuelOperation_ID',10,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:28:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:28:02','YYYY-MM-DD HH24:MI:SS'),100,1123212,'N','N','LBRA','N','N','N','Y','7fe56db3-1528-404c-b113-c870c4ed7072','Y',0,'N','N','N','N')
;

-- 15 de out de 2020 07:28:48 BRT
UPDATE AD_Column SET AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132601
;

-- 15 de out de 2020 07:29:08 BRT
ALTER TABLE LBR_SIMPLine ADD COLUMN LBR_FuelOperation_ID NUMERIC(10) NOT NULL
;

-- 15 de out de 2020 07:29:32 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 07:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132653
;

-- 15 de out de 2020 07:29:41 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 07:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132649
;

-- 15 de out de 2020 07:29:45 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 07:29:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132652
;

-- 15 de out de 2020 07:29:52 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 07:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132654
;

-- 15 de out de 2020 07:30:00 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 07:30:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132650
;

-- 15 de out de 2020 07:30:11 BRT
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-15 07:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132651
;

-- 15 de out de 2020 07:32:22 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120169,'Fuel Operation',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:22','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','217c83fb-b268-4ec0-ab20-8332d2c98e84')
;

-- 15 de out de 2020 07:32:44 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120406,'Operation',1120169,10,'Y',1120701,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:44','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','e389ec77-3a0b-4705-9e3e-46043034b002','B')
;

-- 15 de out de 2020 07:32:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129992,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120406,1132641,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6dffea87-abc4-4c26-915f-54a9584c821d','N',2)
;

-- 15 de out de 2020 07:32:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129993,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120406,1132642,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','31811aaa-9395-46d9-8cd2-d0a010932d94','Y','Y',10,4,2)
;

-- 15 de out de 2020 07:32:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129994,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120406,1132653,'Y',7,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a35d91e-8fbf-48c3-86c3-9a2093ba1aee','Y',20,2)
;

-- 15 de out de 2020 07:32:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129995,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120406,1132654,'Y',180,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d7531080-6ed3-4905-95e2-6f0dcf12a925','Y',30,5)
;

-- 15 de out de 2020 07:32:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129996,'Fuel Operation',1120406,1132640,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','43c81501-05b2-4a53-ab93-62714918428b','N',2)
;

-- 15 de out de 2020 07:32:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129997,'LBR_FuelOperation_UU',1120406,1132648,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c78e1b24-f361-4c5e-90ed-cbf4f8f2a137','N',2)
;

-- 15 de out de 2020 07:32:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129998,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120406,1132649,'Y',2,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','648fff51-53e3-43f9-8ea1-5ea1b3f35e53','Y',40,2)
;

-- 15 de out de 2020 07:32:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129999,'Finality',1120406,1132650,'Y',2,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e2d67c7a-dfb5-49c5-9bf0-25fd450ae42d','Y',50,2)
;

-- 15 de out de 2020 07:32:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130000,'Classification','Classification for grouping','The Classification can be used to optionally group products.',1120406,1132651,'Y',5,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','48ae5140-9446-4f4c-ba5f-c147457050cc','Y',60,2)
;

-- 15 de out de 2020 07:32:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130001,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120406,1132652,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cee40030-686e-45d8-9562-0e2c15132059','Y',70,2)
;

-- 15 de out de 2020 07:32:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130002,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120406,1132645,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:32:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0ca9757d-21e9-4a59-b4fa-f26b31c95b80','Y',80,2,2)
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130002
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129995
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129998
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129999
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130000
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130001
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129996
;

-- 15 de out de 2020 07:33:29 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129997
;

-- 15 de out de 2020 07:33:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132656,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120701,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:33:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:33:46','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','5970e408-6762-434d-a60c-8e96798704eb','Y',0,'N','N','N')
;

-- 15 de out de 2020 07:33:49 BRT
CREATE TABLE LBR_FuelOperation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Classification NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_Finality NUMERIC(10) NOT NULL, LBR_FuelOperation_ID NUMERIC(10) NOT NULL, LBR_FuelOperation_UU VARCHAR(36) DEFAULT NULL , Name VARCHAR(180) NOT NULL, SeqNo NUMERIC(10) NOT NULL, Type NUMERIC(10) NOT NULL, Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP DEFAULT NULL , Value VARCHAR(7) NOT NULL, CONSTRAINT LBR_FuelOperation_Key PRIMARY KEY (LBR_FuelOperation_ID), CONSTRAINT LBR_FuelOperation_UU_idx UNIQUE (LBR_FuelOperation_UU))
;

-- 15 de out de 2020 07:34:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132657,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120701,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:34:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:34:08','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','17ccabe0-afee-46b7-b906-6a4d6664a7f2','Y',0,'N','N','N')
;

-- 15 de out de 2020 07:34:10 BRT
ALTER TABLE LBR_FuelOperation ADD COLUMN ValidTo TIMESTAMP DEFAULT NULL 
;

-- 15 de out de 2020 07:34:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130003,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120406,1132656,'Y',7,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:34:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:34:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d1de65dc-d24b-44b6-bd1b-12fd9949f1ee','Y',90,2)
;

-- 15 de out de 2020 07:34:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130004,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120406,1132657,'Y',7,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:34:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:34:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','473fa834-af00-47fd-a1c1-a7c8cb40297b','Y',100,2)
;

-- 15 de out de 2020 07:34:44 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:34:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130004
;

-- 15 de out de 2020 07:34:59 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120370,'Fuel Operation','W',1120169,0,0,'Y',TO_TIMESTAMP('2020-10-15 07:34:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:34:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','6d1dc097-c9a4-4c80-84c2-d4aa26bcc18e')
;

-- 15 de out de 2020 07:34:59 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120370, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120370)
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120370
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 15 de out de 2020 07:35:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120370
;

-- 15 de out de 2020 07:35:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120369
;

-- 15 de out de 2020 07:36:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130005,'LBR_SIMPLine_UU',1120405,1132629,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:36:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:36:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2af84408-e420-47be-900e-27ddbecf5d69','N',2)
;

-- 15 de out de 2020 07:36:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130006,'Fuel Operation',1120405,1132655,'Y',10,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 07:36:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 07:36:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78497ef6-48cc-4f02-8d70-10d32fa77964','Y',290,2)
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130006
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129966
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129984
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129985
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129986
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129987
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129988
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129989
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129990
;

-- 15 de out de 2020 07:37:10 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 07:37:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130005
;

-- 15 de out de 2020 07:45:22 BRT
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-15 07:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120701
;

-- 15 de out de 2020 07:47:17 BRT
UPDATE AD_Ref_List SET Name='ABNT/NBR 14533 (2)',Updated=TO_TIMESTAMP('2020-10-15 07:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122717
;

-- 15 de out de 2020 10:52:31 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120702,'Fuel Installation','LBR_FuelInstallation',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','U','N','Y','L','N','Y','69281651-2f5f-475e-856e-d530a02e6e73','N','N','N','N')
;

-- 15 de out de 2020 10:52:31 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_FuelInstallation',1000000,'N','N','Table LBR_FuelInstallation','Y','Y',0,0,TO_TIMESTAMP('2020-10-15 10:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:31','YYYY-MM-DD HH24:MI:SS'),100,1153948,'Y',1000000,1,200000,'bedb1c53-c609-40f4-9dc7-ecb1140e50df')
;

-- 15 de out de 2020 10:52:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123215,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FuelInstallation_ID','Fuel Installation','Fuel Installation','LBRA','0973bf6d-9595-4e50-973f-29ea993cbcaf')
;

-- 15 de out de 2020 10:52:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132658,0.0,'Fuel Installation',1120702,'LBR_FuelInstallation_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:39','YYYY-MM-DD HH24:MI:SS'),100,1123215,'N','N','LBRA','N','fb4a47e1-8195-48af-a4fe-ff10632c34bd','N')
;

-- 15 de out de 2020 10:52:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132659,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120702,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','bcccf1c8-4b2b-4b87-89ba-bcd24fab63cb','N','D')
;

-- 15 de out de 2020 10:52:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132660,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120702,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e2483ecd-6619-4ebb-8180-cf659a25e9fd','N','D')
;

-- 15 de out de 2020 10:52:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132661,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120702,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:40','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','373d42f2-89c8-40da-8922-99cc039f0987','N')
;

-- 15 de out de 2020 10:52:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132662,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120702,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','7971cf1c-afb8-476c-a66f-964882b43d76','N','D')
;

-- 15 de out de 2020 10:52:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132663,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120702,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','a42ca9a1-038c-4e5d-a5d6-1cfe3d9de574','N')
;

-- 15 de out de 2020 10:52:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132664,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120702,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:41','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','b5ea00ee-b153-4c57-8473-70a0c195acfd','N')
;

-- 15 de out de 2020 10:52:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132665,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120702,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:42','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','ebc638de-ae6b-47b2-ae82-9f9974eee9f1','N','D')
;

-- 15 de out de 2020 10:53:02 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123216,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:52:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FuelInstallation_UU','LBR_FuelInstallation_UU',NULL,NULL,'LBR_FuelInstallation_UU','LBRA','2de04440-1090-43b6-885c-7063892457f4')
;

-- 15 de out de 2020 10:53:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132666,0,'LBR_FuelInstallation_UU',1120702,'LBR_FuelInstallation_UU',36,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:53:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:53:05','YYYY-MM-DD HH24:MI:SS'),100,1123216,'N','N','LBRA','N','N','N','Y','044c8ada-cd1b-45f5-8c98-25bf0a04b732','N',0,'N','N','N','N')
;

-- 15 de out de 2020 10:53:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132667,0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120702,'Value',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:53:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:53:50','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','N','N','N','Y','915c941f-a435-463b-8035-ccbad793562d','Y',10,'N','N','N')
;

-- 15 de out de 2020 10:53:54 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-15 10:53:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132667
;

-- 15 de out de 2020 10:54:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132668,0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120702,'lbr_CNPJ',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:54:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:54:12','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','N','N','N','Y','2f91308e-a43e-4b0a-805c-d5471cbfd5fe','Y',0,'N','N','N')
;

-- 15 de out de 2020 10:54:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132669,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120702,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:54:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:54:27','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','0cdfe657-9633-4606-9112-f9259fbb43ca','Y',0,'N','N','N')
;

-- 15 de out de 2020 10:54:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132670,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120702,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:54:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:54:33','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','24472189-4b78-4b81-901c-7452442322ae','Y',0,'N','N','N')
;

-- 15 de out de 2020 10:54:41 BRT
CREATE TABLE LBR_FuelInstallation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_FuelInstallation_ID NUMERIC(10) NOT NULL, LBR_FuelInstallation_UU VARCHAR(36) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP DEFAULT NULL , ValidTo TIMESTAMP DEFAULT NULL , Value VARCHAR(40) NOT NULL, lbr_CNPJ VARCHAR(18) DEFAULT NULL , CONSTRAINT LBR_FuelInstallation_Key PRIMARY KEY (LBR_FuelInstallation_ID), CONSTRAINT LBR_FuelInstallation_UU_idx UNIQUE (LBR_FuelInstallation_UU))
;

-- 15 de out de 2020 10:55:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132671,0,'Fuel Installation',1120699,'LBR_FuelInstallation_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:55:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:55:25','YYYY-MM-DD HH24:MI:SS'),100,1123215,'N','N','LBRA','N','N','N','Y','44bca788-a166-445a-b4de-4af455d7e7c7','Y',0,'N','N','N','N')
;

-- 15 de out de 2020 10:55:29 BRT
UPDATE AD_Column SET FKConstraintName='LBRFuelInstallation_LBRSIMPLin', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-15 10:55:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132671
;

-- 15 de out de 2020 10:55:29 BRT
ALTER TABLE LBR_SIMPLine ADD COLUMN LBR_FuelInstallation_ID NUMERIC(10) DEFAULT NULL 
;

-- 15 de out de 2020 10:55:29 BRT
ALTER TABLE LBR_SIMPLine ADD CONSTRAINT LBRFuelInstallation_LBRSIMPLin FOREIGN KEY (LBR_FuelInstallation_ID) REFERENCES lbr_fuelinstallation(lbr_fuelinstallation_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de out de 2020 10:55:50 BRT
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-15 10:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120702
;

-- 15 de out de 2020 10:56:12 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120170,'Fuel Installation','Fuel Installation',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:12','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','0c082e7f-d59e-45bd-a6e2-1b0aa86f4521')
;

-- 15 de out de 2020 10:56:23 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120407,'Fuel Installation',1120170,10,'Y',1120702,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:22','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','d17b388c-fbba-40e6-abac-5c2c271fbd23','B')
;

-- 15 de out de 2020 10:56:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130007,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120407,1132659,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e95a102f-42a7-4841-8199-d05048e4ff92','N',2)
;

-- 15 de out de 2020 10:56:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130008,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120407,1132660,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','05a854c4-64d1-4cdb-90c7-c6096c8f4a6a','Y','Y',10,4,2)
;

-- 15 de out de 2020 10:56:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130009,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120407,1132667,'Y',40,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','283de874-8744-4dcb-a327-d74492e5397b','Y',20,2)
;

-- 15 de out de 2020 10:56:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130010,'Fuel Installation',1120407,1132658,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2ae0d39c-90a2-443d-95ad-741041da2ee5','N',2)
;

-- 15 de out de 2020 10:56:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130011,'LBR_FuelInstallation_UU',1120407,1132666,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1d748344-c93b-4504-84fc-9184d7c1e1f6','N',2)
;

-- 15 de out de 2020 10:56:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130012,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120407,1132668,'Y',18,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','11072b7c-e1f8-4bc9-a29f-e04300a4ebf2','Y',30,2)
;

-- 15 de out de 2020 10:56:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130013,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120407,1132669,'Y',7,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13f13aef-202f-4bb5-9d02-f5fe8d300911','Y',40,2)
;

-- 15 de out de 2020 10:56:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130014,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120407,1132670,'Y',7,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','03c0d0d4-249a-4501-803c-82b78ae65ac0','Y',50,2)
;

-- 15 de out de 2020 10:56:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130015,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120407,1132663,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 10:56:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:56:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2a8dc3d-125d-4ffb-9bd4-b50f96aee4e6','Y',60,2,2)
;

-- 15 de out de 2020 10:57:39 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 10:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130012
;

-- 15 de out de 2020 10:57:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 10:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130009
;

-- 15 de out de 2020 10:57:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 10:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130014
;

-- 15 de out de 2020 10:57:39 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 10:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130010
;

-- 15 de out de 2020 10:57:39 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 10:57:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130011
;

-- 15 de out de 2020 10:58:05 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120371,'Fuel Installation','W',1120170,0,0,'Y',TO_TIMESTAMP('2020-10-15 10:58:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 10:58:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','fb5224bc-959a-4c4d-9b92-7b43166d469d')
;

-- 15 de out de 2020 10:58:05 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120371, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120371)
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120371
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120370
;

-- 15 de out de 2020 10:58:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120369
;

-- 15 de out de 2020 14:02:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123217,0,0,'Y',TO_TIMESTAMP('2020-10-15 14:01:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 14:01:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CityCodeANP','ANP City Code',NULL,NULL,'ANP City Code','LBRA','f1025121-b12c-4518-83ef-0d2283abf68b')
;

-- 15 de out de 2020 14:02:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132672,0,'ANP City Code',186,'LBR_CityCodeANP',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2020-10-15 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,1123217,'Y','N','LBRA','N','N','N','Y','f0955948-ee1a-4fc3-b728-b5fad92e630d','Y',0,'N','N','N')
;

-- 15 de out de 2020 14:02:36 BRT
ALTER TABLE C_City ADD COLUMN LBR_CityCodeANP NUMERIC(10) DEFAULT NULL 
;

