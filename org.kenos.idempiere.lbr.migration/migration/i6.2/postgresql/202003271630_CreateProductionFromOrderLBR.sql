-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27 de mar de 2020 15:58:48 BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.base.process.OrderLineCreateProduction',Updated=TO_TIMESTAMP('2020-03-27 15:58:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=200006
;

SELECT Register_Migration_Script ('202003271630_CreateProductionFromOrderLBR.sql') FROM DUAL
;