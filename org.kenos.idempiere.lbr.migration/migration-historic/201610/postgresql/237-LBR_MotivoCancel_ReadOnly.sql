-- 17/10/2016 10h50min52s BRST
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2016-10-17 10:50:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100105
;

-- 17/10/2016 10h54min55s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2016-10-17 10:54:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128802
;

-- 17/10/2016 10h54min58s BRST
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2016-10-17 10:54:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128801
;

-- 17/10/2016 10h50min52s BRST
SELECT Register_Migration_Script ('237-LBR_MotivoCancel_ReadOnly.sql') FROM DUAL
;