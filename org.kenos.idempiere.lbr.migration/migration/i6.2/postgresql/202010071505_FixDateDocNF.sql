-- 7 de out de 2020 15:25:17 BRT
UPDATE AD_Column SET AD_Reference_ID=16,Updated=TO_TIMESTAMP('2020-10-07 15:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000565
;

-- 7 de out de 2020 15:25:17 BRT
SELECT Register_Migration_Script ('202010071505_FixDateDocNF.sql') FROM DUAL
;
