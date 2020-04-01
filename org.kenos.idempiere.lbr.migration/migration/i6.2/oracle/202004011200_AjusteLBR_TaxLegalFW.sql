SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 1 de abr de 2020 11:10:31 BRT
UPDATE AD_Column SET FieldLength=500, SeqNoSelection=10,Updated=TO_DATE('2020-04-01 11:10:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126799
;

-- 1 de abr de 2020 11:10:39 BRT
ALTER TABLE LBR_TaxLegalFW MODIFY Name VARCHAR2(500)
;

SELECT Register_Migration_Script ('202004011200_AjusteLBR_TaxLegalFW.sql') FROM DUAL
;
