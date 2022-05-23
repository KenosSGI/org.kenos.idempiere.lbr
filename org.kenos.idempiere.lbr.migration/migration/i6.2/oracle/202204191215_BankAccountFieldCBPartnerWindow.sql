SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de abr de 2022 12:10:20 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D'' | @lbr_PaymentRule@=15 | @lbr_PaymentRule@=16', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-04-19 12:10:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000871
;
SELECT Register_Migration_Script ('202204191215_BankAccountFieldCBPartnerWindow.sql') FROM DUAL
;
