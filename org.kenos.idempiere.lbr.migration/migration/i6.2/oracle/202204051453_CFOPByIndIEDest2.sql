SET SQLBLANKLINES ON
SET DEFINE OFF

-- 5 de abr de 2022 15:34:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2022-04-05 15:34:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131711
;

-- 5 de abr de 2022 15:34:24 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-04-05 15:34:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106029
;

-- 5 de abr de 2022 15:34:24 BRT
SELECT Register_Migration_Script ('202204051453_CFOPByIndIEDest2.sql') FROM DUAL
;

