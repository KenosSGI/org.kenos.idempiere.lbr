SET SQLBLANKLINES ON
SET DEFINE OFF

-- 13 de mar de 2025 10:04:04 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Reference_Value_ID,IsCentrallyMaintained,ColumnName,QueryOperator,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly,DefaultValue) VALUES (1120073,0,0,'Y',TO_DATE('2025-03-13 10:04:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2025-03-13 10:04:02','YYYY-MM-DD HH24:MI:SS'),100,'Cancelled','The transaction was cancelled',1120000,'U','nf.IsCancelled',80,'N','Y',2531,17,'1aa05284-21be-4844-bf19-dccd981b9cbb',319,'Y','IsCancelled','=','N',40,'N','N','Y','N')
;

-- 13 de mar de 2025 10:05:23 BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,AD_Reference_Value_ID,IsCentrallyMaintained,ColumnName,IsIdentifier,SeqNoSelection,IsMandatory,IsKey,IsReadOnly) VALUES (1120074,0,0,'Y',TO_DATE('2025-03-13 10:05:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2025-03-13 10:05:23','YYYY-MM-DD HH24:MI:SS'),100,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120000,'LBRA','nf.DocStatus',90,'Y','N',289,17,'af821cb1-38f2-4306-b558-58bbd9da5667',1120212,'Y','DocStatus','N',0,'N','N','Y')
;

-- 13 de mar de 2025 10:05:29 BRT
UPDATE AD_InfoColumn SET EntityType='LBRA',Updated=TO_DATE('2025-03-13 10:05:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=1120073
;

-- 13 de mar de 2025 10:05:29 BRT
SELECT Register_Migration_Script ('202503131005_NotaFiscalInfo.sql') FROM DUAL
;