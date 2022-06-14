SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14 de jun de 2022 10:43:56 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120210,'LBR_BankSlipContract of Organization','S','EXISTS (SELECT 1 FROM C_BankAccount ba WHERE LBR_BankSlipContract.C_BankAccount_ID=ba.C_BankAccount_ID AND ba.AD_Org_ID=@AD_Org_ID@)',0,0,'Y',TO_DATE('2022-06-14 10:43:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-14 10:43:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','6db70a9d-1af5-4644-9b2b-ffcc1a06d2b7')
;

-- 14 de jun de 2022 10:44:30 BRT
UPDATE AD_Column SET Name='Bank Slip Contract', Description=NULL, Help=NULL, AD_Val_Rule_ID=1120210, ColumnName='LBR_BankSlipContract_ID', FieldLength=10, AD_Reference_ID=19, AD_Reference_Value_ID=NULL, AD_Element_ID=1123147, IsAlwaysUpdateable='N', FKConstraintType='N',Updated=TO_DATE('2022-06-14 10:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 14 de jun de 2022 10:45:06 BRT
UPDATE AD_Column SET ReadOnlyLogic='@lbr_IsBillPrinted@=Y',Updated=TO_DATE('2022-06-14 10:45:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 14 de jun de 2022 10:45:27 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipContract_CInvoice', FKConstraintType='N',Updated=TO_DATE('2022-06-14 10:45:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 14 de jun de 2022 10:45:27 BRT
ALTER TABLE C_Invoice ADD LBR_BankSlipContract_ID NUMBER(10) DEFAULT NULL 
;

-- 14 de jun de 2022 10:45:27 BRT
ALTER TABLE C_Invoice ADD CONSTRAINT LBRBankSlipContract_CInvoice FOREIGN KEY (LBR_BankSlipContract_ID) REFERENCES lbr_bankslipcontract(lbr_bankslipcontract_id) DEFERRABLE INITIALLY DEFERRED
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14 de jun de 2022 11:19:37 BRT
UPDATE AD_Column SET Name='Bank Slip Contract', Description=NULL, Help=NULL, AD_Val_Rule_ID=1120210, ColumnName='LBR_BankSlipContract_ID', FieldLength=10, AD_Reference_ID=19, AD_Reference_Value_ID=NULL, AD_Element_ID=1123147, FKConstraintType='N',Updated=TO_DATE('2022-06-14 11:19:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000906
;

-- 14 de jun de 2022 11:19:41 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipContract_COrder', FKConstraintType='N',Updated=TO_DATE('2022-06-14 11:19:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000906
;

-- 14 de jun de 2022 11:19:41 BRT
ALTER TABLE C_Order ADD LBR_BankSlipContract_ID NUMBER(10) DEFAULT NULL 
;

-- 14 de jun de 2022 11:19:41 BRT
ALTER TABLE C_Order ADD CONSTRAINT LBRBankSlipContract_COrder FOREIGN KEY (LBR_BankSlipContract_ID) REFERENCES lbr_bankslipcontract(lbr_bankslipcontract_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de jun de 2022 11:20:39 BRT
UPDATE AD_Column SET Name='Bank Slip Contract', Description=NULL, Help=NULL, AD_Val_Rule_ID=NULL, ColumnName='LBR_BankSlipContract_ID', FieldLength=10, AD_Reference_ID=19, AD_Reference_Value_ID=NULL, AD_Element_ID=1123147, FKConstraintType='N',Updated=TO_DATE('2022-06-14 11:20:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000904
;

-- 14 de jun de 2022 11:20:43 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipContract_CBPartner', FKConstraintType='N',Updated=TO_DATE('2022-06-14 11:20:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000904
;

-- 14 de jun de 2022 11:20:43 BRT
ALTER TABLE C_BPartner ADD LBR_BankSlipContract_ID NUMBER(10) DEFAULT NULL 
;

-- 14 de jun de 2022 11:20:43 BRT
ALTER TABLE C_BPartner ADD CONSTRAINT LBRBankSlipContract_CBPartner FOREIGN KEY (LBR_BankSlipContract_ID) REFERENCES lbr_bankslipcontract(lbr_bankslipcontract_id) DEFERRABLE INITIALLY DEFERRED
;

-- 14 de jun de 2022 11:20:43 BRT
SELECT Register_Migration_Script ('202206141150_BankSlipContractInvoice.sql') FROM DUAL
;

