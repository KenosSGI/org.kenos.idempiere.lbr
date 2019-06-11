SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 13/05/2019 12h13min7s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''ARI'' | @DocBaseType@=''API'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARC'' | @DocBaseType@=''NFB''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2019-05-13 12:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127216
;

UPDATE AD_Element_Trl SET Name='Completar NF Automaticamente', IsTranslated='Y' WHERE AD_Element_ID=1122418;

SELECT Register_Migration_Script ('201905281800_ConfigCompleteNFAutByOrg.sql') FROM DUAL
;