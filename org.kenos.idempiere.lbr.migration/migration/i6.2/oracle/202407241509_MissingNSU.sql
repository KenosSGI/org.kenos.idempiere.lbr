SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de jul de 2024 14:18:28 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120779,'LBR_CTeNSUControl','LBR_CTeNSUControl',0,'3',0,0,'Y',TO_DATE('2024-07-24 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:18:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','565db428-aeae-4924-ac6b-05f6a3f4f38e','N','N','N','N')
;

-- 24 de jul de 2024 14:18:28 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeNSUControl',1000000,'N','N','Table LBR_CTeNSUControl','Y','Y',0,0,TO_DATE('2024-07-24 14:18:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:18:28','YYYY-MM-DD HH24:MI:SS'),100,1154054,'Y',1000000,1,200000,'9be7c61a-afe8-43ed-a830-07bf16e1a8a9')
;

-- 24 de jul de 2024 14:18:54 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120034,'ae68f36b-a2e2-495e-af40-705f2a7028bb',TO_DATE('2024-07-24 14:18:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CTeNSUControl',TO_DATE('2024-07-24 14:18:53','YYYY-MM-DD HH24:MI:SS'),100,1120779,10,'FROM LBR_CTe')
;

-- 24 de jul de 2024 14:19:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120806,'685bbd10-30a4-4f45-b974-ad0cb7ae613e',TO_DATE('2024-07-24 14:19:04','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-24 14:19:04','YYYY-MM-DD HH24:MI:SS'),100,1120034,'AD_Org_ID','AD_Org_ID',10)
;

-- 24 de jul de 2024 14:19:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120807,'bf57767a-3a7e-4aca-a994-9dc473667564',TO_DATE('2024-07-24 14:19:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:19:17','YYYY-MM-DD HH24:MI:SS'),100,1120034,'LBR_NSU','CAST(LBR_NSU AS INT)',20)
;

-- 24 de jul de 2024 14:19:38 BRT
UPDATE AD_ViewComponent SET WhereClause='WHERE LBR_NSU IS NOT NULL',Updated=TO_DATE('2024-07-24 14:19:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120034
;

-- 24 de jul de 2024 14:19:56 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,WhereClause,FromClause) VALUES (0,0,1120035,'6eaadf9b-259b-42d7-be66-7e89cea27b59',TO_DATE('2024-07-24 14:19:55','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_CTeNSUControl',TO_DATE('2024-07-24 14:19:55','YYYY-MM-DD HH24:MI:SS'),100,1120779,10,'WHERE LBR_NSU IS NOT NULL','FROM LBR_CTeEvent')
;

-- 24 de jul de 2024 14:20:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120808,'1b18402c-0176-43ea-bfff-af61bf5cf76d',TO_DATE('2024-07-24 14:20:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:20:03','YYYY-MM-DD HH24:MI:SS'),100,1120035,'AD_Org_ID','AD_Org_ID',10)
;

-- 24 de jul de 2024 14:20:15 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120809,'35b6a8f7-b13d-48a6-8096-da6e631b6d74',TO_DATE('2024-07-24 14:20:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:20:15','YYYY-MM-DD HH24:MI:SS'),100,1120035,'LBR_NSU','CAST(LBR_NSU AS INT)',20)
;

-- 24 de jul de 2024 14:20:24 BRT
CREATE OR REPLACE VIEW LBR_CTeNSUControl(AD_Org_ID, LBR_NSU) AS SELECT AD_Org_ID AS AD_Org_ID, CAST(LBR_NSU AS INT) AS LBR_NSU FROM LBR_CTe WHERE LBR_NSU IS NOT NULL UNION SELECT AD_Org_ID AS AD_Org_ID, CAST(LBR_NSU AS INT) AS LBR_NSU FROM LBR_CTeEvent WHERE LBR_NSU IS NOT NULL
;

-- 24 de jul de 2024 14:20:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134220,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120779,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','c29f890d-f606-4327-a34e-f180a7e03bca','N','D')
;

-- 24 de jul de 2024 14:20:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134221,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120779,'LBR_NSU',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-24 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,1122885,'N','N','LBRA','N','0cd32bde-f36d-4ba3-bcf8-b2840a1c5f9a','N','N')
;

