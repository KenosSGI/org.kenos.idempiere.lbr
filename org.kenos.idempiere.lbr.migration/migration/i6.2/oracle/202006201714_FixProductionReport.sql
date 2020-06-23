SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de jun de 2020 17:08:58 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,DBDataType,SeqNo) VALUES (0,0,1120433,'edeebbc9-1e40-407d-911b-3d89d9fb5a47',TO_DATE('2020-06-20 17:08:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-06-20 17:08:57','YYYY-MM-DD HH24:MI:SS'),100,1120005,'RV_LBR_Production_ID','p.M_Production_ID','I',260)
;

-- 20 de jun de 2020 17:09:36 BRT
CREATE OR REPLACE VIEW RV_LBR_Production(M_Production_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, M_Product_ID, ProductionQty, PriceEntered, MovementDate, DocumentNo, LBR_ProductionGroup_ID, GrandTotal, C_BPartner_ID, DocStatus, DateStart, DatePromised, Description, C_OrderLine_ID, M_Locator_ID, Name, C_Invoice_ID, RV_LBR_Production_ID) AS SELECT p.M_Production_ID AS M_Production_ID, p.AD_Client_ID AS AD_Client_ID, p.AD_Org_ID AS AD_Org_ID, p.IsActive AS IsActive, p.Created AS Created, p.CreatedBy AS CreatedBy, p.Updated AS Updated, p.UpdatedBy AS UpdatedBy, p.M_Product_ID AS M_Product_ID, p.ProductionQty AS ProductionQty, p.PriceEntered AS PriceEntered, p.MovementDate AS MovementDate, p.DocumentNo AS DocumentNo, p.LBR_ProductionGroup_ID AS LBR_ProductionGroup_ID, ROUND((p.PriceEntered*p.ProductionQty),2) AS GrandTotal, p.C_BPartner_ID AS C_BPartner_ID, p.DocStatus AS DocStatus, p.DateStart AS DateStart, p.DatePromised AS DatePromised, p.Description AS Description, p.C_OrderLine_ID AS C_OrderLine_ID, p.M_Locator_ID AS M_Locator_ID, p.Name AS Name, p.C_Invoice_ID AS C_Invoice_ID, p.M_Production_ID AS RV_LBR_Production_ID FROM M_Production p
;

-- 20 de jun de 2020 17:09:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122998,0,0,'Y',TO_DATE('2020-06-20 17:09:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-20 17:09:58','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_Production_ID','Production Report','Production Report','LBRA','268e66d3-8f91-49d4-96ed-897dff01230d')
;

-- 20 de jun de 2020 17:12:40 BRT
UPDATE AD_Process SET ShowHelp='S',Updated=TO_DATE('2020-06-20 17:12:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120243
;

SELECT Register_Migration_Script ('202006201714_FixProductionReport.sql') FROM DUAL
;
