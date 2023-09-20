-- 19 de set de 2023 09:37:17 BRT
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=1000016
;

-- 19 de set de 2023 09:37:17 BRT
DELETE FROM AD_TreeNode WHERE Node_ID=1000016 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNode.AD_Tree_ID AND t.TreeType='TL' AND t.AD_Table_ID=116)
;

-- 19 de set de 2023 09:37:17 BRT
DELETE FROM AD_Menu WHERE AD_Menu_ID=1000016
;

-- 19 de set de 2023 09:37:17 BRT
DELETE FROM AD_TreeNodeMM WHERE Node_ID=1000016 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNodeMM.AD_Tree_ID AND t.TreeType='MM')
;

-- 19 de set de 2023 09:37:52 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120422,'Fiscal Group - Product','W',1000011,0,0,'Y',TO_TIMESTAMP('2023-09-19 09:37:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-19 09:37:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','597a7570-1fb5-456c-a75f-3aa40a0dd967')
;

-- 19 de set de 2023 09:37:52 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120422, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120422)
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de set de 2023 09:38:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:38:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:13 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:39:17 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 19 de set de 2023 09:39:18 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 19 de set de 2023 09:39:21 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 19 de set de 2023 09:39:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120018
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120363
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120422
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120287
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 19 de set de 2023 09:39:26 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 19 de set de 2023 09:40:03 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120423,'DF-e',0,0,'Y',TO_TIMESTAMP('2023-09-19 09:40:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-19 09:40:03','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','N','LBRA','N','b4b1b338-0dd3-4686-a6a8-f92ca826dec7')
;

-- 19 de set de 2023 09:40:03 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120423, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120423)
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120423
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de set de 2023 09:40:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:40:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:01 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:22 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:30 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 19 de set de 2023 09:41:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 19 de set de 2023 09:43:52 BRT
UPDATE AD_Form SET IsActive='N',Updated=TO_TIMESTAMP('2023-09-19 09:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120019
;

-- 19 de set de 2023 09:43:52 BRT
UPDATE AD_Menu SET Name='Confrontar XML do DF-e', Description='Confrontar XML do Documento Fiscal Eletrônico', IsActive='N',Updated=TO_TIMESTAMP('2023-09-19 09:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120254
;

-- 19 de set de 2023 09:44:05 BRT
UPDATE AD_Form SET IsActive='Y',Updated=TO_TIMESTAMP('2023-09-19 09:44:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120019
;

-- 19 de set de 2023 09:44:05 BRT
UPDATE AD_Menu SET Name='Confrontar XML do DF-e', Description='Confrontar XML do Documento Fiscal Eletrônico', IsActive='Y',Updated=TO_TIMESTAMP('2023-09-19 09:44:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120254
;

-- 19 de set de 2023 09:45:03 BRT
UPDATE AD_Form SET Name='Create NF via XML', Description='Create NF via NF-e XML', Help='This form will help to create a new NF using the NFe XML',Updated=TO_TIMESTAMP('2023-09-19 09:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120019
;

-- 19 de set de 2023 09:45:03 BRT
UPDATE AD_Menu SET Name='Create NF via XML', Description='Create NF via NF-e XML', IsActive='Y',Updated=TO_TIMESTAMP('2023-09-19 09:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120254
;

-- 19 de set de 2023 09:50:13 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120424,'Freight',0,0,'Y',TO_TIMESTAMP('2023-09-19 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-19 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','N','LBRA','N','ebfc7c8f-a335-4e77-910b-ec040c0e0411')
;

-- 19 de set de 2023 09:50:13 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120424, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120424)
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:50:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:50:31 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:51:40 BRT
UPDATE AD_Menu SET Name='Utils',Updated=TO_TIMESTAMP('2023-09-19 09:51:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120424
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:51:49 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:52:00 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:52:02 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:52:03 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120424
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120418
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120350
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120408
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100000
;

-- 19 de set de 2023 09:52:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120424, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120251
;

-- 19 de set de 2023 09:52:11 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_TIMESTAMP('2023-09-19 09:52:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000037
;

-- 19 de set de 2023 09:52:16 BRT
UPDATE AD_Process SET IsActive='N',Updated=TO_TIMESTAMP('2023-09-19 09:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000017
;

-- 19 de set de 2023 09:52:16 BRT
SELECT Register_Migration_Script ('202309191053_ChangeMenuLBR.sql') FROM DUAL
;

