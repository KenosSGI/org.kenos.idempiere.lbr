-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 4 de dez de 2020 11:39:22 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120259,0,0,'Y',TO_TIMESTAMP('2020-12-04 11:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 11:39:21','YYYY-MM-DD HH24:MI:SS'),100,'Create Invoice','Create Invoice From Cash Plan Line','N','CreateFromCashPlanLine','N','org.kenos.idempiere.lbr.tax.process.CreateFromCashPlanLine','1','LBRA',0,0,'N','N','Y','N','5d96e47e-0d7b-4935-abcb-9eea9f3c3912')
;

-- 4 de dez de 2020 11:43:04 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120520,0,0,'Y',TO_TIMESTAMP('2020-12-04 11:43:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 11:43:04','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120259,10,19,'N',173,0,'Y','C_DocType_ID','Y','LBRA',196,'a00e6598-5398-4286-9921-82560b443d44','N')
;

-- 4 de dez de 2020 11:44:46 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120521,0,0,'Y',TO_TIMESTAMP('2020-12-04 11:44:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 11:44:46','YYYY-MM-DD HH24:MI:SS'),100,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120259,20,17,135,'N',0,'Y','DocAction','Y','LBRA',287,'59b4fa2a-a1f4-452f-8615-eb76fbea25d7','N')
;

-- 4 de dez de 2020 11:45:14 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120522,0,0,'Y',TO_TIMESTAMP('2020-12-04 11:45:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 11:45:14','YYYY-MM-DD HH24:MI:SS'),100,'Consolidate to one Document','Consolidate Lines into one Document',1120259,30,20,'N',0,'Y','Y','ConsolidateDocument','Y','LBRA',2182,'eae548f0-579d-41f1-8961-efa7ae2a55d5','N')
;

-- 4 de dez de 2020 11:45:41 BRT
UPDATE AD_Process SET Name='Create Invoice (CashPlan Line)',Updated=TO_TIMESTAMP('2020-12-04 11:45:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120259
;

-- 4 de dez de 2020 11:48:56 BRT
UPDATE AD_Process SET Help='On grade view, select one or more lines do create invoice.',Updated=TO_TIMESTAMP('2020-12-04 11:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120259
;

-- 4 de dez de 2020 11:50:30 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2020-12-04 11:50:30','YYYY-MM-DD HH24:MI:SS'),100,'Create Invoice (CashPlan Line)','Y',1120015,'Create Invoice (CashPlan Line)',TO_TIMESTAMP('2020-12-04 11:50:30','YYYY-MM-DD HH24:MI:SS'),100,'N','e3f67fde-7cde-4866-8a66-96e7f9de94c1','W',53377,1120259,10)
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 4 de dez de 2020 15:27:55 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120190,'C_DocType Invoices and Credit Memos IsSOTrx','Document Type AR/AP Invoice and Credit Memos IsSOTrx','S','C_DocType.DocBaseType IN (''ARI'', ''API'',''ARC'',''APC'') AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.IsSOTrx=@IsSOTrx@',0,0,'Y',TO_TIMESTAMP('2020-12-04 15:27:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 15:27:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0de58ca6-e7cc-4bbc-8fe0-e3ca431a8dbd')
;

-- 4 de dez de 2020 15:28:14 BRT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1120190,Updated=TO_TIMESTAMP('2020-12-04 15:28:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120520
;

-- 4 de dez de 2020 15:28:32 BRT
UPDATE AD_Process_Para SET DefaultValue='--',Updated=TO_TIMESTAMP('2020-12-04 15:28:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120521
;

-- 4 de dez de 2020 15:28:58 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120523,0,0,'Y',TO_TIMESTAMP('2020-12-04 15:28:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-12-04 15:28:58','YYYY-MM-DD HH24:MI:SS'),100,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120259,40,19,'N',0,'N','M_PriceList_ID','Y','LBRA',449,'7236cc7d-c767-48a1-993c-b718a768da5a','N')
;

-- 4 de dez de 2020 15:36:12 BRT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''ARI'', ''API'',''ARC'',''APC'') AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.IsSOTrx=@#IsSOTrx@',Updated=TO_TIMESTAMP('2020-12-04 15:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120190
;

-- 4 de dez de 2020 15:37:46 BRT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''ARI'', ''API'',''ARC'',''APC'') AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.IsSOTrx=@0|IsSOTrx@',Updated=TO_TIMESTAMP('2020-12-04 15:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120190
;

-- 4 de dez de 2020 15:42:43 BRT
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2020-12-04 15:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120520
;

-- 4 de dez de 2020 15:44:34 BRT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''ARI'', ''API'',''ARC'',''APC'') AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.IsSOTrx=''@0|IsSOTrx@''',Updated=TO_TIMESTAMP('2020-12-04 15:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120190
;

SELECT Register_Migration_Script ('202012042300_CreateInvoiceFromCashPlanLines.sql') FROM DUAL
;
