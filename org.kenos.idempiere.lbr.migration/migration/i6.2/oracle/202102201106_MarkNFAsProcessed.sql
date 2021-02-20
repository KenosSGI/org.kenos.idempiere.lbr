SET SQLBLANKLINES ON
SET DEFINE OFF

UPDATE LBR_NotaFiscal SET Processed='Y'
WHERE Processed='N' AND IsSOTrx='N' AND DocStatus IN ('CL', 'CO', 'VO', 'RE')
;
SELECT Register_Migration_Script ('202102201106_MarkNFAsProcessed.sql') FROM DUAL
;