-- 19 de ago de 2021 13:19:58 BRT
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2021-08-19 13:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133600
;

-- 19 de ago de 2021 13:20:01 BRT
INSERT INTO t_alter_column values('lbr_nfconfig','lbr_PaymentRule','VARCHAR(2)',null,'NULL')
;

-- 19 de ago de 2021 13:20:01 BRT
SELECT Register_Migration_Script ('202108191331_FixPayMethodConfig.sql') FROM DUAL
;

