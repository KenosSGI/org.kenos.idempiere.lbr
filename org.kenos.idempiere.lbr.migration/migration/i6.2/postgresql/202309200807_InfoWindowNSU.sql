-- 20 de set de 2023 07:51:19 BRT
UPDATE AD_ViewComponent SET FromClause='FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) 
          FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu 
         WHERE nsu.LBR_NSU IS NOT NULL 
           AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND dfe.DateDoc >= NOW()-120
      GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID, cfg.Value) s (AD_Client_ID, AD_Org_ID, ID)',Updated=TO_TIMESTAMP('2023-09-20 07:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120010
;

-- 20 de set de 2023 07:52:21 BRT
UPDATE AD_ViewComponent SET FromClause='FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) 
          FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu 
         WHERE nsu.LBR_NSU IS NOT NULL 
           AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND dfe.DateDoc >= NOW()-120
      GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID)',Updated=TO_TIMESTAMP('2023-09-20 07:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120010
;

-- 20 de set de 2023 07:52:26 BRT
CREATE OR REPLACE VIEW LBR_MissingNSU(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_FixMissingNSU, DateDoc) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, CAST ('Y' AS TEXT) AS IsActive, LPAD (CAST (s.ID AS TEXT), 15, '0') AS LBR_NSU, CAST ('N' AS TEXT) AS LBR_FixMissingNSU, CAST (NULL AS TIMESTAMP) AS DateDoc FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_NSU IS NOT NULL AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND dfe.DateDoc >= NOW()-120 GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID) WHERE NOT EXISTS (SELECT 1 FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND CAST (nsu.LBR_NSU AS INT)=s.ID)
;

-- 20 de set de 2023 07:53:13 BRT
INSERT INTO AD_InfoWindow (AD_InfoWindow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,FromClause,Processing,AD_InfoWindow_UU,IsDefault,IsDistinct,IsValid,SeqNo,IsShowInDashboard,MaxQueryRecords,isLoadPageNum) VALUES (1120003,0,0,'Y',TO_TIMESTAMP('2023-09-20 07:53:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:53:12','YYYY-MM-DD HH24:MI:SS'),100,'Check Missing NSU',1120691,'LBRA','LBR_MissingNSU m','N','753aec41-173d-4d69-b17a-ffc7cada4472','N','N','N',90,'Y',0,'Y')
;

-- 20 de set de 2023 07:54:05 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120037,0,0,'Y',TO_TIMESTAMP('2023-09-20 07:54:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:54:05','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120003,'LBRA','m.AD_Org_ID',10,'Y','Y',113,19,'19d65a6d-4431-4ff6-ab5d-7fcced05a34a',104,'Y','AD_Org_ID','=','N',10,'N','N','Y')
;

-- 20 de set de 2023 07:54:05 BRT
UPDATE AD_InfoWindow SET IsValid='Y',Updated=TO_TIMESTAMP('2023-09-20 07:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120003
;

-- 20 de set de 2023 07:55:34 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,QueryFunction,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120038,0,0,'Y',TO_TIMESTAMP('2023-09-20 07:55:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:55:34','YYYY-MM-DD HH24:MI:SS'),100,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120003,'LBRA','m.LBR_NSU',20,'Y','Y',1122885,10,'6830a52d-adb1-4876-8a8e-34586b5e1f3f','Y','LBR_NSU','Like','Upper','Y',20,'N','N','N')
;

-- 20 de set de 2023 07:57:12 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120743,'73c94aee-77b4-46be-ae2f-b29fdf2522a0',TO_TIMESTAMP('2023-09-20 07:57:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2023-09-20 07:57:11','YYYY-MM-DD HH24:MI:SS'),100,1120010,'LBR_MissingNSU_ID','ROW_NUMBER() OVER()',110)
;

