SET SQLBLANKLINES ON
SET DEFINE OFF

-- 12 de jan de 2023 16:47:57 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120758,'NFe Lot Line','NFe Lot Lines',1100001,'LBR_NFeLotLine',0,'3',0,0,'Y',TO_DATE('2023-01-12 16:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:47:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','1740e8ea-862f-4326-a0f6-e659dd7473e3','N','N')
;

-- 12 de jan de 2023 16:47:58 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFeLotLine',1000000,'N','N','Table LBR_NFeLotLine','Y','Y',0,0,TO_DATE('2023-01-12 16:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:47:57','YYYY-MM-DD HH24:MI:SS'),100,1154032,'Y',1000000,1,200000,'b2ef52b7-352d-44c9-a1c6-7d578543ebd1')
;

-- 12 de jan de 2023 16:48:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133781,1,'Alert Processor','Alert Processor/Server Parameter','Alert Processor/Server Parameter',1120758,'AD_AlertProcessor_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,2370,'Y','N','LBRA','N','N','N','Y','857b9eab-e2ba-4495-93bf-798e608d6fcd','Y','N','N','S','N')
;

-- 12 de jan de 2023 16:48:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123397,0,0,'Y',TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeLotLine_ID','NFe Lot Line','NFe Lot Line','LBRA','b4d82b5c-779b-4374-bd37-526c5456adb3')
;

-- 12 de jan de 2023 16:48:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133782,1,'NFe Lot Line',1120758,'LBR_NFeLotLine_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,1123397,'N','N','LBRA','N','N','N','N','6d67e536-1aac-427c-ac94-73e824b49b5f','N','N','N','N')
;

-- 12 de jan de 2023 16:48:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123398,0,0,'Y',TO_DATE('2023-01-12 16:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeLotLine_UU','LBR_NFeLotLine_UU','LBR_NFeLotLine_UU','LBRA','8c98141f-b5c5-4eea-a5a7-04cb8e81992f')
;

-- 12 de jan de 2023 16:48:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133783,1.00,'LBR_NFeLotLine_UU',1120758,'LBR_NFeLotLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2023-01-12 16:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:19','YYYY-MM-DD HH24:MI:SS'),100,1123398,'Y','N','LBRA','N','N','N','Y','11a2a9b1-3aa5-4b30-a8ce-f1661bb5a752','N','N','N','N')
;

-- 12 de jan de 2023 16:48:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133784,1,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120758,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2023-01-12 16:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:20','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','a82dd2f0-801a-4c24-af22-7b1937762e3c','N','N','N','D','N')
;

-- 12 de jan de 2023 16:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133785,1,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120758,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2023-01-12 16:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:20','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','b0265c17-926c-4867-8857-2a23a23b67ce','N','N','N','D','N')
;

-- 12 de jan de 2023 16:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133786,1,'Alert Message','Message of the Alert','The message of the email sent for the alert',1120758,'AlertMessage',2000,'N','N','Y','N','N',0,'N',14,0,0,'Y',TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,2090,'Y','N','LBRA','N','N','N','Y','8974913d-d42d-43b8-9510-1df8e71f72be','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133787,1,'Alert Subject','Subject of the Alert','The subject of the email message sent for the alert',1120758,'AlertSubject',255,'N','N','Y','N','N',0,'N',10,0,0,'Y',TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,2089,'Y','N','LBRA','N','N','N','Y','a71aa807-3e2d-4f15-900e-875b92c0d8ca','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133788,1,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120758,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:21','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','7922bc4f-d79d-44ea-bf70-d60850933de8','N','N','N','N')
;

-- 12 de jan de 2023 16:48:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133789,1,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120758,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','9a055e25-c2c0-4340-91ff-3f7328fb92e1','N','N','N','D','N')
;

-- 12 de jan de 2023 16:48:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133790,1,'Description','Optional short description of the record','A description is limited to 255 characters.',1120758,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','deeb395a-219e-42fa-915d-11dfed221a34','Y',10,'N','N','N')
;

-- 12 de jan de 2023 16:48:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133791,1,'Enforce Client Security','Send alerts to recipient only if the client security rules of the role allows',1120758,'EnforceClientSecurity','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:22','YYYY-MM-DD HH24:MI:SS'),100,2099,'Y','N','LBRA','N','N','N','Y','942355df-7818-4ab1-a424-6c5e8006cfbb','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133792,1,'Enforce Role Security','Send alerts to recipient only if the data security rules of the role allows',1120758,'EnforceRoleSecurity','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-01-12 16:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:23','YYYY-MM-DD HH24:MI:SS'),100,2100,'Y','N','LBRA','N','N','N','Y','504b40be-3bd3-40b1-84e4-acc73cc10ab8','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133793,1,'Comment/Help','Comment or Hint','The Help field contains a hint, comment or help about the use of this item.',1120758,'Help',2000,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_DATE('2023-01-12 16:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:23','YYYY-MM-DD HH24:MI:SS'),100,326,'Y','N','LBRA','N','N','N','Y','1e0acf23-c130-459e-95dc-87f579e49f42','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133794,1,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120758,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','2f9161ee-567e-464b-b653-4c85f0c049a3','N','N','N','N')
;