-- 24 de jul de 2024 14:21:00 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120780,'LBR_CTeNSURange','LBR_CTeNSURange',0,'3',0,0,'Y',TO_DATE('2024-07-24 14:20:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:20:59','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','70256210-38cd-495f-ae71-eeb23af8c8e6','N','N','N','N')
;

-- 24 de jul de 2024 14:21:00 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeNSURange',1000000,'N','N','Table LBR_CTeNSURange','Y','Y',0,0,TO_DATE('2024-07-24 14:21:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:21:00','YYYY-MM-DD HH24:MI:SS'),100,1154055,'Y',1000000,1,200000,'1fd62a04-ce06-4310-b5cd-489d5323d816')
;

-- 24 de jul de 2024 14:21:27 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,OtherClause,SeqNo,FromClause) VALUES (0,0,1120036,'686fda21-1be3-486e-9de6-6ed3f55a764a',TO_DATE('2024-07-24 14:21:27','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_CTeNSURange',TO_DATE('2024-07-24 14:21:27','YYYY-MM-DD HH24:MI:SS'),100,1120780,'GROUP BY AD_Org_ID',10,'FROM LBR_CTeNSUControl ')
;

-- 24 de jul de 2024 14:21:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120810,'b7d36a45-ce14-4c04-b320-bf5bed2cd5a8',TO_DATE('2024-07-24 14:21:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:21:41','YYYY-MM-DD HH24:MI:SS'),100,1120036,'AD_Org_ID','AD_Org_ID',10)
;

-- 24 de jul de 2024 14:22:03 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120811,'3beabebf-daa5-4db4-bfa4-9773a192ecb9',TO_DATE('2024-07-24 14:22:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:22:03','YYYY-MM-DD HH24:MI:SS'),100,1120036,'LBR_MinNSU','MIN(LBR_NSU)',20)
;

-- 24 de jul de 2024 14:22:19 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120812,'75a13935-3c2a-49e1-b98d-a5f7163fe575',TO_DATE('2024-07-24 14:22:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:22:19','YYYY-MM-DD HH24:MI:SS'),100,1120036,'LBR_MaxNSU','MAX(LBR_NSU)',30)
;

-- 24 de jul de 2024 14:22:47 BRT
CREATE OR REPLACE VIEW LBR_CTeNSURange(AD_Org_ID, LBR_MinNSU, LBR_MaxNSU) AS SELECT AD_Org_ID AS AD_Org_ID, MIN(LBR_NSU) AS LBR_MinNSU, MAX(LBR_NSU) AS LBR_MaxNSU FROM LBR_CTeNSUControl  GROUP BY AD_Org_ID
;

-- 24 de jul de 2024 14:22:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134222,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120780,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:22:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:22:54','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','a793ea73-0ab9-4c1b-b415-d412c54b87ca','N','D')
;

-- 24 de jul de 2024 14:22:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123453,0,0,'Y',TO_DATE('2024-07-24 14:22:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:22:55','YYYY-MM-DD HH24:MI:SS'),100,'lbr_minnsu','lbr_minnsu','lbr_minnsu','LBRA','f6ed8ea9-0701-457d-ba1f-9d48fc3a3edc')
;

-- 24 de jul de 2024 14:22:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134223,0.0,'lbr_minnsu',1120780,'lbr_minnsu',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-07-24 14:22:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:22:55','YYYY-MM-DD HH24:MI:SS'),100,1123453,'N','N','LBRA','N','154ee4ed-8d26-4714-93ac-5d79c4f07059','N')
;

-- 24 de jul de 2024 14:22:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123454,0,0,'Y',TO_DATE('2024-07-24 14:22:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:22:56','YYYY-MM-DD HH24:MI:SS'),100,'lbr_maxnsu','lbr_maxnsu','lbr_maxnsu','LBRA','6da34913-8216-4a5f-a1a7-842e67058f3f')
;

