-- Inclusão da flag Gerar Contas a Pagar e Forma de Pagamento na Nota Fiscal de Entrada
-- 03/08/2018 16h10min36s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127486,'Has Open Items','Identifies if this Document Has Open Items','Identifies if this Document Has Open Items',1000028,1128799,'Y',1,236,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-08-03 16:10:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-08-03 16:10:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e4a0ba19-0d0c-4f84-be4b-ac209401f935','N',5,2,1,'N','N','N')
;

-- 03/08/2018 16h12min29s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127487,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1000028,1130288,'Y','@lbr_HasOpenItems@=Y',1,237,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-08-03 16:12:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-08-03 16:12:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e517efc-9917-4d57-ac8c-8d33996f2ecf','Y',1,1,1,'N','N','N')
;

SELECT Register_Migration_Script ('201808031620_AddHasOpenItensInNFPO.sql') FROM DUAL
;
