SET SQLBLANKLINES ON
SET DEFINE OFF

-- 6 de abr de 2021 16:31:22 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120754,'Partner Doc Report',1120108,'RV_LBR_PartnerDFe',0,'3',0,0,'Y',TO_DATE('2021-04-06 16:31:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:31:21','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','8886a40c-3f29-4236-a0ad-dd18f2e8e835','N','N')
;

-- 6 de abr de 2021 16:31:22 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_PartnerDFe',1000000,'N','N','Table RV_LBR_PartnerDFe','Y','Y',0,0,TO_DATE('2021-04-06 16:31:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:31:22','YYYY-MM-DD HH24:MI:SS'),100,1154029,'Y',1000000,1,200000,'2b97d6af-5b09-478d-8820-c9c5dc36ed87')
;

-- 6 de abr de 2021 16:32:00 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,WhereClause,FromClause) VALUES (0,0,1120029,'9785ea25-405e-4eef-9d6d-1564e63a2b0b',TO_DATE('2021-04-06 16:32:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_PartnerDFe',TO_DATE('2021-04-06 16:32:00','YYYY-MM-DD HH24:MI:SS'),100,1120754,10,'WHERE dfe.DocumentType=''0''','FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN (''CL'', ''CO''))')
;

-- 6 de abr de 2021 16:32:19 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120684,'f389c58e-d32e-43bf-ade4-819230a3c858',TO_DATE('2021-04-06 16:32:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:32:19','YYYY-MM-DD HH24:MI:SS'),100,1120029,'LBR_PartnerDFe_ID','dfe.LBR_PartnerDFe_ID',10)
;

-- 6 de abr de 2021 16:32:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120685,'d2b62d62-2048-4693-b563-9e1fe5e7de24',TO_DATE('2021-04-06 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,1120029,'AD_CLient_ID','dfe.AD_CLient_ID',20)
;

-- 6 de abr de 2021 16:32:41 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120686,'f7890353-6834-468d-8a8d-f443078d2ad7',TO_DATE('2021-04-06 16:32:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:32:41','YYYY-MM-DD HH24:MI:SS'),100,1120029,'AD_Org_ID','dfe.AD_Org_ID',30)
;

-- 6 de abr de 2021 16:32:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120687,'2c6a8dc9-1303-4fc4-aae1-2da79bfe9c23',TO_DATE('2021-04-06 16:32:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:32:51','YYYY-MM-DD HH24:MI:SS'),100,1120029,'Created','dfe.Created',40)
;

-- 6 de abr de 2021 16:33:02 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120688,'9bdfae72-1fc4-41bd-9dba-48b442f04c33',TO_DATE('2021-04-06 16:33:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:33:01','YYYY-MM-DD HH24:MI:SS'),100,1120029,'CreatedBy','dfe.CreatedBy',50)
;

-- 6 de abr de 2021 16:33:09 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120689,'c675651f-0a3d-4d6e-b439-9840ce83a26e',TO_DATE('2021-04-06 16:33:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:33:09','YYYY-MM-DD HH24:MI:SS'),100,1120029,'Updated','dfe.Updated',60)
;

-- 6 de abr de 2021 16:33:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120690,'2040ebca-4c44-454f-9f9b-e69be1bc7cc9',TO_DATE('2021-04-06 16:33:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:33:17','YYYY-MM-DD HH24:MI:SS'),100,1120029,'UpdatedBy','dfe.UpdatedBy',70)
;

-- 6 de abr de 2021 16:33:25 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120691,'45417766-9a4d-4d23-82f8-e2831fe14876',TO_DATE('2021-04-06 16:33:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:33:25','YYYY-MM-DD HH24:MI:SS'),100,1120029,'IsActive','dfe.IsActive',80)
;

-- 6 de abr de 2021 16:33:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120692,'b4ddf4b6-f384-4d15-9292-f6b0da08caf8',TO_DATE('2021-04-06 16:33:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:33:37','YYYY-MM-DD HH24:MI:SS'),100,1120029,'LBR_NFeID','dfe.LBR_NFeID',90)
;

