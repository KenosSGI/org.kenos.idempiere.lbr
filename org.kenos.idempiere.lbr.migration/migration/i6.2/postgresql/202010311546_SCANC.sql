-- 30 de out de 2020 11:04:48 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120703,'SCANC','LBR_SCANC',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:04:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:04:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','U','N','Y','L','N','Y','85f1beb9-a319-4d1b-9ef0-c0469dfa3333','N','N','N','N')
;

-- 30 de out de 2020 11:04:49 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SCANC',1000000,'N','N','Table LBR_SCANC','Y','Y',0,0,TO_TIMESTAMP('2020-10-30 11:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:04:48','YYYY-MM-DD HH24:MI:SS'),100,1153949,'Y',1000000,1,200000,'0a258e5a-a3be-4655-a226-83419d9ce8ee')
;

-- 30 de out de 2020 11:05:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132675,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120703,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','31dd22a1-c6b0-4dc8-8cf0-92ad7f027f39','N','D')
;

-- 30 de out de 2020 11:05:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132676,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120703,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e190877f-1815-4048-9f2b-2e036e8194ba','N','D')
;

-- 30 de out de 2020 11:05:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132677,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120703,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','be7a7f11-6a36-46a0-a961-72da2d917737','N')
;

-- 30 de out de 2020 11:05:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132678,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120703,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','b2f5286f-5ddf-4954-ba26-8f5088f9567f','N','D')
;

-- 30 de out de 2020 11:05:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132679,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120703,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:49','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','c91c84fb-45af-4476-8280-b6ed57548b85','N')
;

-- 30 de out de 2020 11:05:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123219,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_ID','SCANC','SCANC','LBRA','a390fa26-2496-4f35-b64d-40b867859419')
;

-- 30 de out de 2020 11:05:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132680,0.0,'SCANC',1120703,'LBR_SCANC_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,1123219,'N','N','LBRA','N','206f7e44-44f9-440f-b326-fb04348d8f75','N')
;

-- 30 de out de 2020 11:05:51 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123220,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_UU','LBR_SCANC_UU','LBR_SCANC_UU','LBRA','bf3eb3a2-79e5-451a-9c58-6c19b7ba3456')
;

-- 30 de out de 2020 11:05:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132681,0.0,'LBR_SCANC_UU',1120703,'LBR_SCANC_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:50','YYYY-MM-DD HH24:MI:SS'),100,1123220,'N','N','LBRA','N','3cce83aa-2e51-4aa6-8f81-487b09691101','N')
;

-- 30 de out de 2020 11:05:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1132682,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120703,'Name',180,'N','N','Y','N','Y','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:51','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','58fb6a7e-3487-493f-9dcc-12d7e213d9c7',10,'N')
;

-- 30 de out de 2020 11:05:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132683,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120703,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','fadf6cea-1d3f-43a2-9914-b606444ad5d5','N')
;

-- 30 de out de 2020 11:05:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132684,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120703,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','ab3b75fb-abb4-4bcc-8491-d588919f1a97','N','D')
;

-- 30 de out de 2020 11:05:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1132685,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120703,'Value',7,'N','N','Y','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:52','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','N','0446223c-bbe4-4826-adc3-71770fce760d',20,'N')
;

-- 30 de out de 2020 11:05:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132686,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120703,'DateDoc',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:53','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','550f1f27-bfa9-4548-8675-54e69b5727e6','N')
;

-- 30 de out de 2020 11:05:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132687,0.0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120703,'C_Period_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:05:53','YYYY-MM-DD HH24:MI:SS'),100,206,'N','N','LBRA','N','f463de2b-db9c-4ca1-8453-9b0b22c23159','N')
;

-- 30 de out de 2020 11:06:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132688,0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120703,'lbr_CNPJ',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:06:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:06:21','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','N','N','N','Y','d0a6f1b8-02d1-470b-bf87-d2b14ca90c3a','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:06:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132689,0,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120703,'lbr_CPF',14,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:06:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:06:29','YYYY-MM-DD HH24:MI:SS'),100,1000010,'Y','N','LBRA','N','N','N','Y','b4752443-3cd0-468b-afb5-8f3efa0752d4','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:06:37 BRT
UPDATE AD_Column SET Name='IE', Description='Used to Identify the IE (State Tax ID)', Help='Used to Identify the IE (State Tax ID)', ColumnName='lbr_IE', FieldLength=30, AD_Element_ID=1000014, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2020-10-30 11:06:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132689
;

-- 30 de out de 2020 11:06:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132690,0,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120703,'RegionName',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:06:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:06:49','YYYY-MM-DD HH24:MI:SS'),100,541,'N','Y','LBRA','N','N','N','Y','5ede2c14-ba8e-4024-a7b5-3eaa1b690238','Y',30,'N','N','N')
;

-- 30 de out de 2020 11:07:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132691,0,'Legal Entity',1120703,'lbr_LegalEntity',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:07:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:07:08','YYYY-MM-DD HH24:MI:SS'),100,1100005,'N','N','LBRA','N','N','N','Y','2dd66684-7134-48e0-a189-7cf0bc995707','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 11:08:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132692,0,'Region To',1120703,'LBR_RegionTo',1,'N','N','N','N','N',0,'N',17,1120244,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:08:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:08:24','YYYY-MM-DD HH24:MI:SS'),100,1122216,'Y','N','LBRA','N','N','N','Y','7c1e6e96-0275-4bbf-bfa7-a8c9948dac33','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:09:12 BRT
UPDATE AD_Column SET FieldLength=2, AD_Reference_ID=17, AD_Reference_Value_ID=1120244,Updated=TO_TIMESTAMP('2020-10-30 11:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132690
;

-- 30 de out de 2020 11:10:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132693,0,'BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books','BP IE - Copied from the BP into Brazilan Legal and Tax Books',1120703,'lbr_BPIE',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:10:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:10:02','YYYY-MM-DD HH24:MI:SS'),100,1000188,'N','N','LBRA','N','N','N','Y','b372a839-1893-4cd6-a8ff-a668e6d6c36b','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:12:14 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBRSCANC', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 11:12:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132687
;

-- 30 de out de 2020 11:12:14 BRT
CREATE TABLE LBR_SCANC (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Period_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_RegionTo CHAR(1) DEFAULT NULL , LBR_SCANC_ID NUMERIC(10) NOT NULL, LBR_SCANC_UU VARCHAR(36) DEFAULT NULL , Name VARCHAR(180) NOT NULL, RegionName VARCHAR(2) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(7) NOT NULL, lbr_BPIE VARCHAR(30) DEFAULT NULL , lbr_CNPJ VARCHAR(18) DEFAULT NULL , lbr_IE VARCHAR(30) DEFAULT NULL , lbr_LegalEntity VARCHAR(60) DEFAULT NULL , CONSTRAINT LBR_SCANC_Key PRIMARY KEY (LBR_SCANC_ID), CONSTRAINT LBR_SCANC_UU_idx UNIQUE (LBR_SCANC_UU))
;

-- 30 de out de 2020 11:12:14 BRT
ALTER TABLE LBR_SCANC ADD CONSTRAINT CPeriod_LBRSCANC FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 11:12:27 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120704,'SCANC BP','LBR_SCANC_BP',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','U','N','Y','L','N','Y','1642f9ae-eb60-4ea1-938a-aac890d66457','N','N','N','N')
;

-- 30 de out de 2020 11:12:27 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SCANC_BP',1000000,'N','N','Table LBR_SCANC_BP','Y','Y',0,0,TO_TIMESTAMP('2020-10-30 11:12:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:27','YYYY-MM-DD HH24:MI:SS'),100,1153950,'Y',1000000,1,200000,'8e295ab6-9128-4269-b099-13e55b2d5c91')
;

-- 30 de out de 2020 11:12:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132694,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120704,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:33','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','147baf60-0efc-4a2b-9747-3b1f991dc6c2','N','D')
;

-- 30 de out de 2020 11:12:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132695,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120704,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:34','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','4b768f36-b03b-4637-8f84-ca50076edefd','N','D')
;

-- 30 de out de 2020 11:12:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132696,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120704,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:34','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','8734bbc0-0ed6-4a26-ace5-c2317ede2979','N')
;

-- 30 de out de 2020 11:12:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132697,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120704,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','78c3a34a-f1ca-4f32-a9d6-3b93df11f301','N','D')
;

-- 30 de out de 2020 11:12:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132698,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120704,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','2e140a14-dc27-436e-8b5b-56a62abb2c52','N')
;

-- 30 de out de 2020 11:12:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123221,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_BP_ID','SCANC BP','SCANC BP','LBRA','36017ce8-92c8-4534-8bae-a1fc80aedaab')
;

-- 30 de out de 2020 11:12:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132699,0.0,'SCANC BP',1120704,'LBR_SCANC_BP_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,1123221,'N','N','LBRA','N','4c304c8c-b43a-48c5-8ea8-7ab72e409d2e','N')
;

-- 30 de out de 2020 11:12:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123222,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_BP_UU','LBR_SCANC_BP_UU','LBR_SCANC_BP_UU','LBRA','0e456630-4c1d-46ad-bd26-b53dbaa7eb43')
;

-- 30 de out de 2020 11:12:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132700,0.0,'LBR_SCANC_BP_UU',1120704,'LBR_SCANC_BP_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:36','YYYY-MM-DD HH24:MI:SS'),100,1123222,'N','N','LBRA','N','5b2795c8-3c10-4f15-ac06-8887bc8d40d1','N')
;

