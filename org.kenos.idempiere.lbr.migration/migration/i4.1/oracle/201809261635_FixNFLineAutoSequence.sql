SET SQLBLANKLINES ON
SET DEFINE OFF

-- Fix automatic sequence on manually created NF lines
-- 26/09/2018 16h34min14s BRT
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE(MAX(Line),0)+1 AS DefaultValue FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID=@LBR_NotaFiscal_ID@',Updated=TO_DATE('2018-09-26 16:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000588
;

SELECT Register_Migration_Script ('201809261635_FixNFLineAutoSequence.sql') FROM DUAL
;

