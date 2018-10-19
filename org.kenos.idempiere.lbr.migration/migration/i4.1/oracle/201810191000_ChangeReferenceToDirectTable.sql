SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/10/2018 16h2min2s BRT
-- AD_User_ID to Direct Table
UPDATE AD_Column SET AD_Reference_ID=19 WHERE ColumnName='AD_User_ID' AND AD_Val_Rule_ID IS NOT NULL AND AD_Reference_ID=30;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/10/2018 16h2min2s BRT
-- AD_Column_ID to Direct Table
UPDATE AD_Column SET AD_Reference_ID=19 WHERE ColumnName='AD_Column_ID' AND AD_Reference_ID=30;

SELECT Register_Migration_Script ('201810191000_ChangeReferenceToDirectTable.sql') FROM DUAL
;