-- 30 de out de 2020 11:12:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132701,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120704,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:37','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','8c706a09-fa7d-4e55-8773-fbf2bdccd88f','N')
;

-- 30 de out de 2020 11:12:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132702,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120704,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:12:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:12:37','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','d4b9f373-0a5c-43e1-a50e-788b47955bb6','N','D')
;

-- 30 de out de 2020 11:13:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132703,0,'CNPJ/CPF','CNPJ ou CPF do cliente',1120704,'LBR_CNPJF',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:13:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:13:09','YYYY-MM-DD HH24:MI:SS'),100,1122336,'Y','N','@C_BPartner_ID@!@#POS_BPartner_ID@ | @C_BPartner_ID@=0','LBRA','N','N','N','Y','17bde79c-7233-4b7b-b400-c4d6aeee9661','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:13:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132704,0,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120704,'lbr_IE',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:13:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:13:16','YYYY-MM-DD HH24:MI:SS'),100,1000014,'Y','N','LBRA','N','N','N','Y','faa391e9-89b4-4c18-849a-ecdb42a87ed5','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:13:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132705,0,'BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books','BP IE - Copied from the BP into Brazilan Legal and Tax Books',1120704,'lbr_BPIE',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:13:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:13:41','YYYY-MM-DD HH24:MI:SS'),100,1000188,'N','N','LBRA','N','N','N','Y','3831fcca-07a3-490c-a604-d6c6823c9e06','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:13:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132706,0,'Legal Entity',1120704,'lbr_LegalEntity',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:13:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:13:57','YYYY-MM-DD HH24:MI:SS'),100,1100005,'N','N','LBRA','N','N','N','Y','5cb756b4-c416-4979-966b-da7955121f2b','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 11:14:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132707,0,'Address',1120704,'Address',2147483647,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:14:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:14:27','YYYY-MM-DD HH24:MI:SS'),100,202241,'N','N','LBRA','N','N','N','Y','712af845-ae46-45a9-9e0f-541317704748','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:14:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132708,0,'Address 3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120704,'Address3',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:14:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:14:34','YYYY-MM-DD HH24:MI:SS'),100,2555,'N','N','LBRA','N','N','N','Y','4170e8bb-5621-4b62-b79e-d93205283f80','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:14:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132709,0,'City','Identifies a City','The City identifies a unique City for this Country or Region.',1120704,'City',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:14:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:14:46','YYYY-MM-DD HH24:MI:SS'),100,225,'N','N','LBRA','N','N','N','Y','740aabba-9fb6-40eb-99a2-39355b5c1609','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:14:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132710,0,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120704,'RegionName',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:14:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:14:54','YYYY-MM-DD HH24:MI:SS'),100,541,'N','Y','LBRA','N','N','N','Y','29b35605-66f7-42d7-bc1f-6c3d052936e8','Y',10,'N','N','N')
;

-- 30 de out de 2020 11:15:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132711,0,'ZIP','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.',1120704,'Postal',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:15:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:15:07','YYYY-MM-DD HH24:MI:SS'),100,512,'Y','N','LBRA','N','N','N','Y','14700e6a-8624-4301-a585-52201d0c6bc5','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:15:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132712,0,'EMail Address','Electronic Mail Address','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.',1120704,'EMail',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:15:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:15:22','YYYY-MM-DD HH24:MI:SS'),100,881,'Y','N','LBRA','N','N','N','Y','0faa1a2c-4da3-4d24-86f1-e87be24ea47a','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:16:29 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120372,'LBR_SCANC Category','L',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:16:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:16:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','846eb964-e0f6-461c-a798-2a858c9d402b')
;

-- 30 de out de 2020 11:16:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122870,'Armazenador',1120372,'ARM',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:16:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:16:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','71b0ddff-3ea5-4e5d-9fc5-80d0f21b5165')
;

-- 30 de out de 2020 11:17:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122871,'Consumidor Final',1120372,'CNF',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a8026b78-b29d-452a-8dc7-803564121bcc')
;

-- 30 de out de 2020 11:17:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122872,'Central Petroquímica',1120372,'CPQ',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:11','YYYY-MM-DD HH24:MI:SS'),100,'U','a225b9e1-aff4-4d63-95b7-ebaf857cec5a')
;

-- 30 de out de 2020 11:17:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122873,'Distribuidor',1120372,'DIS',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:18','YYYY-MM-DD HH24:MI:SS'),100,'U','c2784ab1-31c3-4dc4-a784-590cd64074a2')
;

-- 30 de out de 2020 11:17:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122874,'Formulador',1120372,'FOR',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:24','YYYY-MM-DD HH24:MI:SS'),100,'U','231cbaa5-3a4a-4ecc-8e37-6b8d58d82e75')
;

-- 30 de out de 2020 11:17:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122875,'Importador',1120372,'IMP',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,'U','2b8b2cf6-f54a-4d9e-9db5-64cfc429c7fb')
;

-- 30 de out de 2020 11:17:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122876,'Posto Varejista',1120372,'PRV',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:39','YYYY-MM-DD HH24:MI:SS'),100,'U','f8c76015-b112-4bd7-8e7d-1bb03ca0884c')
;

-- 30 de out de 2020 11:17:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122877,'Refinaria',1120372,'REF',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:17:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:17:49','YYYY-MM-DD HH24:MI:SS'),100,'U','766440fc-f1eb-433a-81f5-6fd82f6d7ca5')
;

-- 30 de out de 2020 11:18:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122878,'Transportador e Revendedor Retalhista',1120372,'TRR',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:18:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:18:03','YYYY-MM-DD HH24:MI:SS'),100,'U','9b45c208-feb8-40a7-af79-530d93f484ba')
;

-- 30 de out de 2020 11:18:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122879,'Usina',1120372,'USI',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:18:11','YYYY-MM-DD HH24:MI:SS'),100,'U','ed31f603-3450-438e-93b5-0265537d476c')
;

-- 30 de out de 2020 11:18:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122880,'Varejista de GLP',1120372,'VGL',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:18:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:18:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c69ab172-283d-4dd7-8548-1bcc4bead4b8')
;

-- 30 de out de 2020 11:18:26 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122879
;

-- 30 de out de 2020 11:18:34 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122877
;

-- 30 de out de 2020 11:18:38 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:18:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122876
;

-- 30 de out de 2020 11:18:41 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122875
;

-- 30 de out de 2020 11:18:44 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:18:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122874
;

-- 30 de out de 2020 11:19:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132713,0,'Category Type','Source of the Journal with this category','The Category Type indicates the source of the journal for this category.  Journals can be generated from a document, entered manually or imported.',1120704,'CategoryType',NULL,3,'N','N','N','N','N',0,'N',17,1120372,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:19:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:19:16','YYYY-MM-DD HH24:MI:SS'),100,1309,'Y','N','U','N','N','N','Y','9c702f3c-0644-4790-9f53-7baaac2b1e03','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:24:03 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120705,'SCANC NF','LBR_SCANC_NF',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','1fb05221-9c25-4a33-8be9-34b181b98489','N','N','N','N')
;