-- 24 de jul de 2024 14:22:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134224,0.0,'lbr_maxnsu',1120780,'lbr_maxnsu',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-07-24 14:22:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:22:56','YYYY-MM-DD HH24:MI:SS'),100,1123454,'N','N','LBRA','N','1d79c95e-f8c2-4f98-adf7-5c997fdeb5fa','N')
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_Element SET ColumnName='LBR_Max_NSU', Name='Max NSU', PrintName='Max NSU',Updated=TO_DATE('2024-07-24 14:23:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123454
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_Column SET ColumnName='LBR_Max_NSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Max_NSU', Name='Max NSU', Description=NULL, Help=NULL, AD_Element_ID=1123454 WHERE UPPER(ColumnName)='LBR_MAX_NSU' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Max_NSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Max_NSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:23:25 BRT
UPDATE AD_Field SET Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123454) AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:23:26 BRT
UPDATE AD_PrintFormatItem SET PrintName='Max NSU', Name='Max NSU' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123454)
;

-- 24 de jul de 2024 14:23:37 BRT
UPDATE AD_Element SET ColumnName='LBR_MaxNSU',Updated=TO_DATE('2024-07-24 14:23:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123454
;

-- 24 de jul de 2024 14:23:37 BRT
UPDATE AD_Column SET ColumnName='LBR_MaxNSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454
;

-- 24 de jul de 2024 14:23:37 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_MaxNSU', Name='Max NSU', Description=NULL, Help=NULL, AD_Element_ID=1123454 WHERE UPPER(ColumnName)='LBR_MAXNSU' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jul de 2024 14:23:37 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_MaxNSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:23:37 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_MaxNSU', Name='Max NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123454 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_Element SET ColumnName='LBR_MinNSU', Name='Min NSU', PrintName='Min NSU',Updated=TO_DATE('2024-07-24 14:24:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123453
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_Column SET ColumnName='LBR_MinNSU', Name='Min NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123453
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_MinNSU', Name='Min NSU', Description=NULL, Help=NULL, AD_Element_ID=1123453 WHERE UPPER(ColumnName)='LBR_MINNSU' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_MinNSU', Name='Min NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123453 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_MinNSU', Name='Min NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123453 AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_Field SET Name='Min NSU', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123453) AND IsCentrallyMaintained='Y'
;

-- 24 de jul de 2024 14:24:09 BRT
UPDATE AD_PrintFormatItem SET PrintName='Min NSU', Name='Min NSU' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123453)
;

-- 24 de jul de 2024 14:25:38 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120781,'LBR_CTeNSUSeries','LBR_CTeNSUSeries',0,'3',0,0,'Y',TO_DATE('2024-07-24 14:25:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:25:37','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','7873072a-4a2a-4c20-a752-d7c015385dfc','N','N','N','N')
;

-- 24 de jul de 2024 14:25:38 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeNSUSeries',1000000,'N','N','Table LBR_CTeNSUSeries','Y','Y',0,0,TO_DATE('2024-07-24 14:25:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:25:38','YYYY-MM-DD HH24:MI:SS'),100,1154056,'Y',1000000,1,200000,'5f66324b-5e35-4e42-b5f3-bd7c810dae4c')
;

-- 24 de jul de 2024 14:25:53 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120037,'1f0e03c7-e886-42b9-81c3-6d07d61cee48',TO_DATE('2024-07-24 14:25:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CTeNSUSeries',TO_DATE('2024-07-24 14:25:53','YYYY-MM-DD HH24:MI:SS'),100,1120781,10,'FROM LBR_CTeNSURange')
;

-- 24 de jul de 2024 14:26:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120813,'0a11ddc9-dd3d-4264-b78c-9aa39eeb6018',TO_DATE('2024-07-24 14:26:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:26:13','YYYY-MM-DD HH24:MI:SS'),100,1120037,'AD_Org_ID','AD_Org_ID',10)
;

-- 24 de jul de 2024 14:26:33 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120814,'ef75e995-de15-4fcf-ac34-505f274aeea1',TO_DATE('2024-07-24 14:26:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:26:32','YYYY-MM-DD HH24:MI:SS'),100,1120037,'LBR_NSU','GENERATE_SERIES(LBR_MinNSU, LBR_MaxNSU)',20)
;

-- 24 de jul de 2024 14:26:51 BRT
CREATE OR REPLACE VIEW LBR_CTeNSUSeries(AD_Org_ID, LBR_NSU) AS SELECT AD_Org_ID AS AD_Org_ID, GENERATE_SERIES(LBR_MinNSU, LBR_MaxNSU) AS LBR_NSU FROM LBR_CTeNSURange
;

