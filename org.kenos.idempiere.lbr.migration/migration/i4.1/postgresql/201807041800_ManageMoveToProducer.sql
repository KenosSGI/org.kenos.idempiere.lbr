-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 04/07/2018 18h25min24s BRT
INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Classname,AccessLevel,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (1120030,0,0,'Y',TO_TIMESTAMP('2018-07-04 18:25:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-04 18:25:24','YYYY-MM-DD HH24:MI:SS'),100,'Manage Move To Producer','org.kenos.idempiere.lbr.base.form.POGManageMoveToProducer','3','LBRA','N','f473f5d6-93a3-46de-8315-ae065fa569a2')
;

-- 04/07/2018 18h28min21s BRT
UPDATE AD_Form SET Description='Manage the Movements created to Send Material to Industrialization before complete it', Help='Manage the Movements created to Send Material to Industrialization before complete it. Choose Business Partner and Movement Date. Only Movements not Complete will appears in the form.',Updated=TO_TIMESTAMP('2018-07-04 18:28:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120030
;

-- 04/07/2018 18h32min55s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,AD_Form_ID,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120313,'Manage Move To Producer','X',0,0,'Y',TO_TIMESTAMP('2018-07-04 18:32:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-04 18:32:54','YYYY-MM-DD HH24:MI:SS'),100,'N','N',1120030,'N','LBRA','Y','0f9fe170-95f0-4111-8283-3b0bcb261594')
;

-- 04/07/2018 18h32min55s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120313, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120313)
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000006
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000012
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000010
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000015
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000013
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000011
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000014
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000016
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120313
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120305
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120306
;

-- 04/07/2018 18h33min59s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120313
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120305
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120306
;

-- 04/07/2018 18h34min2s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120313
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120305
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120306
;

-- 04/07/2018 18h34min11s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 04/07/2018 18h52min58s BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Gerenciar Movimentação de Material criada para Envio de Insumo para Industrialização. Apenas as Movimentação de Material destinadas à Industrialização e não Completadas serão exibidas no formulário. Escolha o Parceiro de Negócio e a Data da Movimentação desejada. Informe a quantidade real separada para envio. O Sistema irá distribuir a Diferença entre as Linhas de Movimentação.',0,0,'Y',TO_TIMESTAMP('2018-07-04 18:52:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-04 18:52:58','YYYY-MM-DD HH24:MI:SS'),100,1120047,'LBR_POGManageMoveToProducerHelp','LBRA','6b3d93df-d18c-48d1-b0f7-dd21dc45e69e')
;

SELECT Register_Migration_Script ('201807041800_ManageMoveToProducer.sql') FROM DUAL
;