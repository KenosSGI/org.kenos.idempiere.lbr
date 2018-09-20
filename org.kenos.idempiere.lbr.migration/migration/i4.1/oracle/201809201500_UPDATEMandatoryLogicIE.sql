SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20/09/2018 15h09min28s BRT
UPDATE AD_Column SET MandatoryLogic = '@lbr_BPTypeBR@=PF | @lbr_BPTypeBR@=PJ & @LBR_IndIEDest@=1' WHERE AD_Column_ID=1000023
;

SELECT Register_Migration_Script ('201809201500_UPDATEMandatoryLogicIE.sql') FROM DUAL
;