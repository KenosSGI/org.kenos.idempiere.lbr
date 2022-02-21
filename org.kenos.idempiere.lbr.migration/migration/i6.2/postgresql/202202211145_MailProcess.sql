-- 21 de fev de 2022 11:37:29 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120305,0,0,'Y',TO_TIMESTAMP('2022-02-21 11:37:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:37:29','YYYY-MM-DD HH24:MI:SS'),100,'Enviar e-mail de Nota Fiscal','N','LBR_SendEmailNFe','N','3','LBRA',0,0,'N','N','Y','N','f5405959-813a-4633-be3e-30511fbd159b','P')
;

-- 21 de fev de 2022 11:38:33 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120579,0,0,'Y',TO_TIMESTAMP('2022-02-21 11:38:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:38:32','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120305,10,19,170,'N',1120123,0,'N','C_DocType_ID','Y','LBRA',196,'1ae9d9a7-301a-4953-a3d7-c4df4b224e95','N')
;

-- 21 de fev de 2022 11:39:02 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120580,0,0,'Y',TO_TIMESTAMP('2022-02-21 11:39:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:39:02','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120305,5,19,322,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'14cc2f5c-5c31-4385-a180-d09ac0a305f7','N')
;

-- 21 de fev de 2022 11:40:59 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120581,0,0,'Y',TO_TIMESTAMP('2022-02-21 11:40:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:40:59','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120305,20,15,'Y',0,'Y','DateDoc','Y','LBRA',265,'06cf9653-1b35-4282-90ea-247142628b90','N')
;

-- 21 de fev de 2022 11:41:10 BRT
UPDATE AD_Process_Para SET DefaultValue='@#Date@', DefaultValue2='@#Date@',Updated=TO_TIMESTAMP('2022-02-21 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120581
;

-- 21 de fev de 2022 11:41:47 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120582,0,0,'Y',TO_TIMESTAMP('2022-02-21 11:41:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:41:47','YYYY-MM-DD HH24:MI:SS'),100,'Force Execution',1120305,30,20,'N',0,'N','N','LBR_ForceExec','Y','LBRA',1123218,'3222119e-4f05-41f1-8c76-2cb24b6687a0','N')
;

-- 21 de fev de 2022 11:43:05 BRT
UPDATE AD_Process SET Name='Send email NF',Updated=TO_TIMESTAMP('2022-02-21 11:43:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120305
;

-- 21 de fev de 2022 11:43:33 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120403,'Send email NF','P',0,0,'Y',TO_TIMESTAMP('2022-02-21 11:43:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-02-21 11:43:32','YYYY-MM-DD HH24:MI:SS'),100,'N',1120305,'Y','N','LBRA','Y','d30d05a7-183b-4281-a335-929b32a45abb')
;

-- 21 de fev de 2022 11:43:33 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120403, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120403)
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 21 de fev de 2022 11:44:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 21 de fev de 2022 11:44:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 21 de fev de 2022 11:44:17 BRT
SELECT Register_Migration_Script ('202202211145_MailProcess.sql') FROM DUAL
;

