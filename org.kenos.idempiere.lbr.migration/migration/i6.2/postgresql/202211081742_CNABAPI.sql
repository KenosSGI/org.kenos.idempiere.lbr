-- 8 de nov de 2022 17:37:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123011,'API',1120360,'A',0,0,'Y',TO_TIMESTAMP('2022-11-08 17:37:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-08 17:37:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','adc5e777-037a-41fe-902d-da11cb8f6141')
;

-- 9 de nov de 2022 16:03:29 BRT
UPDATE AD_Column SET FieldLength=36,Updated=TO_TIMESTAMP('2022-11-09 16:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132338
;

-- 9 de nov de 2022 16:03:31 BRT
INSERT INTO t_alter_column values('lbr_bankslipcontract','LBR_Param2','VARCHAR(36)',null,'NULL')
;

-- 9 de nov de 2022 16:03:37 BRT
UPDATE AD_Column SET FieldLength=36,Updated=TO_TIMESTAMP('2022-11-09 16:03:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132337
;

-- 9 de nov de 2022 16:03:38 BRT
INSERT INTO t_alter_column values('lbr_bankslipcontract','LBR_Param1','VARCHAR(36)',null,'NULL')
;

-- 8 de nov de 2022 17:37:28 BRT
SELECT Register_Migration_Script ('202211081742_CNABAPI.sql') FROM DUAL
;