-- 24 de jul de 2024 14:27:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134225,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120781,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:27:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:27:08','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','535b2f6b-4a91-4d29-98ab-f6553f3b0547','N','D')
;

-- 24 de jul de 2024 14:27:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134226,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120781,'LBR_NSU',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-24 14:27:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:27:08','YYYY-MM-DD HH24:MI:SS'),100,1122885,'N','N','LBRA','N','0655cce9-7795-453e-9fa8-13da0331f07c','N','N')
;

-- 24 de jul de 2024 14:27:44 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120782,'RV_LBR_CTeMissingNSU','RV_LBR_CTeMissingNSU',0,'3',0,0,'Y',TO_DATE('2024-07-24 14:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:27:44','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','e9fca1f2-94dd-46dc-894e-b98c8b20ba03','N','N','N','N')
;

-- 24 de jul de 2024 14:27:45 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_CTeMissingNSU',1000000,'N','N','Table RV_LBR_CTeMissingNSU','Y','Y',0,0,TO_DATE('2024-07-24 14:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:27:44','YYYY-MM-DD HH24:MI:SS'),100,1154057,'Y',1000000,1,200000,'ba4ab433-4b59-4e2b-b805-37d0f7a64362')
;

-- 24 de jul de 2024 14:29:35 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,WhereClause,FromClause) VALUES (0,0,1120038,'e35def88-62f7-409d-bb1c-38dea46dc4ba',TO_DATE('2024-07-24 14:29:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_CTeMissingNSU',TO_DATE('2024-07-24 14:29:34','YYYY-MM-DD HH24:MI:SS'),100,1120782,10,'WHERE r.AD_Org_ID=s.AD_Org_ID AND NOT EXISTS (SELECT 1 FROM LBR_CTeNSUControl c WHERE c.LBR_NSU=s.LBR_NSU AND c.AD_Org_ID=s.AD_Org_ID)','FROM LBR_CTeNSUSeries s,  LBR_CTeNSURange r')
;

-- 24 de jul de 2024 14:30:10 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120815,'d079d455-02e6-4cfe-9bf0-90c66fcfff45',TO_DATE('2024-07-24 14:30:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:30:10','YYYY-MM-DD HH24:MI:SS'),100,1120038,'RV_LBR_CTeMissingNSU_ID','ROW_NUMBER() OVER ()',10)
;

-- 24 de jul de 2024 14:30:46 BRT
DROP VIEW LBR_CTeNSUSeries
;

-- 24 de jul de 2024 14:30:51 BRT
DROP VIEW LBR_CTeNSURange
;

-- 24 de jul de 2024 14:30:56 BRT
DROP VIEW LBR_CTeNSUControl
;

-- 24 de jul de 2024 14:31:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120816,'92ee62ec-66fc-4e3e-baff-230eaa299249',TO_DATE('2024-07-24 14:31:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:31:17','YYYY-MM-DD HH24:MI:SS'),100,1120034,'AD_Client_ID','AD_Client_ID',5)
;

-- 24 de jul de 2024 14:31:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120817,'45b4718c-075b-4163-81cb-e71758357332',TO_DATE('2024-07-24 14:31:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:31:30','YYYY-MM-DD HH24:MI:SS'),100,1120035,'AD_Client_ID','AD_Client_ID',5)
;

-- 24 de jul de 2024 14:31:37 BRT
CREATE OR REPLACE VIEW LBR_CTeNSUControl(AD_Client_ID, AD_Org_ID, LBR_NSU) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, CAST(LBR_NSU AS INT) AS LBR_NSU FROM LBR_CTe WHERE LBR_NSU IS NOT NULL UNION SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, CAST(LBR_NSU AS INT) AS LBR_NSU FROM LBR_CTeEvent WHERE LBR_NSU IS NOT NULL
;

-- 24 de jul de 2024 14:31:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134227,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120779,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:31:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:31:43','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','205c1479-ac56-4688-ab0a-b24f74d0e34b','N','D')
;

