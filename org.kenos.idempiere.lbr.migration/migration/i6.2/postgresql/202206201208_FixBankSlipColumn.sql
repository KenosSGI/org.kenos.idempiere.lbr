-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20 de jun de 2022 12:05:16 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2022-06-20 12:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132263
;

-- 20 de jun de 2022 12:05:19 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2022-06-20 12:05:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132264
;

-- 20 de jun de 2022 12:05:21 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2022-06-20 12:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132265
;

-- 20 de jun de 2022 12:05:21 BRT
SELECT Register_Migration_Script ('202206201208_FixBankSlipColumn.sql') FROM DUAL
;

