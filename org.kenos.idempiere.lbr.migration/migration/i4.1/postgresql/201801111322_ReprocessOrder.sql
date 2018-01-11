-- 11/01/2018 12h46min37s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120212,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:46:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:46:36','YYYY-MM-DD HH24:MI:SS'),100,'Re-Process Order','This script will re-process order values, such as Taxes, Prices, etc.','N','LBR_ReProcessOrder','N','org.kenos.idempiere.lbr.base.process.ReProcessOrder','3','LBRA',0,0,'N','N','Y','N','5b3c0fc0-ba3a-42e0-b57a-ea6b93eb1b99')
;

-- 11/01/2018 12h48min35s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120401,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:48:34','YYYY-MM-DD HH24:MI:SS'),100,'Recalculate Tax',1120212,10,20,'N',0,'Y','N','lbr_RecalculateTax','Y','LBRA',1106000,'7346cf95-82b5-452b-b049-9243926e9745','N')
;

-- 11/01/2018 12h49min8s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122428,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:49:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:49:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RedefineTax','Redefine Tax','Redefine Tax','LBRA','42d58247-bf95-4429-89d7-61f2e66c57f6')
;

-- 11/01/2018 12h49min35s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122429,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:49:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:49:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RedefineCFOP','Redefine CFOP','Redefine CFOP','LBRA','defdd5bb-3383-4755-8a27-98c10eec2d72')
;

-- 11/01/2018 12h50min1s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122430,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:50:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:50:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DistributeFreight','Distribute Freight','Distribute Freight','LBRA','ea4861ae-1528-4a53-8028-4270305463bf')
;

-- 11/01/2018 12h51min12s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122431,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:51:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:51:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EnforcePriceList','Enforce Price List','Enforce Price List','LBRA','c9d10c69-8e6d-458e-b089-d63b49d08562')
;

-- 11/01/2018 12h52min48s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120402,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:52:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:52:48','YYYY-MM-DD HH24:MI:SS'),100,'Redefine Tax',1120212,20,20,'N',0,'Y','N','LBR_RedefineTax','Y','LBRA',1122428,'9cceaea2-cfcb-4a47-9220-129de4b60cda','N')
;

-- 11/01/2018 12h53min20s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120403,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:53:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:53:19','YYYY-MM-DD HH24:MI:SS'),100,'Redefine CFOP',1120212,30,20,'N',1,'N','N','LBR_RedefineCFOP','Y','LBRA',1122429,'3abd1ca3-d0a0-421c-9197-aa3c41ee2741','N')
;

-- 11/01/2018 12h53min42s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120404,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:53:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:53:42','YYYY-MM-DD HH24:MI:SS'),100,'Distribute Freight',1120212,40,20,'N',1,'N','N','LBR_DistributeFreight','Y','LBRA',1122430,'97bd6ecf-c823-4bf7-90a4-ca8c1a55c89c','N')
;

-- 11/01/2018 12h54min5s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120405,0,0,'Y',TO_TIMESTAMP('2018-01-11 12:54:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-11 12:54:05','YYYY-MM-DD HH24:MI:SS'),100,'Enforce Price List',1120212,50,20,'N',1,'N','N','LBR_EnforcePriceList','Y','LBRA',1122431,'3fe41da4-0046-4deb-b107-a65127f14caa','N')
;

-- 11/01/2018 12h55min10s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2018-01-11 12:55:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReProcessOrder','Y',2000008,'LBR_ReProcessOrder',TO_TIMESTAMP('2018-01-11 12:55:10','YYYY-MM-DD HH24:MI:SS'),100,'N','6cc93bdd-3cd0-4f3a-9748-38743d9d3594','W',294,1120212,'@DocStatus@=DR | @DocStatus@=IP',10)
;

-- 11/01/2018 12h55min43s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2018-01-11 12:55:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReProcessOrder','Y',2000009,'LBR_ReProcessOrder',TO_TIMESTAMP('2018-01-11 12:55:43','YYYY-MM-DD HH24:MI:SS'),100,'N','0a775a36-113d-4507-9e7b-aa737b61b077','W',186,1120212,'@DocStatus@=DR | @DocStatus@=IP',20)
;

-- 11/01/2018 13h6min25s BRST
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.tax.process.ReProcessOrder',Updated=TO_TIMESTAMP('2018-01-11 13:06:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120212
;

SELECT Register_Migration_Script ('201801111322_ReprocessOrder.sql') FROM DUAL
;