-- 24 de jul de 2024 14:31:59 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120818,'ff7afd06-5b22-4ad4-b70f-06d1da28538a',TO_DATE('2024-07-24 14:31:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:31:58','YYYY-MM-DD HH24:MI:SS'),100,1120036,'AD_Client_ID','AD_Client_ID',5)
;

-- 24 de jul de 2024 14:32:18 BRT
UPDATE AD_ViewComponent SET OtherClause='GROUP BY AD_Client_ID, AD_Org_ID',Updated=TO_DATE('2024-07-24 14:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120036
;

-- 24 de jul de 2024 14:32:22 BRT
CREATE OR REPLACE VIEW LBR_CTeNSURange(AD_Client_ID, AD_Org_ID, LBR_MinNSU, LBR_MaxNSU) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, MIN(LBR_NSU) AS LBR_MinNSU, MAX(LBR_NSU) AS LBR_MaxNSU FROM LBR_CTeNSUControl  GROUP BY AD_Client_ID, AD_Org_ID
;

-- 24 de jul de 2024 14:32:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120819,'f407eaf4-ed9d-4760-adc1-344d70f6b7ae',TO_DATE('2024-07-24 14:32:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:32:42','YYYY-MM-DD HH24:MI:SS'),100,1120037,'AD_Client_ID','AD_Client_ID',5)
;

-- 24 de jul de 2024 14:32:46 BRT
CREATE OR REPLACE VIEW LBR_CTeNSUSeries(AD_Client_ID, AD_Org_ID, LBR_NSU) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, GENERATE_SERIES(LBR_MinNSU, LBR_MaxNSU) AS LBR_NSU FROM LBR_CTeNSURange
;

-- 24 de jul de 2024 14:32:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134228,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120781,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:32:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:32:52','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','3c067903-8acf-43fe-bd86-cd1979f12659','N','D')
;

-- 24 de jul de 2024 14:33:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134229,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120780,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:33:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:33:02','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','6b4a89be-255a-4015-9933-c6b291614917','N','D')
;

-- 24 de jul de 2024 14:33:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120820,'b69f9886-f060-4120-81ef-ad1ee6562f5e',TO_DATE('2024-07-24 14:33:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:33:31','YYYY-MM-DD HH24:MI:SS'),100,1120038,'AD_Client_ID','s.AD_Client_ID',20)
;

-- 24 de jul de 2024 14:33:45 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120821,'072f26b9-6cde-4431-97d1-91a7241909fc',TO_DATE('2024-07-24 14:33:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:33:44','YYYY-MM-DD HH24:MI:SS'),100,1120038,'AD_Org_ID','s.AD_Org_ID',30)
;

-- 24 de jul de 2024 14:34:10 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120822,'eac7235b-2611-4674-93fd-b8ff5c71f826',TO_DATE('2024-07-24 14:34:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:34:10','YYYY-MM-DD HH24:MI:SS'),100,1120038,'Created','NOW()',40)
;

-- 24 de jul de 2024 14:34:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120823,'db9758ee-c885-4e55-9b64-85f51bca3a52',TO_DATE('2024-07-24 14:34:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:34:17','YYYY-MM-DD HH24:MI:SS'),100,1120038,'CreatedBy','0',50)
;

-- 24 de jul de 2024 14:34:27 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120824,'2c25e7ed-5e1d-41f2-865d-9dc521fd0aea',TO_DATE('2024-07-24 14:34:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:34:27','YYYY-MM-DD HH24:MI:SS'),100,1120038,'Updated','NOW()',60)
;

-- 24 de jul de 2024 14:34:34 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120825,'9e870b39-9438-4eeb-916a-f3d98a9cf0c5',TO_DATE('2024-07-24 14:34:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:34:34','YYYY-MM-DD HH24:MI:SS'),100,1120038,'UpdatedBy','0',70)
;

-- 24 de jul de 2024 14:34:51 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120826,'19df1345-99c4-4d9d-a04e-6af4859f0498',TO_DATE('2024-07-24 14:34:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:34:50','YYYY-MM-DD HH24:MI:SS'),100,1120038,'IsActive','''Y''',80)
;

