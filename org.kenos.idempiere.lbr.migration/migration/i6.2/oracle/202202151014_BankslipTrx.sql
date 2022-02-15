SET SQLBLANKLINES ON
SET DEFINE OFF

-- 15 de fev de 2022 10:12:48 BRT
UPDATE AD_Window SET WindowType='T',Updated=TO_DATE('2022-02-15 10:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000022
;

-- 15 de fev de 2022 10:12:48 BRT
UPDATE LBR_BankSlip SET IsRegistered='Y' WHERE IsRegistered='N' 
AND EXISTS (SELECT 1 FROM LBR_BankSlipMov m where m.LBR_BankSlip_ID=LBR_BankSlip.LBR_BankSlip_ID AND m.Type='C')
;

-- 15 de fev de 2022 10:12:48 BRT
SELECT Register_Migration_Script ('202202151014_BankslipTrx.sql') FROM DUAL
;