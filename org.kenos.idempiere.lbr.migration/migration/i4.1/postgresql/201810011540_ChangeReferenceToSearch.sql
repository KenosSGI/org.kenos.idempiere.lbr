-- 01/10/2018 15h43min5s BRT Fix Some Columns as Table (18) OR Direct Table (19) change to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE AD_Reference_ID IN (18,19) AND ColumnName IN ('LBR_NCM_ID','C_BPartner_Location_ID','M_InOutLine_ID','LBR_NotaFiscal_ID',
'M_Product_ID','C_Payment_ID','AD_PrintFormatItem_ID','LBR_NFeLot_ID','M_MovementLine_ID',
'AD_Session_ID','C_Location_ID','AD_Attachment_ID','M_InventoryLine_ID',
'AD_Column_ID','C_InvoiceLine_ID','C_BPartner_ID','AD_Field_ID','C_OrderLine_ID',
'M_ProductionLine_ID','AD_WF_Process_ID','LBR_Tax_ID','AD_PInstance_ID',
'M_Transaction_ID','M_CostDetail_ID','C_AllocationHdr_ID','Fact_Acct_ID','AD_WF_Activity_ID',
'AD_Element_ID','C_City_ID','AD_User_ID','C_AllocationLine_ID','C_Conversion_Rate_ID','M_Locator_ID');


-- 01/10/2018 15h43min5s BRT Change M_Locator_ID Reference to Search (30)
UPDATE AD_Column SET AD_Reference_ID=30 WHERE ColumnName = 'M_Locator_ID';

-- 01/10/2018 15h43min5s BRT Fix Some Columns as Table (18) OR Direct Table (19) change to Search (30)
UPDATE AD_Process_Para SET AD_Reference_ID=30 WHERE AD_Reference_ID IN (18, 19) AND ColumnName IN ('LBR_NCM_ID','C_BPartner_Location_ID','M_InOutLine_ID','LBR_NotaFiscal_ID',
'M_Product_ID','C_Payment_ID','AD_PrintFormatItem_ID','LBR_NFeLot_ID','M_MovementLine_ID',
'AD_Session_ID','C_Location_ID','AD_Attachment_ID','M_InventoryLine_ID',
'AD_Column_ID','C_InvoiceLine_ID','C_BPartner_ID','AD_Field_ID','C_OrderLine_ID',
'M_ProductionLine_ID','AD_WF_Process_ID','LBR_Tax_ID','AD_PInstance_ID',
'M_Transaction_ID','M_CostDetail_ID','C_AllocationHdr_ID','Fact_Acct_ID','AD_WF_Activity_ID',
'AD_Element_ID','C_City_ID','AD_User_ID','C_AllocationLine_ID','C_Conversion_Rate_ID','M_Locator_ID');

SELECT Register_Migration_Script ('201810011540_ChangeReferenceToSearch.sql') FROM DUAL
;