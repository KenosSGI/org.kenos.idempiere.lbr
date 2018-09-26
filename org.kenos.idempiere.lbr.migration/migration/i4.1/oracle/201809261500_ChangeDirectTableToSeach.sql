SET SQLBLANKLINES ON
SET DEFINE OFF

-- 25/09/2018 16h43min5s BRT Fix M_Product.M_Product_ID: Loader - Too many records, Column=M_ProductSpent_ID, Table=R_RequestUpdate
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Column_ID=13992
;

-- 25/09/2018 16h43min5s BRT Fix M_Inventory.M_Inventory_ID: Loader - Too many records, Column=M_Inventory_ID, Table=M_InventoryLine
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Column_ID=3563
;

-- 25/09/2018 16h43min5s BRT Fix LBR_NotaFiscal.LBR_NotaFiscal_ID: Loader - Too many records, Column=LBR_NotaFiscal_ID, Table=LBR_NotaFiscalLine
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Column_ID=1000557
;

-- 25/09/2018 16h43min5s BRT Fix LBR_NFeLot.LBR_NFeLot_ID: Loader - Too many records, Column=LBR_NFeLot_ID, Table=LBR_NotaFiscal
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Column_ID=1100071
;

-- 25/09/2018 16h43min5s BRT Fix R_Request_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=1516
;

-- 25/09/2018 16h43min5s BRT Fix C_Order_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=558
;

-- 25/09/2018 16h43min5s BRT Fix C_InvoicePaySchedule_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=1995
;

-- 25/09/2018 16h43min5s BRT Fix AD_User_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=138
;

-- 25/09/2018 16h43min5s BRT Fix C_Invoice_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=1008
;

-- 25/09/2018 16h43min5s BRT Fix M_InOut_ID as Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID=19 AND AD_Element_ID=1025
;

SELECT Register_Migration_Script ('201809261500_ChangeDirectTableToSeach.sql') FROM DUAL
;