-- 30 de out de 2020 11:24:03 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SCANC_NF',1000000,'N','N','Table LBR_SCANC_NF','Y','Y',0,0,TO_TIMESTAMP('2020-10-30 11:24:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:03','YYYY-MM-DD HH24:MI:SS'),100,1153951,'Y',1000000,1,200000,'b51bf374-6be0-496e-94c3-b08a9d09500a')
;

-- 30 de out de 2020 11:24:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132714,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120705,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:12','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','14a1dee0-19f4-40ea-9263-04315658ff68','N','D')
;

-- 30 de out de 2020 11:24:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132715,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120705,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','101db3dd-e478-48e9-9a77-7f9f2e7eed71','N','D')
;

-- 30 de out de 2020 11:24:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132716,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120705,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','6458e643-c4ba-4eee-a16a-dd6f5b76a012','N')
;

-- 30 de out de 2020 11:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132717,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120705,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:13','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','d10e8d73-fc8f-4638-8494-e00eec31fb23','N','D')
;

-- 30 de out de 2020 11:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132718,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120705,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','1df6ee5a-8be1-4207-86f8-ee41d914f02a','N')
;

-- 30 de out de 2020 11:24:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123223,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_NF_ID','SCANC NF','SCANC NF','LBRA','91185218-4db1-4242-a43d-6f96a2f3a77f')
;

-- 30 de out de 2020 11:24:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132719,0.0,'SCANC NF',1120705,'LBR_SCANC_NF_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:14','YYYY-MM-DD HH24:MI:SS'),100,1123223,'N','N','LBRA','N','edfe2784-42e3-4a53-944f-ee1b9b445a25','N')
;

-- 30 de out de 2020 11:24:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123224,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_NF_UU','LBR_SCANC_NF_UU','LBR_SCANC_NF_UU','LBRA','ea680a1d-c4d5-49e0-a303-9b1e388cf0f9')
;

-- 30 de out de 2020 11:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132720,0.0,'LBR_SCANC_NF_UU',1120705,'LBR_SCANC_NF_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:15','YYYY-MM-DD HH24:MI:SS'),100,1123224,'N','N','LBRA','N','3e00d981-5e73-4375-a4b5-497b091ab462','N')
;

-- 30 de out de 2020 11:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132721,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120705,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:16','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','7f1a8f50-d797-4ed6-8489-a930801f464f','N')
;

-- 30 de out de 2020 11:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132722,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120705,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:24:16','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','00c62fcc-a797-46b1-aed3-f42c47dd1d71','N','D')
;

-- 30 de out de 2020 11:38:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132723,0,'CNPJ/CPF','CNPJ ou CPF do cliente',1120705,'LBR_CNPJF',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:38:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:38:42','YYYY-MM-DD HH24:MI:SS'),100,1122336,'Y','N','@C_BPartner_ID@!@#POS_BPartner_ID@ | @C_BPartner_ID@=0','LBRA','N','N','N','Y','cabd1576-f373-4913-8369-929c2ea42372','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 11:39:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132724,0,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120705,'lbr_IE',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:39:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:39:16','YYYY-MM-DD HH24:MI:SS'),100,1000014,'Y','N','LBRA','N','N','N','Y','af559230-7805-443f-9317-e107f0908d62','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:39:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132725,0,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120705,'RegionName',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:39:41','YYYY-MM-DD HH24:MI:SS'),100,541,'N','Y','LBRA','N','N','N','Y','a01a42ed-cf57-4bd1-b94b-b958360dc54d','Y',10,'N','N','N')
;

-- 30 de out de 2020 11:39:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132726,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120705,'DateDoc',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:39:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:39:51','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','55607c83-a185-42a9-aaf9-06d858cbcca0','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:40:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132727,0,'NF Model','Identifies the model of Nota Fiscal',1120705,'lbr_NFModel',2,'N','N','N','N','N',0,'N',17,1120009,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:40:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:40:04','YYYY-MM-DD HH24:MI:SS'),100,1100009,'Y','N','LBRA','N','N','N','Y','12b2d542-3295-4a5a-981e-7dc8224827a3','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:40:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132728,0,'NF Serie',1120705,'lbr_NFSerie',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:40:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:40:18','YYYY-MM-DD HH24:MI:SS'),100,1100010,'Y','N','LBRA','N','N','N','Y','8185594b-bc63-4aca-86ff-383f6620ba07','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:40:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132729,0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120705,'DocumentNo',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','N','N','Y','16d63a76-0263-42bf-a046-461621179a7e','Y',20,'N','N','N')
;

-- 30 de out de 2020 11:40:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132730,0,'CFOP Name','Defines the CFOP Name','Defines the CFOP Name',1120705,'lbr_CFOPName',5,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,1000228,'Y','Y','LBRA','N','N','N','Y','5b7a1ef5-01a4-4bbb-a541-49f4a5376edb','Y',30,'N','N','N')
;

-- 30 de out de 2020 11:41:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132731,0,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120705,'LBR_FreightCostRule',1,'N','N','N','N','N',0,'N',17,1120147,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:41:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:41:13','YYYY-MM-DD HH24:MI:SS'),100,1121100,'Y','N','LBRA','N','N','N','Y','a4f0cca3-8585-4f76-8800-da1ce7bb5c6e','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:41:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132732,0,'BP Shipper CNPJ','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',1120705,'lbr_BPShipperCNPJ',18,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:41:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:41:44','YYYY-MM-DD HH24:MI:SS'),100,1000213,'Y','N','LBRA','N','N','N','Y','27dbd83a-5154-4734-a46a-f679329ce583','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:45:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,Placeholder,IsHtml) VALUES (1132733,0,'BP Shipper License Plate','Defines the BP Shipper License Plate','Defines the BP Shipper License Plate',1120705,'lbr_BPShipperLicensePlate',11,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:45:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:45:34','YYYY-MM-DD HH24:MI:SS'),100,1000286,'Y','N','LBRA','N','N','N','Y','5d995a02-b973-410f-8afc-851aa69650a5','Y',0,'N','N','XXX-9X99/UF','N')
;

-- 30 de out de 2020 11:46:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132734,0,'Product Key','Key of the Product',1120705,'ProductValue',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:46:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:46:05','YYYY-MM-DD HH24:MI:SS'),100,1675,'N','N','LBRA','N','N','N','Y','73414587-d56e-43ed-98ea-e42576e31ac4','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:46:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132735,0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120705,'Qty',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:46:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:46:27','YYYY-MM-DD HH24:MI:SS'),100,526,'Y','N','LBRA','N','N','N','Y','8beb8525-06eb-456f-a2bd-1573980d3dad','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:47:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132736,0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120705,'GrandTotal',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:47:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:47:24','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','N','N','Y','7dd4009e-92b8-4522-bbba-08d7b7bd9b66','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:51:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132737,0,'ICMSST Base',1120705,'ICMSST_TaxBaseAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:51:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:51:16','YYYY-MM-DD HH24:MI:SS'),100,1121876,'N','N','LBRA','N','N','N','Y','e0d20457-ceac-4b40-803f-8031eab2ae12','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:51:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132738,0,'ICMSST',1120705,'ICMSST_TaxAmt',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:51:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:51:37','YYYY-MM-DD HH24:MI:SS'),100,1121879,'N','N','LBRA','N','N','N','Y','4bbadcbc-8e34-45a4-864d-4da290aefc6d','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:52:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132740,0,'Region',1120705,'Region',2,'N','N','N','N','N',0,'N',17,1120244,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:52:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:52:44','YYYY-MM-DD HH24:MI:SS'),100,202243,'N','Y','LBRA','N','N','N','Y','0e2bedc9-9a1e-4204-ba97-e87a1476751d','Y',40,'N','N','N')
;

-- 30 de out de 2020 11:53:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132741,0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120705,'LBR_NotaFiscalLine_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:53:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:53:31','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','LBRA','N','N','N','Y','35f37936-1a42-4952-aa7c-d8e483e85c6f','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 11:53:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132742,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120705,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:53:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:53:48','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','712f4e56-caf2-447a-87af-cd501616717f','Y',50,'N','N','N')
;

-- 30 de out de 2020 11:54:04 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLine_LBRSCANCNF', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 11:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132741
;

