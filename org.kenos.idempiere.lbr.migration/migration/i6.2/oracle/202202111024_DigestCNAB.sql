SET SQLBLANKLINES ON
SET DEFINE OFF

-- 11 de fev de 2022 10:17:34 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120401,'Bank Slip Config','W',1120165,0,0,'Y',TO_DATE('2022-02-11 10:17:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-11 10:17:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','46318f3f-4247-4a80-8dcc-590ce42a8001')
;

-- 11 de fev de 2022 10:17:34 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120401, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120401)
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120401
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120367
;

-- 11 de fev de 2022 10:18:05 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120289
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120401
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120367
;

-- 11 de fev de 2022 10:18:08 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120289
;

-- 11 de fev de 2022 10:19:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133759,0,'Digest Value',1120696,'lbr_DigestValue',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2022-02-11 10:19:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-11 10:19:15','YYYY-MM-DD HH24:MI:SS'),100,1100028,'Y','N','LBRA','N','N','N','Y','f3ee53be-8023-410f-a16f-4163c6cdad90','Y',0,'N','N','N')
;

-- 11 de fev de 2022 10:19:18 BRT
ALTER TABLE LBR_CNABFile ADD lbr_DigestValue VARCHAR2(40) DEFAULT NULL 
;

-- 11 de fev de 2022 10:20:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131696,'Digest Value',1120402,1133759,'Y',40,180,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-11 10:20:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-11 10:20:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf1d81a7-ff0e-49c6-9770-70bb7bb45724','Y',180,2)
;

-- 11 de fev de 2022 10:23:05 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-11 10:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131696
;

SELECT Register_Migration_Script ('202202111024_DigestCNAB.sql') FROM DUAL;

