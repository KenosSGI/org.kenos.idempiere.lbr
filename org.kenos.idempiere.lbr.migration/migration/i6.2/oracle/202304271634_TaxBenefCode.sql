SET SQLBLANKLINES ON
SET DEFINE OFF

-- 27 de abr de 2023 16:32:49 BRT
UPDATE AD_Field SET DisplayLogic=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-27 16:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127365
;

SELECT Register_Migration_Script ('202304271634_TaxBenefCode.sql') FROM DUAL
;

