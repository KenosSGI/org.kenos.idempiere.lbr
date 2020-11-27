-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28 de out de 2020 15:25:29 BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' &  @DocSubTypeSO@!''WP'' & @DocSubTypeSO@!''WR'' | @DocBaseType@=''MMR'' | @DocBaseType@ = ''MMS''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-28 15:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000408
;

-- 29 de out de 2020 15:25:29 BRT
SELECT Register_Migration_Script ('202010291400_AutInvoiceFromInoutDocType.sql') FROM DUAL
;
