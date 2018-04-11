SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 08/02/2018 16h42min34s BRST
UPDATE AD_Column SET MandatoryLogic='@LBR_IndIEDest@=1 & @lbr_BPTypeBR@=PF | @lbr_BPTypeBR@=PJ',Updated=TO_DATE('2018-02-08 16:42:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000023
;

SELECT Register_Migration_Script ('201802141400_ErroIEBPartnerIsProspect.sql') FROM DUAL
;