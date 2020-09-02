SET SQLBLANKLINES ON
SET DEFINE OFF

-- 1 de set de 2020 16:57:00 BRT
INSERT INTO LBR_TaxName (LBR_TaxName_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,lbr_TaxType,LBR_HasWithhold,LBR_WithholdThreshold,LBR_TaxSubstitution_ID,lbr_WithholdFrequency,LBR_WithholdType,LBR_TaxName_UU) VALUES (1120003,0,0,'Y',TO_DATE('2020-09-01 16:56:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-01 16:56:59','YYYY-MM-DD HH24:MI:SS'),100,'FCPST','T','N',0,1120000,'M','T','ba616d1e-6c3f-4c0a-b28a-4e67e5898267')
;

-- 1 de set de 2020 16:57:26 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,Percentage,LBR_TaxFormula_UU) VALUES (1120043,0,0,'Y',TO_DATE('2020-09-01 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-01 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,1120003,'END','N',1000016,1000003,TO_DATE('2000-01-01','YYYY-MM-DD'),100,'df300842-a3f3-46e5-9624-f8205635b193')
;

-- 1 de set de 2020 16:57:44 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,Percentage,LBR_TaxFormula_UU) VALUES (1120044,0,0,'Y',TO_DATE('2020-09-01 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-01 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,1120003,'END','N',1120010,1120011,TO_DATE('2000-01-01','YYYY-MM-DD'),100,'94364a8a-2896-469a-9edd-5b9c47ebca20')
;

-- 1 de set de 2020 16:58:01 BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR15*(1-ICMSPROD)/(1-(ICMSST+FCPST))',Updated=TO_DATE('2020-09-01 16:58:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120010
;

-- 1 de set de 2020 16:58:09 BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR04*(1-ICMSPROD)/(1-(ICMSST+FCPST))',Updated=TO_DATE('2020-09-01 16:58:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120011
;

-- 1 de set de 2020 16:58:25 BRT
UPDATE LBR_TaxFormula SET lbr_TransactionType='EN2',Updated=TO_DATE('2020-09-01 16:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120044
;

-- 1 de set de 2020 16:58:29 BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014,Updated=TO_DATE('2020-09-01 16:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120044
;

-- 1 de set de 2020 16:58:32 BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014,Updated=TO_DATE('2020-09-01 16:58:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120043
;

-- 1 de set de 2020 16:59:29 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120045,0,0,'Y',TO_DATE('2020-09-01 16:59:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-01 16:59:29','YYYY-MM-DD HH24:MI:SS'),100,1120003,'MAN','N',1000015,1000005,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'5e15c93e-9ab6-4891-9d30-daa1e4362572')
;

-- 1 de set de 2020 16:59:34 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120046,0,0,'Y',TO_DATE('2020-09-01 16:59:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-01 16:59:33','YYYY-MM-DD HH24:MI:SS'),100,1120003,'RES','N',1000015,1000005,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'00204b73-129c-4c1d-982d-cae39ab1b8ad')
;

SELECT Register_Migration_Script ('202009011700_FCPST.sql') FROM DUAL
;
