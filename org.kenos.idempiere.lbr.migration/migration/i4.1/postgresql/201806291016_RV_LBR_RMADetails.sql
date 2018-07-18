-- Criação do relatório Detalhes de ARM
-- 29/06/2018 10h2min17s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120602,'RMA Details','RMA Details','RV_LBR_RMADetails',0,'3',0,0,'Y',TO_TIMESTAMP('2018-06-29 10:02:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:02:16','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','262e52f3-c8d5-40b1-babf-d1a8104cd20f','N','N','N','N')
;

-- 29/06/2018 10h2min17s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_RMADetails',1000000,'N','N','Table RV_LBR_RMADetails','Y','Y',0,0,TO_TIMESTAMP('2018-06-29 10:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:02:17','YYYY-MM-DD HH24:MI:SS'),100,1153602,'Y',1000000,1,200000,'de0d6832-a1c9-4e03-9c78-eeacfa917520')
;

-- 29/06/2018 10h4min35s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120004,'c3dbf703-9496-45d7-ac3e-8cf5bcce2736',TO_TIMESTAMP('2018-06-29 10:04:34','YYYY-MM-DD HH24:MI:SS'),100,'RMA Details','LBRA','Y','RV_LBR_RMADetails',TO_TIMESTAMP('2018-06-29 10:04:34','YYYY-MM-DD HH24:MI:SS'),100,1120602,10,'FROM M_RMA rma
LEFT JOIN M_RMALine rmal ON rma.M_RMA_ID = rmal.M_RMA_ID')
;

-- 29/06/2018 10h4min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120288,'a27827fd-8166-4b34-aebe-cd8ff7278cfa',TO_TIMESTAMP('2018-06-29 10:04:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:57','YYYY-MM-DD HH24:MI:SS'),100,1120004,'M_RMA_ID','rma.M_RMA_ID',10)
;

-- 29/06/2018 10h4min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120289,'fd7138a4-b680-495f-8c2e-27e4483b6361',TO_TIMESTAMP('2018-06-29 10:04:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:57','YYYY-MM-DD HH24:MI:SS'),100,1120004,'AD_Client_ID','rma.AD_Client_ID',20)
;

-- 29/06/2018 10h4min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120290,'3a83b0b4-a80a-473d-95f3-5cf87d0f8d21',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,1120004,'AD_Org_ID','rma.AD_Org_ID',30)
;

-- 29/06/2018 10h4min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120291,'0ebb69c8-dd55-4ece-be2a-93c091a3f496',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,1120004,'IsActive','rma.IsActive',40)
;

-- 29/06/2018 10h4min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120292,'34b126bd-b0c2-4581-9b65-afc02b3e2cc7',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:58','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Created','SYSDATE',50)
;

-- 29/06/2018 10h4min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120293,'f5ab2525-71a6-4270-b0dc-9cf667b4e086',TO_TIMESTAMP('2018-06-29 10:04:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:59','YYYY-MM-DD HH24:MI:SS'),100,1120004,'CreatedBy','rma.CreatedBy',60)
;

-- 29/06/2018 10h5min0s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120294,'2782fad4-440c-41ff-b89d-af0db1993108',TO_TIMESTAMP('2018-06-29 10:04:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:04:59','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Updated','SYSDATE',70)
;

-- 29/06/2018 10h5min0s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120295,'7ec397e0-b24c-41c7-8c5d-29cf332683aa',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,1120004,'UpdatedBy','rma.UpdatedBy',80)
;

-- 29/06/2018 10h5min0s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120296,'f96bdd1f-57dd-46e3-bfc7-37ab2bb58186',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,1120004,'DocumentNo','rma.DocumentNo',90)
;

-- 29/06/2018 10h5min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120297,'74764c5a-13ce-4565-bb7d-5fd3f99b2a98',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:00','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Name','rma.Name',100)
;

-- 29/06/2018 10h5min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120298,'734554e2-2d23-4cf5-ba74-bbb552492144',TO_TIMESTAMP('2018-06-29 10:05:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:01','YYYY-MM-DD HH24:MI:SS'),100,1120004,'C_DocType_ID','rma.C_DocType_ID',110)
;

-- 29/06/2018 10h5min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120299,'af8bf228-a8ac-436b-af04-4db8f2771b3d',TO_TIMESTAMP('2018-06-29 10:05:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:01','YYYY-MM-DD HH24:MI:SS'),100,1120004,'M_RMAType_ID','rma.M_RMAType_ID',120)
;

