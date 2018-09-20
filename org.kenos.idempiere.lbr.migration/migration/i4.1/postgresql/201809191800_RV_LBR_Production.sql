-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/09/2018 18h4min28s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,IsChangeLog,ReplicationType,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120604,'Production Report','Plan for producing a product','RV_LBR_Production',125,'1',0,0,'Y',TO_TIMESTAMP('2018-09-19 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:04:28','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','L','Y','6675ba1f-414d-4db6-a7bd-ecd71698956d','N','N')
;

-- 19/09/2018 18h4min29s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_Production',1000000,'N','N','Table RV_LBR_Production','Y','Y',0,0,TO_TIMESTAMP('2018-09-19 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:04:29','YYYY-MM-DD HH24:MI:SS'),100,1153604,'Y',1000000,1,200000,'ebe5b738-f46d-44d9-8fd6-c8ed6903e9fe')
;

-- 19/09/2018 18h6min48s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120005,'7a8f6c2f-8aa0-4469-8ab1-4e1209cc50fa',TO_TIMESTAMP('2018-09-19 18:06:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Production Report',TO_TIMESTAMP('2018-09-19 18:06:47','YYYY-MM-DD HH24:MI:SS'),100,1120604,10,'FROM M_Production p')
;

-- 19/09/2018 18h7min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120313,'bcf38b19-ff07-45c5-bf36-3f9171199a16',TO_TIMESTAMP('2018-09-19 18:07:56','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2018-09-19 18:07:56','YYYY-MM-DD HH24:MI:SS'),100,1120005,'M_Production_ID','p.M_Production_ID',10)
;

-- 19/09/2018 18h8min1s BRT
UPDATE AD_ViewColumn SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-09-19 18:08:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120313
;

-- 19/09/2018 18h8min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120314,'bd05c430-767a-40c1-8bc3-54ae9a566f0b',TO_TIMESTAMP('2018-09-19 18:08:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:08:24','YYYY-MM-DD HH24:MI:SS'),100,1120005,'AD_Client_ID','p.AD_Client_ID',10)
;

-- 19/09/2018 18h8min38s BRT
UPDATE AD_ViewColumn SET SeqNo=20,Updated=TO_TIMESTAMP('2018-09-19 18:08:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120314
;

-- 19/09/2018 18h8min53s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120315,'4c99bb2e-02b4-4d6e-ada0-9d2bf08c14fd',TO_TIMESTAMP('2018-09-19 18:08:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:08:53','YYYY-MM-DD HH24:MI:SS'),100,1120005,'AD_Org_ID','p.AD_Org_ID',30)
;

-- 19/09/2018 18h9min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120316,'1022a6e1-f663-4d26-8c91-c6f4c61da264',TO_TIMESTAMP('2018-09-19 18:09:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:09:10','YYYY-MM-DD HH24:MI:SS'),100,1120005,'IsActive','p.IsActive',40)
;

-- 19/09/2018 18h9min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120317,'92bf23dd-730a-403b-8893-6738431cd2f3',TO_TIMESTAMP('2018-09-19 18:09:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:09:25','YYYY-MM-DD HH24:MI:SS'),100,1120005,'Created','p.Created',50)
;

-- 19/09/2018 18h9min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120318,'1da1ed1c-8ff6-4fde-b35d-9df735766931',TO_TIMESTAMP('2018-09-19 18:09:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:09:42','YYYY-MM-DD HH24:MI:SS'),100,1120005,'CreatedBy','p.CreatedBy',60)
;

-- 19/09/2018 18h9min52s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120319,'384ddb39-ac80-456d-921b-8175772a39bf',TO_TIMESTAMP('2018-09-19 18:09:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:09:52','YYYY-MM-DD HH24:MI:SS'),100,1120005,'Updated','p.Updated',70)
;

-- 19/09/2018 18h10min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120320,'88d745c4-6550-4959-a1cd-593a3b1f68ae',TO_TIMESTAMP('2018-09-19 18:10:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:10:09','YYYY-MM-DD HH24:MI:SS'),100,1120005,'UpdatedBy','p.UpdatedBy',80)
;

-- 19/09/2018 18h11min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120321,'0aed5dac-71aa-46c7-bb1a-0233070a1e80',TO_TIMESTAMP('2018-09-19 18:11:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:11:55','YYYY-MM-DD HH24:MI:SS'),100,1120005,'M_Product_ID','p.M_Product_ID',90)
;

-- 19/09/2018 18h12min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120322,'738b6328-0820-4c0a-bf71-a89c0dacf903',TO_TIMESTAMP('2018-09-19 18:12:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:12:21','YYYY-MM-DD HH24:MI:SS'),100,1120005,'ProductionQty','p.ProductionQty',100)
;

-- 19/09/2018 18h12min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120323,'2cf59a46-6467-469a-ae69-1f82a339c2a7',TO_TIMESTAMP('2018-09-19 18:12:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:12:41','YYYY-MM-DD HH24:MI:SS'),100,1120005,'PriceEntered','p.PriceEntered',110)
;

-- 19/09/2018 18h14min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120324,'099a0391-811e-48ba-87f2-c8c45c2da850',TO_TIMESTAMP('2018-09-19 18:14:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:14:15','YYYY-MM-DD HH24:MI:SS'),100,1120005,'MovementDate','p.MovementDate',120)
;

