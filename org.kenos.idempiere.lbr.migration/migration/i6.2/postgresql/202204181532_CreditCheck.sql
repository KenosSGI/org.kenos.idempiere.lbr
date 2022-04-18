-- 18 de abr de 2022 15:23:32 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120310,0,0,'Y',TO_TIMESTAMP('2022-04-18 15:23:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-18 15:23:31','YYYY-MM-DD HH24:MI:SS'),100,'Credit Check','Mark unpaid customers with Credit Stopped','N','LBR_Credit Check','N','org.kenos.idempiere.lbr.base.process.CreditCheck','3','LBRA',0,0,'N','N','Y','N','a594ec38-3183-44df-a61a-5d0bd4f18070','P')
;

-- 18 de abr de 2022 15:24:01 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120591,0,0,'Y',TO_TIMESTAMP('2022-04-18 15:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-18 15:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Grace Days','Days after due date to send first dunning letter','The Grace Days indicates the number of days after the due date to send the first dunning letter.  This field displays only if the send dunning letters checkbox has been selected.',1120310,10,11,'N',0,'Y','0','GraceDays','Y','LBRA',895,'85a4cdd7-36c1-4116-8983-3a653550a1cd','N')
;

-- 18 de abr de 2022 15:24:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120592,0,0,'Y',TO_TIMESTAMP('2022-04-18 15:24:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-18 15:24:24','YYYY-MM-DD HH24:MI:SS'),100,'Cut Date',1120310,20,15,'N',0,'N','Cut_Date','Y','LBRA',202239,'627b43c0-1379-43c2-bea1-220493f5c86a','N')
;

-- 18 de abr de 2022 15:28:09 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120408,'Atualizar Estado do Crédito','P',0,0,'Y',TO_TIMESTAMP('2022-04-18 15:28:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-18 15:28:08','YYYY-MM-DD HH24:MI:SS'),100,'N',1120310,'Y','N','U','Y','0b633ed6-f726-4da2-8ddd-28e9e47f8d1c')
;

-- 18 de abr de 2022 15:28:09 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120408, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120408)
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120407
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 18 de abr de 2022 15:28:40 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 18 de abr de 2022 15:28:49 BRT
UPDATE AD_Menu SET EntityType='LBRA',Updated=TO_TIMESTAMP('2022-04-18 15:28:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120408
;

-- 18 de abr de 2022 15:28:49 BRT
SELECT Register_Migration_Script ('202204181532_CreditCheck.sql') FROM DUAL
;

