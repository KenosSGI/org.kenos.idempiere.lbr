-- 10 de mar de 2021 10:59:46 BRT
UPDATE AD_Field SET DisplayLogic=NULL, IsReadOnly='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ReadOnlyLogic='@lbr_IsOwnDocument@=Y', IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-10 10:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125011
;

-- 10 de mar de 2021 11:01:34 BRT
UPDATE AD_Field SET DisplayLogic=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-10 11:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100047
;

-- 10 de mar de 2021 16:35:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-10 16:35:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000357
;

-- 10 de mar de 2021 16:35:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-10 16:35:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124950
;

-- 10 de mar de 2021 16:35:05 BRT
SELECT Register_Migration_Script ('202103101618_FixFieldSeq.sql') FROM DUAL
;

