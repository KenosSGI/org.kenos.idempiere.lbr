SET SQLBLANKLINES ON
SET DEFINE OFF

-- 1 de fev de 2023 16:13:25 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120017,'cbdee358-3a87-49ef-92d3-839b0379d54a',TO_DATE('2023-02-01 16:13:24','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','lbr_icmsmatrix_key2',TO_DATE('2023-02-01 16:13:24','YYYY-MM-DD HH24:MI:SS'),100,1000015,'N','N','N','N','N')
;

-- 1 de fev de 2023 16:13:30 BRT
ALTER TABLE adempiere.lbr_icmsmatrix DROP CONSTRAINT lbr_icmsmatrix_key2;
;

-- 1 de fev de 2023 16:19:17 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Tax for this region already exists',0,0,'Y',TO_DATE('2023-02-01 16:19:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-02-01 16:19:16','YYYY-MM-DD HH24:MI:SS'),100,1120080,'LBR_Unique_ICMS_Matrix','LBRA','22506c6d-7934-489f-ba6c-5f1def684b09')
;

-- 1 de fev de 2023 16:19:47 BRT
UPDATE AD_TableIndex SET EntityType='LBRA', Name='LBR_ICMSMatrix_From_To_Date', IsCreateConstraint='Y', IsUnique='Y', AD_Message_ID=1120080,Updated=TO_DATE('2023-02-01 16:19:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=1120017
;

-- 1 de fev de 2023 16:19:59 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120028,'8c4abba0-3a00-43e5-a445-03c8920945cd',TO_DATE('2023-02-01 16:19:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-02-01 16:19:59','YYYY-MM-DD HH24:MI:SS'),100,1000321,1120017,1)
;

-- 1 de fev de 2023 16:20:13 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120029,'12a508ba-da69-47b4-88af-b407339a4644',TO_DATE('2023-02-01 16:20:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-02-01 16:20:12','YYYY-MM-DD HH24:MI:SS'),100,1000327,1120017,2)
;

-- 1 de fev de 2023 16:20:23 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120030,'aa166a78-b3b3-4c6f-b9f2-6a5f8870e5fb',TO_DATE('2023-02-01 16:20:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-02-01 16:20:23','YYYY-MM-DD HH24:MI:SS'),100,1000328,1120017,3)
;

-- 1 de fev de 2023 16:20:36 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120031,'3644eee5-1810-4b7d-82bc-ebe8be94222c',TO_DATE('2023-02-01 16:20:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2023-02-01 16:20:35','YYYY-MM-DD HH24:MI:SS'),100,1106047,1120017,4)
;

-- 1 de fev de 2023 16:20:45 BRT
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBR_ICMSMatrix_From_To_Date UNIQUE (AD_Client_ID,C_Region_ID,To_Region_ID,ValidFrom)
;

-- 1 de fev de 2023 16:20:45 BRT
SELECT Register_Migration_Script ('202302011718_FixIndexICMSMatrix.sql') FROM DUAL
;