-- 6 de abr de 2021 16:34:01 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120693,'e037765d-5de8-4721-957f-99b51f327bb8',TO_DATE('2021-04-06 16:34:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:34:00','YYYY-MM-DD HH24:MI:SS'),100,1120029,'Created','nfe.Created',100)
;

-- 6 de abr de 2021 16:34:25 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120694,'9f967a6b-8168-4f39-9c3e-36f780b60a37',TO_DATE('2021-04-06 16:34:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:34:25','YYYY-MM-DD HH24:MI:SS'),100,1120029,'CreatedBy','nfe.CreatedBy',110)
;

-- 6 de abr de 2021 16:34:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120695,'ce01acb4-c0b5-4987-a3e9-8b36950eb8a7',TO_DATE('2021-04-06 16:34:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:34:42','YYYY-MM-DD HH24:MI:SS'),100,1120029,'IsValid','(CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN ''Y'' ELSE ''N'' END)',120)
;

-- 6 de abr de 2021 16:36:59 BRT
UPDATE AD_ViewColumn SET ColumnName='AD_User_ID',Updated=TO_DATE('2021-04-06 16:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120694
;

-- 6 de abr de 2021 16:37:02 BRT
UPDATE AD_ViewColumn SET ColumnName='CreatedDate',Updated=TO_DATE('2021-04-06 16:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120693
;

-- 6 de abr de 2021 16:37:09 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 16:37:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133675,0.0,'Partner Doc Fiscal',1120754,'LBR_PartnerDFe_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2021-04-06 16:37:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:17','YYYY-MM-DD HH24:MI:SS'),100,1121790,'N','N','LBRA','N','d2dadb4f-8cc1-4446-8b24-649bf4de2863','N')
;

-- 6 de abr de 2021 16:37:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133676,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120754,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','c7be4ff4-f18d-4015-b5a3-d6e36bd14184','N','D')
;

-- 6 de abr de 2021 16:37:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133677,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120754,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','eb74c869-bed5-4f90-a305-1ebcf87a11f7','N','D')
;

-- 6 de abr de 2021 16:37:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133678,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120754,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:18','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','49b37262-f7fb-4515-af19-a142b96859fb','N')
;

-- 6 de abr de 2021 16:37:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133679,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120754,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','8db71b78-b12a-4f17-a27a-e6e99d5c317f','N','D')
;

-- 6 de abr de 2021 16:37:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133680,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120754,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','8dc15533-3ed0-4c61-9df1-5af3719d3aca','N')
;

-- 6 de abr de 2021 16:37:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133681,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120754,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','9281df59-97dd-47d8-8a7c-b81878f995b4','N','D')
;

-- 6 de abr de 2021 16:37:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133682,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120754,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','9558a5b1-b85a-444c-a0f9-88c84ecef0d7','N')
;

-- 6 de abr de 2021 16:37:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133683,0.0,'NFe ID','Identification of NFe',1120754,'lbr_NFeID',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,1100017,'N','N','LBRA','N','ad790d9e-da11-4ed2-a4c5-946270f9620e','N','N')
;

-- 6 de abr de 2021 16:37:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133684,0.0,'CreatedDate',1120754,'CreatedDate',29,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,50002,'N','N','LBRA','N','bb965c09-7005-45a2-808b-7d8a4674bf8d','N')
;

-- 6 de abr de 2021 16:37:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133685,0.0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1120754,'AD_User_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,138,'N','N','LBRA','N','116be304-69e9-4bd1-b108-1f30adff2f8e','N')
;

-- 6 de abr de 2021 16:37:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133686,0.0,'Valid','Element is valid','The element passed the validation check',1120754,'IsValid',2147483647,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2021-04-06 16:37:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:37:21','YYYY-MM-DD HH24:MI:SS'),100,2002,'N','N','LBRA','N','1a27b6f1-cf10-4e52-bd7d-de86504317bf','N')
;

