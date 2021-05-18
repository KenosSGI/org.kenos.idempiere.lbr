SET SQLBLANKLINES ON
SET DEFINE OFF

-- 18 de mai de 2021 11:07:33 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.AD_Org_ID=dfe.AD_Org_ID AND nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN (''CL'', ''CO''))',Updated=TO_DATE('2021-05-18 11:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120029
;

-- 18 de mai de 2021 11:07:40 BRT
CREATE OR REPLACE VIEW RV_LBR_PartnerDFe(LBR_PartnerDFe_ID, AD_CLient_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NFeID, CreatedDate, AD_User_ID, IsValid, DateDoc, LBR_CNPJ, BPName, IsCancelled, GrandTotal, lbr_NFENo, lbr_NFSerie, IsSOTrx) AS SELECT dfe.LBR_PartnerDFe_ID AS LBR_PartnerDFe_ID, dfe.AD_CLient_ID AS AD_CLient_ID, dfe.AD_Org_ID AS AD_Org_ID, dfe.Created AS Created, dfe.CreatedBy AS CreatedBy, dfe.Updated AS Updated, dfe.UpdatedBy AS UpdatedBy, dfe.IsActive AS IsActive, dfe.LBR_NFeID AS LBR_NFeID, nfe.Created AS CreatedDate, nfe.CreatedBy AS AD_User_ID, (CASE WHEN nfe.LBR_NotaFiscal_ID IS NOT NULL THEN 'Y' ELSE 'N' END) AS IsValid, dfe.DateDoc AS DateDoc, dfe.LBR_CNPJ AS LBR_CNPJ, dfe.BPName AS BPName, dfe.IsCancelled AS IsCancelled, dfe.GrandTotal AS GrandTotal, SUBSTRING (dfe.LBR_NFeID, 26, 9) AS lbr_NFENo, SUBSTRING (dfe.LBR_NFeID, 23, 3) AS lbr_NFSerie, dfe.IsSOTrx AS IsSOTrx FROM LBR_PartnerDFe dfe
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.AD_Org_ID=dfe.AD_Org_ID AND nfe.LBR_NFeID=dfe.LBR_NFeID AND nfe.DocStatus IN ('CL', 'CO')) WHERE dfe.DocumentType='0'
;

-- 18 de mai de 2021 11:07:40 BRT
SELECT Register_Migration_Script ('202105181118_FixRV_LBR_PartnerDFe.sql') FROM DUAL
;