SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de abr de 2022 12:10:20 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D'' | @lbr_PaymentRule@=15 | @lbr_PaymentRule@=16', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated>
;
SELECT Register_Migration_Script ('202204191215_BankAccountFieldCBPartnerWindow.sql') FROM DUAL
;

