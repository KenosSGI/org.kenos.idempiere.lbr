-- 19 de fev de 2020 11:54:56 BRT
UPDATE AD_Column SET AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-02-19 11:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126797
;

-- 19 de fev de 2020 11:55:00 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2020-02-19 11:55:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126780
;

-- 19 de fev de 2020 11:55:01 BRT
INSERT INTO t_alter_column values('lbr_partnerdfe','DateDoc','TIMESTAMP',null,'NULL')
;

-- 19 de fev de 2020 11:55:11 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2020-02-19 11:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126796
;

-- 19 de fev de 2020 11:55:12 BRT
INSERT INTO t_alter_column values('lbr_partnerdfe','lbr_NFeProt','VARCHAR(60)',null,'NULL')
;

-- 19 de fev de 2020 14:31:57 BRT
UPDATE AD_Column SET AD_Reference_ID=10, AD_Reference_Value_ID=NULL,Updated=TO_TIMESTAMP('2020-02-19 14:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130473
;

-- 19 de fev de 2020 14:33:02 BRT
UPDATE AD_Field SET AD_Reference_ID=17, AD_Reference_Value_ID=1100004,Updated=TO_TIMESTAMP('2020-02-19 14:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127507
;

-- 19 de fev de 2020 14:34:52 BRT
UPDATE AD_Field SET AD_Reference_ID=17, AD_Reference_Value_ID=1120225,Updated=TO_TIMESTAMP('2020-02-19 14:34:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125543
;

-- 19 de fev de 2020 11:55:12 BRT
SELECT Register_Migration_Script ('202002191157_DFeMandatoryFields.sql') FROM DUAL
;
