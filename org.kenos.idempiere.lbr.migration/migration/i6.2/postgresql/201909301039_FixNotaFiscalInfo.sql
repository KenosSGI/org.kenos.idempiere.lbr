-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 30 de set de 2019 10:23:27 BRT
UPDATE AD_InfoColumn SET IsDisplayed='N',Updated=TO_TIMESTAMP('2019-09-30 10:23:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120003
;

-- 30 de set de 2019 10:24:53 BRT
UPDATE AD_InfoColumn SET SeqNoSelection=30,Updated=TO_TIMESTAMP('2019-09-30 10:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120004
;

-- 30 de set de 2019 10:24:59 BRT
UPDATE AD_InfoColumn SET SeqNoSelection=20,Updated=TO_TIMESTAMP('2019-09-30 10:24:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120005
;

-- 30 de set de 2019 10:25:03 BRT
UPDATE AD_InfoColumn SET SeqNoSelection=10,Updated=TO_TIMESTAMP('2019-09-30 10:25:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120006
;

SELECT Register_Migration_Script ('201909301039_FixNotaFiscalInfo.sql') FROM DUAL
;