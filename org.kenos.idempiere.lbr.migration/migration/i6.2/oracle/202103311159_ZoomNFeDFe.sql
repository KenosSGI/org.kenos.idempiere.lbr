SET SQLBLANKLINES ON
SET DEFINE OFF

-- 31 de mar de 2021 11:21:22 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120013,'73e28d18-bca7-4ab5-9b14-c3349aa3a4c7',TO_DATE('2021-03-31 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NFeID',TO_DATE('2021-03-31 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,1000027,'N','N','N','N','N')
;

-- 31 de mar de 2021 11:21:39 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120022,'8ce7efb7-4237-4452-989d-28d41836a660',TO_DATE('2021-03-31 11:21:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-03-31 11:21:38','YYYY-MM-DD HH24:MI:SS'),100,1100064,1120013,1)
;

-- 31 de mar de 2021 11:22:42 BRT
UPDATE AD_TableIndex SET Name='LBR_NotaFiscal_LBR_NFeID',Updated=TO_DATE('2021-03-31 11:22:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=1120013
;

-- 31 de mar de 2021 11:22:48 BRT
CREATE INDEX LBR_NotaFiscal_LBR_NFeID ON LBR_NotaFiscal (lbr_NFeID)
;

-- 31 de mar de 2021 11:28:00 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120392,'RelType LBR_NotaFiscal <> LBR_DFe (LBR_NFeID)','T',0,0,'Y',TO_DATE('2021-03-31 11:27:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 11:27:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','2239287f-fe0a-48fe-969f-09714f980894')
;

-- 31 de mar de 2021 11:38:24 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120392,1120461,1126771,1126791,'EXISTS (SELECT 1 FROM LBR_PartnerDFe dfe WHERE dfe.AD_Client_ID=@AD_Client_ID@ AND dfe.lbr_NFeID=@lbr_NFeID@)',0,0,'Y',TO_DATE('2021-03-31 11:38:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 11:38:24','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','0cb67011-9ada-45a1-9b59-f549c4f43382')
;

-- 31 de mar de 2021 11:39:48 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120393,'RelType LBR_PartnerDfe <> LBR_NotaFiscal (LBR_NFeID)','T',0,0,'Y',TO_DATE('2021-03-31 11:39:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 11:39:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','ca00ba7a-db7f-4874-a940-460ab4a50340')
;

-- 31 de mar de 2021 11:40:32 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120393,1000027,1000473,1100064,'EXISTS (SELECT 1 FROM LBR_NotaFiscal nf WHERE nf.AD_Client_ID=@AD_Client_ID@ AND nf.lbr_NFeID=@lbr_NFeID@)',0,0,'Y',TO_DATE('2021-03-31 11:40:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-31 11:40:32','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','e00a39ef-5e82-45e3-a4d2-be9bd854a157')
;

-- 31 de mar de 2021 11:41:25 BRT
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy,AD_Reference_Source_ID,AD_Reference_Target_ID,IsDirected,Type,AD_RelationType_UU) VALUES (0,0,1120004,TO_DATE('2021-03-31 11:41:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','LBR_NotaFiscal <> LBR_PartnerDFe (LBR_NFeID)',TO_DATE('2021-03-31 11:41:24','YYYY-MM-DD HH24:MI:SS'),100,1120392,1120393,'N','I','3d65076b-620b-4493-89c4-f0760e6613ef')
;

-- 31 de mar de 2021 11:44:22 BRT
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT 1 FROM LBR_PartnerDFe dfe WHERE dfe.AD_Client_ID=@AD_Client_ID@ AND dfe.lbr_NFeID=''@lbr_NFeID@'')',Updated=TO_DATE('2021-03-31 11:44:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120392
;

-- 31 de mar de 2021 11:44:57 BRT
UPDATE AD_Ref_Table SET WhereClause='EXISTS (SELECT 1 FROM LBR_NotaFiscal nf WHERE nf.AD_Client_ID=@AD_Client_ID@ AND nf.lbr_NFeID=''@lbr_NFeID@'')',Updated=TO_DATE('2021-03-31 11:44:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120393
;

-- 31 de mar de 2021 11:49:45 BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_NotaFiscal.lbr_NFeID=''@lbr_NFeID@''',Updated=TO_DATE('2021-03-31 11:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120393
;

-- 31 de mar de 2021 11:50:24 BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_NotaFiscal.AD_Client_ID=@AD_Client_ID@ AND LBR_NotaFiscal.lbr_NFeID=''@lbr_NFeID@''',Updated=TO_DATE('2021-03-31 11:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120393
;

-- 31 de mar de 2021 11:50:39 BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_PartnerDFe.AD_Client_ID=@AD_Client_ID@ AND LBR_PartnerDFe.lbr_NFeID=''@lbr_NFeID@''',Updated=TO_DATE('2021-03-31 11:50:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120392
;

-- 31 de mar de 2021 11:56:57 BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_PartnerDFe.AD_Client_ID=@AD_Client_ID@ AND LBR_PartnerDFe.lbr_NFeID=''@lbr_NFeID:-1@''',Updated=TO_DATE('2021-03-31 11:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120392
;

-- 31 de mar de 2021 11:57:06 BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_NotaFiscal.AD_Client_ID=@AD_Client_ID@ AND LBR_NotaFiscal.lbr_NFeID=''@lbr_NFeID:-1@''',Updated=TO_DATE('2021-03-31 11:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120393
;

-- 31 de mar de 2021 11:57:06 BRT
SELECT Register_Migration_Script ('202103311159_ZoomNFeDFe.sql') FROM DUAL
;