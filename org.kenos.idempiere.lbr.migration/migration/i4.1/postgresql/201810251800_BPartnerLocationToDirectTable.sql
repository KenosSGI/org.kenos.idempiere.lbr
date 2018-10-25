-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 25/10/2018 17h50min0s BRT
UPDATE AD_Column SET AD_Reference_ID=19 WHERE ColumnName='C_BPartner_Location_ID' AND AD_Reference_ID=30 AND AD_Val_Rule_ID IS NOT NULL;

SELECT Register_Migration_Script ('201810251800_BPartnerLocationToDirectTable.sql') FROM DUAL
;
