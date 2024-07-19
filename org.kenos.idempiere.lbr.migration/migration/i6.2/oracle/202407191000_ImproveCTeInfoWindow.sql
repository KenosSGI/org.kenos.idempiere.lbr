SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de jul de 2024 09:54:19 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,AD_Message_ID,TableIndexDrop,IsKey) VALUES (0,0,1120018,'c1f73528-0ff3-4d55-a2d4-08b14df16cc0',TO_DATE('2024-07-19 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CTeConfig_Unq',TO_DATE('2024-07-19 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,1120768,'Y','Y','N',502,'N','N')
;

-- 19 de jul de 2024 09:54:33 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120032,'efc25e91-0f94-4cbf-a95c-666e6d3a63bd',TO_DATE('2024-07-19 09:54:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-19 09:54:32','YYYY-MM-DD HH24:MI:SS'),100,1133994,1120018,1)
;

-- 19 de jul de 2024 09:54:37 BRT
ALTER TABLE LBR_CTeConfig ADD CONSTRAINT LBR_CTeConfig_Unq UNIQUE (AD_Org_ID)
;

-- 19 de jul de 2024 09:55:28 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=202, IsAllowCopy='N',Updated=TO_DATE('2024-07-19 09:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133994
;

-- 19 de jul de 2024 09:55:52 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=202, IsAllowCopy='N',Updated=TO_DATE('2024-07-19 09:55:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134018
;

-- 19 de jul de 2024 09:57:04 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2024-07-19 09:57:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134002
;

-- 19 de jul de 2024 09:57:24 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-19 09:57:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131993
;

-- 19 de jul de 2024 09:59:25 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Val_Rule_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120067,0,0,'Y',TO_DATE('2024-07-19 09:59:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-19 09:59:25','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120005,'LBRA','cte.AD_Org_ID',5,'Y','Y',113,30,'d8e4f4a6-9242-4eb9-a931-a5293ac15870',202,'Y','AD_Org_ID','=','N',80,'N','N','Y')
;

-- 19 de jul de 2024 09:59:54 BRT
UPDATE AD_InfoColumn SET IsQueryCriteria='Y', QueryOperator='Like', SeqNoSelection=90,Updated=TO_DATE('2024-07-19 09:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120058
;

-- 19 de jul de 2024 10:07:51 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Reference_Value_ID,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120068,0,0,'Y',TO_DATE('2024-07-19 10:07:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-19 10:07:51','YYYY-MM-DD HH24:MI:SS'),100,'CT-e Type',1120005,'LBRA','cte.LBR_CTeType',56,'Y','N',1123430,17,'8fdeec39-d0e1-416e-93d8-b23af1c6827a',1120412,'Y','LBR_CTeType','N',0,'N','N','Y')
;

-- 19 de jul de 2024 10:08:08 BRT
UPDATE AD_InfoColumn SET AD_Reference_ID=19,Updated=TO_DATE('2024-07-19 10:08:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120067
;

-- 19 de jul de 2024 09:59:54 BRT
SELECT Register_Migration_Script ('202407191000_ImproveCTeInfoWindow.sql') FROM DUAL
;