-- 12 de jan de 2023 16:48:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133795,1,'Valid','Element is valid','The element passed the validation check',1120758,'IsValid','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,2002,'Y','N','LBRA','N','N','N','Y','6bfe0933-5f25-461a-a0cf-c5b2986bebda','Y','N','N','N')
;

-- 12 de jan de 2023 16:48:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133796,1,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120758,'Name',60,'N','N','Y','N','Y',1,'N',10,0,0,'Y',TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:24','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','N','N','Y','41b4ae00-732b-4649-857e-67da86ecbb9b','Y',20,'N','N','N')
;

-- 12 de jan de 2023 16:48:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1133797,1,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120758,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2023-01-12 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','9346535f-f394-4acc-8fec-a30e4ea73fcc','N','N','N','N')
;

-- 12 de jan de 2023 16:48:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133798,1,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120758,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2023-01-12 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','d615a5bf-4e23-4ecb-bce0-7d190a361da3','N','N','N','D','N')
;

-- 12 de jan de 2023 16:48:43 BRT
UPDATE AD_Column SET Name='NFe Lot', Description=NULL, Help=NULL, ColumnName='LBR_NFeLot_ID', AD_Element_ID=1100016, IsUpdateable='N', FKConstraintType=NULL,Updated=TO_DATE('2023-01-12 16:48:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133781
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133786
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133786
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133787
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133787
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133791
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133791
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133792
;

-- 12 de jan de 2023 16:49:00 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133792
;

-- 12 de jan de 2023 16:49:05 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133795
;

-- 12 de jan de 2023 16:49:05 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133795
;

-- 12 de jan de 2023 16:49:09 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133793
;

-- 12 de jan de 2023 16:49:10 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133793
;

-- 12 de jan de 2023 16:49:16 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133796
;

-- 12 de jan de 2023 16:49:16 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133796
;

-- 12 de jan de 2023 16:49:30 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2023-01-12 16:49:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133781
;

-- 12 de jan de 2023 16:51:44 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120212,'LBR_NotaFiscal of Org','S','LBR_NotaFiscal.DocStatus IN (''DR'', ''IP'') AND LBR_NotaFiscal.AD_Org_ID=@AD_Org_ID@',0,0,'Y',TO_DATE('2023-01-12 16:51:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:51:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d45eec6a-6f20-4f92-99d3-a793c3eaa956')
;

-- 12 de jan de 2023 16:51:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133799,0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120758,1120212,'LBR_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',30,1000026,0,0,'Y',TO_DATE('2023-01-12 16:51:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:51:49','YYYY-MM-DD HH24:MI:SS'),100,1000177,'Y','N','LBRA','N','N','N','Y','3cdd3172-3da9-47bd-9eec-3655203c2f95','Y',0,'N','N','N','N')
;

-- 12 de jan de 2023 16:54:21 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1133790
;

-- 12 de jan de 2023 16:54:21 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1133790
;