-- 6 de abr de 2021 16:38:19 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120048,0,0,'Y',TO_DATE('2021-04-06 16:38:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:38:19','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_PartnerDFe',1120754,'LBRA','31cb3e53-93d4-422f-8793-6e43d7773458')
;

-- 6 de abr de 2021 16:38:53 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120293,0,0,'Y',TO_DATE('2021-04-06 16:38:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:38:53','YYYY-MM-DD HH24:MI:SS'),100,'Partner Doc Report','Y','RV_LBR_PartnerDFe','N',1120048,'3','LBRA',0,0,'N','N','Y','N','18deeff9-4883-448e-a580-c3208b1a2dae','P')
;

-- 6 de abr de 2021 16:39:33 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120558,0,0,'Y',TO_DATE('2021-04-06 16:39:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:39:32','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120293,10,18,322,'N',202,0,'Y','AD_Org_ID','Y','LBRA',113,'7114b72f-72d7-48c3-9cd6-36bab42bca7b','N')
;

-- 6 de abr de 2021 16:40:24 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120559,0,0,'Y',TO_DATE('2021-04-06 16:40:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:40:24','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120293,20,15,'Y',0,'N','DateDoc','Y','LBRA',265,'bc2ac37d-15d5-4ec9-9dc9-90dbcdef7e82','N')
;

-- 6 de abr de 2021 16:41:32 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,VFormat,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120560,0,0,'Y',TO_DATE('2021-04-06 16:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:41:31','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120293,30,10,'N',0,'N','00.000.000/0000-00','lbr_CNPJ','Y','LBRA',1000009,'fb134ef6-bd37-4500-a80f-08e3857d70bd','N')
;

-- 6 de abr de 2021 16:41:56 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120561,0,0,'Y',TO_DATE('2021-04-06 16:41:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:41:55','YYYY-MM-DD HH24:MI:SS'),100,'NFe ID','Identification of NFe',1120293,40,10,'N',0,'N','lbr_NFeID','Y','LBRA',1100017,'b60d5da8-5b59-4f00-a3bb-b0f2f7668a7e','N')
;

-- 6 de abr de 2021 16:42:21 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120562,0,0,'Y',TO_DATE('2021-04-06 16:42:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:42:21','YYYY-MM-DD HH24:MI:SS'),100,'Valid','Element is valid','The element passed the validation check',1120293,50,17,319,'N',0,'N','IsValid','Y','LBRA',2002,'408780ff-765a-487e-9b2a-d8be4952a773','N')
;

-- 6 de abr de 2021 16:42:49 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120696,'7e71de22-36e8-4312-a907-2c32b3a8da5b',TO_DATE('2021-04-06 16:42:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:42:49','YYYY-MM-DD HH24:MI:SS'),100,1120029,'DateDoc','dfe.DateDoc',130)
;

-- 6 de abr de 2021 16:42:59 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120697,'65083aa5-ba21-46a3-972c-272adfbc5c35',TO_DATE('2021-04-06 16:42:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:42:59','YYYY-MM-DD HH24:MI:SS'),100,1120029,'LBR_CNPJ','dfe.LBR_CNPJ',140)
;

-- 6 de abr de 2021 16:43:04 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 16:43:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133687,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120754,'DateDoc','@#Date@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2021-04-06 16:43:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:43:15','YYYY-MM-DD HH24:MI:SS'),100,265,'N','N','LBRA','N','f2657abb-5ea9-4c04-9148-e3bf140e92be','N')
;

-- 6 de abr de 2021 16:43:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133688,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120754,'lbr_CNPJ',18,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 16:43:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:43:16','YYYY-MM-DD HH24:MI:SS'),100,1000009,'N','N','LBRA','N','4443f431-2613-44aa-8c84-31033ecb7ae0','N')
;

-- 6 de abr de 2021 16:43:59 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120393,'Partner Doc Report','R',0,0,'Y',TO_DATE('2021-04-06 16:43:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:43:59','YYYY-MM-DD HH24:MI:SS'),100,'N',1120293,'Y','N','LBRA','Y','6c07ff4b-4055-4e7a-a7cc-8e1e00a1a424')
;