-- 29/06/2018 10h5min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120300,'51611790-0eb6-445a-9b6d-14b3edb76dd5',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,1120004,'M_Product_ID','rmal.M_Product_ID',130)
;

-- 29/06/2018 10h5min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120301,'ef7d8c6a-2c12-405f-9e05-6c2bc72b5386',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Qty','rmal.Qty',140)
;

-- 29/06/2018 10h5min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120302,'52798409-1512-498b-956c-8c10bd4c1da3',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:02','YYYY-MM-DD HH24:MI:SS'),100,1120004,'LineNetAmt','rmal.LineNetAmt',150)
;

-- 29/06/2018 10h5min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120303,'ce077af5-c4aa-477b-b120-2bcd679a18de',TO_TIMESTAMP('2018-06-29 10:05:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:03','YYYY-MM-DD HH24:MI:SS'),100,1120004,'LBR_NotaFiscal_ID','rma.LBR_NotaFiscal_ID',160)
;

-- 29/06/2018 10h5min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120304,'b97429a8-41d9-45f1-8bcb-1464395b6a65',TO_TIMESTAMP('2018-06-29 10:05:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:03','YYYY-MM-DD HH24:MI:SS'),100,1120004,'C_Bpartner_ID','rma.C_Bpartner_ID',170)
;

-- 29/06/2018 10h5min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120305,'253520cc-a104-421b-abfb-68770887835f',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,1120004,'InOut_ID','rma.InOut_ID',180)
;

-- 29/06/2018 10h5min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120306,'98edfb17-637f-4fba-b3a7-46abaaaea722',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,1120004,'M_InOutLine_ID','rmal.M_InOutLine_ID',190)
;

-- 29/06/2018 10h5min5s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120307,'1eeef6be-d515-478b-b725-a0c67c16ea13',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:04','YYYY-MM-DD HH24:MI:SS'),100,1120004,'DocStatus','rma.DocStatus',200)
;

-- 29/06/2018 10h5min5s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120308,'db7b713a-7e6f-4c34-9b33-37034bfe4f9b',TO_TIMESTAMP('2018-06-29 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Description','rma.Description',210)
;

-- 29/06/2018 10h5min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120309,'776e7a9f-8d2a-43d6-acce-891112db01a5',TO_TIMESTAMP('2018-06-29 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:05','YYYY-MM-DD HH24:MI:SS'),100,1120004,'Help','rma.Description',220)
;

-- 29/06/2018 10h5min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120310,'d20b2397-7bae-4b66-bbe2-9f9031a7345e',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,1120004,'LineDescription','rmal.Description',230)
;

-- 29/06/2018 10h5min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120311,'6c34e3e3-8402-4920-9ef2-abb3f114480e',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,1120004,'C_Charge_ID','rmal.C_Charge_ID',240)
;

-- 29/06/2018 10h5min7s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120312,'bbb32220-0b2e-4380-ae64-ff4970ffa249',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-29 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,1120004,'SalesRep_ID','rma.SalesRep_ID',250)
;

-- 29/06/2018 10h5min41s BRT
CREATE OR REPLACE VIEW RV_LBR_RMADetails(M_RMA_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, Name, C_DocType_ID, M_RMAType_ID, M_Product_ID, Qty, LineNetAmt, LBR_NotaFiscal_ID, C_Bpartner_ID, InOut_ID, M_InOutLine_ID, DocStatus, Description, Help, LineDescription, C_Charge_ID, SalesRep_ID) AS SELECT rma.M_RMA_ID AS M_RMA_ID, rma.AD_Client_ID AS AD_Client_ID, rma.AD_Org_ID AS AD_Org_ID, rma.IsActive AS IsActive, statement_timestamp() AS Created, rma.CreatedBy AS CreatedBy, statement_timestamp() AS Updated, rma.UpdatedBy AS UpdatedBy, rma.DocumentNo AS DocumentNo, rma.Name AS Name, rma.C_DocType_ID AS C_DocType_ID, rma.M_RMAType_ID AS M_RMAType_ID, rmal.M_Product_ID AS M_Product_ID, rmal.Qty AS Qty, rmal.LineNetAmt AS LineNetAmt, rma.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, rma.C_Bpartner_ID AS C_Bpartner_ID, rma.InOut_ID AS InOut_ID, rmal.M_InOutLine_ID AS M_InOutLine_ID, rma.DocStatus AS DocStatus, rma.Description AS Description, rma.Description AS Help, rmal.Description AS LineDescription, rmal.C_Charge_ID AS C_Charge_ID, rma.SalesRep_ID AS SalesRep_ID FROM M_RMA rma LEFT JOIN M_RMALine rmal ON rma.M_RMA_ID = rmal.M_RMA_ID
;

