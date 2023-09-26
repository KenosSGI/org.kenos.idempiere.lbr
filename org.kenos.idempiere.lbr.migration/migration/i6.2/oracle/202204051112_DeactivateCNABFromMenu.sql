SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 5 de abr de 2022 11:12:53 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_DATE('2022-04-05 11:12:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000006
;
SELECT Register_Migration_Script ('202204051112_DeactivateCNABFromMenu.sql') FROM DUAL
;

