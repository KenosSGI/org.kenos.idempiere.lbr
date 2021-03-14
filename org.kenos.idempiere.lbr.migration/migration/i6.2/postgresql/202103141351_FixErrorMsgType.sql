-- 14 de mar de 2021 13:50:28 BRT
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_TIMESTAMP('2021-03-14 13:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129714
;

-- 14 de mar de 2021 13:50:28 BRT
SELECT Register_Migration_Script ('202103141351_FixErrorMsgType.sql') FROM DUAL
;

