SET SQLBLANKLINES ON
SET DEFINE OFF

-- 15/02/2018 15h53min8s BRST
UPDATE AD_Column SET Callout='org.compiere.model.CalloutInvoice.bPartner;org.adempierelbr.callout.CalloutTax.getTransactionType' WHERE AD_Column_ID=3499
;

SELECT Register_Migration_Script ('201803081500_FixCalloutInvoice.sql') FROM DUAL
;