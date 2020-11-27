-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 18 de nov de 2020 15:04:54 BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''SOO'' & @DocSubTypeSO@!''WP'' & @DocSubTypeSO@!''WR''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-11-18 15:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000409
;

SELECT Register_Migration_Script ('202011181800_AutInOutFromInvoiceDocType.sql') FROM DUAL
;