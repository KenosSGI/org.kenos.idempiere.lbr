-- 6 de ago de 2020 18:13:05 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120003,'d98aab98-9911-4a83-a932-e28a1c3a943e',TO_TIMESTAMP('2020-08-06 18:13:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','c_order_c_doctypetarget_id',TO_TIMESTAMP('2020-08-06 18:13:05','YYYY-MM-DD HH24:MI:SS'),100,259,'N','N','N','N','N')
;

-- 6 de ago de 2020 18:13:25 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120010,'2943b70b-f112-40ce-9464-c7504929fc6a',TO_TIMESTAMP('2020-08-06 18:13:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-06 18:13:25','YYYY-MM-DD HH24:MI:SS'),100,2173,1120003,1)
;

-- 6 de ago de 2020 18:13:35 BRT
CREATE INDEX c_order_c_doctypetarget_id ON C_Order (C_DocTypeTarget_ID)
;

SELECT Register_Migration_Script ('202008061815_C_Order_DocTypeTarget_Index.sql') FROM DUAL
;