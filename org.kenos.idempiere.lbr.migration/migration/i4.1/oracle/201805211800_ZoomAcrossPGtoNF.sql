SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/05/2018 17h43min49s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120266,'Production Group <-> Nota Fiscal (SO)','Finds Nota Fiscal (SO) From Production Group','T',0,0,'Y',TO_DATE('2018-05-21 17:43:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-21 17:43:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','6b4091cd-204d-497f-874e-6fe294b3296c')
;

-- 21/05/2018 17h48min8s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120266,1000027,1000473,1000491,'LBR_NotaFiscal_ID IN
(SELECT nf.LBR_NotaFiscal_ID FROM LBR_NotaFiscal nf
LEFT JOIN M_Movement m ON m.M_Movement_ID = nf.M_Movement_ID
LEFT JOIN LBR_ProductionGroup pg ON pg.LBR_ProductionGroup_ID = m.LBR_ProductionGroup_ID
WHERE pg.LBR_ProductionGroup_ID=@LBR_ProductionGroup_ID@)',0,0,'Y',TO_DATE('2018-05-21 17:48:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-21 17:48:08','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','1c650081-b111-4a19-88db-9b7a78dbb3bb')
;

-- 21/05/2018 17h48min49s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120267,'Nota Fiscal (SO) <-> Production Group','Finds Production Group From Nota Fiscal (SO)','T',0,0,'Y',TO_DATE('2018-05-21 17:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-21 17:48:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','65e23a7d-aa8b-4455-a8ca-fcad8829516d')
;

-- 21/05/2018 17h52min41s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120267,1120582,1129909,1129925,'LBR_ProductionGroup_ID IN 
(SELECT pg.LBR_ProductionGroup_ID FROM LBR_ProductionGroup pg
LEFT JOIN M_Movement m ON pg.LBR_ProductionGroup_ID = M.LBR_ProductionGroup_ID
LEFT JOIN LBR_NotaFiscal nf ON nf.M_Movement_ID = m.M_Movement_ID
WHERE nf.LBR_NotaFiscal_ID = @LBR_NotaFiscal_ID@)',0,0,'Y',TO_DATE('2018-05-21 17:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-21 17:52:41','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','c0211ce0-7359-450e-96a9-49ead79da11c')
;

-- 21/05/2018 17h52min53s BRT
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy,AD_Reference_Source_ID,AD_Reference_Target_ID,IsDirected,Type,AD_RelationType_UU) VALUES (0,0,1120003,TO_DATE('2018-05-21 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y','Production Group <-> Nota Fiscal (SO)',TO_DATE('2018-05-21 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,1120266,1120267,'N','I','a826f927-ae1e-4389-ab30-8e68d6f213f6')
;

SELECT Register_Migration_Script ('201805211800_ZoomAcrossPGtoNF.sql') FROM DUAL
;