-- 12 de jan de 2023 16:57:18 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120509,'Lines',1100001,20,'Y',1120758,0,0,'Y',TO_DATE('2023-01-12 16:57:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:12','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1133781,'N','N',1,'N','LBRA','Y','N','d4ac527a-d115-4bed-9fef-5ebde0b890b9','B')
;

-- 12 de jan de 2023 16:57:22 BRT
UPDATE AD_Tab SET IsSingleRow='N',Updated=TO_DATE('2023-01-12 16:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120509
;

-- 12 de jan de 2023 16:57:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131732,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120509,1133784,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','279c73de-2bf3-4bd9-9804-fde0b833765c','N',2)
;

-- 12 de jan de 2023 16:57:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131733,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120509,1133785,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0eff3caa-d2e4-4176-80e4-d2d3124efa82','Y','Y',10,4,2)
;

-- 12 de jan de 2023 16:57:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131734,'NFe Lot',1120509,1133781,'Y',22,30,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1a543162-b5fa-4bdc-b01e-02e6912a68ea','Y',20,2)
;

-- 12 de jan de 2023 16:57:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131735,'NFe Lot Line',1120509,1133782,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6a3af84a-8937-4ff0-9330-f2d7e1e45eea','N',2)
;

-- 12 de jan de 2023 16:57:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131736,'LBR_NFeLotLine_UU',1120509,1133783,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0f042b1c-9acf-4b7d-af43-6c443feee283','N',2)
;

-- 12 de jan de 2023 16:57:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131737,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120509,1133799,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','89f066fe-959e-4cdf-81c1-77a87e85c175','Y',30,2)
;

-- 12 de jan de 2023 16:57:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131738,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120509,1133794,'Y',1,50,'N','N','N','N',0,0,'Y',TO_DATE('2023-01-12 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1e1a1b4-e6ce-4414-86bc-e5d1b037f274','Y',40,2,2)
;

-- 12 de jan de 2023 16:57:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2023-01-12 16:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131737
;

-- 12 de jan de 2023 16:57:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-01-12 16:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131734
;

-- 12 de jan de 2023 16:57:45 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-01-12 16:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131736
;

-- 12 de jan de 2023 16:57:45 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-01-12 16:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131735
;

-- 12 de jan de 2023 16:58:08 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131734
;

-- 12 de jan de 2023 16:58:08 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131733
;

-- 12 de jan de 2023 16:58:08 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131737
;

-- 12 de jan de 2023 16:58:08 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131738
;

-- 12 de jan de 2023 17:02:23 BRT
UPDATE AD_Tab SET OrderByClause='LBR_NFeLot.Created DESC',Updated=TO_DATE('2023-01-12 17:02:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1100001
;

-- 12 de jan de 2023 17:02:58 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100075
;

-- 12 de jan de 2023 17:03:01 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:03:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100074
;

-- 12 de jan de 2023 17:03:07 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:03:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100079
;

-- 12 de jan de 2023 17:03:12 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:03:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100066
;

-- 12 de jan de 2023 17:03:16 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:03:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100077
;

-- 12 de jan de 2023 17:03:23 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100069
;

-- 12 de jan de 2023 17:04:19 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100067
;

-- 12 de jan de 2023 17:04:22 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_DATE('2023-01-12 17:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100078
;

-- 12 de jan de 2023 21:06:54 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNFeLot_LBRNFeLotLine', FKConstraintType='N',Updated=TO_DATE('2023-01-12 21:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133781
;

-- 12 de jan de 2023 21:06:54 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRNFeLotLine', FKConstraintType='N',Updated=TO_DATE('2023-01-12 21:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133799
;

-- 12 de jan de 2023 21:06:54 BRT
CREATE TABLE LBR_NFeLotLine (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_NFeLotLine_ID NUMBER(10) NOT NULL, LBR_NFeLotLine_UU VARCHAR2(36) DEFAULT NULL , LBR_NFeLot_ID NUMBER(10) NOT NULL, LBR_NotaFiscal_ID NUMBER(10) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_NFeLotLine_Key PRIMARY KEY (LBR_NFeLotLine_ID), CONSTRAINT LBR_NFeLotLine_UU_idx UNIQUE (LBR_NFeLotLine_UU))
;

-- 12 de jan de 2023 21:06:54 BRT
ALTER TABLE LBR_NFeLotLine ADD CONSTRAINT LBRNFeLot_LBRNFeLotLine FOREIGN KEY (LBR_NFeLot_ID) REFERENCES lbr_nfelot(lbr_nfelot_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12 de jan de 2023 21:06:54 BRT
ALTER TABLE LBR_NFeLotLine ADD CONSTRAINT LBRNotaFiscal_LBRNFeLotLine FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12 de jan de 2023 21:07:13 BRT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2023-01-12 21:07:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133138
;

-- 12 de jan de 2023 21:08:29 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','The Nota Fiscal is repeated in the same lot',0,0,'Y',TO_DATE('2023-01-12 21:08:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-01-12 21:08:24','YYYY-MM-DD HH24:MI:SS'),100,1120079,'NotaFiscalRepeatedInLot','LBRA','9fbb487e-d749-4e8a-a495-0e3668443a6e')
;

-- 12 de jan de 2023 21:08:52 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,AD_Message_ID,TableIndexDrop,IsKey) VALUES (0,0,1120016,'a55f68d8-8cc5-444a-9813-d1d18633a06d',TO_DATE('2023-01-12 21:08:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Uniq_LBR_NFeLotLine_LBR_NotaFiscal_ID',TO_DATE('2023-01-12 21:08:52','YYYY-MM-DD HH24:MI:SS'),100,1120758,'Y','Y','N',1120079,'N','N')
;

-- 12 de jan de 2023 21:09:12 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120026,'cd3929cc-5545-46c0-994c-2dfb2b31bbb2',TO_DATE('2023-01-12 21:09:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-01-12 21:09:07','YYYY-MM-DD HH24:MI:SS'),100,1133781,1120016,1)
;

-- 12 de jan de 2023 21:09:27 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120027,'10d6a38d-95c9-438f-a979-65b92a2302c0',TO_DATE('2023-01-12 21:09:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-01-12 21:09:27','YYYY-MM-DD HH24:MI:SS'),100,1133799,1120016,2)
;

-- 12 de jan de 2023 21:09:30 BRT
ALTER TABLE LBR_NFeLotLine ADD CONSTRAINT Uniq_LBR_NFeLotLine_LBR_NotaFiscal_ID UNIQUE (LBR_NFeLot_ID,LBR_NotaFiscal_ID)
;

-- 12 de jan de 2023 21:09:30 BRT
SELECT Register_Migration_Script ('202301122014_NFeLotLine.sql') FROM DUAL
;

