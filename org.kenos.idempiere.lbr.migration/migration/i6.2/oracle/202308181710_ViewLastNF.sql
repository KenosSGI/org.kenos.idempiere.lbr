SET SQLBLANKLINES ON
SET DEFINE OFF

-- 18 de ago de 2023 17:10:38 BRT
CREATE OR REPLACE VIEW LBR_InvoiceLastNF AS
 SELECT DISTINCT ON (nf.C_Invoice_ID) nf.LBR_NotaFiscal_ID,
    nf.C_Invoice_ID,
    nf.DocumentNo,
    COALESCE(nf.LBR_NFeNo, nf.DocumentNo) AS LBR_NFeNo,
    nf.DocStatus
   FROM LBR_NotaFiscal nf WHERE nf.C_Invoice_ID>0
  ORDER BY nf.C_Invoice_ID, nf.DocStatus, nf.LBR_NotaFiscal_ID DESC
;

-- 18 de ago de 2023 17:10:38 BRT
CREATE OR REPLACE VIEW LBR_OrderLastNF AS
 SELECT DISTINCT ON (nf.C_Order_ID) nf.LBR_NotaFiscal_ID,
    nf.C_Order_ID,
    nf.DocumentNo,
    COALESCE(nf.LBR_NFeNo, nf.DocumentNo) AS LBR_NFeNo,
    nf.DocStatus
   FROM LBR_NotaFiscal nf WHERE nf.C_Order_ID>0
  ORDER BY nf.C_Order_ID, nf.DocStatus, nf.LBR_NotaFiscal_ID DESC
;

-- 18 de ago de 2023 17:10:38 BRT
SELECT Register_Migration_Script ('202308181710_ViewLastNF.sql') FROM DUAL
;