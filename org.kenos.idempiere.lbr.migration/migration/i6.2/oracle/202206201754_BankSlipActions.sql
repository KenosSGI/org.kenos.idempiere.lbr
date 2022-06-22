SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de jun de 2022 17:37:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122992,'Change Due Date',1000007,'D',0,0,'Y',TO_DATE('2022-06-20 17:36:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:36:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8ec569c2-fdbf-4dca-99d5-5640656bc255')
;

-- 20 de jun de 2022 17:38:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122994,'Give Rebate',1000007,'B',0,0,'Y',TO_DATE('2022-06-20 17:38:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:38:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','48bb01eb-69ab-4c6c-addc-b037205c6722')
;

-- 20 de jun de 2022 17:39:16 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122995,'Ask to Write Off',1000007,'W',0,0,'Y',TO_DATE('2022-06-20 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d210babb-80ea-4bba-82c8-1a08d7f15fc1')
;

-- 20 de jun de 2022 17:40:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122997,'Due Date Confirm',1000007,'0',0,0,'Y',TO_DATE('2022-06-20 17:40:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:40:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a108dd6a-ce8f-4ac6-ae2a-c0823deac73f')
;

-- 20 de jun de 2022 17:40:11 BRT
UPDATE AD_Ref_List SET Name='Change Due Date Confirm',Updated=TO_DATE('2022-06-20 17:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122997
;

-- 20 de jun de 2022 17:40:14 BRT
UPDATE AD_Ref_List SET Name='Change Due Date Confirmation',Updated=TO_DATE('2022-06-20 17:40:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122997
;

-- 20 de jun de 2022 17:40:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122998,'Rebate Confirmation',1000007,'1',0,0,'Y',TO_DATE('2022-06-20 17:40:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:40:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','84fd074b-0745-436b-a4b8-a03a27d98155')
;

-- 20 de jun de 2022 17:40:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122999,'Write Off Confirmation',1000007,'3',0,0,'Y',TO_DATE('2022-06-20 17:40:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:40:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a3c42fde-5a00-4df6-b4c5-43254c1cd4c4')
;

-- 20 de jun de 2022 17:41:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123000,'Protest Confirmation',1000007,'4',0,0,'Y',TO_DATE('2022-06-20 17:41:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:41:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','12ca71e8-6613-4c18-989c-68005e2be31f')
;

-- 20 de jun de 2022 17:41:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123001,'Bank Slip Rejected',1000007,'X',0,0,'Y',TO_DATE('2022-06-20 17:41:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:41:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8e052baa-2a90-4249-b8f2-a619d6bd21ab')
;

-- 20 de jun de 2022 17:42:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123002,'Ask to Protest',1000007,'P',0,0,'Y',TO_DATE('2022-06-20 17:42:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:42:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','89f0cf94-0696-4235-a87c-1e935ec2e4d0')
;

-- 20 de jun de 2022 17:43:46 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120318,0,0,'Y',TO_DATE('2022-06-20 17:43:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:43:45','YYYY-MM-DD HH24:MI:SS'),100,'Bank Slip Actions','Perform some actions to an existing bank slip, such as change due date, discount, protest and so on','N','LBR_BankSlip Actions','N','org.kenos.idempiere.lbr.bankslip.process.RegisterOccurence','1','LBRA',0,0,'N','N','Y','N','afcfeb07-3bb9-4d1b-9a07-ba465307ec4d','P')
;

-- 20 de jun de 2022 17:45:21 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120211,'LBR_OccurType - Actions','S','AD_Ref_List.Value IN (''P'', ''W'', ''D'', ''B'')',0,0,'Y',TO_DATE('2022-06-20 17:45:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:45:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','70a21980-5f65-46c6-8fa8-ac82e86572cd')
;

-- 20 de jun de 2022 17:45:47 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120612,0,0,'Y',TO_DATE('2022-06-20 17:45:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:45:46','YYYY-MM-DD HH24:MI:SS'),100,'Action','Indicates the Action to be performed','The Action field is a drop down list box which indicates the Action to be performed for this Item.',1120318,10,17,1000007,'N',1120211,0,'Y','W','Action','Y','LBRA',152,'7171a80a-82f4-4c88-8efa-a3c1e5532b1d','N')
;

-- 20 de jun de 2022 17:47:16 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted) VALUES (1120613,0,0,'Y',TO_DATE('2022-06-20 17:47:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:47:16','YYYY-MM-DD HH24:MI:SS'),100,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120318,30,12,'N',0,'N','0','DiscountAmt','Y','LBRA',1395,'@LBR_OccurType@=B','b2b62329-3252-435a-867c-846f4549c351','N')
;

-- 20 de jun de 2022 17:48:05 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic) VALUES (1120614,0,0,'Y',TO_DATE('2022-06-20 17:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:48:05','YYYY-MM-DD HH24:MI:SS'),100,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120318,40,15,'N',0,'N','DueDate','Y','LBRA',2000,'@LBR_OccurType@=D','f43f47c3-d836-4702-9e9d-74e8db0d73bb','N','@LBR_OccurType@=D')
;

-- 20 de jun de 2022 17:48:11 BRT
UPDATE AD_Process_Para SET MandatoryLogic='@LBR_OccurType@=B',Updated=TO_DATE('2022-06-20 17:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120613
;

-- 20 de jun de 2022 17:48:38 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120615,0,0,'Y',TO_DATE('2022-06-20 17:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-20 17:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Description','Optional short description of the record','A description is limited to 255 characters.',1120318,20,14,'N',0,'Y','Description','Y','LBRA',275,'b2026798-345c-4859-ae1b-afda486bd01e','N')
;

-- 20 de jun de 2022 17:51:11 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2022-06-20 17:51:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlip Actions','Y',1120023,'LBR_BankSlip Actions',TO_DATE('2022-06-20 17:51:11','YYYY-MM-DD HH24:MI:SS'),100,'N','79102d37-d03c-4182-baa2-ba115e2773d0','W',1120398,1120318,'@DocStatus@=CO & @IsRegistered@=Y',10)
;

-- 21 de jun de 2022 12:20:16 BRT
UPDATE AD_Process_Para SET Name='Occurrence Type', Description='Defines the Occurrence Type', Help='Defines the Occurrence Type', ColumnName='lbr_OccurType', AD_Element_ID=1000132,Updated=TO_DATE('2022-06-21 12:20:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120612
;

-- 21 de jun de 2022 12:20:27 BRT
UPDATE AD_Process_Para SET DisplayLogic='@lbr_OccurType@=B', MandatoryLogic='@lbr_OccurType@=B',Updated=TO_DATE('2022-06-21 12:20:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120613
;

-- 21 de jun de 2022 12:20:32 BRT
UPDATE AD_Process_Para SET DisplayLogic='@lbr_OccurType@=D', MandatoryLogic='@lbr_OccurType@=D',Updated=TO_DATE('2022-06-21 12:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120614
;

-- 20 de jun de 2022 17:51:11 BRT
SELECT Register_Migration_Script ('202206201754_BankSlipActions.sql') FROM DUAL
;