-- 30 de out de 2020 11:54:04 BRT
CREATE TABLE LBR_SCANC_NF (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP DEFAULT NULL , Description VARCHAR(255) DEFAULT NULL , DocumentNo VARCHAR(30) DEFAULT NULL , GrandTotal NUMERIC DEFAULT NULL , ICMSST_TaxAmt NUMERIC DEFAULT NULL , ICMSST_TaxBaseAmt NUMERIC DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CNPJF VARCHAR(18) DEFAULT NULL , LBR_FreightCostRule CHAR(1) DEFAULT NULL , LBR_NotaFiscalLine_ID NUMERIC(10) DEFAULT NULL , LBR_SCANC_NF_ID NUMERIC(10) NOT NULL, LBR_SCANC_NF_UU VARCHAR(36) DEFAULT NULL , ProductValue VARCHAR(40) DEFAULT NULL , Qty NUMERIC DEFAULT NULL , Region VARCHAR(2) DEFAULT NULL , RegionName VARCHAR(40) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_BPShipperCNPJ VARCHAR(18) DEFAULT NULL , lbr_BPShipperLicensePlate VARCHAR(11) DEFAULT NULL , lbr_CFOPName VARCHAR(5) DEFAULT NULL , lbr_IE VARCHAR(30) DEFAULT NULL , lbr_NFModel VARCHAR(2) DEFAULT NULL , lbr_NFSerie VARCHAR(3) DEFAULT NULL , CONSTRAINT LBR_SCANC_NF_Key PRIMARY KEY (LBR_SCANC_NF_ID), CONSTRAINT LBR_SCANC_NF_UU_idx UNIQUE (LBR_SCANC_NF_UU))
;

-- 30 de out de 2020 11:54:04 BRT
ALTER TABLE LBR_SCANC_NF ADD CONSTRAINT LBRNotaFiscalLine_LBRSCANCNF FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 11:54:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132743,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120704,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:54:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:54:32','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','N','N','Y','6f40147d-3ee6-4228-a27e-a3965ab48992','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:54:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132744,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120704,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:54:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:54:50','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','d12ddfc7-2d06-4a15-b65d-ac600f94e6e9','Y',20,'N','N','N')
;

-- 30 de out de 2020 11:54:52 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRSCANCBP', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 11:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132743
;

-- 30 de out de 2020 11:54:52 BRT
CREATE TABLE LBR_SCANC_BP (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Address TEXT DEFAULT NULL , Address3 VARCHAR(60) DEFAULT NULL , C_BPartner_ID NUMERIC(10) DEFAULT NULL , CategoryType VARCHAR(3) DEFAULT NULL, City VARCHAR(60) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , EMail VARCHAR(60) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CNPJF VARCHAR(18) DEFAULT NULL , LBR_SCANC_BP_ID NUMERIC(10) NOT NULL, LBR_SCANC_BP_UU VARCHAR(36) DEFAULT NULL , Postal VARCHAR(10) DEFAULT NULL , RegionName VARCHAR(40) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_BPIE VARCHAR(30) DEFAULT NULL , lbr_IE VARCHAR(30) DEFAULT NULL , lbr_LegalEntity VARCHAR(60) DEFAULT NULL , CONSTRAINT LBR_SCANC_BP_Key PRIMARY KEY (LBR_SCANC_BP_ID), CONSTRAINT LBR_SCANC_BP_UU_idx UNIQUE (LBR_SCANC_BP_UU))
;

-- 30 de out de 2020 11:54:52 BRT
ALTER TABLE LBR_SCANC_BP ADD CONSTRAINT CBPartner_LBRSCANCBP FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 11:55:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132745,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120703,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:55:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:55:17','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','N','N','Y','4657aea9-9bee-48c0-b9b0-bd1282b09285','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:55:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132746,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120703,'DocAction','CO',2,'N','N','N','N','N',0,'N',28,135,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:55:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:55:24','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','U','N','N','N','Y','0e834435-6bb0-4dec-85e9-7f8745a6faee','Y',0,'Y','N','N')
;

-- 30 de out de 2020 11:55:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132747,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120703,'Processed',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:55:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:55:34','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','Y','fddf9d11-15e7-43d3-91ac-c58a3adedcd8','Y',0,'N','N','N')
;

-- 30 de out de 2020 11:56:57 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,Priority,WorkingTime,"limit",Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,ValidateWorkflow,AD_Table_ID,Value,WorkflowType,IsValid,SetupTime,MovingTime,DocumentNo,QtyBatchSize,QueuingTime,IsBetaFunctionality,Yield,UnitsCycles,OverlapUnits,AD_Workflow_UU) VALUES ('Process_LBR_SCANC','(Standard Process SCANC)',1120035,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:56:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:56:57','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','Kenos Ltda',0,0,0,0,0,0,'D',0,'R','N','N',1120703,'Process_LBR_SCANC','P','N',0,0,'10000002',1,0,'N',100,0,0,'85205d74-bcf0-4f5c-9189-8c07910b365a')
;

-- 30 de out de 2020 11:58:34 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120136,'(Start)',1120035,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:58:33','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'e360ac10-1833-44d7-87af-471e9d8ae404',200000)
;

-- 30 de out de 2020 11:58:58 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120137,'(DocPrepare)',1120035,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:58:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:58:58','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'83137973-8f4a-40a3-91fd-c08f4482694f',200000)
;

-- 30 de out de 2020 11:59:07 BRT
UPDATE AD_WF_Node SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 11:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120134
;

-- 30 de out de 2020 11:59:25 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120138,'(DocComplete)',1120035,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:59:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:59:24','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(DocComplete)',0,'N','N',0,0,100,'1817c4ab-cb67-4aed-99bc-186d8f41235b',200000)
;

