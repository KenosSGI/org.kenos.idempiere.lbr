-- 10 de mar de 2021 18:12:25 BRT
UPDATE AD_Field SET SeqNo=151, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-10 18:12:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 10 de mar de 2021 18:12:25 BRT
SELECT Register_Migration_Script ('202103101813_FixSeqXPed.sql') FROM DUAL
;