-- 29/06/2018 10h5min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130399,0.0,'RMA','Return Material Authorization','A Return Material Authorization may be required to accept returns and to create Credit Memos',1120602,'M_RMA_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:49','YYYY-MM-DD HH24:MI:SS'),100,2412,'N','N','LBRA','N','ef7a246e-f3a9-45ea-aedc-2785b3db879c','N')
;

-- 29/06/2018 10h5min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130400,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120602,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','5e4b4e64-2287-4637-a872-0f573e93f25e','N','D')
;

-- 29/06/2018 10h5min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130401,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120602,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','d94449b6-1059-4cf9-8ab9-733cef247a99','N','D')
;

-- 29/06/2018 10h5min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130402,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120602,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:50','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','64b9791e-6f2f-435a-b39a-2dcbf6575ff0','N')
;

-- 29/06/2018 10h5min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130403,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120602,'Created','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:51','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','52ce61cf-32e3-4d5a-bb0d-19e920442ee2','N')
;

-- 29/06/2018 10h5min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130404,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120602,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:51','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','9db67f33-9621-4a5a-9ca0-a9f9317d2cde','N','D')
;

-- 29/06/2018 10h5min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130405,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120602,'Updated','SYSDATE',35,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','d0b3823d-dc3d-4189-a2b8-1425a3c42a91','N')
;

-- 29/06/2018 10h5min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130406,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120602,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','5a764e83-f920-463e-8321-c3c52bcc2a99','N','D')
;

-- 29/06/2018 10h5min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130407,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120602,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:52','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','37b52f37-8666-4b9a-9ce9-d188c908e28f','N')
;

-- 29/06/2018 10h5min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130408,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120602,'Name',60,'N','N','N','N','Y','N',10,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,469,'N','Y','LBRA','N','5a7d48ac-2192-4ce3-80e2-926f61d51b90','N')
;

-- 29/06/2018 10h5min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130409,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120602,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','19b0f000-1af9-4ecf-9835-e8db50f178d9','N')
;

-- 29/06/2018 10h5min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130410,0.0,'RMA Type','Return Material Authorization Type','Types of RMA',1120602,'M_RMAType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:53','YYYY-MM-DD HH24:MI:SS'),100,2530,'N','N','LBRA','N','a3dce3c3-671f-429c-87c7-c9658f7350b3','N')
;

-- 29/06/2018 10h5min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130411,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120602,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','66aeb67a-ef67-4dd2-ac50-b574d39324fe','N')
;

-- 29/06/2018 10h5min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130412,0.0,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120602,'Qty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,526,'N','N','LBRA','N','cab0fd61-4c0e-45ec-9232-0cb898e3c7b7','N')
;

-- 29/06/2018 10h5min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130413,0.0,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',1120602,'LineNetAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:54','YYYY-MM-DD HH24:MI:SS'),100,441,'N','N','LBRA','N','42a64f4c-3eaa-4ccb-9d4a-f3c7e01365a9','N')
;

-- 29/06/2018 10h5min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130414,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120602,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','@IsManual@!Y','LBRA','N','25d8d379-a087-40c1-bf64-25fb10049752','N')
;

-- 29/06/2018 10h5min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130415,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120602,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','984a04ba-8c0e-4c39-b023-4cc0f5882d16','N')
;

-- 29/06/2018 10h5min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130416,0.0,'Shipment/Receipt','MaterialShipment Document','The Material Shipment / Receipt ',1120602,52000,'InOut_ID',10,'N','N','N','N','N','N',30,337,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:55','YYYY-MM-DD HH24:MI:SS'),100,52000,'N','N','LBRA','N','c676ecb4-1791-419d-a535-b0d59d99ce79','N','N')
;

-- 29/06/2018 10h5min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130417,0.0,'Shipment/Receipt Line','Line on Shipment or Receipt document','The Shipment/Receipt Line indicates a unique line in a Shipment/Receipt document',1120602,'M_InOutLine_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,1026,'N','N','LBRA','N','c9b85290-cf44-4a70-84b5-00d1037595f1','N','N')
;

