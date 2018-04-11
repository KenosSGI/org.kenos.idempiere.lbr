SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 09/04/2018 11h12min23s BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.nfe.process.ProcAdditionalNFe',Updated=TO_DATE('2018-04-09 11:12:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120193
;

SELECT Register_Migration_Script ('201804091130_FixPathClassNFAdditional.sql') FROM DUAL
;