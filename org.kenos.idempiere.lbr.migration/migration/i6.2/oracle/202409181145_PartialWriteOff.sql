SET SQLBLANKLINES ON
SET DEFINE OFF

-- 18 de set de 2024 11:36:32 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120339,0,0,'Y',TO_DATE('2024-09-18 11:36:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:36:30','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Partial Write Off','Applies a partial write-off to an invoice by deducting a specified discount amount. The discount is directly applied to the allocation.','This process partially writes off an invoice by applying a specified discount amount, reducing the total invoice value. The user selects the invoice and the discount amount, and the process updates the allocation without creating a payment. The process allows the user to input a description of the transaction for record-keeping purposes. It is designed to only affects unpaid invoices.','N','LBR_InvoicePartialWriteOff','N','org.kenos.idempiere.lbr.base.process.InvoicePartialWriteOff','3','LBRA',0,0,'N','N','Y','N','af0a3d9d-043e-4666-a12b-d3b013580808','P')
;

-- 18 de set de 2024 11:38:42 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120664,0,0,'Y',TO_DATE('2024-09-18 11:38:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:38:42','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','Invoice Identifier','The Invoice Document.',1120339,10,30,'N',0,'Y','@C_Invoice_ID@','C_Invoice_ID','Y','LBRA',1008,'514fa940-c48e-4442-ba77-2d4076cf2663','N')
;

-- 18 de set de 2024 11:39:36 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted,MandatoryLogic) VALUES (1120665,0,0,'Y',TO_DATE('2024-09-18 11:39:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:39:36','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',1120339,20,30,'N',0,'N','@C_InvoicePaySchedule_ID@','C_InvoicePaySchedule_ID','Y','LBRA',1995,'1cb0df41-3cd8-4da3-b58e-fdcf4ab2815b','N','@IsPayScheduleValid@=Y')
;

-- 18 de set de 2024 11:39:55 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120666,0,0,'Y',TO_DATE('2024-09-18 11:39:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:39:55','YYYY-MM-DD HH24:MI:SS'),100,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120339,30,12,'N',0,'Y','0','DiscountAmt','Y','LBRA',1395,'510fd7f9-5232-4c15-870b-31c449f87c23','N')
;

-- 18 de set de 2024 11:40:45 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120667,0,0,'Y',TO_DATE('2024-09-18 11:40:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:40:44','YYYY-MM-DD HH24:MI:SS'),100,'Description','Optional short description of the record','A description is limited to 255 characters.',1120339,40,14,'N',0,'Y','Description','Y','LBRA',275,'0d95f91a-6b77-4de8-aee9-5ff6f5f212b3','N')
;

-- 18 de set de 2024 11:40:58 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120668,0,0,'Y',TO_DATE('2024-09-18 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-09-18 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120339,50,15,'N',0,'Y','DateAcct','Y','LBRA',263,'b607bd07-e1e6-4a4c-908d-0de18b68b672','N')
;

-- 18 de set de 2024 11:41:08 BRT
UPDATE AD_Process_Para SET DefaultValue='@#Date@',Updated=TO_DATE('2024-09-18 11:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120668
;

-- 18 de set de 2024 11:41:33 BRT
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Val_Rule_ID=1120203,Updated=TO_DATE('2024-09-18 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120665
;

-- 18 de set de 2024 11:43:02 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2024-09-18 11:43:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InvoicePartialWriteOff','Y',1120031,'LBR_InvoicePartialWriteOff',TO_DATE('2024-09-18 11:43:02','YYYY-MM-DD HH24:MI:SS'),100,'N','c3b68735-4169-4cd7-8c39-328db4c63490','W',263,1120339,'@Processed@=Y & @IsPaid@=N',20)
;

-- 18 de set de 2024 11:43:02 BRT
SELECT Register_Migration_Script ('202409181145_PartialWriteOff.sql') FROM DUAL
;