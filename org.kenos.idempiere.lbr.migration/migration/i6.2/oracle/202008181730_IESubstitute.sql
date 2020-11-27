SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de ago de 2020 19:37:06 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120694,'IE Substitute','Configure IE Substitute to the Organization','Configure IE Substitute to the Organization. The configuration must be by Region','LBR_OrgIEST',0,'3',0,0,'Y',TO_DATE('2020-08-16 19:37:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:37:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','92561e0b-a2e3-40df-9870-0c62f93e6007','N','N','N','N')
;

-- 16 de ago de 2020 19:37:07 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_OrgIEST',1000000,'N','N','Table LBR_OrgIEST','Y','Y',0,0,TO_DATE('2020-08-16 19:37:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:37:06','YYYY-MM-DD HH24:MI:SS'),100,1153940,'Y',1000000,1,200000,'0113caf1-c48b-45c1-9d72-36a8c5d7ee84')
;

-- 16 de ago de 2020 19:39:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132515,1,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120694,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-08-16 19:39:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:07','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','136bdf3b-c360-4648-badc-59af08734d35','N','N','N','N','N')
;
SELECT Register_Migration_Script ('202008181700_TaxControl_ICMSSubstitute.sql') FROM DUAL
;
-- 16 de ago de 2020 19:39:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132516,1,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120694,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','4397e901-03a6-4c63-964a-898d6da21d3c','N','N','N','N','N')
;

-- 16 de ago de 2020 19:39:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132517,1,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120694,'Created','SYSDATE',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','c196f398-488b-4b82-a81c-ed3653104632','N','N','N','N')
;

-- 16 de ago de 2020 19:39:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132518,1,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120694,'CreatedBy',22,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:08','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','868c1aec-29a7-4f20-928b-ad88eee76c35','N','N','N','N','N')
;

-- 16 de ago de 2020 19:39:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123192,0,0,'Y',TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_OrgIEST_ID','IE Substitute','IE Substitute','LBRA','a7e4bc2a-942d-4a41-a619-c3c235971c26')
;

-- 16 de ago de 2020 19:39:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132519,1,'IE Substitute',1120694,'LBR_OrgIEST_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,1123192,'N','N','LBRA','N','N','N','Y','2ba9b63a-1378-4a38-861c-d0e49bdee7d0','N','N','N','N')
;

-- 16 de ago de 2020 19:39:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123193,0,0,'Y',TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_OrgIEST_UU','LBR_OrgIEST_UU','LBR_OrgIEST_UU','LBRA','2b3bb0a0-671e-4c4a-92a8-d2b638a45853')
;

-- 16 de ago de 2020 19:39:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132520,1.00,'LBR_OrgIEST_UU',1120694,'LBR_OrgIEST_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:09','YYYY-MM-DD HH24:MI:SS'),100,1123193,'Y','N','LBRA','N','N','N','Y','061b5c09-987b-4f75-9164-0de4ae44ce72','N','N','N','N')
;

-- 16 de ago de 2020 19:39:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132521,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120694,'Description',255,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_DATE('2020-08-16 19:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:10','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','N','LBRA','N','N','N','Y','0c5a3e7d-1bcb-4f99-8820-edd2bbf94c0d','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:39:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132522,1,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120694,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','88fc0348-3356-4378-92a9-14cc7d262d73','N','N','N','N')
;

-- 16 de ago de 2020 19:39:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132523,0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120694,'Name',120,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','N','LBRA','N','N','N','Y','bfc43038-42fe-45bf-b8f1-1d385236f1d9','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:39:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132524,0,'Tax Provider Class',1120694,'TaxProviderClass',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:11','YYYY-MM-DD HH24:MI:SS'),100,202581,'Y','N','LBRA','N','N','N','Y','18e67bc2-e7ba-4301-a7f3-9988d234860a','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:39:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132525,1,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120694,'Updated','SYSDATE',7,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-08-16 19:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:12','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','05af17dc-f932-461b-a740-76b69c89b215','N','N','N','N')
;

-- 16 de ago de 2020 19:39:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132526,1,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120694,'UpdatedBy',22,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-08-16 19:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:12','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','4b7cb350-2019-409d-a89f-f3f10698a4bb','N','N','N','N','N')
;

