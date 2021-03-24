-- 23 de mar de 2021 17:09:29 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120198,'C_Year of Client Calendar','S','C_Year.C_Calendar_ID IN (SELECT COALESCE(o.C_Calendar_ID,c.C_Calendar_ID) FROM AD_OrgInfo o, AD_ClientInfo c WHERE c.AD_Client_ID=o.AD_Client_ID AND o.AD_Org_ID=@AD_Org_ID@)',0,0,'Y',TO_TIMESTAMP('2021-03-23 17:09:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-23 17:09:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a989f46e-dfd3-4579-87f1-74182ac03160')
;

-- 23 de mar de 2021 17:09:39 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120198,Updated=TO_TIMESTAMP('2021-03-23 17:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132777
;

-- 23 de mar de 2021 17:09:49 BRT
UPDATE AD_Val_Rule SET Name='C_Year of Org/Client Calendar',Updated=TO_TIMESTAMP('2021-03-23 17:09:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120198
;

-- 23 de mar de 2021 17:26:31 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120198,Updated=TO_TIMESTAMP('2021-03-23 17:26:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132943
;

-- 23 de mar de 2021 17:09:49 BRT
SELECT Register_Migration_Script ('202103231710_FilterPeriodSPED.sql') FROM DUAL
;