-- 30 de out de 2020 11:59:41 BRT
UPDATE AD_WF_Node SET DocAction='--',Updated=TO_TIMESTAMP('2020-10-30 11:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120138
;

-- 30 de out de 2020 11:59:56 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,"action",IsCentrallyMaintained,YPosition,EntityType,XPosition,"limit",Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120139,'(DocAuto)',1120035,0,0,'Y',TO_TIMESTAMP('2020-10-30 11:59:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 11:59:56','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'397c5623-10bb-4bd0-a475-fd01352cc46a',200000)
;

-- 30 de out de 2020 12:00:25 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120137,'Y',TO_TIMESTAMP('2020-10-30 12:00:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:00:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120138,'LBRA',10,1120085,'N','704638d0-83dd-4b19-b056-a363d852d0f2')
;

-- 30 de out de 2020 12:00:38 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120136,'Y',TO_TIMESTAMP('2020-10-30 12:00:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:00:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120139,'LBRA',10,1120086,'N','54fb4f05-b941-4d3a-8831-74da55813d45')
;

-- 30 de out de 2020 12:00:48 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120136,'Y',TO_TIMESTAMP('2020-10-30 12:00:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:00:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120137,'LBRA',999,1120087,'N','4912b810-8f55-41b2-bf5a-e6a27aedc6cf')
;

-- 30 de out de 2020 12:00:59 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120136, IsValid='Y',Updated=TO_TIMESTAMP('2020-10-30 12:00:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120035
;

-- 30 de out de 2020 12:01:07 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120257,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:01:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:01:07','YYYY-MM-DD HH24:MI:SS'),100,'Process LBR_SCANC','N','LBR_SCANC Process','N','3','U',0,0,1120035,'N','N','Y','N','62888c5d-488a-40c4-9334-5fa69cd05dde','P')
;

-- 30 de out de 2020 12:02:35 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120171,'SCANC',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:02:35','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','c1228326-d687-43cb-9ec4-f74e605d6333')
;

-- 30 de out de 2020 12:03:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132748,0,'Category Type','Source of the Journal with this category','The Category Type indicates the source of the journal for this category.  Journals can be generated from a document, entered manually or imported.',291,'CategoryType',NULL,3,'N','N','N','N','N',0,'N',17,1120372,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:03:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:03:11','YYYY-MM-DD HH24:MI:SS'),100,1309,'Y','N','U','N','N','N','Y','e7d4b8ea-2686-434c-ba5c-294e17b43ed2','Y',0,'N','N','N')
;

-- 30 de out de 2020 12:03:16 BRT
ALTER TABLE C_BPartner ADD COLUMN CategoryType VARCHAR(3) DEFAULT NULL 
;

-- 30 de out de 2020 12:03:47 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 12:03:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132748
;

-- 30 de out de 2020 12:03:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130018,'Category Type','Source of the Journal with this category','The Category Type indicates the source of the journal for this category.  Journals can be generated from a document, entered manually or imported.',220,1132748,'Y',3,20460,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:03:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:03:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf2e18cc-51d7-40f6-b4eb-5cad889ba9b3','Y',292,2)
;

-- 30 de out de 2020 12:04:09 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130018
;

-- 30 de out de 2020 12:21:52 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120408,'Header',1120171,10,'Y',1120703,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:21:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:21:50','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','56eb218e-296e-47ef-82e9-447ad8d31d41','B')
;

-- 30 de out de 2020 12:22:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132749,0,'SCANC',1120704,'LBR_SCANC_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:22:48','YYYY-MM-DD HH24:MI:SS'),100,1123219,'N','N','LBRA','N','N','N','Y','f917a388-a970-4091-b4e0-5292bce7de29','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 12:22:57 BRT
UPDATE AD_Column SET FKConstraintName='LBRSCANC_LBRSCANCBP', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 12:22:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132749
;

-- 30 de out de 2020 12:22:57 BRT
ALTER TABLE LBR_SCANC_BP ADD COLUMN LBR_SCANC_ID NUMERIC(10) DEFAULT NULL 
;

-- 30 de out de 2020 12:22:57 BRT
ALTER TABLE LBR_SCANC_BP ADD CONSTRAINT LBRSCANC_LBRSCANCBP FOREIGN KEY (LBR_SCANC_ID) REFERENCES lbr_scanc(lbr_scanc_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 12:23:12 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2020-10-30 12:23:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132749
;

-- 30 de out de 2020 12:23:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132750,0,'SCANC',1120705,'LBR_SCANC_ID',10,'N','Y','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:23:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:23:32','YYYY-MM-DD HH24:MI:SS'),100,1123219,'N','N','LBRA','N','N','N','Y','360c1537-c2cf-432c-b02b-f770cf0a7846','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 12:23:37 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRSCANC_LBRSCANCNF', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 12:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132750
;

-- 30 de out de 2020 12:23:37 BRT
ALTER TABLE LBR_SCANC_NF ADD COLUMN LBR_SCANC_ID NUMERIC(10) DEFAULT NULL 
;

-- 30 de out de 2020 12:23:37 BRT
ALTER TABLE LBR_SCANC_NF ADD CONSTRAINT LBRSCANC_LBRSCANCNF FOREIGN KEY (LBR_SCANC_ID) REFERENCES lbr_scanc(lbr_scanc_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 12:24:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130019,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120408,1132675,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ed7ecf9e-34ea-4cc6-b2d8-dc797b233988','N',2)
;

-- 30 de out de 2020 12:24:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130020,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120408,1132676,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c1cd3d77-3844-4b90-8124-88d55a4a60e2','Y','Y',10,4,2)
;

-- 30 de out de 2020 12:24:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130021,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120408,1132685,'Y',7,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','294c0d54-3c10-4dec-86e6-7177ffb3e382','Y',20,2)
;

-- 30 de out de 2020 12:24:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130022,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120408,1132682,'Y',180,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b94018e3-d174-4b05-9a90-458ed97df34d','Y',30,5)
;

-- 30 de out de 2020 12:24:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130023,'SCANC',1120408,1132680,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ed5fd6ba-0ceb-43d3-9870-7024cea75e32','N',2)
;

-- 30 de out de 2020 12:24:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130024,'LBR_SCANC_UU',1120408,1132681,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7a041460-1405-4f77-a4f9-f6a1e7c695cc','N',2)
;

-- 30 de out de 2020 12:24:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130025,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120408,1132686,'Y',29,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','11ecf061-7f58-46a5-8a9f-72792eeff2bb','Y',40,2)
;

-- 30 de out de 2020 12:24:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130026,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120408,1132687,'Y',10,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6343adbd-d73e-4b80-ae26-43071b2ee338','Y',50,2)
;

-- 30 de out de 2020 12:24:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130027,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120408,1132688,'Y',18,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3bf16a0f-a36e-4b32-bff2-fe715d43c051','Y',60,2)
;

-- 30 de out de 2020 12:24:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130028,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120408,1132689,'Y',30,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf8fadeb-f4d8-4239-9154-bf7b9cc8352a','Y',70,2)
;

-- 30 de out de 2020 12:24:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130029,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120408,1132690,'Y',2,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','989ad898-dd6f-47cc-97ee-fd5047f4119f','Y',80,2)
;

-- 30 de out de 2020 12:24:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130030,'Legal Entity',1120408,1132691,'Y',60,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b5524d5f-b9ae-4d77-85bc-34483eb0cb57','Y',90,5)
;

-- 30 de out de 2020 12:24:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130031,'Region To',1120408,1132692,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bca83fb9-dec6-4be0-b427-74483aaf2e35','Y',100,2)
;

-- 30 de out de 2020 12:24:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130032,'BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books','BP IE - Copied from the BP into Brazilan Legal and Tax Books',1120408,1132693,'Y',30,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','970ee230-d3d8-48b7-9dce-a2657bc32e93','Y',110,2)
;

-- 30 de out de 2020 12:24:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130033,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120408,1132745,'Y',2,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8930b22d-f315-401f-9fbd-48fe4a695368','Y',120,2)
;

-- 30 de out de 2020 12:24:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130034,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120408,1132747,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9870027e-9329-40bd-ab0d-77c7589b1533','Y',130,2,2)
;

-- 30 de out de 2020 12:24:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130035,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120408,1132679,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0625c786-7e09-4ae2-8078-29b56a8e0455','Y',140,2,2)
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130026
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130025
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130027
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130028
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130029
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130030
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130031
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130032
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130033
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130034
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130035
;

-- 30 de out de 2020 12:25:46 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130024
;

-- 30 de out de 2020 12:25:47 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130022
;

-- 30 de out de 2020 12:25:47 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130023
;

-- 30 de out de 2020 12:25:47 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:25:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130021
;

-- 30 de out de 2020 12:25:53 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1130021
;

-- 30 de out de 2020 12:25:53 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130021
;

-- 30 de out de 2020 12:25:57 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1130022
;

-- 30 de out de 2020 12:25:57 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130022
;

-- 30 de out de 2020 12:26:43 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120409,'BP',1120171,20,'Y',1120704,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:26:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:26:42','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132749,'N','N',1,'N','LBRA','Y','N','19b1a002-5a14-4b77-93e6-fc6c6065f473','B')
;

-- 30 de out de 2020 12:27:13 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120410,'NF',1120171,30,'Y',1120705,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:13','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132750,'N','N',1,'N','LBRA','Y','N','688a650a-e78f-4be0-b39b-f1aa4a360a0f','B')
;

-- 30 de out de 2020 12:27:23 BRT
UPDATE AD_Tab SET SeqNo=31,Updated=TO_TIMESTAMP('2020-10-30 12:27:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120410
;

-- 30 de out de 2020 12:27:28 BRT
UPDATE AD_Tab SET SeqNo=30,Updated=TO_TIMESTAMP('2020-10-30 12:27:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120409
;

-- 30 de out de 2020 12:27:36 BRT
UPDATE AD_Tab SET SeqNo=20,Updated=TO_TIMESTAMP('2020-10-30 12:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120410
;

-- 30 de out de 2020 12:27:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130036,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120410,1132714,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4e172894-9497-4ab0-86f3-b81bfa7b808d','N',2)
;

-- 30 de out de 2020 12:27:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130037,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120410,1132715,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','043cfb2d-e4f2-4270-b8fc-e42c786d8587','Y','Y',10,4,2)
;

-- 30 de out de 2020 12:27:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130038,'Description','Optional short description of the record','A description is limited to 255 characters.',1120410,1132742,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4a42f440-2dd5-4d5a-8184-e91f4da6c592','Y',20,5)
;

-- 30 de out de 2020 12:27:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130039,'SCANC NF',1120410,1132719,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2e361626-3a18-490b-8d81-64e536ae689c','N',2)
;

-- 30 de out de 2020 12:27:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130040,'LBR_SCANC_NF_UU',1120410,1132720,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9a38c560-7ba4-4d9b-bbd5-a208b4470285','N',2)
;

-- 30 de out de 2020 12:27:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130041,'CNPJ/CPF','CNPJ ou CPF do cliente',1120410,1132723,'Y',18,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4c236e32-5440-4edd-8656-1f6e684148f5','Y',30,2)
;

-- 30 de out de 2020 12:27:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130042,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120410,1132724,'Y',30,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8d08814e-d802-4a16-b8ea-31e77a7fc207','Y',40,2)
;

-- 30 de out de 2020 12:27:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130043,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120410,1132725,'Y',40,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f289af3f-b336-42d8-975f-ca34c1f4aa22','Y',50,2)
;

-- 30 de out de 2020 12:27:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130044,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120410,1132726,'Y',7,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a1aee463-3e99-4f65-98a1-3a8e2b2283ce','Y',60,2)
;

-- 30 de out de 2020 12:27:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130045,'NF Model','Identifies the model of Nota Fiscal',1120410,1132727,'Y',2,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f6b16a7d-eed5-431f-9088-e4af1eddac32','Y',70,2)
;

-- 30 de out de 2020 12:27:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130046,'NF Serie',1120410,1132728,'Y',3,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37f244e9-71d4-4efd-a757-d74255c12c30','Y',80,2)
;

-- 30 de out de 2020 12:27:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130047,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120410,1132729,'Y',30,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','61d8e8f1-0fff-4125-ba78-a490c436cdd7','Y',90,2)
;

-- 30 de out de 2020 12:27:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130048,'CFOP Name','Defines the CFOP Name','Defines the CFOP Name',1120410,1132730,'Y',5,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e84f7b24-43a0-44c4-8842-a5e6ca349e87','Y',100,2)
;

-- 30 de out de 2020 12:27:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130049,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120410,1132731,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9f2f22f5-a675-4e2a-a932-76f1471f4473','Y',110,2)
;

-- 30 de out de 2020 12:27:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130050,'BP Shipper CNPJ','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',1120410,1132732,'Y',18,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d41982a8-64a0-40cb-bab2-c2f5d3cd4033','Y',120,2)
;

-- 30 de out de 2020 12:27:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130051,'BP Shipper License Plate','Defines the BP Shipper License Plate','Defines the BP Shipper License Plate',1120410,1132733,'Y',11,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','616c34b2-f7d0-40e5-9379-29159d96f9a1','Y',130,2)
;

-- 30 de out de 2020 12:27:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130052,'Product Key','Key of the Product',1120410,1132734,'Y',40,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','642e08da-c744-4833-86e8-7cc64db60b5a','Y',140,2)
;

-- 30 de out de 2020 12:27:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130053,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120410,1132735,'Y',22,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1f8d51fc-4e2e-4625-bafb-0e8684b1f546','Y',150,2)
;

-- 30 de out de 2020 12:27:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130054,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120410,1132736,'Y',22,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','49e5ba9c-6fbd-4f2d-8355-e228f394ee0c','Y',160,2)
;

-- 30 de out de 2020 12:27:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130055,'ICMSST Base',1120410,1132737,'Y',22,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7507d45b-d947-4820-a41d-33b5d663f887','Y',170,2)
;

-- 30 de out de 2020 12:27:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130056,'ICMSST',1120410,1132738,'Y',22,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c19d9078-8045-4630-9581-3803919ce697','Y',180,2)
;

-- 30 de out de 2020 12:27:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130057,'Region',1120410,1132740,'Y',2,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b346464b-0c9f-40cb-a160-e207660fc12a','Y',190,2)
;

-- 30 de out de 2020 12:27:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130058,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120410,1132741,'Y',10,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1bfbd7ac-fcf3-483e-9b7a-c9be3dec7fc8','Y',200,2)
;

-- 30 de out de 2020 12:27:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130059,'SCANC',1120410,1132750,'Y',10,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6f9fdf7b-2a09-40df-9a6e-1bf62934818c','Y',210,2)
;

-- 30 de out de 2020 12:27:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130060,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120410,1132718,'Y',1,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:27:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:27:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7d07e555-d4a4-4791-b878-fa0b5744778d','Y',220,2,2)
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130058
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130038
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130041
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130042
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130043
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130044
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130051
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130046
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130045
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130048
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130050
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130049
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130052
;

-- 30 de out de 2020 12:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130053
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130054
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130055
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130056
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130057
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130060
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130040
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130059
;

-- 30 de out de 2020 12:30:08 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130039
;

-- 30 de out de 2020 12:30:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130061,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120409,1132694,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f4ed1369-5d38-4e0e-a7e6-29dbee0b1136','N',2)
;

-- 30 de out de 2020 12:30:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130062,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120409,1132695,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5e592b62-ba6c-4d7d-af97-2d7340ea2e48','Y','Y',10,4,2)
;

-- 30 de out de 2020 12:30:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130063,'Description','Optional short description of the record','A description is limited to 255 characters.',1120409,1132744,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1eefe585-37e7-436e-a28f-8dcee6e69925','Y',20,5)
;

-- 30 de out de 2020 12:30:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130064,'SCANC BP',1120409,1132699,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c593e93f-eef6-4110-8539-192e13b14c38','N',2)
;

-- 30 de out de 2020 12:30:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130065,'LBR_SCANC_BP_UU',1120409,1132700,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','773711a3-0a2a-4ad7-94b3-f9117283a82f','N',2)
;

-- 30 de out de 2020 12:30:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130066,'CNPJ/CPF','CNPJ ou CPF do cliente',1120409,1132703,'Y',18,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1a3c09c5-eb79-41ce-9134-4230bdac326d','Y',30,2)
;

-- 30 de out de 2020 12:30:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130067,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120409,1132704,'Y',30,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','abe9b122-f670-4fd8-9ce3-37634935460b','Y',40,2)
;

-- 30 de out de 2020 12:30:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130068,'BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books','BP IE - Copied from the BP into Brazilan Legal and Tax Books',1120409,1132705,'Y',30,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','69a64eb1-1ad8-4458-8955-3b7087806112','Y',50,2)
;

-- 30 de out de 2020 12:30:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130069,'Legal Entity',1120409,1132706,'Y',60,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','828c901d-fe2c-4964-9d1d-8be3d582ee10','Y',60,5)
;

-- 30 de out de 2020 12:30:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1130070,'Address',1120409,1132707,'Y',2147483647,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2bd231a2-60f5-4bce-a24c-5f651e70ca54','Y',70,5,3)
;

-- 30 de out de 2020 12:30:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130071,'Address 3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120409,1132708,'Y',60,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6a333a11-bd7d-44a4-82c6-7ad115a5a19d','Y',80,5)
;

-- 30 de out de 2020 12:30:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130072,'City','Identifies a City','The City identifies a unique City for this Country or Region.',1120409,1132709,'Y',60,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5ffb855d-b0ec-415c-b0a2-3a1251f6aa2e','Y',90,5)
;

-- 30 de out de 2020 12:30:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130073,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120409,1132710,'Y',40,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b050cf3e-b6fd-4f72-8b7b-bc0ff0f8bafa','Y',100,2)
;

-- 30 de out de 2020 12:30:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130074,'ZIP','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.',1120409,1132711,'Y',10,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','982495aa-3550-4fec-8734-8a55ee6ffc9c','Y',110,2)
;

-- 30 de out de 2020 12:30:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130075,'EMail Address','Electronic Mail Address','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.',1120409,1132712,'Y',60,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d4d5d616-373a-4545-8bb4-a488be745878','Y',120,5)
;

-- 30 de out de 2020 12:30:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130076,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120409,1132743,'Y',22,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c2875da0-2975-4850-a543-3b97c634333c','Y',130,2)
;

-- 30 de out de 2020 12:30:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130077,'SCANC',1120409,1132749,'Y',10,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1fc089ed-ab11-4705-9df5-e871fd9d6f8b','Y',140,2)
;

-- 30 de out de 2020 12:30:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130078,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120409,1132698,'Y',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','328b38ab-ee4a-4cf7-a33d-a6e64d23725f','Y',150,2,2)
;

-- 30 de out de 2020 12:31:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130076
;

-- 30 de out de 2020 12:31:56 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130063
;

-- 30 de out de 2020 12:31:56 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130066
;

-- 30 de out de 2020 12:31:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130067
;

-- 30 de out de 2020 12:31:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130068
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130069
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130070
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130071
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130072
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130073
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130074
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130075
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130078
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130065
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130077
;

-- 30 de out de 2020 12:31:57 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 12:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130064
;

-- 30 de out de 2020 12:45:54 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120372,'SCANC','W',1120171,0,0,'Y',TO_TIMESTAMP('2020-10-30 12:45:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 12:45:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','c86b6d24-d9c3-487f-b6c2-3ef3c546870b')
;

-- 30 de out de 2020 12:45:54 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120372, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120372)
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120371
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120370
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120369
;

-- 30 de out de 2020 12:47:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120368, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120372
;

-- 30 de out de 2020 12:59:32 BRT
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 12:59:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120704
;

-- 30 de out de 2020 12:59:39 BRT
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 12:59:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120703
;

-- 30 de out de 2020 14:01:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123225,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:01:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:01:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodeSCANC40','Code SCANC 40',NULL,NULL,'Code SCANC 40','LBRA','023a2b40-8573-4525-833e-0b1001e00c7e')
;

-- 30 de out de 2020 14:02:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132751,0,'Code SCANC 40',208,'LBR_CodeSCANC40',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:02:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:02:08','YYYY-MM-DD HH24:MI:SS'),100,1123225,'Y','N','LBRA','N','N','N','Y','ae762925-9f47-4d67-bc4b-ca23d7e40482','Y',0,'N','N','N')
;

-- 30 de out de 2020 14:02:13 BRT
ALTER TABLE M_Product ADD COLUMN LBR_CodeSCANC40 VARCHAR(40) DEFAULT NULL 
;

-- 30 de out de 2020 14:02:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123226,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:02:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:02:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CodeSCANC60','Code SCANC 60',NULL,NULL,'Code SCANC 60','LBRA','b7948d70-bb91-4203-90b3-f2d921f1575d')
;

-- 30 de out de 2020 14:02:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132752,0,'Code SCANC 60',208,'LBR_CodeSCANC60',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:02:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:02:43','YYYY-MM-DD HH24:MI:SS'),100,1123226,'Y','N','LBRA','N','N','N','Y','47b87e2b-804d-43f9-a257-8a877cd59bff','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 14:02:47 BRT
ALTER TABLE M_Product ADD COLUMN LBR_CodeSCANC60 VARCHAR(40) DEFAULT NULL 
;

-- 30 de out de 2020 14:03:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130079,'Code SCANC 40',180,1132751,'Y',40,20680,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:03:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:03:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bf20388b-64c9-4591-a705-68281c1d0832','Y',680,2)
;

-- 30 de out de 2020 14:03:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130080,'Code SCANC 60',180,1132752,'Y',40,20690,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:03:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:03:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d3850736-d93e-4cdf-b47f-4b64a4ed215d','Y',690,2)
;

-- 30 de out de 2020 14:03:37 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:03:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130080
;

-- 30 de out de 2020 14:03:41 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:03:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130079
;

-- 30 de out de 2020 14:15:12 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120706,'SCANC Var','LBR_SCANC_VAR',0,'3',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','U','N','Y','L','N','Y','f1a02a3e-8e5f-4448-b1f9-81b9b5b3ba0a','N','N','N','N')
;

-- 30 de out de 2020 14:15:13 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SCANC_VAR',1000000,'N','N','Table LBR_SCANC_VAR','Y','Y',0,0,TO_TIMESTAMP('2020-10-30 14:15:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:12','YYYY-MM-DD HH24:MI:SS'),100,1153952,'Y',1000000,1,200000,'109c78ab-1b10-4027-8570-42484ec8b360')
;

-- 30 de out de 2020 14:15:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132753,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120706,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:25','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','e763e0e3-1520-44fb-8a83-1b40b75f7fc4','N','D')
;

-- 30 de out de 2020 14:15:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132754,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120706,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e1e4d0a2-4c0c-4fe4-92e0-6d960151efc6','N','D')
;

-- 30 de out de 2020 14:15:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132755,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120706,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','a75efa6a-0110-4f1b-b8c0-1fad7cc15a92','N')
;

-- 30 de out de 2020 14:15:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132756,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120706,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:26','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','c4085b79-30a0-4462-bc3e-4382a54b799f','N','D')
;

-- 30 de out de 2020 14:15:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132757,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120706,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','06077302-9098-4a8c-9a07-04e28c13d956','N')
;

-- 30 de out de 2020 14:15:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123227,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_VAR_ID','SCANC Var','SCANC Var','LBRA','85a9e244-219b-4997-abc0-a8096ef29665')
;

-- 30 de out de 2020 14:15:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132758,0.0,'SCANC Var',1120706,'LBR_SCANC_VAR_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:27','YYYY-MM-DD HH24:MI:SS'),100,1123227,'N','N','LBRA','N','b11437df-98e5-48e4-a7e7-162e4ad294fa','N')
;

-- 30 de out de 2020 14:15:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123228,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SCANC_VAR_UU','LBR_SCANC_VAR_UU','LBR_SCANC_VAR_UU','LBRA','f45f8e0f-2848-4bc4-a73a-863c69eeedd1')
;

-- 30 de out de 2020 14:15:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132759,0.0,'LBR_SCANC_VAR_UU',1120706,'LBR_SCANC_VAR_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:28','YYYY-MM-DD HH24:MI:SS'),100,1123228,'N','N','LBRA','N','ce5e8e8e-22f8-4117-8fd8-7f8aad22a9b0','N')
;

-- 30 de out de 2020 14:15:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132760,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120706,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','793f37a1-83e6-4449-a5ab-121ceaf6c315','N')
;

-- 30 de out de 2020 14:15:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132761,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120706,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:32','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','464c2fda-f46c-4e7b-8a65-4e85852b2556','N','D')
;

-- 30 de out de 2020 14:15:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132762,0,'SCANC',1120706,'LBR_SCANC_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:15:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:15:53','YYYY-MM-DD HH24:MI:SS'),100,1123219,'N','N','LBRA','N','N','N','Y','702333dc-9942-4988-98de-945d7ee6162e','Y',0,'N','N','N','N')
;

