-- 21 de abr de 2022 13:36:01 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120313,0,0,'Y',TO_TIMESTAMP('2022-04-21 13:35:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-21 13:35:57','YYYY-MM-DD HH24:MI:SS'),100,'Replace Sales Rep','N','LBR_ReplaceSalesRep','N','org.kenos.idempiere.lbr.base.process.ReplaceSalesRep','3','LBRA',0,0,'N','N','Y','N','1cc62e59-a6f5-4a23-8806-c18a1dcfb9a9','P')
;

-- 21 de abr de 2022 13:36:38 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120601,0,0,'Y',TO_TIMESTAMP('2022-04-21 13:36:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-21 13:36:37','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Group','Business Partner Group','The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.',1120313,10,19,'N',0,'N','C_BP_Group_ID','Y','LBRA',1383,'dea9ad4a-55df-4cee-8ab5-725a10904d3f','N')
;

-- 21 de abr de 2022 13:37:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120602,0,0,'Y',TO_TIMESTAMP('2022-04-21 13:37:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-21 13:37:24','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120313,20,19,190,'N',200025,0,'Y','SalesRep_ID','Y','LBRA',1063,'44341afe-a2e7-4904-91fe-05c3544e029d','N')
;

-- 21 de abr de 2022 13:38:05 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120411,'Replace Sales Rep','P',0,0,'Y',TO_TIMESTAMP('2022-04-21 13:38:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-04-21 13:38:05','YYYY-MM-DD HH24:MI:SS'),100,'N',1120313,'Y','N','LBRA','Y','00a7dac8-e6d7-49d0-b022-9bc371ab3af0')
;

-- 21 de abr de 2022 13:38:06 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120411, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120411)
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=165
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=372
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=271
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=528
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=237
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=414
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=238
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=396
;

-- 21 de abr de 2022 13:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=263, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120411
;

-- 21 de abr de 2022 13:44:47 BRT
UPDATE AD_Process_Para SET IsRange='Y',Updated=TO_TIMESTAMP('2022-04-21 13:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120602
;

-- 21 de abr de 2022 13:46:17 BRT
UPDATE AD_Process_Para SET IsCentrallyMaintained='N', Placeholder='Old Representative', Placeholder2='New Representative',Updated=TO_TIMESTAMP('2022-04-21 13:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120602
;

-- 21 de abr de 2022 13:38:20 BRT
SELECT Register_Migration_Script ('202204211339_ReplaceSalesRep.sql') FROM DUAL
;