-- 20 de set de 2023 07:57:19 BRT
CREATE OR REPLACE VIEW LBR_MissingNSU(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_FixMissingNSU, DateDoc, LBR_MissingNSU_ID) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, CAST ('Y' AS TEXT) AS IsActive, LPAD (CAST (s.ID AS TEXT), 15, '0') AS LBR_NSU, CAST ('N' AS TEXT) AS LBR_FixMissingNSU, CAST (NULL AS TIMESTAMP) AS DateDoc, ROW_NUMBER() OVER() AS LBR_MissingNSU_ID FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_NSU IS NOT NULL AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND dfe.DateDoc >= NOW()-120 GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID) WHERE NOT EXISTS (SELECT 1 FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND CAST (nsu.LBR_NSU AS INT)=s.ID)
;

-- 20 de set de 2023 07:57:28 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123402,0,0,'Y',TO_TIMESTAMP('2023-09-20 07:57:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:57:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MissingNSU_ID','Check Missing NSU','Check Missing NSU','LBRA','251cd5af-3ffb-4f65-833a-cb2393a4f58b')
;

-- 20 de set de 2023 07:57:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133848,0.0,'Check Missing NSU',1120691,'LBR_MissingNSU_ID',19,'Y','N','N','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2023-09-20 07:57:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:57:27','YYYY-MM-DD HH24:MI:SS'),100,1123402,'N','N','LBRA','N','9950e4ce-acd8-4e7d-b601-2009f3cffea3','N')
;

-- 20 de set de 2023 07:57:56 BRT
UPDATE AD_InfoWindow SET IsShowInDashboard='N',Updated=TO_TIMESTAMP('2023-09-20 07:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=1120003
;

-- 20 de set de 2023 07:59:27 BRT
INSERT INTO AD_InfoProcess (AD_InfoProcess_ID,AD_InfoProcess_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ImageURL,SeqNo,AD_Process_ID,AD_InfoWindow_ID,LayoutType) VALUES (1120000,'89dcf460-a1e7-44ed-b7f3-cf4f08c29e0a',0,0,'Y',TO_TIMESTAMP('2023-09-20 07:59:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 07:59:26','YYYY-MM-DD HH24:MI:SS'),100,'ProcessMenu24.png',10,1120251,1120003,'B')
;

-- 20 de set de 2023 08:00:15 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU,AD_InfoWindow_ID) VALUES (1120425,'Check Missing NSU','I',0,0,'Y',TO_TIMESTAMP('2023-09-20 08:00:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-20 08:00:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','5ca8d9bf-21e0-4a72-8463-6f18ed4a54f5',1120003)
;

-- 20 de set de 2023 08:00:15 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120425, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120425)
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120364
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120425
;

-- 20 de set de 2023 08:00:42 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120423, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120393
;

-- 20 de set de 2023 08:01:18 BRT
UPDATE AD_Process SET IsReport='N', AD_ReportView_ID=NULL,Updated=TO_TIMESTAMP('2023-09-20 08:01:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120251
;

-- 20 de set de 2023 08:01:38 BRT
UPDATE AD_Process SET Name='Fix Missing NSU', Description='Fix the missing NSU',Updated=TO_TIMESTAMP('2023-09-20 08:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120251
;

-- 20 de set de 2023 08:01:38 BRT
UPDATE AD_Menu SET Name='Fix Missing NSU', Description='Fix the missing NSU', IsActive='Y',Updated=TO_TIMESTAMP('2023-09-20 08:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120364
;

-- 20 de set de 2023 09:22:05 BRT
UPDATE AD_Menu SET "action"='P',Updated=TO_TIMESTAMP('2023-09-20 09:22:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120364
;

-- 20 de set de 2023 09:22:38 BRT
UPDATE AD_InfoColumn SET AD_Val_Rule_ID=202,Updated=TO_TIMESTAMP('2023-09-20 09:22:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120037
;

-- 20 de set de 2023 09:22:38 BRT
SELECT Register_Migration_Script ('202309200807_InfoWindowNSU.sql') FROM DUAL
;