-- 19/09/2018 18h14min47s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120325,'34e23b7d-e5cb-4b77-900d-f6233fbee02c',TO_TIMESTAMP('2018-09-19 18:14:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:14:46','YYYY-MM-DD HH24:MI:SS'),100,1120005,'DocumentNo','p.DocumentNo',130)
;

-- 19/09/2018 18h15min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120326,'098c110b-2576-4a2e-93ea-73329a5068a9',TO_TIMESTAMP('2018-09-19 18:15:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:15:38','YYYY-MM-DD HH24:MI:SS'),100,1120005,'LBR_ProductionGroup_ID','p.LBR_ProductionGroup_ID',140)
;

-- 19/09/2018 18h16min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120327,'1e2ef185-53f9-4561-b8fc-6d7d2ce8aab7',TO_TIMESTAMP('2018-09-19 18:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-09-19 18:16:04','YYYY-MM-DD HH24:MI:SS'),100,1120005,'GrandTotal','()',150)
;

-- 19/09/2018 18h16min18s BRT
UPDATE AD_ViewColumn SET ColumnSQL='(p.PriceEntered*)',Updated=TO_TIMESTAMP('2018-09-19 18:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120327
;

-- 19/09/2018 18h16min37s BRT
UPDATE AD_ViewColumn SET ColumnSQL='(p.PriceEntered*p.ProductionQty)',Updated=TO_TIMESTAMP('2018-09-19 18:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120327
;

-- 19/09/2018 18h19min4s BRT
UPDATE AD_ViewColumn SET ColumnSQL='ROUND((p.PriceEntered*p.ProductionQty),2)',Updated=TO_TIMESTAMP('2018-09-19 18:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120327
;

-- 19/09/2018 18h21min2s BRT
CREATE OR REPLACE VIEW RV_LBR_Production(M_Production_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, M_Product_ID, ProductionQty, PriceEntered, MovementDate, DocumentNo, LBR_ProductionGroup_ID, GrandTotal) AS SELECT p.M_Production_ID AS M_Production_ID, p.AD_Client_ID AS AD_Client_ID, p.AD_Org_ID AS AD_Org_ID, p.IsActive AS IsActive, p.Created AS Created, p.CreatedBy AS CreatedBy, p.Updated AS Updated, p.UpdatedBy AS UpdatedBy, p.M_Product_ID AS M_Product_ID, p.ProductionQty AS ProductionQty, p.PriceEntered AS PriceEntered, p.MovementDate AS MovementDate, p.DocumentNo AS DocumentNo, p.LBR_ProductionGroup_ID AS LBR_ProductionGroup_ID, ROUND((p.PriceEntered*p.ProductionQty),2) AS GrandTotal FROM M_Production p
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/09/2018 18h28min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130455,0.0,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120604,'M_Production_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:56','YYYY-MM-DD HH24:MI:SS'),100,1032,'N','N','LBRA','N','7f8932f6-2804-4e51-9121-cca96cd38d74','N','N')
;

-- 19/09/2018 18h28min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130456,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120604,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:56','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','2042ad41-1239-4f67-aed8-f28243c1c510','N','D')
;

-- 19/09/2018 18h28min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130457,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120604,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','aeebaec7-8472-4169-84ed-5e95497eab59','N','D')
;

-- 19/09/2018 18h28min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130458,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120604,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','6f7997ed-7408-4f9c-b32f-90bee01e8161','N')
;

-- 19/09/2018 18h28min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130459,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120604,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:57','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','9c45e51d-3b4e-412a-818f-81b0e8c73e47','N')
;

-- 19/09/2018 18h28min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130460,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120604,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:58','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','401b677d-0d7c-4b5d-83e2-a52b4fe890d7','N','D')
;

-- 19/09/2018 18h28min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130461,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120604,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:58','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','ce7babc5-02c7-4ff5-8f30-c93abb6bd071','N')
;

-- 19/09/2018 18h28min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130462,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120604,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:59','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','94f658cd-a568-48b8-88ca-38375284f0fe','N','D')
;

-- 19/09/2018 18h29min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130463,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120604,231,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:28:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:28:59','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','b2b65d3b-47d0-428d-b619-9615ca0d98c6','N','N')
;

-- 19/09/2018 18h29min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130464,0.0,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120604,'ProductionQty','0',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,1343,'N','N','@IsCreated@=''Y''','LBRA','N','ad99a34c-5912-41ef-9a0a-4ce0eddcfb1e','N','N')
;

-- 19/09/2018 18h29min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130465,0.0,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120604,'PriceEntered',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,2588,'N','N','LBRA','N','7627d759-87ca-4f3e-b071-4151b6b077a6','N')
;

-- 19/09/2018 18h29min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130466,0.0,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120604,'MovementDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:00','YYYY-MM-DD HH24:MI:SS'),100,1037,'N','N','LBRA','N','08c6dba0-f4ff-4cbf-961b-360e75c5496e','N')
;

-- 19/09/2018 18h29min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130467,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120604,'DocumentNo',10,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','8d0e588e-710f-4871-952c-cc47248992ee','N')
;

-- 19/09/2018 18h29min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130468,0.0,'Production Group',1120604,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','8b5cd940-e50a-4cf6-9fbf-feb057de5324','N','N')
;

-- 19/09/2018 18h29min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130469,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120604,'GrandTotal',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-19 18:29:01','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','afc6d2c3-3be6-47d7-8868-06f78b1d3704','N')
;

SELECT Register_Migration_Script ('201809191800_RV_LBR_Production.sql') FROM DUAL
;