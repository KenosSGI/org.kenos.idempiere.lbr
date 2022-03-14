-- 14 de mar de 2022 11:35:01 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@!''90''',Updated=TO_TIMESTAMP('2022-03-14 11:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID IN (1000287,1000873,1128990)
;

-- 14 de mar de 2022 11:35:01 BRT
SELECT Register_Migration_Script ('202203141552_PayRuleFix.sql') FROM DUAL
;