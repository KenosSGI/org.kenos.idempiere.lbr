SET SQLBLANKLINES ON
SET DEFINE OFF

-- 23 de ago de 2019 15:39:57 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution,ClassName) VALUES (1120236,0,0,'Y',TO_DATE('2019-08-23 15:39:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-08-23 15:39:56','YYYY-MM-DD HH24:MI:SS'),100,'ASI Cleanup','Delete unused Attribute Set Instance','N','LBR_ASICleanup','N','3','U',0,0,'N','N','Y','N','c3a610ed-8347-41f2-ad90-48077a3210dd','P','org.kenos.idempiere.lbr.base.process.ASICleanup')
;

-- 23 de ago de 2019 15:43:22 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120478,0,0,'Y',TO_DATE('2019-08-23 15:43:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-08-23 15:43:21','YYYY-MM-DD HH24:MI:SS'),100,'Serial No','Product Serial Number ','The Serial Number identifies a tracked, warranted product.  It can only be used when the quantity is 1.',1120236,10,10,'N',0,'N','SerNo','Y','U',568,'37505e52-985c-4bc0-b627-982dcef5b7c5','N')
;

-- 23 de ago de 2019 15:43:58 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120350,'ASI Cleanup','P',0,0,'Y',TO_DATE('2019-08-23 15:43:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-08-23 15:43:57','YYYY-MM-DD HH24:MI:SS'),100,'N',1120236,'Y','N','U','Y','77b01ea1-39e5-4efc-ae7a-3c3c69313a26')
;

-- 23 de ago de 2019 15:43:58 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120350, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120350)
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120349
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 23 de ago de 2019 15:44:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120349
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 23 de ago de 2019 15:44:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 23 de ago de 2019 15:44:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120289
;

-- 23 de ago de 2019 15:44:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 23 de ago de 2019 15:44:33 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120289
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 23 de ago de 2019 15:44:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 23 de ago de 2019 15:44:50 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 23 de ago de 2019 15:44:51 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120349
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 23 de ago de 2019 15:45:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120349
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 23 de ago de 2019 15:45:19 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 23 de ago de 2019 15:45:19 BRT
SELECT Register_Migration_Script ('201908231851_ASICleanup.sql') FROM DUAL
;

