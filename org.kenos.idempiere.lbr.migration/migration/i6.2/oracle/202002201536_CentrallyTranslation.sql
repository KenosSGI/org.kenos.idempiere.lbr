SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de fev de 2020 15:34:13 BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-02-20 15:34:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000345
;

-- 20 de fev de 2020 15:34:13 BRT
SELECT Register_Migration_Script ('202002201536_CentrallyTranslation.sql') FROM DUAL
;

