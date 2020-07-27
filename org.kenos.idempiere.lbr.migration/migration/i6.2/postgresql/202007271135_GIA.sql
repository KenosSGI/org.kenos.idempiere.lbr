-- 27 de jul de 2020 11:24:48 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120246,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:24:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:24:48','YYYY-MM-DD HH24:MI:SS'),100,'GIA Generator','N','GIAGenerator','N','org.kenos.idempiere.lbr.nfe.process.GIAGenerator','3','LBRA',0,0,'N','N','Y','N','d1387ba8-7737-4d2d-b828-e74c0113fb6f','P')
;

-- 27 de jul de 2020 11:26:08 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120505,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:26:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:26:08','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120246,10,15,'Y',0,'Y','DateDoc','Y','LBRA',265,'e5d8ce88-40b3-4c33-8bd0-c2b80320bc5c','N')
;

-- 27 de jul de 2020 11:26:46 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120506,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:26:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:26:46','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120246,5,19,322,'N',0,'N','AD_Org_ID','Y','LBRA',113,'58975ed3-bf7f-45d1-9cab-eb9fda6d8f9f','N')
;

-- 27 de jul de 2020 11:29:00 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120507,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:28:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:28:59','YYYY-MM-DD HH24:MI:SS'),100,'Beginning Balance','Balance prior to any transactions','The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',1120246,20,12,'N',0,'N','BeginningBalance','Y','LBRA',1378,'692252b8-94fc-4d0a-bf45-b27efe28ac1c','N')
;

-- 27 de jul de 2020 11:31:01 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122999,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:31:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:31:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BeginningBalanceST','Beginning Balance ST','Beginning Balance ST','LBRA','304d0044-0ddb-4816-92c9-498e6bc8dfee')
;

-- 27 de jul de 2020 11:31:44 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120508,0,0,'Y',TO_TIMESTAMP('2020-07-27 11:31:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:31:44','YYYY-MM-DD HH24:MI:SS'),100,'Beginning Balance ST',1120246,30,12,'N',0,'N','LBR_BeginningBalanceST','Y','LBRA',1122999,'7f6160b4-706f-4954-83df-d778caa3dbaf','N')
;

-- 27 de jul de 2020 11:32:58 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120363,'GIA Generator','P',0,0,'Y',TO_TIMESTAMP('2020-07-27 11:32:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-07-27 11:32:58','YYYY-MM-DD HH24:MI:SS'),100,'N',1120246,'Y','N','LBRA','Y','5f9751b0-27ce-4120-a4b5-b61937be68ad')
;

-- 27 de jul de 2020 11:32:58 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120363, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120363)
;

-- 27 de jul de 2020 11:33:57 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 27 de jul de 2020 11:33:58 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

SELECT Register_Migration_Script ('202007271135_GIA.sql') FROM DUAL
;
