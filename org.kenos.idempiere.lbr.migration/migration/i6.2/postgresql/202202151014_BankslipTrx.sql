-- 15 de fev de 2022 10:12:48 BRT
UPDATE AD_Window SET WindowType='T',Updated=TO_TIMESTAMP('2022-02-15 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000022
;

-- 15 de fev de 2022 10:12:48 BRT
UPDATE LBR_BankSlip SET IsRegistered='Y' WHERE IsRegistered='N' 
AND EXISTS (SELECT 1 FROM LBR_BankSlipMov m where m.LBR_BankSlip_ID=LBR_BankSlip.LBR_BankSlip_ID AND m.Type='C')
;

-- 15 de fev de 2022 16:36:20 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2022-02-15 16:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131698
;

-- 15 de fev de 2022 10:12:48 BRT
SELECT Register_Migration_Script ('202202151014_BankslipTrx.sql') FROM DUAL
;

