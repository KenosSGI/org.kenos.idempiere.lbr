-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/11/2018 13h35min31s BRST
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120357,'42e85e75-6e7f-4063-b100-6ada69a55602',TO_TIMESTAMP('2018-11-26 13:35:31','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2018-11-26 13:35:31','YYYY-MM-DD HH24:MI:SS'),100,1120004,'QtyDelivered','rmal.QtyDelivered',260)
;

-- 26/11/2018 13h36min2s BRST
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120358,'0b8a6833-9182-4a8a-abad-c01d21174be2',TO_TIMESTAMP('2018-11-26 13:36:01','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2018-11-26 13:36:01','YYYY-MM-DD HH24:MI:SS'),100,1120004,'QtyInvoiced','rmal.QtyInvoiced',270)
;

-- 26/11/2018 13h38min6s BRST
UPDATE AD_ViewColumn SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-11-26 13:38:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120357
;

-- 26/11/2018 13h38min12s BRST
UPDATE AD_ViewColumn SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-11-26 13:38:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120358
;

-- 26/11/2018 13h42min4s BRST
CREATE OR REPLACE VIEW RV_LBR_RMADetails(M_RMA_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, Name, C_DocType_ID, M_RMAType_ID, M_Product_ID, Qty, LineNetAmt, LBR_NotaFiscal_ID, C_Bpartner_ID, InOut_ID, M_InOutLine_ID, DocStatus, Description, Help, LineDescription, C_Charge_ID, SalesRep_ID, QtyDelivered, QtyInvoiced) AS SELECT rma.M_RMA_ID AS M_RMA_ID, rma.AD_Client_ID AS AD_Client_ID, rma.AD_Org_ID AS AD_Org_ID, rma.IsActive AS IsActive, statement_timestamp() AS Created, rma.CreatedBy AS CreatedBy, statement_timestamp() AS Updated, rma.UpdatedBy AS UpdatedBy, rma.DocumentNo AS DocumentNo, rma.Name AS Name, rma.C_DocType_ID AS C_DocType_ID, rma.M_RMAType_ID AS M_RMAType_ID, rmal.M_Product_ID AS M_Product_ID, rmal.Qty AS Qty, rmal.LineNetAmt AS LineNetAmt, rma.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, rma.C_Bpartner_ID AS C_Bpartner_ID, rma.InOut_ID AS InOut_ID, rmal.M_InOutLine_ID AS M_InOutLine_ID, rma.DocStatus AS DocStatus, rma.Description AS Description, rma.Description AS Help, rmal.Description AS LineDescription, rmal.C_Charge_ID AS C_Charge_ID, rma.SalesRep_ID AS SalesRep_ID, rmal.QtyDelivered AS QtyDelivered, rmal.QtyInvoiced AS QtyInvoiced FROM M_RMA rma LEFT JOIN M_RMALine rmal ON rma.M_RMA_ID = rmal.M_RMA_ID
;

-- 26/11/2018 13h42min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130518,0.0,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120602,'QtyDelivered',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,528,'N','N','LBRA','N','8406d21b-32e3-462a-972b-95e2d0254120','N')
;

-- 26/11/2018 13h42min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130519,0.0,'Quantity Invoiced','Invoiced Quantity','The Invoiced Quantity indicates the quantity of a product that have been invoiced.',1120602,'QtyInvoiced',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,529,'N','N','LBRA','N','c8ecf8be-d709-440e-a7cf-e80e1f0d1ca3','N')
;

-- 26/11/2018 13h48min18s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Table_ID,OrderByClause,EntityType,AD_ReportView_UU) VALUES (1120040,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:48:18','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_RMAOpen','RMA Open',1120602,'Qty <> QtyDelivered OR Qty <> QtyInvoiced','LBRA','d93fdef2-e94e-41a6-808a-c767e620c937')
;

-- 26/11/2018 13h49min4s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120225,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:03','YYYY-MM-DD HH24:MI:SS'),100,'RMA Open','RMA Open','This report can help to see all RMA Not Invoiced or Delivered','Y','RV_LBR_RMAOpen','N',1120040,'3','LBRA',0,0,'N','N','Y','N','ef60eabf-ac1c-4c90-89c9-0c83166e8707')
;

-- 26/11/2018 13h49min49s BRST
UPDATE AD_Process SET Description='RMA Detailss', Help='This report can help to see all exchange and return of products.', ProcedureName=NULL, IsReport='Y', IsDirectPrint='N', AD_ReportView_ID=1120039, Classname=NULL, AccessLevel='3', AD_PrintFormat_ID=NULL, AD_Workflow_ID=NULL, IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_Form_ID=NULL,Updated=TO_TIMESTAMP('2018-11-26 13:49:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120225
;

-- 26/11/2018 13h49min50s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120435,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120225,10,18,321,'N',0,'N','C_DocType_ID','Y','LBRA',196,'45f7e81b-e56e-4ea9-82ef-f9cc3f5768e6')
;

-- 26/11/2018 13h49min50s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120436,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,'RMA Type','Return Material Authorization Type','Types of RMA',1120225,20,19,'N',0,'N','M_RMAType_ID','Y','LBRA',2530,'304739d6-0515-4b17-bc8f-fc75a5fafc75')
;

-- 26/11/2018 13h49min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120437,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:50','YYYY-MM-DD HH24:MI:SS'),100,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120225,30,15,'Y',0,'N','Created','Y','LBRA',245,'cab104ad-c63c-4106-b817-6aaf1561d575')
;

-- 26/11/2018 13h49min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120438,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:51','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120225,40,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'d610692b-9780-4d08-8eff-2af5fe248832')
;

-- 26/11/2018 13h49min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120439,0,0,'Y',TO_TIMESTAMP('2018-11-26 13:49:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:49:51','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120225,50,30,162,'N',0,'N','M_Product_ID','Y','LBRA',454,'cca1b599-d3ca-4012-bc47-0d3fde6bfe2e')
;

-- 26/11/2018 13h50min34s BRST
UPDATE AD_Process SET Description='RMA Open', Help='This report can help to see all RMA Not Invoiced or Delivered', AD_ReportView_ID=1120040,Updated=TO_TIMESTAMP('2018-11-26 13:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120225
;

-- 26/11/2018 13h52min9s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120316,'RMA Open','RMA Open','R',0,0,'Y',TO_TIMESTAMP('2018-11-26 13:52:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-11-26 13:52:09','YYYY-MM-DD HH24:MI:SS'),100,'N',1120225,'Y','N','LBRA','Y','b332d0a0-c792-4ea3-9bc0-2d2496452f80')
;

-- 26/11/2018 13h52min9s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120316, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120316)
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=480
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=455
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53243
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53244
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53245
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120312
;

-- 26/11/2018 13h53min11s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=53242, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120316
;

-- 26/11/2018 13h57min25s BRST
UPDATE AD_ReportView SET OrderByClause='Qty < COALESCE(QtyDelivered,0) OR Qty < COALESCE(QtyInvoiced,0)',Updated=TO_TIMESTAMP('2018-11-26 13:57:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=1120040
;

SELECT Register_Migration_Script ('201811261550_RV_LBR_RMAOpen.sql') FROM DUAL
;