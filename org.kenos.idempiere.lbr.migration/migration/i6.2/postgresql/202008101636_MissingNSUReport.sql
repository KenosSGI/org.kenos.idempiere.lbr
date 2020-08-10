-- 10 de ago de 2020 15:33:29 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120691,'Check Missing NSU','LBR_MissingNSU',0,'3',0,0,'Y',TO_TIMESTAMP('2020-08-10 15:33:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:33:28','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','1a5bca18-7636-4ffc-b276-aba58d198b8a','N','N','N','N')
;

-- 10 de ago de 2020 15:33:29 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_MissingNSU',1000000,'N','N','Table LBR_MissingNSU','Y','Y',0,0,TO_TIMESTAMP('2020-08-10 15:33:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:33:29','YYYY-MM-DD HH24:MI:SS'),100,1153937,'Y',1000000,1,200000,'47abb255-171a-4145-a42b-111452cfeb8c')
;

-- 10 de ago de 2020 15:36:49 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,WhereClause,FromClause) VALUES (0,0,1120010,'2fd0ab35-6402-4f16-829d-b22a03b8b915',TO_TIMESTAMP('2020-08-10 15:36:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_MissingNSU',TO_TIMESTAMP('2020-08-10 15:36:49','YYYY-MM-DD HH24:MI:SS'),100,1120691,10,'WHERE NOT EXISTS (SELECT 1 
                     FROM LBR_PartnerDFe 
                    WHERE LBR_NSU IS NOT NULL 
                      AND CAST (LBR_NSU AS INT)=s.ID)','FROM (SELECT AD_Client_ID, AD_Org_ID, GENERATE_SERIES (MIN(CAST (LBR_NSU AS INT)), MAX(CAST (LBR_NSU AS INT))) 
          FROM LBR_PartnerDFe 
         WHERE LBR_NSU IS NOT NULL 
      GROUP BY AD_Client_ID, AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID)')
;

-- 10 de ago de 2020 15:37:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120434,'a1700e24-bf8a-4ef0-b9c3-fe8c8ef53ab7',TO_TIMESTAMP('2020-08-10 15:37:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:37:14','YYYY-MM-DD HH24:MI:SS'),100,1120010,'AD_Client_ID','AD_Client_ID',10)
;

-- 10 de ago de 2020 15:37:23 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120435,'348636a0-7809-491c-9031-675f3343d15d',TO_TIMESTAMP('2020-08-10 15:37:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:37:22','YYYY-MM-DD HH24:MI:SS'),100,1120010,'AD_Org_ID','AD_Org_ID',20)
;

-- 10 de ago de 2020 15:37:43 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120436,'9a67d503-5768-4fa3-81d7-3c6c1c8718bb',TO_TIMESTAMP('2020-08-10 15:37:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:37:43','YYYY-MM-DD HH24:MI:SS'),100,1120010,'Created','NOW()',30)
;

-- 10 de ago de 2020 15:37:53 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120437,'8a29e201-8003-4977-8c7b-a588b40b54f0',TO_TIMESTAMP('2020-08-10 15:37:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:37:53','YYYY-MM-DD HH24:MI:SS'),100,1120010,'CreatedBy','0',40)
;

-- 10 de ago de 2020 15:38:10 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120438,'65d4721a-a34b-47ca-8700-c5e225b675c3',TO_TIMESTAMP('2020-08-10 15:38:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:38:10','YYYY-MM-DD HH24:MI:SS'),100,1120010,'Updated','NOW()',50)
;

-- 10 de ago de 2020 15:38:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120439,'1a94dbc9-7c4e-40c8-bc5c-c94d6c52efd6',TO_TIMESTAMP('2020-08-10 15:38:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:38:16','YYYY-MM-DD HH24:MI:SS'),100,1120010,'UpdatedBy','0',60)
;

-- 10 de ago de 2020 15:38:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120440,'d0825e10-36e7-4404-915c-c8269aba3d4f',TO_TIMESTAMP('2020-08-10 15:38:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:38:28','YYYY-MM-DD HH24:MI:SS'),100,1120010,'IsActive','''Y''',70)
;

-- 10 de ago de 2020 15:39:07 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120441,'b1050bd4-deb1-45ec-be8f-e0b8d87a45af',TO_TIMESTAMP('2020-08-10 15:39:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:39:07','YYYY-MM-DD HH24:MI:SS'),100,1120010,'LBR_NSU','LPAD (CAST (s.ID AS TEXT), 15, ''0'')',80)
;

-- 10 de ago de 2020 15:39:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132475,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120691,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','b9f33a11-fa20-4baf-8c3b-1aac3ce22f46','N','D')
;

-- 10 de ago de 2020 15:39:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132476,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120691,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','28a6cee0-4961-4968-95c8-b036e7683bea','N','D')
;

-- 10 de ago de 2020 15:39:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132477,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120691,'Created','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:41','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','253c9348-337d-42f3-938e-2361c9c860de','N')
;

-- 10 de ago de 2020 15:39:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132478,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120691,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:42','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','cd1e9ad7-dc0f-476a-95de-060557182a02','N','D')
;

