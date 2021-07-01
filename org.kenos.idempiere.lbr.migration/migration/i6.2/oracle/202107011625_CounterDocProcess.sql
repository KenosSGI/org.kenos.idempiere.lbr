SET SQLBLANKLINES ON
SET DEFINE OFF

-- 1 de jul de 2021 14:34:20 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120297,0,0,'Y',TO_DATE('2021-07-01 14:34:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-07-01 14:34:20','YYYY-MM-DD HH24:MI:SS'),100,'Create Counter Document','Creates a counter document','If the Organization is linked to a Business Partner, this process will creates a counter-document','N','CreateCounterDoc','N','org.kenos.idempiere.lbr.tax.process.CreateCounterDoc','3','LBRA',0,0,'N','N','Y','N','5726083d-1386-4178-b673-867c8732ca6d','P')
;

-- 1 de jul de 2021 14:36:42 BRT
UPDATE AD_Process SET Value='LBR_CreateCounterDoc',Updated=TO_DATE('2021-07-01 14:36:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120297
;

-- 1 de jul de 2021 14:42:15 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2021-07-01 14:42:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateCounterDoc','Y',1120017,'LBR_CreateCounterDoc',TO_DATE('2021-07-01 14:42:14','YYYY-MM-DD HH24:MI:SS'),100,'N','f9512ca1-91e8-4dff-bfc4-dbc4bd1dbbbe','W',186,1120297,'@DocStatus@=''CO'' | @DocStatus@=''CL'' & @Ref_Order_ID@=0 & @C_BPartner_ID<AD_OrgBP_ID>@!0',30)
;

-- 1 de jul de 2021 14:44:29 BRT
UPDATE AD_ToolBarButton SET DisplayLogic='@DocStatus@=''CO'' | @DocStatus@=''CL'' & @Ref_Order_ID@=0',Updated=TO_DATE('2021-07-01 14:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=1120017
;

-- 1 de jul de 2021 16:22:36 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120574,0,0,'Y',TO_DATE('2021-07-01 16:22:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-07-01 16:22:35','YYYY-MM-DD HH24:MI:SS'),100,'Force Execution',1120297,20,20,'N',0,'Y','N','LBR_ForceExec','Y','LBRA',1123218,'1b2a07a9-8600-4e98-a4f8-8ba84a730b41','N')
;

-- 1 de jul de 2021 16:23:23 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120575,0,0,'Y',TO_DATE('2021-07-01 16:23:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-07-01 16:23:23','YYYY-MM-DD HH24:MI:SS'),100,'Same Product',1120297,10,20,'N',0,'Y','N','IsSameProduct','Y','LBRA',200144,'a08670a8-37cd-49b3-be09-ccde4047aaa0','N')
;

-- 1 de jul de 2021 16:28:08 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2021-07-01 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateCounterDoc','Y',1120018,'LBR_CreateCounterDoc',TO_DATE('2021-07-01 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,'N','7fc50dbc-819b-4a55-8ef0-f42ace65fca9','W',294,1120297,'@DocStatus@=''CO'' | @DocStatus@=''CL'' & @Ref_Order_ID@=0',20)
;

-- 1 de jul de 2021 16:28:50 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2021-07-01 16:28:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateCounterDoc','Y',1120019,'LBR_CreateCounterDoc',TO_DATE('2021-07-01 16:28:50','YYYY-MM-DD HH24:MI:SS'),100,'N','3ee6367c-29e4-4b60-b8f7-87902a2e8c59','W',1120371,1120297,'@DocStatus@=''CO'' | @DocStatus@=''CL'' & @Ref_Order_ID@=0',30)
;

-- 1 de jul de 2021 16:29:12 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2021-07-01 16:29:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateCounterDoc','Y',1120020,'LBR_CreateCounterDoc',TO_DATE('2021-07-01 16:29:11','YYYY-MM-DD HH24:MI:SS'),100,'N','706b2eb8-e84d-4d8a-905e-a81bfc759260','W',1120365,1120297,'@DocStatus@=''CO'' | @DocStatus@=''CL'' & @Ref_Order_ID@=0',30)
;

-- 1 de jul de 2021 16:29:12 BRT
SELECT Register_Migration_Script ('202107011625_CounterDocProcess.sql') FROM DUAL
;

