-- 5 de mai de 2020 23:11:02 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2020-05-05 23:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100082
;

-- 5 de mai de 2020 23:11:29 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2020-05-05 23:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100064
;

-- 5 de mai de 2020 23:11:02 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2020-05-05 23:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100083
;

-- 5 de mai de 2020 23:34:19 BRT
UPDATE AD_Tab SET ReadOnlyLogic='@Processed@=Y',Updated=TO_TIMESTAMP('2020-05-05 23:34:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120196
;

SELECT Register_Migration_Script ('202004051800_FixCopyFieldPaymentTabNF.sql') FROM DUAL
;