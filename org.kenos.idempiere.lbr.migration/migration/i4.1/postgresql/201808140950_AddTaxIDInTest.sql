-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 14/08/2018 9h46min33s BRT
ALTER TABLE Test ADD COLUMN LBR_Tax_ID NUMERIC(10) DEFAULT NULL 
;

SELECT Register_Migration_Script ('201808140950_AddTaxIDInTest.sql') FROM DUAL
;
