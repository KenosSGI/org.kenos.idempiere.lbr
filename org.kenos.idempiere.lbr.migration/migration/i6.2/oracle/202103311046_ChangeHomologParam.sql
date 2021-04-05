SET SQLBLANKLINES ON
SET DEFINE OFF

-- 31 de mar de 2021 10:36:11 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120630,'710a3c71-ebd2-40b8-b70e-0ad52cb80698',TO_DATE('2021-03-31 10:36:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-03-31 10:36:10','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_IsHomolog','(CASE WHEN nf.LBR_NFeEnv=''2'' THEN ''Y'' ELSE ''N'' END)',1500)
;

-- 31 de mar de 2021 10:36:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123357,0,0,'Y',TO_DATE('2021-03-31 10:36:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 10:36:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsHomolog','Include Homolog','Include Homolog','LBRA','307e31f6-0f0d-4f62-8833-2317894c232f')
;

-- 31 de mar de 2021 10:37:06 BRT
DROP VIEW RV_LBR_NotaFiscal
;

-- 31 de mar de 2021 10:37:06 BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal(LBR_NotaFiscal_ID, AD_Org_ID, AD_Client_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Bill_Location_ID, BPName, C_BPartner_ID, C_BPartner_Location_ID, C_DocType_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_Order_ID, C_PaymentTerm_ID, DateDoc, DateTrx, DeliveryViaRule, Description, DiscountAmt, DocStatus, DocumentNo, FreightAmt, FreightCostRule, GrandTotal, IsCancelled, IsPrinted, IsSOTrx, LBR_BillNote, LBR_BPAddress1, LBR_BPAddress2, LBR_BPAddress3, LBR_BPAddress4, LBR_BPCity, LBR_BPCityCode, LBR_BPCNPJ, LBR_BPCountry, LBR_BPCountryCode, LBR_BPDeliveryAddress1, LBR_BPDeliveryAddress2, LBR_BPDeliveryAddress3, LBR_BPDeliveryAddress4, LBR_BPDeliveryCity, LBR_BPDeliveryCityCode, LBR_BPDeliveryCNPJ, LBR_BPDeliveryCountry, LBR_BPDeliveryIE, LBR_BPDeliveryPostal, LBR_BPDeliveryRegion, LBR_BPIE, LBR_BPInvoiceAddress1, LBR_BPInvoiceAddress2, LBR_BPInvoiceAddress3, LBR_BPInvoiceAddress4, LBR_BPInvoiceCity, LBR_BPInvoiceCNPJ, LBR_BPInvoiceCountry, LBR_BPInvoiceIE, LBR_BPInvoicePostal, LBR_BPInvoiceRegion, LBR_BPPhone, LBR_BPPostal, LBR_BPRegion, LBR_BPShipperAddress, LBR_BPShipperAddress1, LBR_BPShipperAddress2, LBR_BPShipperAddress3, LBR_BPShipperAddress4, LBR_BPShipperCity, LBR_BPShipperCNPJ, LBR_BPShipperCountry, LBR_BPShipperIE, LBR_BPShipperLicensePlate, LBR_BPShipperName, LBR_BPShipperPostal, LBR_BPShipperRegion, LBR_BPSuframa, LBR_BPTypeBR, LBR_Brand, LBR_CFOPNote, LBR_CNPJ, LBR_DateInOut, LBR_DE_ID, LBR_Delivery_Location_ID, LBR_FinNFe, LBR_FiscalOBS, LBR_FreightCostRule, LBR_GrossWeight, LBR_IE, LBR_IndIEDest, LBR_IndPres, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_MotivoCancel, LBR_NetWeight, LBR_NFeDesc, LBR_NFeEnv, LBR_NFeID, LBR_NFeLot_ID, LBR_NFENo, LBR_NFeStatus, LBR_NFModel, LBR_NFSerie, LBR_NFType, LBR_OrgAddress1, LBR_OrgAddress2, LBR_OrgAddress3, LBR_OrgAddress4, LBR_OrgCCM, LBR_OrgCity, LBR_OrgCountry, LBR_OrgName, LBR_OrgPhone, LBR_OrgPostal, LBR_OrgRegion, LBR_OtherChargesAmt, LBR_PackingType, LBR_ServiceTotalAmt, LBR_Ship_Location_ID, LBR_ShipNote, LBR_TimeInOut, LBR_TotalCIF, LBR_TotalSISCOMEX, LBR_TPEmis, LBR_TransactionType, M_InOut_ID, M_Shipper_ID, NoPackages, Org_Location_ID, TotalLines, ICMS_TaxAmt, ICMS_TaxBaseAmt, PIS_TaxAmt, PIS_TaxBaseAmt, COFINS_TaxAmt, COFINS_TaxBaseAmt, IPI_TaxAmt, IPI_TaxBaseAmt, ICMSST_TaxAmt, ICMSST_TaxBaseAmt , DIFAL_TaxAmt, DIFAL_TaxBaseAmt, DIFALO_TaxAmt, DIFALO_TaxBaseAmt, FCP_TaxAmt, FCP_TaxBaseAmt, DateAcct, LBR_IsHomolog) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Org_ID AS AD_Org_ID, nf.AD_Client_ID AS AD_Client_ID, nf.IsActive AS IsActive, nf.Created AS Created, nf.CreatedBy AS CreatedBy, nf.Updated AS Updated, nf.UpdatedBy AS UpdatedBy, nf.Bill_Location_ID AS Bill_Location_ID, nf.BPName AS BPName, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_BPartner_Location_ID AS C_BPartner_Location_ID, nf.C_DocType_ID AS C_DocType_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nf.C_Order_ID AS C_Order_ID, nf.C_PaymentTerm_ID AS C_PaymentTerm_ID, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nf.DeliveryViaRule AS DeliveryViaRule, nf.Description AS Description, nf.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, nf.DocumentNo AS DocumentNo, nf.FreightAmt AS FreightAmt, nf.FreightCostRule AS FreightCostRule, nf.GrandTotal AS GrandTotal, nf.IsCancelled AS IsCancelled, nf.IsPrinted AS IsPrinted, nf.IsSOTrx AS IsSOTrx, nf.LBR_BillNote AS LBR_BillNote, nf.LBR_BPAddress1 AS LBR_BPAddress1, nf.LBR_BPAddress2 AS LBR_BPAddress2, nf.LBR_BPAddress3 AS LBR_BPAddress3, nf.LBR_BPAddress4 AS LBR_BPAddress4, nf.LBR_BPCity AS LBR_BPCity, nf.LBR_BPCityCode AS LBR_BPCityCode, nf.LBR_BPCNPJ AS LBR_BPCNPJ, nf.LBR_BPCountry AS LBR_BPCountry, nf.LBR_BPCountryCode AS LBR_BPCountryCode, nf.LBR_BPDeliveryAddress1 AS LBR_BPDeliveryAddress1, nf.LBR_BPDeliveryAddress2 AS LBR_BPDeliveryAddress2, nf.LBR_BPDeliveryAddress3 AS LBR_BPDeliveryAddress3, nf.LBR_BPDeliveryAddress4 AS LBR_BPDeliveryAddress4, nf.LBR_BPDeliveryCity AS LBR_BPDeliveryCity, nf.LBR_BPDeliveryCityCode AS LBR_BPDeliveryCityCode, nf.LBR_BPDeliveryCNPJ AS LBR_BPDeliveryCNPJ, nf.LBR_BPDeliveryCountry AS LBR_BPDeliveryCountry, nf.LBR_BPDeliveryIE AS LBR_BPDeliveryIE, nf.LBR_BPDeliveryPostal AS LBR_BPDeliveryPostal, nf.LBR_BPDeliveryRegion AS LBR_BPDeliveryRegion, nf.LBR_BPIE AS LBR_BPIE, nf.LBR_BPInvoiceAddress1 AS LBR_BPInvoiceAddress1, nf.LBR_BPInvoiceAddress2 AS LBR_BPInvoiceAddress2, nf.LBR_BPInvoiceAddress3 AS LBR_BPInvoiceAddress3, nf.LBR_BPInvoiceAddress4 AS LBR_BPInvoiceAddress4, nf.LBR_BPInvoiceCity AS LBR_BPInvoiceCity, nf.LBR_BPInvoiceCNPJ AS LBR_BPInvoiceCNPJ, nf.LBR_BPInvoiceCountry AS LBR_BPInvoiceCountry, nf.LBR_BPInvoiceIE AS LBR_BPInvoiceIE, nf.LBR_BPInvoicePostal AS LBR_BPInvoicePostal, nf.LBR_BPInvoiceRegion AS LBR_BPInvoiceRegion, nf.LBR_BPPhone AS LBR_BPPhone, nf.LBR_BPPostal AS LBR_BPPostal, nf.LBR_BPRegion AS LBR_BPRegion, nf.LBR_BPShipperAddress AS LBR_BPShipperAddress, nf.LBR_BPShipperAddress1 AS LBR_BPShipperAddress1, nf.LBR_BPShipperAddress2 AS LBR_BPShipperAddress2, nf.LBR_BPShipperAddress3 AS LBR_BPShipperAddress3, nf.LBR_BPShipperAddress4 AS LBR_BPShipperAddress4, nf.LBR_BPShipperCity AS LBR_BPShipperCity, nf.LBR_BPShipperCNPJ AS LBR_BPShipperCNPJ, nf.LBR_BPShipperCountry AS LBR_BPShipperCountry, nf.LBR_BPShipperIE AS LBR_BPShipperIE, nf.LBR_BPShipperLicensePlate AS LBR_BPShipperLicensePlate, nf.LBR_BPShipperName AS LBR_BPShipperName, nf.LBR_BPShipperPostal AS LBR_BPShipperPostal, nf.LBR_BPShipperRegion AS LBR_BPShipperRegion, nf.LBR_BPSuframa AS LBR_BPSuframa, nf.LBR_BPTypeBR AS LBR_BPTypeBR, nf.LBR_Brand AS LBR_Brand, nf.LBR_CFOPNote AS LBR_CFOPNote, nf.LBR_CNPJ AS LBR_CNPJ, nf.LBR_DateInOut AS LBR_DateInOut, nf.LBR_DE_ID AS LBR_DE_ID, nf.LBR_Delivery_Location_ID AS LBR_Delivery_Location_ID, nf.LBR_FinNFe AS LBR_FinNFe, nf.LBR_FiscalOBS AS LBR_FiscalOBS, nf.LBR_FreightCostRule AS LBR_FreightCostRule, nf.LBR_GrossWeight AS LBR_GrossWeight, nf.LBR_IE AS LBR_IE, nf.LBR_IndIEDest AS LBR_IndIEDest, nf.LBR_IndPres AS LBR_IndPres, nf.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nf.LBR_MotivoCancel AS LBR_MotivoCancel, nf.LBR_NetWeight AS LBR_NetWeight, nf.LBR_NFeDesc AS LBR_NFeDesc, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeLot_ID AS LBR_NFeLot_ID, CAST(COALESCE(nf.lbr_nfeno, nf.documentno) AS varchar(30)) AS LBR_NFENo, nf.LBR_NFeStatus AS LBR_NFeStatus, nf.LBR_NFModel AS LBR_NFModel, nf.LBR_NFSerie AS LBR_NFSerie, nf.LBR_NFType AS LBR_NFType, nf.LBR_OrgAddress1 AS LBR_OrgAddress1, nf.LBR_OrgAddress2 AS LBR_OrgAddress2, nf.LBR_OrgAddress3 AS LBR_OrgAddress3, nf.LBR_OrgAddress4 AS LBR_OrgAddress4, nf.LBR_OrgCCM AS LBR_OrgCCM, nf.LBR_OrgCity AS LBR_OrgCity, nf.LBR_OrgCountry AS LBR_OrgCountry, nf.LBR_OrgName AS LBR_OrgName, nf.LBR_OrgPhone AS LBR_OrgPhone, nf.LBR_OrgPostal AS LBR_OrgPostal, nf.LBR_OrgRegion AS LBR_OrgRegion, nf.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nf.LBR_PackingType AS LBR_PackingType, nf.LBR_ServiceTotalAmt AS LBR_ServiceTotalAmt, nf.LBR_Ship_Location_ID AS LBR_Ship_Location_ID, nf.LBR_ShipNote AS LBR_ShipNote, nf.LBR_TimeInOut AS LBR_TimeInOut, nf.LBR_TotalCIF AS LBR_TotalCIF, nf.LBR_TotalSISCOMEX AS LBR_TotalSISCOMEX, nf.LBR_TPEmis AS LBR_TPEmis, nf.LBR_TransactionType AS LBR_TransactionType, nf.M_InOut_ID AS M_InOut_ID, nf.M_Shipper_ID AS M_Shipper_ID, nf.NoPackages AS NoPackages, nf.Org_Location_ID AS Org_Location_ID, nf.TotalLines AS TotalLines, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBaseAmt  AS ICMSST_TaxBaseAmt , difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt, nf.DateAcct AS DateAcct, (CASE WHEN nf.LBR_NFeEnv='2' THEN 'Y' ELSE 'N' END) AS LBR_IsHomolog FROM LBR_NotaFiscal nf 
LEFT JOIN LBR_NFTax_v icms ON (nf.LBR_NotaFiscal_ID=icms.LBR_NotaFiscal_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFTax_v pis ON (nf.LBR_NotaFiscal_ID=pis.LBR_NotaFiscal_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFTax_v cofins ON (nf.LBR_NotaFiscal_ID=cofins.LBR_NotaFiscal_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFTax_v ipi ON (nf.LBR_NotaFiscal_ID=ipi.LBR_NotaFiscal_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFTax_v icmsst ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFTax_v difal ON (nf.LBR_NotaFiscal_ID=difal.LBR_NotaFiscal_ID AND difal.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFTax_v difalo ON (nf.LBR_NotaFiscal_ID=difalo.LBR_NotaFiscal_ID AND difalo.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFTax_v fcp ON (nf.LBR_NotaFiscal_ID=fcp.LBR_NotaFiscal_ID AND fcp.TaxIndicator='FCP')
;

-- 31 de mar de 2021 10:37:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133514,0.0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120567,'DateAcct',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2021-03-31 10:37:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 10:37:18','YYYY-MM-DD HH24:MI:SS'),100,263,'N','N','LBRA','N','e38eb5f9-c53a-4c44-ac7d-9de239b04ade','N')
;

-- 31 de mar de 2021 10:37:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133515,0.0,'Include Homolog',1120567,'LBR_IsHomolog',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_DATE('2021-03-31 10:37:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 10:37:20','YYYY-MM-DD HH24:MI:SS'),100,1123357,'N','N','LBRA','N','faf7edd9-4177-4262-a895-fcd0dfeb7946','N')
;

-- 31 de mar de 2021 10:38:16 BRT
UPDATE AD_Column SET DefaultValue='N', FieldLength=1, AD_Reference_ID=20,Updated=TO_DATE('2021-03-31 10:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133515
;

-- 31 de mar de 2021 10:39:12 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120631,'2fb6fa06-def1-4248-9c1a-dfc6afec15ff',TO_DATE('2021-03-31 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-03-31 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_IsHomolog','(CASE WHEN nf.LBR_NFeEnv=''2'' THEN ''Y'' ELSE ''N'' END)',1050)
;

-- 31 de mar de 2021 10:39:19 BRT
DROP VIEW RV_LBR_NotaFiscal_Details
;

-- 31 de mar de 2021 10:39:19 BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal_Details(LBR_NotaFiscal_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, C_BPartner_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_InvoiceLine_ID, C_Order_ID, C_UOM_ID, COFINS_TaxAmt, COFINS_TaxBase, COFINS_TaxBaseAmt, COFINS_TaxRate, LBR_CSTCOFINS, LBR_CSTICMS, LBR_CSTIPI, LBR_CSTPIS, DateDoc, DateTrx, Description, Discount, DiscountAmt, DocStatus, FCP_TaxAmt, FCP_TaxBase, FCP_TaxBaseAmt, FCP_TaxRate, FCP_TaxStatus, FreightAmt, GrossRAmt, ICMS_TaxAmt, ICMS_TaxBase, ICMS_TaxBaseAmt, ICMS_TaxRate, DIFAL_TaxAmt, DIFAL_TaxBase, DIFAL_TaxBaseAmt, DIFAL_TaxRate, DIFAL_TaxStatus, DIFALO_TaxAmt, DIFALO_TaxBase, DIFALO_TaxBaseAmt, DIFALO_TaxRate, DIFALO_TaxStatus, ICMSST_TaxAmt, ICMSST_TaxBase, ICMSST_TaxBaseAmt, ICMSST_TaxRate, ICMSST_TaxStatus, IPI_TaxAmt, IPI_TaxBase, IPI_TaxBaseAmt, IPI_TaxRate, IsCancelled, LBR_CEST_ID, LBR_CFOP_ID, LBR_CFOPNote, LBR_FCIValue, LBR_FinNFe, LBR_IndTot, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_IsService, LBR_LineTotalCIF, LBR_LineTotalSISCOMEX, LBR_NCM_ID, LBR_NFDI_ID, LBR_NFeEnv, LBR_NFeID, LBR_NFeStatus, LBR_NotaFiscalLine_ID, LBR_NumAdicao, LBR_NumSeqItem, LBR_OtherChargesAmt, LBR_ProductSource, LBR_ServiceTaxes, LBR_TaxStatus, LBR_TaxStatusIPI, LBR_TransactionType, LBR_UOMName, Line, LineTotalAmt, M_InOut_ID , M_Product_ID, Manufacturer, PIS_TaxAmt, PIS_TaxBase, PIS_TaxBaseAmt, PIS_TaxRate, Price, PriceListAmt, ProductName, ProductValue, Qty, VendorProductNo, lbr_BPDeliveryRegion, lbr_NFENo, DateAcct, LBR_IsHomolog) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Client_ID AS AD_Client_ID, nf.AD_Org_ID AS AD_Org_ID, nfl.IsActive AS IsActive, nfl.Created AS Created, nfl.CreatedBy AS CreatedBy, nfl.Updated AS Updated, nfl.UpdatedBy AS UpdatedBy, nf.DocumentNo AS DocumentNo, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nfl.C_InvoiceLine_ID AS C_InvoiceLine_ID, nf.C_Order_ID AS C_Order_ID, nfl.C_UOM_ID AS C_UOM_ID, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBase AS COFINS_TaxBase, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, cofins.LBR_TaxRate AS COFINS_TaxRate, cofins.CST AS LBR_CSTCOFINS, icms.CST AS LBR_CSTICMS, ipi.CST AS LBR_CSTIPI, pis.CST AS LBR_CSTPIS, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nfl.Description AS Description, nfl.Discount AS Discount, nfl.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBase AS FCP_TaxBase, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt, fcp.LBR_TaxRate AS FCP_TaxRate, fcp.CST AS FCP_TaxStatus, nfl.FreightAmt AS FreightAmt, ROUND(((nfl.LineTotalAmt+COALESCE(icmsst.LBR_TaxAmt,0))+COALESCE(ipi.LBR_TaxAmt,0)),2) AS GrossRAmt, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBase AS ICMS_TaxBase, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, icms.LBR_TaxRate AS ICMS_TaxRate, difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBase AS DIFAL_TaxBase, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difal.LBR_TaxRate AS DIFAL_TaxRate, difal.CST AS DIFAL_TaxStatus, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBase AS DIFALO_TaxBase, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, difalo.LBR_TaxRate AS DIFALO_TaxRate, difalo.CST AS DIFALO_TaxStatus, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBase AS ICMSST_TaxBase, icmsst.LBR_TaxBaseAmt AS ICMSST_TaxBaseAmt, icmsst.LBR_TaxRate AS ICMSST_TaxRate, icmsst.CST AS ICMSST_TaxStatus, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBase AS IPI_TaxBase, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, ipi.LBR_TaxRate AS IPI_TaxRate, nf.IsCancelled AS IsCancelled, nfl.LBR_CEST_ID AS LBR_CEST_ID, nfl.LBR_CFOP_ID AS LBR_CFOP_ID, nf.LBR_CFOPNote AS LBR_CFOPNote, nfl.LBR_FCIValue AS LBR_FCIValue, nf.LBR_FinNFe AS LBR_FinNFe, nfl.LBR_IndTot AS LBR_IndTot, nfl.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nfl.LBR_IsService AS LBR_IsService, nfl.LBR_LineTotalCIF AS LBR_LineTotalCIF, nfl.LBR_LineTotalSISCOMEX AS LBR_LineTotalSISCOMEX, nfl.LBR_NCM_ID AS LBR_NCM_ID, nfl.LBR_NFDI_ID AS LBR_NFDI_ID, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeStatus AS LBR_NFeStatus, nfl.LBR_NotaFiscalLine_ID AS LBR_NotaFiscalLine_ID, nfl.LBR_NumAdicao AS LBR_NumAdicao, nfl.LBR_NumSeqItem AS LBR_NumSeqItem, nfl.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nfl.LBR_ProductSource AS LBR_ProductSource, nfl.LBR_ServiceTaxes AS LBR_ServiceTaxes, nfl.LBR_TaxStatus AS LBR_TaxStatus, nfl.LBR_TaxStatusIPI AS LBR_TaxStatusIPI, nf.LBR_TransactionType AS LBR_TransactionType, nfl.LBR_UOMName AS LBR_UOMName, nfl.Line AS Line, nfl.LineTotalAmt AS LineTotalAmt, nf.M_InOut_ID  AS M_InOut_ID , nfl.M_Product_ID AS M_Product_ID, nfl.Manufacturer AS Manufacturer, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBase AS PIS_TaxBase, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, pis.LBR_TaxRate AS PIS_TaxRate, nfl.Price AS Price, nfl.PriceListAmt AS PriceListAmt, nfl.ProductName AS ProductName, nfl.ProductValue AS ProductValue, nfl.Qty AS Qty, nfl.VendorProductNo AS VendorProductNo, nf.lbr_BPDeliveryRegion AS lbr_BPDeliveryRegion, CAST(COALESCE(nf.lbr_nfeno, nf.documentno) AS varchar(30)) AS lbr_NFENo, nf.DateAcct AS DateAcct, (CASE WHEN nf.LBR_NFeEnv='2' THEN 'Y' ELSE 'N' END) AS LBR_IsHomolog FROM LBR_NotaFiscalline nfl
LEFT JOIN LBR_NotaFiscal nf ON (nfl.LBR_NotaFiscal_ID=nf.LBR_NotaFiscal_ID)
LEFT JOIN LBR_NFLineTax_V icms ON (nfl.LBR_NotaFiscalLine_ID=icms.LBR_NotaFiscalLine_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFLineTax_V pis ON (nfl.LBR_NotaFiscalLine_ID=pis.LBR_NotaFiscalLine_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFLineTax_V cofins ON (nfl.LBR_NotaFiscalLine_ID=cofins.LBR_NotaFiscalLine_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFLineTax_V ipi ON (nfl.LBR_NotaFiscalLine_ID=ipi.LBR_NotaFiscalLine_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFLineTax_V icmsst ON (nfl.LBR_NotaFiscalLine_ID=icmsst.LBR_NotaFiscalLine_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFLineTax_V difal ON (nfl.LBR_NotaFiscalLine_ID=difal.LBR_NotaFiscalLine_ID AND difal.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFLineTax_V difalo ON (nfl.LBR_NotaFiscalLine_ID=difalo.LBR_NotaFiscalLine_ID AND difalo.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFLineTax_V fcp ON (nfl.LBR_NotaFiscalLine_ID=fcp.LBR_NotaFiscalLine_ID AND fcp.TaxIndicator='FCP')
;

-- 31 de mar de 2021 10:39:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133516,0.0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120566,'DateAcct',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2021-03-31 10:39:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 10:39:27','YYYY-MM-DD HH24:MI:SS'),100,263,'N','N','LBRA','N','e3670097-0574-417b-9aeb-8fbb780c9956','N')
;

-- 31 de mar de 2021 10:39:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133517,0.0,'Include Homolog',1120566,'LBR_IsHomolog','N',2147483647,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2021-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 10:39:28','YYYY-MM-DD HH24:MI:SS'),100,1123357,'N','N','LBRA','N','1b26526b-5868-4628-b469-7e44ebbaac97','N','N')
;

-- 31 de mar de 2021 10:40:54 BRT
UPDATE AD_Process_Para SET Name='Include Homolog', Description=NULL, Help=NULL, AD_Reference_Value_ID=319, DefaultValue='N', ColumnName='LBR_IsHomolog', AD_Element_ID=1123357,Updated=TO_DATE('2021-03-31 10:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120246
;

-- 31 de mar de 2021 10:42:43 BRT
UPDATE AD_Process_Para SET Name='Include Homolog', Description=NULL, Help=NULL, AD_Reference_Value_ID=319, ColumnName='LBR_IsHomolog', AD_Element_ID=1123357,Updated=TO_DATE('2021-03-31 10:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120300
;

-- 31 de mar de 2021 10:42:55 BRT
UPDATE AD_Process_Para SET DefaultValue='N',Updated=TO_DATE('2021-03-31 10:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120300
;

-- 31 de mar de 2021 10:59:11 BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2021-03-31 10:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127211
;

-- 31 de mar de 2021 11:13:43 BRT
UPDATE AD_Column SET IsSelectionColumn='Y', SeqNoSelection=10,Updated=TO_DATE('2021-03-31 11:13:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100064
;

-- 31 de mar de 2021 11:14:03 BRT
UPDATE AD_Column SET IsSelectionColumn='Y', SeqNoSelection=10,Updated=TO_DATE('2021-03-31 11:14:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126791
;

-- 31 de mar de 2021 10:42:55 BRT
SELECT Register_Migration_Script ('202103311046_ChangeHomologParam.sql') FROM DUAL
;
