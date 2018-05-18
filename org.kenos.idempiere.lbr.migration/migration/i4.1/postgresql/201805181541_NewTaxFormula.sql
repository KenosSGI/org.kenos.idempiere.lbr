-- Formulas para cálculo sem ICMS na base de PIS e COFINS
-- 18/05/2018 14h13min15s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121831,'End User (RE 574.706)',1000024,'EN3',0,0,'Y',TO_TIMESTAMP('2018-05-17 16:44:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-17 16:44:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b67234db-d148-41c8-bab1-75f5af14bf7a')
;

-- 17/05/2018 16h51min21s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121832,'Resale (RE 574.706)',1000024,'RE3',0,0,'Y',TO_TIMESTAMP('2018-05-17 16:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-17 16:51:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e83092aa-8a2d-4e74-b2f8-11c423ac452b')
;

INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120012,0,0,TO_TIMESTAMP('2018-05-18 14:13:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:13:15','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de PIS/COFINS pelo líquido, sem o ICMS na BC do PIS/COFINS','(1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)))','FLBR20','aaa9ebdb-67c3-44c2-abfe-26eff92c804c')
;

-- 18/05/2018 14h25min59s BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120013,0,0,TO_TIMESTAMP('2018-05-18 14:25:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:25:58','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de ICMS/IPI pelo líquido sem IPI na BC do ICMS, sem o ICMS na BC do PIS/COFINS','((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)))/(1-ICMSPROD))','FLBR21','9c5103e1-daf4-4aeb-a2b3-34f7a00b21c9')
;

-- 18/05/2018 14h27min19s BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120014,0,0,TO_TIMESTAMP('2018-05-18 14:27:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:27:18','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de PIS/COFINS pelo bruto sem IPI na BC do ICMS, sem o ICMS na BC do PIS/COFINS','(1-ICMSPROD)','FLBR23','0d65e7a8-6ca9-41d9-9c3f-fa2df2889cb7')
;

-- 18/05/2018 14h28min7s BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120015,0,0,TO_TIMESTAMP('2018-05-18 14:28:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:28:06','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de ICMS pelo líquido com IPI na BC do ICMS, sem o ICMS na BC do PIS/COFINS','(FLBR20/FLBR26)*(1+IPI)','FLBR24','68f72c2d-e020-41b1-a82f-dca158dfa7bc')
;

-- 18/05/2018 14h28min45s BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120016,0,0,TO_TIMESTAMP('2018-05-18 14:28:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:28:45','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de IPI pelo líquido com IPI na BC do ICMS, sem o ICMS na BC do PIS/COFINS','(FLBR20/FLBR26)','FLBR25','f15e2713-8613-430f-984f-f07203491c9c')
;

-- 18/05/2018 14h29min18s BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120017,0,0,TO_TIMESTAMP('2018-05-18 14:29:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2018-05-18 14:29:18','YYYY-MM-DD HH24:MI:SS'),100,'Fator para BC de PIS/COFINS pelo bruto com IPI na BC do ICMS, sem o ICMS na BC do PIS/COFINS','(1-ICMSPROD*(1+IPI))','FLBR26','f976056f-bbcd-4c3f-bf26-b228030b53d5')
;

-- 18/05/2018 14h42min12s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120035,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:42:11','YYYY-MM-DD HH24:MI:SS'),100,1106000,'EN3','Y',1000016,1120015,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'75afab2e-000e-4905-b4d7-0d17bb45e150')
;

-- 18/05/2018 14h43min28s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120036,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:43:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:43:27','YYYY-MM-DD HH24:MI:SS'),100,1106000,'RE3','Y',1120013,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'78cc5333-8c91-459c-a3bd-fb70c6a623e3')
;

-- 18/05/2018 14h45min38s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120037,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:45:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:45:38','YYYY-MM-DD HH24:MI:SS'),100,1106001,'EN3','Y',1120017,1120012,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'e94bafd2-9ca2-4da3-aed0-8dd42cf77f31')
;

-- 18/05/2018 14h46min24s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120038,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:46:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:46:24','YYYY-MM-DD HH24:MI:SS'),100,1106001,'RE3','Y',1120014,1120012,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'931fc76b-a2b1-4cba-990c-a30fa577dbd5')
;

-- 18/05/2018 14h49min41s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120039,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:49:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:49:41','YYYY-MM-DD HH24:MI:SS'),100,1106002,'EN3','Y',1120017,1120012,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'c1f58465-fc2f-40bf-b4cf-e542874d0061')
;

-- 18/05/2018 14h50min36s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120040,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:50:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:50:36','YYYY-MM-DD HH24:MI:SS'),100,1106002,'RE3','Y',1120014,1120012,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'b6db9821-d7ac-47fa-8b6d-b0a0a508b792')
;

-- 18/05/2018 14h51min43s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120041,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:51:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:51:43','YYYY-MM-DD HH24:MI:SS'),100,1106003,'EN3','N',1120016,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'8270079f-c9f6-4bc3-b517-fd02e65af768')
;

-- 18/05/2018 14h52min19s BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120042,0,0,'Y',TO_TIMESTAMP('2018-05-18 14:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-18 14:52:19','YYYY-MM-DD HH24:MI:SS'),100,1106003,'RE3','N',1120013,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'7d7d26a9-4fe8-46dd-86dc-be112a37e3f7')
;

SELECT Register_Migration_Script ('201805181541_NewTaxFormula.sql') FROM DUAL
;