-- 24 de jul de 2024 14:35:47 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120827,'049cca11-6950-4a49-9cdb-bde57dfa4739',TO_DATE('2024-07-24 14:35:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:35:46','YYYY-MM-DD HH24:MI:SS'),100,1120038,'LBR_NSU','LBR(s.LBR_NSU, 15, ''0'')',90)
;

-- 24 de jul de 2024 14:36:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120828,'7e4f7d3c-fed8-4447-a07f-674b3cf6177b',TO_DATE('2024-07-24 14:36:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:36:16','YYYY-MM-DD HH24:MI:SS'),100,1120038,'LBR_MinNSU','r.LBR_MinNSU',100)
;

-- 24 de jul de 2024 14:36:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120829,'297c8a43-dca0-4ede-b09f-16dd57085aa0',TO_DATE('2024-07-24 14:36:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-24 14:36:30','YYYY-MM-DD HH24:MI:SS'),100,1120038,'LBR_MaxNSU','r.LBR_MaxNSU',110)
;

-- 24 de jul de 2024 14:37:40 BRT
UPDATE AD_ViewColumn SET ColumnSQL='LPAD(s.LBR_NSU, 15, ''0'')',Updated=TO_DATE('2024-07-24 14:37:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120827
;

-- 24 de jul de 2024 14:38:14 BRT
UPDATE AD_ViewColumn SET ColumnSQL='LPAD(s.LBR_NSU, 15, CAST(''0'' AS TEXT))',Updated=TO_DATE('2024-07-24 14:38:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120827
;

-- 24 de jul de 2024 14:38:52 BRT
UPDATE AD_ViewColumn SET ColumnSQL='LPAD(CAST(s.LBR_NSU AS TEXT), 15, CAST(''0'' AS TEXT))',Updated=TO_DATE('2024-07-24 14:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120827
;

-- 24 de jul de 2024 14:38:56 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeMissingNSU(RV_LBR_CTeMissingNSU_ID, AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_MinNSU, LBR_MaxNSU) AS SELECT ROW_NUMBER() OVER () AS RV_LBR_CTeMissingNSU_ID, s.AD_Client_ID AS AD_Client_ID, s.AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, 'Y' AS IsActive, LPAD(CAST(s.LBR_NSU AS TEXT), 15, CAST('0' AS TEXT)) AS LBR_NSU, r.LBR_MinNSU AS LBR_MinNSU, r.LBR_MaxNSU AS LBR_MaxNSU FROM LBR_CTeNSUSeries s,  LBR_CTeNSURange r WHERE r.AD_Org_ID=s.AD_Org_ID AND NOT EXISTS (SELECT 1 FROM LBR_CTeNSUControl c WHERE c.LBR_NSU=s.LBR_NSU AND c.AD_Org_ID=s.AD_Org_ID)
;

-- 24 de jul de 2024 14:39:07 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123455,0,0,'Y',TO_DATE('2024-07-24 14:39:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:06','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_CTeMissingNSU_ID','RV_LBR_CTeMissingNSU','RV_LBR_CTeMissingNSU','LBRA','6bb9c646-910e-422c-b93d-3fde0327aac7')
;

-- 24 de jul de 2024 14:39:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134230,0.0,'RV_LBR_CTeMissingNSU',1120782,'RV_LBR_CTeMissingNSU_ID',19,'Y','N','N','N','N','N',13,0,0,'Y',TO_DATE('2024-07-24 14:39:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:06','YYYY-MM-DD HH24:MI:SS'),100,1123455,'N','N','LBRA','N','0153883d-a93b-4ddd-b561-d19f74cbeb00','N')
;

-- 24 de jul de 2024 14:39:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134231,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120782,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:39:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:07','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','dc158577-6a05-4db3-a2ee-20ffa2bd2c83','N','D')
;

-- 24 de jul de 2024 14:39:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134232,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120782,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-24 14:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:08','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','f3d407e8-6bfe-43e6-a9b3-4ff35f4736b8','N','D')
;

-- 24 de jul de 2024 14:39:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134233,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120782,'Created','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-24 14:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:08','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','66688d0c-4db6-4be3-8b85-258e24a777e6','N')
;

-- 24 de jul de 2024 14:39:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134234,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120782,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-24 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','cb929804-e386-48ec-afb3-bd26c18df6d7','N','D')
;

-- 24 de jul de 2024 14:39:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134235,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120782,'Updated','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-24 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','9eabced1-734e-429f-9122-71e5e06bd1e3','N')
;

