SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 03/06/2019 16h33min53s BRT
INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Classname,AccessLevel,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (1120031,0,0,'Y',TO_DATE('2019-06-03 16:33:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-06-03 16:33:53','YYYY-MM-DD HH24:MI:SS'),100,'Additional Nota Fiscal','Use this form do create Additional Nota Fiscal','org.kenos.apps.form.VNotaFiscalAdditional','3','LBRA','N','efe75687-b13b-400a-98e2-fce552db58fa')
;

-- 03/06/2019 16h35min35s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,AD_Form_ID,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120348,'Additional Nota Fiscal','Generate NF Additional as NF to Complement, NF Trinagular (Shipment) or Future Deliveries''s NF-e','X',0,0,'Y',TO_DATE('2019-06-03 16:35:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-06-03 16:35:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120031,'N','LBRA','Y','c797854a-ccd6-4e76-bc26-b78c81a2f695')
;

-- 03/06/2019 16h35min35s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120348, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120348)
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120319
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 03/06/2019 16h36min16s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=26, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 03/06/2019 16h37min30s BRT
UPDATE AD_Form SET Description='Use this form do create Additional Nota Fiscal as NF to Complement, NF Trinagular (Shipment) or Future Deliveries''s NF-e',Updated=TO_DATE('2019-06-03 16:37:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120031
;

-- 03/06/2019 16h37min30s BRT
UPDATE AD_Menu SET Name='Additional Nota Fiscal', Description='Use this form do create Additional Nota Fiscal as NF to Complement, NF Trinagular (Shipment) or Future Deliveries''s NF-e', IsActive='Y',Updated=TO_DATE('2019-06-03 16:37:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120348
;

-- 03/06/2019 16h44min58s BRT
UPDATE AD_Menu SET Name='Generate Additional Nota Fiscal',Updated=TO_DATE('2019-06-03 16:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120348
;

-- 03/06/2019 16h45min19s BRT
UPDATE AD_Form SET Name='Generate Additional Nota Fiscal',Updated=TO_DATE('2019-06-03 16:45:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120031
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20/03/2019 11h13min4s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122274,'Sales Order Future Deliveries',1000043,'OVEF-',0,0,'Y',TO_DATE('2019-03-20 11:13:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-03-20 11:13:03','YYYY-MM-DD HH24:MI:SS'),100,'U','87c02141-1f45-4223-a8d2-a2c0d0ccc735')
;

-- 20/03/2019 11h15min2s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122275,'Sales Order Triangular Transaction',1000043,'OVOT-',0,0,'Y',TO_DATE('2019-03-20 11:15:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-03-20 11:15:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','df2f85fc-852d-48a8-8a56-9b7d419e3cfa')
;

-- 20/03/2019 11h15min44s BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2019-03-20 11:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122274
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/03/2019 10h49min24s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122276,'Simple Invoice due Future Deliveries',1000043,'FASF-',0,0,'Y',TO_DATE('2019-03-21 10:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-03-21 10:49:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ccfaa1b6-cb85-4c5a-bb82-c4f767165165')
;

SELECT Register_Migration_Script ('201906031700_GenerateAdditionalNFForm.sql') FROM DUAL
;