-- 29/06/2018 10h5min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130418,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120602,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','e03149f9-47e2-47f6-a436-45acd6aefc99','N')
;

-- 29/06/2018 10h5min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130419,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120602,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:56','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','4e4ef8b0-cac8-4b6b-bbc5-322c1bcc0f86','N')
;

-- 29/06/2018 10h5min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130420,0.0,'Comment/Help','Comment or Hint','The Help field contains a hint, comment or help about the use of this item.',1120602,'Help',255,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:57','YYYY-MM-DD HH24:MI:SS'),100,326,'N','N','LBRA','N','b27b4431-8a35-4523-8ee9-4429d5229ee3','N')
;

-- 29/06/2018 10h5min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130421,0.0,'Line Description','Description of the Line',1120602,'LineDescription',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:57','YYYY-MM-DD HH24:MI:SS'),100,2108,'N','N','LBRA','N','ba119ea4-f5ab-4f2b-b792-2b78bdc3df68','N')
;

-- 29/06/2018 10h5min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130422,0.0,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120602,'C_Charge_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:58','YYYY-MM-DD HH24:MI:SS'),100,968,'N','N','LBRA','N','0a3687c0-6750-40f5-a219-823133d710fe','N')
;

-- 29/06/2018 10h5min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130423,0.0,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120602,'SalesRep_ID',10,'N','N','N','N','N','N',18,190,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:05:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:05:58','YYYY-MM-DD HH24:MI:SS'),100,1063,'N','N','LBRA','N','757afb1a-3d7e-45b0-9f42-b63c47e15696','N')
;

-- 29/06/2018 10h8min53s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120219,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:08:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:08:52','YYYY-MM-DD HH24:MI:SS'),100,'RMA Details','RMA Detailss','This report can help to see all exchange and return of products.','Y','RV_LBR_RMADetails','N','3','LBRA',0,0,'N','N','Y','N','f7671fd6-4f4d-40a0-9e0f-2e6a8cff25db')
;

-- 29/06/2018 10h9min34s BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120039,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:09:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:09:34','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_RMADetails','RMA Details',1120602,'LBRA','20edc200-f217-411a-b62a-d03268d14e07')
;

-- 29/06/2018 10h9min59s BRT
UPDATE AD_Process SET AD_ReportView_ID=1120039,Updated=TO_TIMESTAMP('2018-06-29 10:09:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120219
;

-- 29/06/2018 10h10min57s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120429,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:10:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:10:56','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120219,10,18,321,'N',0,'N','C_DocType_ID','Y','LBRA',196,'52150ee3-4117-40d3-b9be-766cad339859','N')
;

-- 29/06/2018 10h10min57s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120430,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:10:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:10:57','YYYY-MM-DD HH24:MI:SS'),100,'RMA Type','Return Material Authorization Type','Types of RMA',1120219,20,19,'N',0,'N','M_RMAType_ID','Y','LBRA',2530,'bbfadb67-1fbf-4893-bc64-8e420bc3e30b','N')
;

-- 29/06/2018 10h10min58s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120431,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:10:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:10:58','YYYY-MM-DD HH24:MI:SS'),100,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120219,30,15,'Y',0,'N','Created','Y','LBRA',245,'083631ee-1d0b-45a7-b7ed-8192367e2946','N')
;

-- 29/06/2018 10h10min58s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120432,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:10:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:10:58','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120219,40,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'94e5fa97-3021-4ea3-b4ee-7153c75bac37','N')
;

-- 29/06/2018 10h10min59s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120433,0,0,'Y',TO_TIMESTAMP('2018-06-29 10:10:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:10:59','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120219,50,30,162,'N',0,'N','M_Product_ID','Y','LBRA',454,'e1dc5c75-40e1-45b1-bb03-76d92bd672b6','N')
;

-- 29/06/2018 10h12min3s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120312,'RV_LBR_RMADetails','RMA Details','R',0,0,'Y',TO_TIMESTAMP('2018-06-29 10:12:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-29 10:12:03','YYYY-MM-DD HH24:MI:SS'),100,'N',1120219,'Y','N','LBRA','Y','9ee5cf07-6e81-416f-8387-eca5ab72d371')
;

-- 29/06/2018 10h12min3s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120312, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120312)
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=480
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=455
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53243
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53244
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53245
;

-- 29/06/2018 10h14min57s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120312
;


SELECT Register_Migration_Script ('201806291016_RV_LBR_RMADetails.sql') FROM DUAL
;
