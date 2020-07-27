SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26 de mar de 2020 14:14:58 BRT
DROP VIEW RV_LBR_Production;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26 de mar de 2020 14:14:58 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120383,'06add766-167c-4318-a3d8-52e0bf9681bb',TO_DATE('2020-03-26 14:14:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:14:57','YYYY-MM-DD HH24:MI:SS'),100,1120005,'C_BPartner_ID','p.C_BPartner_ID',160)
;

-- 26 de mar de 2020 14:16:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120384,'f883c4d3-516d-4e2e-ae36-849b14298d5c',TO_DATE('2020-03-26 14:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:16:04','YYYY-MM-DD HH24:MI:SS'),100,1120005,'DocStatus','p.DocStatus',170)
;

-- 26 de mar de 2020 14:17:11 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120385,'0ffc3742-60be-4b6e-a010-f88cc48b3905',TO_DATE('2020-03-26 14:17:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:17:10','YYYY-MM-DD HH24:MI:SS'),100,1120005,'DateStart','p.DateStart',180)
;

-- 26 de mar de 2020 14:17:25 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120386,'22cdae9b-bc73-4e90-9b65-c0b9eed2a3b4',TO_DATE('2020-03-26 14:17:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:17:25','YYYY-MM-DD HH24:MI:SS'),100,1120005,'DatePromised','p.DatePromised',190)
;

-- 26 de mar de 2020 14:18:02 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120387,'e4b6de13-a484-436a-a2a7-3c4b2f936628',TO_DATE('2020-03-26 14:18:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:18:02','YYYY-MM-DD HH24:MI:SS'),100,1120005,'Description','p.Description',200)
;

-- 26 de mar de 2020 14:19:03 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120388,'0ecab515-1996-4f10-b74e-19ef73315234',TO_DATE('2020-03-26 14:19:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:19:03','YYYY-MM-DD HH24:MI:SS'),100,1120005,'C_OrderLine_ID','p.C_OrderLine_ID',210)
;

-- 26 de mar de 2020 14:19:27 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120389,'661a9b65-2c55-4b68-ae50-476c0c6ba781',TO_DATE('2020-03-26 14:19:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:19:27','YYYY-MM-DD HH24:MI:SS'),100,1120005,'M_Locator_ID','p.M_Locator_ID',220)
;

-- 26 de mar de 2020 14:20:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120391,'50678434-db40-401c-b573-5c9bc69858f0',TO_DATE('2020-03-26 14:20:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:20:37','YYYY-MM-DD HH24:MI:SS'),100,1120005,'Name','p.Name',240)
;

-- 26 de mar de 2020 14:21:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120392,'4db4c956-9b35-4e7c-9866-2c82db852665',TO_DATE('2020-03-26 14:21:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-26 14:21:42','YYYY-MM-DD HH24:MI:SS'),100,1120005,'C_Invoice_ID','p.C_Invoice_ID',250)
;

-- 26 de mar de 2020 14:23:35 BRT
CREATE OR REPLACE VIEW RV_LBR_Production(M_Production_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, M_Product_ID, ProductionQty, PriceEntered, MovementDate, DocumentNo, LBR_ProductionGroup_ID, GrandTotal, C_BPartner_ID, DocStatus, DateStart, DatePromised, Description, C_OrderLine_ID, M_Locator_ID, Name, C_Invoice_ID) AS SELECT p.M_Production_ID AS M_Production_ID, p.AD_Client_ID AS AD_Client_ID, p.AD_Org_ID AS AD_Org_ID, p.IsActive AS IsActive, p.Created AS Created, p.CreatedBy AS CreatedBy, p.Updated AS Updated, p.UpdatedBy AS UpdatedBy, p.M_Product_ID AS M_Product_ID, p.ProductionQty AS ProductionQty, p.PriceEntered AS PriceEntered, p.MovementDate AS MovementDate, p.DocumentNo AS DocumentNo, p.LBR_ProductionGroup_ID AS LBR_ProductionGroup_ID, ROUND((p.PriceEntered*p.ProductionQty),2) AS GrandTotal, p.C_BPartner_ID AS C_BPartner_ID, p.DocStatus AS DocStatus, p.DateStart AS DateStart, p.DatePromised AS DatePromised, p.Description AS Description, p.C_OrderLine_ID AS C_OrderLine_ID, p.M_Locator_ID AS M_Locator_ID, p.Name AS Name, p.C_Invoice_ID AS C_Invoice_ID FROM M_Production p
;

-- 26 de mar de 2020 14:23:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131873,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120604,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-26 14:23:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:57','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','97496602-5fcd-485a-8de1-e39749d5bca3','N')
;

-- 26 de mar de 2020 14:23:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131874,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120604,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2020-03-26 14:23:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:58','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','50ffc87a-82f0-48f4-89d2-8f128dd6b1e8','N')
;

-- 26 de mar de 2020 14:23:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131875,0.0,'Date Start','Date Start for this Order',1120604,'DateStart',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2020-03-26 14:23:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:58','YYYY-MM-DD HH24:MI:SS'),100,53280,'N','N','LBRA','N','c29095ac-8df1-4c51-84b6-33cb12f0f4ac','N')
;

-- 26 de mar de 2020 14:23:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131876,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120604,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','94707072-4518-439f-a17b-f5e8997accd2','N')
;

-- 26 de mar de 2020 14:23:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1131877,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120604,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','2c05babd-13df-427e-b73a-e1cde6353df3',10,'N')
;

-- 26 de mar de 2020 14:24:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131878,0.0,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120604,'C_OrderLine_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:23:59','YYYY-MM-DD HH24:MI:SS'),100,561,'N','N','LBRA','N','8da5f1b2-cc08-4a07-bcc4-c6cba3fa6748','N')
;

-- 26 de mar de 2020 14:24:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131879,0.0,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120604,'M_Locator_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-26 14:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:24:00','YYYY-MM-DD HH24:MI:SS'),100,448,'N','N','LBRA','N','de65f27e-4ccd-41d5-918d-2b981df1b727','N')
;

-- 26 de mar de 2020 14:24:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1131880,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120604,'Name',60,'N','N','N','N','Y','N',10,0,0,'Y',TO_DATE('2020-03-26 14:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:24:00','YYYY-MM-DD HH24:MI:SS'),100,469,'N','Y','LBRA','N','8fa9553b-1feb-4eb9-9871-5969202dd139',20,'N')
;

-- 26 de mar de 2020 14:24:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131881,0.0,'Invoice','Invoice Identifier','The Invoice Document.',1120604,'C_Invoice_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-26 14:24:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-26 14:24:01','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','3d99dd9d-6883-4b05-83c5-4eb013a4f4c1','N')
;

SELECT Register_Migration_Script ('202003261500_Fix_RV_LBR_Production.sql') FROM DUAL
;