-- 24 de jul de 2024 14:39:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134236,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120782,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-24 14:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:10','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','5a4bbdcb-0e96-46b0-9121-34612c9ca1b0','N','D')
;

-- 24 de jul de 2024 14:39:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134237,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120782,'IsActive','Y',2147483647,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2024-07-24 14:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:10','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','894ec2a9-970a-4771-bd7f-8a4f83124642','N')
;

-- 24 de jul de 2024 14:39:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134238,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120782,'LBR_NSU',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-24 14:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:11','YYYY-MM-DD HH24:MI:SS'),100,1122885,'N','N','LBRA','N','07c76fba-5520-4ed9-9aeb-85f8543061d6','N','N')
;

-- 24 de jul de 2024 14:39:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134239,0.0,'Min NSU',1120782,'LBR_MinNSU',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-07-24 14:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:11','YYYY-MM-DD HH24:MI:SS'),100,1123453,'N','N','LBRA','N','5e12d938-e0a6-41c2-b720-e18aba92407e','N','N')
;

-- 24 de jul de 2024 14:39:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134240,0.0,'Max NSU',1120782,'LBR_MaxNSU',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-07-24 14:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:39:12','YYYY-MM-DD HH24:MI:SS'),100,1123454,'N','N','LBRA','N','77a1f8b4-39d2-4546-afb5-c90529d5846e','N','N')
;

-- 24 de jul de 2024 14:40:30 BRT
INSERT INTO AD_InfoWindow (AD_InfoWindow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,FromClause,Processing,AD_InfoWindow_UU,IsDefault,IsDistinct,IsValid,SeqNo,IsShowInDashboard,MaxQueryRecords,isLoadPageNum) VALUES (1120006,0,0,'Y',TO_DATE('2024-07-24 14:40:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:40:29','YYYY-MM-DD HH24:MI:SS'),100,'CTe Missing NSU',1120782,'LBRA','RV_LBR_CTeMissingNSU nsu','N','d079ee0a-e6d3-43aa-82b6-fe052127fb91','N','N','N',100,'N',0,'Y')
;

-- 24 de jul de 2024 14:41:09 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120069,0,0,'Y',TO_DATE('2024-07-24 14:41:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:41:09','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120006,'LBRA','nsu.AD_Org_ID',10,'Y','Y',113,19,'04834a10-9074-4eef-ac56-b0d41b3f92a8',104,'Y','AD_Org_ID','=','N',10,'N','N','Y')
;

-- 24 de jul de 2024 14:41:09 BRT
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_DATE('2024-07-24 14:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120006
;

-- 24 de jul de 2024 14:41:30 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120070,0,0,'Y',TO_DATE('2024-07-24 14:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:41:30','YYYY-MM-DD HH24:MI:SS'),100,'Min NSU',1120006,'LBRA','nsu.LBR_MinNSU',20,'Y','N',1123453,11,'cf9cf81d-0835-4f98-afaf-42dcddeb6306','Y','LBR_MinNSU','N',0,'N','N','Y')
;

-- 24 de jul de 2024 14:41:38 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120071,0,0,'Y',TO_DATE('2024-07-24 14:41:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:41:37','YYYY-MM-DD HH24:MI:SS'),100,'Max NSU',1120006,'LBRA','nsu.LBR_MaxNSU',30,'Y','N',1123454,11,'d928d995-b175-49a0-92db-0c61073b329c','Y','LBR_MaxNSU','N',0,'N','N','Y')
;

-- 24 de jul de 2024 14:41:54 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120072,0,0,'Y',TO_DATE('2024-07-24 14:41:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:41:53','YYYY-MM-DD HH24:MI:SS'),100,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120006,'LBRA','nsu.LBR_NSU',40,'Y','N',1122885,10,'18d994c4-5372-474e-9131-b5a5a55d283e','Y','LBR_NSU','N',0,'N','N','Y')
;

