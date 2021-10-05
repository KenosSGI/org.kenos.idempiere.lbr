SET SQLBLANKLINES ON
SET DEFINE OFF

-- 5 de out de 2021 10:17:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122973,'End User (DIFAL out)',1000024,'EN4',0,0,'Y',TO_DATE('2021-10-05 10:17:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:17:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','bcd4ae20-d182-41bf-8d80-b5af5bbcd88e')
;

-- 5 de out de 2021 10:18:00 BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120018,0,0,TO_DATE('2021-10-05 10:17:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-10-05 10:17:59','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o fator do difenrecial de alíquota.','FLBR15/(1-(ICMSDIFAL-ICMSPROD+FCP))','FLBR15.4','6a604a1d-6eb4-41ab-beec-65784e835656')
;

-- 5 de out de 2021 10:18:01 BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120019,0,0,TO_DATE('2021-10-05 10:18:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-10-05 10:18:00','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o fator do difenrecial de alíquota.','FLBR15*(1-ICMSPROD)/(1-(ICMSST-ICMSPROD+FCPST))','FLBR15.5','32246030-50ee-429f-bb54-d58fd8b98e21')
;

-- 5 de out de 2021 10:18:01 BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120020,0,0,TO_DATE('2021-10-05 10:18:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-10-05 10:18:01','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI entra na Base de Cálculo do ICMS, considerando o diferencial de alíquota.','FLBR02/(1-(ICMSDIFAL-ICMSPROD+FCP))','FLBR02.3','b81858e7-682f-431e-8442-d118c35be3af')
;

-- 5 de out de 2021 10:18:02 BRT
INSERT INTO LBR_Formula (LBR_Formula_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,Description,lbr_Formula,Name,LBR_Formula_UU) VALUES (1120021,0,0,TO_DATE('2021-10-05 10:18:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-10-05 10:18:01','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI entra na Base de Cálculo do ICMS.','FLBR04*(1-ICMSPROD)/(1-(ICMSST-ICMSPROD+FCPST))','FLBR04.3','50cb0c42-3c08-49a7-b0c5-676d8bdefd2e')
;

-- 5 de out de 2021 10:18:57 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120055,0,0,'Y',TO_DATE('2021-10-05 10:18:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:18:56','YYYY-MM-DD HH24:MI:SS'),100,1106000,'EN4','Y',1000016,1000001,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'9b114a6b-a231-489f-826a-d903517c92a3')
;

-- 5 de out de 2021 10:19:01 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120056,0,0,'Y',TO_DATE('2021-10-05 10:18:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:18:59','YYYY-MM-DD HH24:MI:SS'),100,1106001,'EN4','Y',1000000,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'07bad065-1bcd-4794-aa5a-dd49973d5627')
;

-- 5 de out de 2021 10:19:02 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120057,0,0,'Y',TO_DATE('2021-10-05 10:19:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:01','YYYY-MM-DD HH24:MI:SS'),100,1106002,'EN4','Y',1000000,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'c222a07d-393b-452b-b3bd-3029611a2c28')
;

-- 5 de out de 2021 10:19:04 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120058,0,0,'Y',TO_DATE('2021-10-05 10:19:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:03','YYYY-MM-DD HH24:MI:SS'),100,1106003,'EN4','N',1000000,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'d7321dcc-990b-4d3f-842f-539b64a61bf7')
;

-- 5 de out de 2021 10:19:05 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120059,0,0,'Y',TO_DATE('2021-10-05 10:19:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:04','YYYY-MM-DD HH24:MI:SS'),100,1106012,'EN4','N',1120019,1120021,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'d04b65e7-b3ac-41fb-8873-f9e541f5593d')
;

-- 5 de out de 2021 10:19:06 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120060,0,0,'Y',TO_DATE('2021-10-05 10:19:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:05','YYYY-MM-DD HH24:MI:SS'),100,1120000,'EN4','Y',1120018,1120020,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'938a54ed-c7ac-4440-a149-b47ed1268094')
;

-- 5 de out de 2021 10:19:09 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120061,0,0,'Y',TO_DATE('2021-10-05 10:19:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:07','YYYY-MM-DD HH24:MI:SS'),100,1120001,'EN4','Y',1120018,1120020,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'54ba4055-6cf7-4616-ad6a-dbe87f3f00aa')
;

-- 5 de out de 2021 10:19:10 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120062,0,0,'Y',TO_DATE('2021-10-05 10:19:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:09','YYYY-MM-DD HH24:MI:SS'),100,1120002,'EN4','Y',1120018,1120020,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'9d42f9bc-d5d4-44fb-ad88-b176e162d2ba')
;

-- 5 de out de 2021 10:19:12 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120063,0,0,'Y',TO_DATE('2021-10-05 10:19:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-05 10:19:10','YYYY-MM-DD HH24:MI:SS'),100,1120003,'EN4','N',1120019,1120021,TO_DATE('2000-01-01','YYYY-MM-DD'),1000014,100,'d64a0280-9c9c-4e36-9230-b01f13f430dd')
;

-- 5 de out de 2021 10:19:12 BRT
SELECT Register_Migration_Script ('202110051030_SENewFormulasDIFAL.sql') FROM DUAL
;