-- 10 de ago de 2020 15:39:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132479,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120691,'Updated','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:42','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','1289d1b9-f30c-4ac1-a8f0-fb58cc9a05fe','N')
;

-- 10 de ago de 2020 15:39:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132480,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120691,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','844d256b-6699-420a-82ad-7f9733c39946','N','D')
;

-- 10 de ago de 2020 15:39:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132481,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120691,'IsActive','Y',2147483647,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','047671fd-6d85-4152-9e60-8bb7cf944e09','N')
;

-- 10 de ago de 2020 15:39:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1132482,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120691,'LBR_NSU',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:39:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:39:44','YYYY-MM-DD HH24:MI:SS'),100,1122885,'N','N','LBRA','N','50795c9d-cb10-47b9-8c73-dad457402e34','N','N')
;

-- 10 de ago de 2020 15:41:43 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120442,'e7577a68-ce04-41bd-899e-2a5656edf8cf',TO_TIMESTAMP('2020-08-10 15:41:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 15:41:43','YYYY-MM-DD HH24:MI:SS'),100,1120010,'LBR_FixMissingNSU','NULL',90)
;

-- 10 de ago de 2020 15:42:08 BRT
UPDATE AD_ViewColumn SET ColumnSQL='''N''',Updated=TO_TIMESTAMP('2020-08-10 15:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120442
;

-- 10 de ago de 2020 15:42:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123186,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:42:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:42:35','YYYY-MM-DD HH24:MI:SS'),100,'lbr_fixmissingnsu','lbr_fixmissingnsu','lbr_fixmissingnsu','LBRA','f0d57f06-9480-4339-9155-570f4a96a9c5')
;

-- 10 de ago de 2020 15:42:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132483,0.0,'lbr_fixmissingnsu',1120691,'lbr_fixmissingnsu',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:42:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:42:35','YYYY-MM-DD HH24:MI:SS'),100,1123186,'N','N','LBRA','N','d2cb91fc-8a26-4371-bbcf-dd0dc08e0fb2','N')
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_Element SET ColumnName='LBR_FixMissingNSU', Name='Fix Missing NSU', PrintName='Fix Missing NSU',Updated=TO_TIMESTAMP('2020-08-10 15:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123186
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_Column SET ColumnName='LBR_FixMissingNSU', Name='Fix Missing NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123186
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_FixMissingNSU', Name='Fix Missing NSU', Description=NULL, Help=NULL, AD_Element_ID=1123186 WHERE UPPER(ColumnName)='LBR_FIXMISSINGNSU' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_FixMissingNSU', Name='Fix Missing NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123186 AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_FixMissingNSU', Name='Fix Missing NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123186 AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_Field SET Name='Fix Missing NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123186) AND IsCentrallyMaintained='Y'
;

-- 10 de ago de 2020 15:42:56 BRT
UPDATE AD_PrintFormatItem SET PrintName='Fix Missing NSU', Name='Fix Missing NSU' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123186)
;

-- 10 de ago de 2020 15:43:43 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120047,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:43:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:43:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MissingNSU',1120691,'LBRA','00ea1c25-2e1f-4b4a-be10-ee351cb5e651')
;

-- 10 de ago de 2020 15:45:12 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120251,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:45:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:45:11','YYYY-MM-DD HH24:MI:SS'),100,'Missing NSU','Check the missing NSU','In case you want to try to get missing NSU from SeFaz, mark the parameter','Y','LBR_MissingNSU','N','org.kenos.idempiere.lbr.nfe.process.CheckNSUSequence','3','LBRA',0,0,'N','N','Y','N','7021c1fd-db20-4ef6-8fe1-5ca6ae25f7a5','N')
;

-- 10 de ago de 2020 15:45:22 BRT
UPDATE AD_Process SET AD_ReportView_ID=1120047,Updated=TO_TIMESTAMP('2020-08-10 15:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120251
;

-- 10 de ago de 2020 15:45:56 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,AD_Val_Rule_ID) VALUES (1120509,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:45:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:45:56','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120251,10,19,322,'N',0,'N','AD_Org_ID','Y','LBRA',113,'c45b963a-e5d9-461e-be6b-3c0fda85e107','N',202)
;

-- 10 de ago de 2020 15:46:22 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120510,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:46:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:46:21','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120251,20,15,'Y',0,'Y','DateDoc','Y','LBRA',265,'c49ffe1b-2a37-41d5-8099-bb13e77e1c85','N')
;

-- 10 de ago de 2020 15:46:51 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120511,0,0,'Y',TO_TIMESTAMP('2020-08-10 15:46:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:46:50','YYYY-MM-DD HH24:MI:SS'),100,'Fix Missing NSU',1120251,30,20,'N',0,'Y','N','LBR_FixMissingNSU','Y','LBRA',1123186,'ab3ab488-4050-4c9c-98c7-7b4754d44eb6','N')
;

-- 10 de ago de 2020 15:47:00 BRT
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2020-08-10 15:47:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120509
;

-- 10 de ago de 2020 15:47:46 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120364,'NSU Check','R',0,0,'Y',TO_TIMESTAMP('2020-08-10 15:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 15:47:46','YYYY-MM-DD HH24:MI:SS'),100,'N',1120251,'Y','N','LBRA','Y','3840f3a9-e0ee-4fc1-a7b0-2cc888bdafa2')
;