-- 30 de out de 2020 14:16:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132763,0,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120706,'MovementQty',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:16:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:16:15','YYYY-MM-DD HH24:MI:SS'),100,1038,'N','N','LBRA','N','N','N','Y','38ec659b-5f47-454c-bd29-394f8ec78340','Y',0,'N','N','N')
;

-- 30 de out de 2020 14:16:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132764,0,'Product Key','Key of the Product',1120706,'ProductValue',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:16:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:16:29','YYYY-MM-DD HH24:MI:SS'),100,1675,'N','N','LBRA','N','N','N','Y','34097da4-41e2-4719-bd61-6f9d128621a0','Y',0,'N','N','N')
;

-- 30 de out de 2020 14:16:37 BRT
UPDATE AD_Column SET FKConstraintName='LBRSCANC_LBRSCANCVAR', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-30 14:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132762
;

-- 30 de out de 2020 14:16:37 BRT
CREATE TABLE LBR_SCANC_VAR (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_SCANC_ID NUMERIC(10) DEFAULT NULL , LBR_SCANC_VAR_ID NUMERIC(10) NOT NULL, LBR_SCANC_VAR_UU VARCHAR(36) DEFAULT NULL , MovementQty NUMERIC DEFAULT NULL , ProductValue VARCHAR(40) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_SCANC_VAR_Key PRIMARY KEY (LBR_SCANC_VAR_ID), CONSTRAINT LBR_SCANC_VAR_UU_idx UNIQUE (LBR_SCANC_VAR_UU))
;