-- 6 de abr de 2021 16:43:59 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120393, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120393)
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 6 de abr de 2021 16:44:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 6 de abr de 2021 16:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 6 de abr de 2021 16:44:29 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 6 de abr de 2021 16:44:32 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 6 de abr de 2021 16:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 6 de abr de 2021 16:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 6 de abr de 2021 16:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=28, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 6 de abr de 2021 16:53:34 BRT
UPDATE AD_Process_Para SET DefaultValue='N',Updated=TO_DATE('2021-04-06 16:53:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120562
;

-- 6 de abr de 2021 16:54:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120698,'a70e4081-6d67-4af0-903b-3ab7b69813f7',TO_DATE('2021-04-06 16:54:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 16:54:02','YYYY-MM-DD HH24:MI:SS'),100,1120029,'BPName','dfe.BPName',150)
;

-- 6 de abr de 2021 16:54:10 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ, BPName) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ, dfe.BPName AS BPName FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 16:54:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133689,0.0,'BP Name',1120754,'BPName',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,2510,'N','Y','LBRA','N','b9ccbc71-fd53-441a-9192-6e1eaa7c6f2a',10,'N')
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 6 de abr de 2021 17:56:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120699,'8c376bf1-d946-4bb5-b00d-c027a602eddc',TO_DATE('2021-04-06 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,1120029,'IsCancelled','dfe.IsCancelled',160)
;

-- 6 de abr de 2021 17:56:41 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ, BPName, IsCancelled) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ, dfe.BPName AS BPName, dfe.IsCancelled AS IsCancelled FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 17:56:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133690,0.0,'Cancelled','The transaction was cancelled',1120754,'IsCancelled',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2021-04-06 17:56:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 17:56:51','YYYY-MM-DD HH24:MI:SS'),100,2531,'N','N','LBRA','N','f01b7c1b-7ccc-4be4-a1f0-c3ec993c9f1c','N')
;

-- 6 de abr de 2021 17:57:37 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120563,0,0,'Y',TO_DATE('2021-04-06 17:57:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 17:57:37','YYYY-MM-DD HH24:MI:SS'),100,'Cancelled','The transaction was cancelled',1120293,60,17,319,'N',0,'N','IsCancelled','Y','LBRA',2531,'a872d27e-88f6-4057-a5fb-2b322b89a873','N')
;

-- 6 de abr de 2021 17:57:48 BRT
UPDATE AD_Process_Para SET DefaultValue='N',Updated=TO_DATE('2021-04-06 17:57:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120563
;

-- 6 de abr de 2021 18:26:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120700,'5cdc1a2f-b021-4879-9b94-d5af812a1a64',TO_DATE('2021-04-06 18:26:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 18:26:51','YYYY-MM-DD HH24:MI:SS'),100,1120029,'GrandTotal','dfe.GrandTotal',170)
;

-- 6 de abr de 2021 18:27:04 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ, BPName, IsCancelled, GrandTotal) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ, dfe.BPName AS BPName, dfe.IsCancelled AS IsCancelled, dfe.GrandTotal AS GrandTotal FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 18:27:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133691,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120754,'GrandTotal',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2021-04-06 18:27:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:27:18','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','695979c3-d7b4-4d0c-ab7e-d4af50348ac8','N')
;

-- 6 de abr de 2021 18:44:49 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120701,'9e79f8ce-2adb-4843-916a-24e58df41c40',TO_DATE('2021-04-06 18:44:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 18:44:48','YYYY-MM-DD HH24:MI:SS'),100,1120029,'lbr_NFENo','SUBSTRING (dfe.LBR_NFeID, 26, 9)',180)
;

-- 6 de abr de 2021 18:45:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120702,'c9a5ca28-6ea6-4aa7-9a3d-72e4a3e57c02',TO_DATE('2021-04-06 18:45:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 18:45:16','YYYY-MM-DD HH24:MI:SS'),100,1120029,'lbr_NFSerie','SUBSTRING (LBR_NFeID, 23, 3)',190)
;