-- 10 de ago de 2020 15:47:46 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120364, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120364)
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 10 de ago de 2020 15:48:09 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 10 de ago de 2020 15:48:10 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 10 de ago de 2020 15:48:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 10 de ago de 2020 16:15:41 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120443,'b0a98835-8fce-4947-8159-4fbf0fd99964',TO_TIMESTAMP('2020-08-10 16:15:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-10 16:15:41','YYYY-MM-DD HH24:MI:SS'),100,1120010,'DateDoc','CAST (NULL AS TIMESTAMP)',100)
;

-- 10 de ago de 2020 16:15:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1132498,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120691,'DateDoc','@#Date@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-08-10 16:15:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-10 16:15:55','YYYY-MM-DD HH24:MI:SS'),100,265,'N','N','LBRA','N','d2844a84-470f-45ab-80f7-afa8ef2cf33d','N')
;

-- 10 de ago de 2020 16:16:16 BRT
UPDATE AD_Process_Para SET SeqNo=40, IsMandatory='N',Updated=TO_TIMESTAMP('2020-08-10 16:16:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120510
;

-- 10 de ago de 2020 16:16:40 BRT
UPDATE AD_Process_Para SET DisplayLogic='@LBR_FixMissingNSU@=Y', MandatoryLogic='@LBR_FixMissingNSU@=Y',Updated=TO_TIMESTAMP('2020-08-10 16:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120510
;

-- 10 de ago de 2020 19:30:06 BRT
UPDATE AD_ViewColumn SET DBDataType='I',Updated=TO_TIMESTAMP('2020-08-10 19:30:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120434
;

-- 10 de ago de 2020 19:30:08 BRT
UPDATE AD_ViewColumn SET DBDataType='I',Updated=TO_TIMESTAMP('2020-08-10 19:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120435
;

-- 10 de ago de 2020 19:30:14 BRT
UPDATE AD_ViewColumn SET DBDataType='T',Updated=TO_TIMESTAMP('2020-08-10 19:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120436
;

-- 10 de ago de 2020 19:30:18 BRT
UPDATE AD_ViewColumn SET DBDataType='I',Updated=TO_TIMESTAMP('2020-08-10 19:30:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120437
;

-- 10 de ago de 2020 19:30:21 BRT
UPDATE AD_ViewColumn SET DBDataType='T',Updated=TO_TIMESTAMP('2020-08-10 19:30:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120438
;

-- 10 de ago de 2020 19:30:25 BRT
UPDATE AD_ViewColumn SET DBDataType='I',Updated=TO_TIMESTAMP('2020-08-10 19:30:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120439
;

-- 10 de ago de 2020 19:30:39 BRT
UPDATE AD_ViewColumn SET DBDataType='V',Updated=TO_TIMESTAMP('2020-08-10 19:30:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120440
;

-- 10 de ago de 2020 19:30:44 BRT
UPDATE AD_ViewColumn SET DBDataType='V',Updated=TO_TIMESTAMP('2020-08-10 19:30:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120441
;

-- 10 de ago de 2020 19:30:49 BRT
UPDATE AD_ViewColumn SET DBDataType='V',Updated=TO_TIMESTAMP('2020-08-10 19:30:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120442
;

-- 10 de ago de 2020 19:30:53 BRT
UPDATE AD_ViewColumn SET DBDataType='T',Updated=TO_TIMESTAMP('2020-08-10 19:30:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120443
;

-- 10 de ago de 2020 19:36:45 BRT
UPDATE AD_ViewColumn SET ColumnSQL='CAST (''Y'' AS TEXT)',Updated=TO_TIMESTAMP('2020-08-10 19:36:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120440
;

-- 10 de ago de 2020 19:36:50 BRT
UPDATE AD_ViewColumn SET ColumnSQL='CAST (''N'' AS TEXT)',Updated=TO_TIMESTAMP('2020-08-10 19:36:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120442
;

-- 10 de ago de 2020 19:36:56 BRT
CREATE OR REPLACE VIEW LBR_MissingNSU(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_FixMissingNSU, DateDoc) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, CAST ('Y' AS TEXT) AS IsActive, LPAD (CAST (s.ID AS TEXT), 15, '0') AS LBR_NSU, CAST ('N' AS TEXT) AS LBR_FixMissingNSU, CAST (NULL AS TIMESTAMP) AS DateDoc FROM (SELECT AD_Client_ID, AD_Org_ID, GENERATE_SERIES (MIN(CAST (LBR_NSU AS INT)), MAX(CAST (LBR_NSU AS INT))) FROM LBR_PartnerDFe WHERE LBR_NSU IS NOT NULL GROUP BY AD_Client_ID, AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID) WHERE NOT EXISTS (SELECT 1 FROM LBR_PartnerDFe WHERE LBR_NSU IS NOT NULL AND CAST (LBR_NSU AS INT)=s.ID)
;


SELECT Register_Migration_Script ('202008101636_MissingNSUReport.sql') FROM DUAL
;