-- 24 de jul de 2024 14:42:08 BRT
UPDATE AD_InfoWindow SET OrderByClause='AD_Org_ID, LBR_NSU', IsValid='Y',Updated=TO_DATE('2024-07-24 14:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120006
;

-- 24 de jul de 2024 14:46:11 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120338,0,0,'Y',TO_DATE('2024-07-24 14:46:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:46:10','YYYY-MM-DD HH24:MI:SS'),100,'Fix Missing NSU ','This process will try to retrieve selected NSU in order to retrieve missing NSU','N','FixMissingNSU','N','org.kenos.idempiere.cte.process.FixMissingNSU','3','LBRA',0,0,'N','N','Y','N','ad89d86d-43a4-4b3f-a8b8-cd5ef05aafde','P')
;

-- 24 de jul de 2024 14:46:16 BRT
UPDATE AD_Process SET Value='FixMissingNSUCTe',Updated=TO_DATE('2024-07-24 14:46:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120338
;

-- 24 de jul de 2024 14:46:45 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120662,0,0,'Y',TO_DATE('2024-07-24 14:46:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:46:44','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120338,10,19,322,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'0a35c91d-b44f-4129-99e4-0bd5091071c3','N')
;

-- 24 de jul de 2024 14:47:52 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120663,0,0,'Y',TO_DATE('2024-07-24 14:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:47:52','YYYY-MM-DD HH24:MI:SS'),100,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120338,20,10,'N',0,'N','LBR_NSU','Y','LBRA',1122885,'bc6262e1-e00b-4c0c-a6b9-ee48386192d8','N')
;

-- 24 de jul de 2024 14:47:56 BRT
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2024-07-24 14:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120662
;

-- 24 de jul de 2024 14:48:16 BRT
INSERT INTO AD_InfoProcess (AD_InfoProcess_ID,AD_InfoProcess_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ImageURL,SeqNo,AD_Process_ID,AD_InfoWindow_ID,LayoutType) VALUES (1120002,'e65439c1-7ea1-4560-aacd-73896bdcf741',0,0,'Y',TO_DATE('2024-07-24 14:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:48:16','YYYY-MM-DD HH24:MI:SS'),100,'ProcessMenu24.png',10,1120338,1120006,'B')
;

-- 24 de jul de 2024 14:48:26 BRT
UPDATE AD_InfoColumn SET IsReadOnly='N',Updated=TO_DATE('2024-07-24 14:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120072
;

-- 24 de jul de 2024 14:49:46 BRT
UPDATE AD_InfoWindow SET Name='Check Missing NSU (CT-e)',Updated=TO_DATE('2024-07-24 14:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120003
;

-- 24 de jul de 2024 14:49:46 BRT
UPDATE AD_Menu SET Name='Check Missing NSU (CT-e)', Description=NULL, IsActive='Y',Updated=TO_DATE('2024-07-24 14:49:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120425
;

-- 24 de jul de 2024 14:50:13 BRT
UPDATE AD_InfoWindow SET Name='Check Missing NSU (NF-e)',Updated=TO_DATE('2024-07-24 14:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120003
;

-- 24 de jul de 2024 14:50:13 BRT
UPDATE AD_Menu SET Name='Check Missing NSU (NF-e)', Description=NULL, IsActive='Y',Updated=TO_DATE('2024-07-24 14:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120425
;

-- 24 de jul de 2024 14:50:40 BRT
UPDATE AD_InfoWindow SET Name='Check Missing NSU (CT-e)',Updated=TO_DATE('2024-07-24 14:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120006
;

-- 24 de jul de 2024 14:51:19 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU,AD_InfoWindow_ID) VALUES (1120439,'Missing NSU (CT-e)','I',0,0,'Y',TO_DATE('2024-07-24 14:51:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 14:51:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','61741da0-be90-472b-955c-1865439517c4',1120006)
;

-- 24 de jul de 2024 14:51:19 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120439, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120439)
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 24 de jul de 2024 14:51:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120434
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120434
;

-- 24 de jul de 2024 14:51:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120439
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120437
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120438
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120436
;

-- 24 de jul de 2024 14:51:46 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120435
;

-- 24 de jul de 2024 14:51:46 BRT
SELECT Register_Migration_Script ('202407241509_MissingNSU.sql') FROM DUAL
;