-- 6 de abr de 2021 18:45:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120703,'05a099f2-12a3-43ef-bbf6-7d7c75ee7851',TO_DATE('2021-04-06 18:45:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-04-06 18:45:31','YYYY-MM-DD HH24:MI:SS'),100,1120029,'IsSOTrx','dfe.IsSOTrx',200)
;

-- 6 de abr de 2021 18:45:35 BRT
UPDATE AD_ViewColumn SET ColumnSQL='SUBSTRING (dfe.LBR_NFeID, 23, 3)',Updated=TO_DATE('2021-04-06 18:45:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120702
;

-- 6 de abr de 2021 18:45:48 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ, BPName, IsCancelled, GrandTotal, lbr_NFENo, lbr_NFSerie, IsSOTrx) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ, dfe.BPName AS BPName, dfe.IsCancelled AS IsCancelled, dfe.GrandTotal AS GrandTotal, SUBSTRING (dfe.LBR_NFeID, 26, 9) AS lbr_NFENo, SUBSTRING (dfe.LBR_NFeID, 23, 3) AS lbr_NFSerie, dfe.IsSOTrx AS IsSOTrx FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 6 de abr de 2021 18:45:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133692,0.0,'NFe No',1120754,'lbr_NFENo',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 18:45:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:45:58','YYYY-MM-DD HH24:MI:SS'),100,1000325,'N','N','LBRA','N','7bdee10e-fb58-41cf-be6a-281cf00c5b2a','N','N')
;

-- 6 de abr de 2021 18:45:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133693,0.0,'NF Serie',1120754,'lbr_NFSerie',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-04-06 18:45:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:45:59','YYYY-MM-DD HH24:MI:SS'),100,1100010,'N','N','LBRA','N','92f2bc77-8061-4a9c-9eab-afd115de7eea','N')
;

-- 6 de abr de 2021 18:45:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133694,0.0,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120754,'IsSOTrx',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2021-04-06 18:45:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:45:59','YYYY-MM-DD HH24:MI:SS'),100,1106,'N','N','LBRA','N','cafc1a56-dcbf-483a-b9b3-368ca7b3afbd','N')
;

-- 6 de abr de 2021 18:46:28 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120564,0,0,'Y',TO_DATE('2021-04-06 18:46:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:46:27','YYYY-MM-DD HH24:MI:SS'),100,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120293,70,17,319,'N',0,'N','IsSOTrx','Y','LBRA',1106,'4ef7ada9-b81e-4047-8694-1d023d1e317c','N')
;

-- 6 de abr de 2021 18:47:28 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,VFormat,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120565,0,0,'Y',TO_DATE('2021-04-06 18:47:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:47:28','YYYY-MM-DD HH24:MI:SS'),100,'NFe No',1120293,80,10,'N',0,'N','000000000','lbr_NFENo','Y','LBRA',1000325,'5e07c8d5-f2a7-4908-8e6b-58a05b9e83f8','N')
;

-- 6 de abr de 2021 18:47:55 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,VFormat,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120566,0,0,'Y',TO_DATE('2021-04-06 18:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:47:55','YYYY-MM-DD HH24:MI:SS'),100,'NF Serie',1120293,90,10,'N',0,'N','000','lbr_NFSerie','Y','LBRA',1100010,'6153bd98-f077-48d4-aa7d-10ad56df1383','N')
;

-- 6 de abr de 2021 18:48:15 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120567,0,0,'Y',TO_DATE('2021-04-06 18:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-06 18:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120293,100,12,'Y',0,'N','GrandTotal','Y','LBRA',316,'5a4287ae-98ec-42cd-b74c-843816483ae9','N')
;

-- 6 de abr de 2021 16:54:18 BRT
SELECT Register_Migration_Script ('202104061651_RV_LBR_PartnerDFe.sql') FROM DUAL
;