-- 16 de ago de 2020 19:39:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132527,0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120694,'URL',120,'N','N','N','N','N',0,'N',40,0,0,'Y',TO_DATE('2020-08-16 19:39:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:39:13','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','N','N','Y','44b49832-4e70-46bb-a02a-a930c5959d10','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:39:28 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132527
;

-- 16 de ago de 2020 19:39:28 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132527
;

-- 16 de ago de 2020 19:39:37 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132524
;

-- 16 de ago de 2020 19:39:37 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132524
;

-- 16 de ago de 2020 19:40:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132528,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120694,1000003,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_DATE('2020-08-16 19:40:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:40:01','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','N','N','Y','a6a00bef-3991-4321-a7b3-a1b59d228d38','Y',0,'N','N','N','N')
;

-- 16 de ago de 2020 19:42:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123194,0,0,'Y',TO_DATE('2020-08-16 19:42:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:42:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IEST','IE Substitute','To set IE by Region to Substitute IE from Organization','Configure IE by region to Substitute Organization on that region','IE Substitute','LBRA','18500675-24c3-476a-87a0-9726f904c870')
;

-- 16 de ago de 2020 19:43:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132529,0,'IE Substitute','To set IE by Region to Substitute IE from Organization','Configure IE by region to Substitute Organization on that region',1120694,'LBR_IEST',30,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-08-16 19:43:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:43:37','YYYY-MM-DD HH24:MI:SS'),100,1123194,'Y','N','LBRA','N','N','N','Y','1aa13d3a-73de-491d-90b5-27afe101e867','Y',0,'N','N','N','N')
;

-- 16 de ago de 2020 19:43:52 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132523
;

-- 16 de ago de 2020 19:43:52 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132523
;

-- 16 de ago de 2020 19:44:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132530,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120694,'ValidFrom',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2020-08-16 19:44:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:44:14','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','5b8f2eb5-5c5d-4f2e-86f2-e78a9ea69f71','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:45:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132531,0,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120694,'ValidTo',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2020-08-16 19:44:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:44:59','YYYY-MM-DD HH24:MI:SS'),100,618,'Y','N','LBRA','N','N','N','Y','aac72312-500c-4c40-b51e-700e61d19231','Y',0,'N','N','N')
;

-- 16 de ago de 2020 19:46:05 BRT
UPDATE AD_Column SET FKConstraintName='ADClient_LBROrgIEST', FKConstraintType='N',Updated=TO_DATE('2020-08-16 19:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132515
;

-- 16 de ago de 2020 19:46:05 BRT
UPDATE AD_Column SET FKConstraintName='ADOrg_LBROrgIEST', FKConstraintType='N',Updated=TO_DATE('2020-08-16 19:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132516
;

-- 16 de ago de 2020 19:46:05 BRT
UPDATE AD_Column SET FKConstraintName='CreatedBy_LBROrgIEST', FKConstraintType='N',Updated=TO_DATE('2020-08-16 19:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132518
;

-- 16 de ago de 2020 19:46:05 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBROrgIEST', FKConstraintType='N',Updated=TO_DATE('2020-08-16 19:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132528
;

-- 16 de ago de 2020 19:46:05 BRT
UPDATE AD_Column SET FKConstraintName='UpdatedBy_LBROrgIEST', FKConstraintType='N',Updated=TO_DATE('2020-08-16 19:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132526
;

-- 16 de ago de 2020 19:46:05 BRT
CREATE TABLE LBR_OrgIEST (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_Region_ID NUMBER(10) DEFAULT NULL , Description VARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_IEST VARCHAR2(30) NOT NULL, LBR_OrgIEST_ID NUMBER(10) NOT NULL, LBR_OrgIEST_UU VARCHAR2(36) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, ValidFrom DATE DEFAULT NULL , ValidTo DATE DEFAULT NULL , CONSTRAINT LBR_OrgIEST_Key PRIMARY KEY (LBR_OrgIEST_ID), CONSTRAINT LBR_OrgIEST_UU_idx UNIQUE (LBR_OrgIEST_UU))
;

-- 16 de ago de 2020 19:46:06 BRT
ALTER TABLE LBR_OrgIEST ADD CONSTRAINT ADClient_LBROrgIEST FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de ago de 2020 19:46:06 BRT
ALTER TABLE LBR_OrgIEST ADD CONSTRAINT ADOrg_LBROrgIEST FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de ago de 2020 19:46:06 BRT
ALTER TABLE LBR_OrgIEST ADD CONSTRAINT CreatedBy_LBROrgIEST FOREIGN KEY (CreatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de ago de 2020 19:46:06 BRT
ALTER TABLE LBR_OrgIEST ADD CONSTRAINT CRegion_LBROrgIEST FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de ago de 2020 19:46:06 BRT
ALTER TABLE LBR_OrgIEST ADD CONSTRAINT UpdatedBy_LBROrgIEST FOREIGN KEY (UpdatedBy) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de ago de 2020 19:48:38 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,DisplayLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120401,'IE Substitute','IE Substitute by Region to Substitute Organization on that Region',110,60,'Y',1120694,0,0,'Y',TO_DATE('2020-08-16 19:48:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:38','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','@#LBR_ENABLED@=Y','Y','N','5435eebc-8845-495a-bc97-9e44ac44bba7','B')
;

-- 16 de ago de 2020 19:48:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129907,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120401,1132515,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4c105a6a-28c9-43a8-bf68-f75726971208','N',2)
;

-- 16 de ago de 2020 19:48:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129908,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120401,1132516,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','51e07c35-3028-4d91-a9d0-546ebac8660f','Y','Y',10,4,2)
;

-- 16 de ago de 2020 19:48:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1129909,'Description','Optional short description of the record','A description is limited to 255 characters.',1120401,1132521,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7d597647-be18-4932-a1b8-8544715af8ab','Y',20,5,3)
;

-- 16 de ago de 2020 19:48:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129910,'IE Substitute',1120401,1132519,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a0e16630-c2ea-4095-b6ff-03543e22f4d4','N',2)
;

-- 16 de ago de 2020 19:48:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1129911,'LBR_OrgIEST_UU',1120401,1132520,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','67c9e253-8170-418f-b268-a0a6e357c81a','N',2)
;

-- 16 de ago de 2020 19:48:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129912,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120401,1132528,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','410c0be5-b15a-46ff-bfc2-3c8ece28f312','Y',30,2)
;

-- 16 de ago de 2020 19:48:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129913,'IE Substitute','To set IE by Region to Substitute IE from Organization','Configure IE by region to Substitute Organization on that region',1120401,1132529,'Y',30,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c9a087b0-ea40-4ea4-aef8-433f6efc8f47','Y',40,2)
;

-- 16 de ago de 2020 19:48:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129914,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120401,1132530,'Y',7,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','81142ddf-cfd3-4259-87d6-95f44e562687','Y',50,2)
;

-- 16 de ago de 2020 19:48:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129915,'Valid to','Valid to including this date (last day)','The Valid To date indicates the last day of a date range',1120401,1132531,'Y',7,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8c7f0ba9-ed85-4e3c-a09b-d087595a594b','Y',60,2)
;

-- 16 de ago de 2020 19:48:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1129916,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120401,1132522,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-16 19:48:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e5e1a06-b2ea-41ab-994b-181b80e2b757','Y',70,2,2)
;

-- 16 de ago de 2020 19:49:48 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-16 19:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129913
;

-- 16 de ago de 2020 19:49:48 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-16 19:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129912
;

-- 16 de ago de 2020 19:49:48 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-16 19:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129915
;

-- 16 de ago de 2020 19:49:48 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-16 19:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129910
;

-- 16 de ago de 2020 19:49:49 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-08-16 19:49:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129911
;

-- 16 de ago de 2020 19:50:17 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2020-08-16 19:50:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132528
;

-- 16 de ago de 2020 19:50:29 BRT
ALTER TABLE LBR_OrgIEST MODIFY C_Region_ID NUMBER(10)
;

-- 16 de ago de 2020 19:50:30 BRT
ALTER TABLE LBR_OrgIEST MODIFY C_Region_ID NOT NULL
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27 de ago de 2020 12:07:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132534,0,'IE Substitute','To set IE by Region to Substitute IE from Organization','Configure IE by region to Substitute Organization on that region',1000027,'LBR_IEST',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-08-27 12:07:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-27 12:07:54','YYYY-MM-DD HH24:MI:SS'),100,1123194,'Y','N','LBRA','N','N','N','Y','3ab266b1-be50-496b-8a8a-f036954ce583','Y',0,'N','N','N','N')
;

-- 27 de ago de 2020 12:08:03 BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_IEST VARCHAR2(30) DEFAULT NULL 
;

-- 27 de ago de 2020 12:08:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129917,'IE Substitute','To set IE by Region to Substitute IE from Organization','Configure IE by region to Substitute Organization on that region',1000020,1132534,'Y',0,1167,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-08-27 12:08:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-27 12:08:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f37399ed-15bf-4430-86b1-9679869d82b2','Y',1075,1,1,1,'N','N','N')
;

SELECT Register_Migration_Script ('202008181730_IESubstitute.sql') FROM DUAL
;