-- 30 de out de 2020 14:16:37 BRT
ALTER TABLE LBR_SCANC_VAR ADD CONSTRAINT LBRSCANC_LBRSCANCVAR FOREIGN KEY (LBR_SCANC_ID) REFERENCES lbr_scanc(lbr_scanc_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de out de 2020 14:16:43 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-30 14:16:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132764
;

-- 30 de out de 2020 14:16:49 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-30 14:16:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132763
;

-- 30 de out de 2020 14:17:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132765,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120706,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:17:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:17:10','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','37161671-4824-46d3-88e0-9442178faf6a','Y',10,'N','N','N')
;

-- 30 de out de 2020 14:17:13 BRT
ALTER TABLE LBR_SCANC_VAR ADD COLUMN Description VARCHAR(255) DEFAULT NULL 
;

-- 30 de out de 2020 14:18:15 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120411,'70 - Variation',1120171,40,'Y',1120706,0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:15','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','2f670ca6-b32d-4721-a816-9439ee473f46','B')
;

-- 30 de out de 2020 14:18:25 BRT
UPDATE AD_Tab SET AD_Column_ID=1132762, TabLevel=1,Updated=TO_TIMESTAMP('2020-10-30 14:18:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120411
;

-- 30 de out de 2020 14:18:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130081,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120411,1132753,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f1919662-fbc8-47a8-b8b7-7f2277b9c0fb','N',2)
;

-- 30 de out de 2020 14:18:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130082,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120411,1132754,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a9378320-b721-488f-bfd6-718263836a2b','Y','Y',10,4,2)
;

-- 30 de out de 2020 14:18:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130083,'Description','Optional short description of the record','A description is limited to 255 characters.',1120411,1132765,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c9202dff-8324-4d7b-bc99-3cec1972d30e','Y',20,5)
;

-- 30 de out de 2020 14:18:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130084,'SCANC Var',1120411,1132758,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','93bd3f72-c58f-4093-bde9-fe329c35acea','N',2)
;

-- 30 de out de 2020 14:18:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130085,'LBR_SCANC_VAR_UU',1120411,1132759,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','84f9daa3-e469-4d41-8235-b893b274f72f','N',2)
;

-- 30 de out de 2020 14:18:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130086,'SCANC',1120411,1132762,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a85d3991-d33b-436d-9943-0ca9884249ee','Y',30,2)
;

-- 30 de out de 2020 14:18:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130087,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120411,1132763,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2028896b-1f79-45cb-bb57-ea9f5b27a5a6','Y',40,2)
;

-- 30 de out de 2020 14:18:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130088,'Product Key','Key of the Product',1120411,1132764,'Y',40,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9f2899c-2826-4906-b8e0-d262027d12c3','Y',50,2)
;

-- 30 de out de 2020 14:18:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130089,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120411,1132757,'Y',1,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 14:18:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 14:18:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','103d4692-e06c-47d2-a56d-2f8cc82b7d32','Y',60,2,2)
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130083
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130088
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130087
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130089
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130085
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130086
;

-- 30 de out de 2020 14:19:04 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-30 14:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130084
;

-- 30 de out de 2020 14:19:32 BRT
UPDATE AD_Tab SET Name='20 - BP',Updated=TO_TIMESTAMP('2020-10-30 14:19:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120409
;

-- 30 de out de 2020 16:54:05 BRT
UPDATE AD_Column SET DefaultValue=NULL, EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 16:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132713
;

-- 30 de out de 2020 16:54:06 BRT
INSERT INTO t_alter_column values('lbr_scanc_bp','CategoryType','VARCHAR(3)',null,'NULL')
;

-- 30 de out de 2020 16:18:13 BRT
UPDATE AD_Column SET AD_Process_ID=1120257,Updated=TO_TIMESTAMP('2020-10-30 16:18:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132746
;

-- 30 de out de 2020 15:54:20 BRT
UPDATE AD_Column SET FieldLength=2, AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-10-30 15:54:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132692
;

-- 30 de out de 2020 15:54:22 BRT
INSERT INTO t_alter_column values('lbr_scanc','LBR_RegionTo','VARCHAR(2)',null,'NULL')
;

-- 30 de out de 2020 15:54:39 BRT
UPDATE AD_Column SET AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-10-30 15:54:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132690
;

-- 30 de out de 2020 15:54:42 BRT
INSERT INTO t_alter_column values('lbr_scanc','RegionName','VARCHAR(2)',null,'NULL')
;

-- 30 de out de 2020 15:55:21 BRT
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2020-10-30 15:55:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132710
;

-- 30 de out de 2020 15:55:23 BRT
INSERT INTO t_alter_column values('lbr_scanc_bp','RegionName','VARCHAR(2)',null,'NULL')
;

-- 30 de out de 2020 15:55:50 BRT
UPDATE AD_Column SET AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-10-30 15:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132740
;

-- 30 de out de 2020 15:55:52 BRT
INSERT INTO t_alter_column values('lbr_scanc_nf','Region','VARCHAR(2)',null,'NULL')
;

-- 30 de out de 2020 15:55:59 BRT
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2020-10-30 15:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132725
;

-- 30 de out de 2020 17:12:12 BRT
UPDATE AD_Column SET DefaultValue='N', IsMandatory='Y',Updated=TO_TIMESTAMP('2020-10-30 17:12:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132747
;

-- 30 de out de 2020 17:12:15 BRT
ALTER TABLE LBR_SCANC ADD COLUMN Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 30 de out de 2020 17:12:27 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 17:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132746
;

-- 30 de out de 2020 17:13:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130090,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120408,1132685,'Y',7,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 17:13:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 17:13:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9a43858-309b-41c7-8ae0-5201f943a8fe','Y',150,2)
;

-- 30 de out de 2020 17:13:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130091,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120408,1132682,'Y',180,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 17:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 17:13:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60b542eb-e96c-4fe9-8756-d354230d2574','Y',160,5)
;

-- 30 de out de 2020 17:13:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130092,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120408,1132746,'Y',2,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 17:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 17:13:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e9592598-0b01-4e41-ab17-e617e849cc22','Y',170,2,2)
;

-- 30 de out de 2020 17:13:37 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1130091
;

-- 30 de out de 2020 17:13:37 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130091
;

-- 30 de out de 2020 17:13:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1130090
;

-- 30 de out de 2020 17:13:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130090
;

-- 30 de out de 2020 17:13:57 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132685
;

-- 30 de out de 2020 17:13:57 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132685
;

-- 30 de out de 2020 17:14:02 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1132682
;

-- 30 de out de 2020 17:14:03 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132682
;

-- 30 de out de 2020 17:14:47 BRT
UPDATE AD_Column SET DefaultValue=NULL, EntityType='LBRA',Updated=TO_TIMESTAMP('2020-10-30 17:14:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132713
;

-- 30 de out de 2020 17:14:48 BRT
INSERT INTO t_alter_column values('lbr_scanc_bp','CategoryType','VARCHAR(3)',null,'NULL')
;

-- 30 de out de 2020 17:15:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130093,'Category Type','Source of the Journal with this category','The Category Type indicates the source of the journal for this category.  Journals can be generated from a document, entered manually or imported.',1120409,1132713,'Y',3,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-30 17:15:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-30 17:15:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','387cb94d-c558-45a8-9bf3-2990e3af3315','Y',160,2)
;

-- 30 de out de 2020 17:16:33 BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2020-10-30 17:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132748
;

-- 30 de out de 2020 17:16:36 BRT
INSERT INTO t_alter_column values('c_bpartner','CategoryType','VARCHAR(3)',null,'NULL')
;

ALTER TABLE LBR_SCANC DROP COLUMN Value
;

ALTER TABLE LBR_SCANC DROP COLUMN Name
;

-- 30 de out de 2020 17:12:15 BRT
ALTER TABLE LBR_SCANC ADD DocStatus VARCHAR(2) NOT NULL
;

-- 30 de out de 2020 17:12:15 BRT
ALTER TABLE LBR_SCANC ADD DocAction VARCHAR(2) NOT NULL
;

UPDATE AD_Table SET EntityType ='LBRA' WHERE TableName = 'LBR_SCANC_VAR'
;

-- 2 de nov de 2020 23:08:32 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-11-02 23:08:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130033
;

-- 2 de nov de 2020 23:09:19 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:09:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132687
;

-- 2 de nov de 2020 23:09:28 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132690
;

-- 2 de nov de 2020 23:09:38 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132693
;

-- 2 de nov de 2020 23:09:42 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:09:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132691
;

-- 2 de nov de 2020 23:10:52 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132729
;

-- 2 de nov de 2020 23:10:56 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:10:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132736
;

-- 2 de nov de 2020 23:11:00 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132738
;

-- 2 de nov de 2020 23:11:03 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132737
;

-- 2 de nov de 2020 23:11:08 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132741
;

-- 2 de nov de 2020 23:11:17 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132734
;

-- 2 de nov de 2020 23:11:20 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132740
;

-- 2 de nov de 2020 23:11:25 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-11-02 23:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132725
;

-- 2 de nov de 2020 23:11:58 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-11-02 23:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132723
;

SELECT Register_Migration_Script ('202010311546_SCANC.sql') FROM DUAL
;
