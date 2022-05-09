-- 9 de mai de 2022 11:36:08 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120314,0,0,'Y',TO_TIMESTAMP('2022-05-09 11:36:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-05-09 11:36:08','YYYY-MM-DD HH24:MI:SS'),100,'Import NCM','N','LBR_ImportNCM','N','org.kenos.idempiere.lbr.tax.process.ImportNCM','3','LBRA',0,0,'N','N','Y','N','493d65ec-c997-4cf4-ac97-a3a56250524d','P')
;

-- 9 de mai de 2022 11:36:57 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120603,0,0,'Y',TO_TIMESTAMP('2022-05-09 11:36:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-05-09 11:36:57','YYYY-MM-DD HH24:MI:SS'),100,'File Name','Name of the local file or URL','Name of a file in the local directory space - or URL (file://.., http://.., ftp://..)',1120314,10,39,'N',0,'Y','FileName','Y','LBRA',2295,'ab7805b9-6264-45f2-96b5-e128a2f12873','N')
;

-- 9 de mai de 2022 11:42:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted) VALUES (1120604,0,0,'Y',TO_TIMESTAMP('2022-05-09 11:42:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-05-09 11:42:24','YYYY-MM-DD HH24:MI:SS'),100,'Create New',1120314,20,20,'N',0,'Y','N','CreateNew','N','LBRA','c0936815-ca11-4171-9dcb-682a07ef4fc2','N')
;

-- 9 de mai de 2022 11:44:20 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120412,'Import NCM','P',0,0,'Y',TO_TIMESTAMP('2022-05-09 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-05-09 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,'N',1120314,'Y','N','LBRA','Y','bb019b1e-6e41-4406-961e-3fa1c464f642')
;

-- 9 de mai de 2022 11:44:20 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120412, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120412)
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 9 de mai de 2022 11:44:52 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 9 de mai de 2022 11:44:52 BRT
SELECT Register_Migration_Script ('202205091153_ImportNCM.sql') FROM DUAL
;