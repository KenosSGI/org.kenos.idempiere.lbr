-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 2 de set de 2020 23:00:31 BRT
INSERT INTO LBR_TaxName (LBR_TaxName_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,lbr_TaxType,LBR_HasWithhold,LBR_WithholdThreshold,LBR_TaxSubstitution_ID,lbr_WithholdFrequency,LBR_WithholdType,LBR_TaxName_UU) VALUES (1120004,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:00:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:00:31','YYYY-MM-DD HH24:MI:SS'),100,'ICMSSTDEST','O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual. Para operações de Substituição Tributária Recolhido pelo Destinatário','T','N',0,1106000,'M','P','a8d05e91-fddf-4d48-a0c8-25fdde3e9701')
;

-- 2 de set de 2020 23:03:12 BRT
INSERT INTO LBR_TaxName (LBR_TaxName_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,lbr_TaxType,LBR_HasWithhold,LBR_WithholdThreshold,LBR_TaxSubstitution_ID,lbr_WithholdFrequency,LBR_WithholdType,LBR_TaxName_UU) VALUES (1120005,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:03:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:03:12','YYYY-MM-DD HH24:MI:SS'),100,'ICMSSTREMET','O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual. Para operações de Substituição Tributária Recolhido pelo Remetente','T','N',0,1106000,'M','P','b06fd131-0003-46ca-9eda-ae016486c72f')
;

-- 2 de set de 2020 23:03:19 BRT
UPDATE LBR_TaxName SET Description='O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual. Para operações de Substituição Tributária Recolhido ao Destinatário',Updated=TO_TIMESTAMP('2020-09-02 23:03:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1120004
;

-- 2 de set de 2020 23:05:46 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120047,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:05:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:05:46','YYYY-MM-DD HH24:MI:SS'),100,1120004,'MAN','Y',1000015,1000005,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'7c5737d9-af11-4b3c-8bf6-78781d82ebeb')
;

-- 2 de set de 2020 23:06:25 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120048,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:06:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:06:25','YYYY-MM-DD HH24:MI:SS'),100,1120004,'END','Y',1000016,1000003,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'7c613a90-4321-4286-9d1a-8646fa9bccfe')
;

-- 2 de set de 2020 23:07:10 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120049,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:07:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:07:10','YYYY-MM-DD HH24:MI:SS'),100,1120004,'RES','Y',1000015,1000005,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'eae103ce-dae3-4e85-8bbc-f65dac6e935d')
;

-- 2 de set de 2020 23:08:43 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120050,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:08:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:08:43','YYYY-MM-DD HH24:MI:SS'),100,1120004,'EN2','Y',1120010,1120011,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'3d0dda71-9c1a-4caa-a6aa-38b52d75abd5')
;

-- 2 de set de 2020 23:10:19 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120200,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:10:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:10:18','YYYY-MM-DD HH24:MI:SS'),100,'41','Não tributada',TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1120004,'82987df9-e82e-465b-828d-2a2ac425ca1d')
;

-- 2 de set de 2020 23:10:44 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120201,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:10:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:10:44','YYYY-MM-DD HH24:MI:SS'),100,'60','ICMS cobrado anteriormente por substituição tributária',TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1120004,'cc05cb80-137d-46b3-8385-68c1672c67a0')
;

-- 2 de set de 2020 23:11:51 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120051,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:11:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:11:50','YYYY-MM-DD HH24:MI:SS'),100,1120005,'MAN','Y',1000015,1000005,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'2385586e-a90f-4c12-bbcd-db2121b38631')
;

-- 2 de set de 2020 23:12:34 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120052,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:12:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:12:33','YYYY-MM-DD HH24:MI:SS'),100,1120005,'END','Y',1000016,1000003,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'faeb0254-4218-471e-8093-3384ab1031d0')
;

-- 2 de set de 2020 23:12:51 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120053,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:12:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:12:51','YYYY-MM-DD HH24:MI:SS'),100,1120005,'RES','Y',1000015,1000005,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'4c7574bc-4476-47b9-bf99-496d58513b32')
;

-- 2 de set de 2020 23:13:14 BRT
INSERT INTO LBR_TaxFormula (LBR_TaxFormula_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_TaxName_ID,lbr_TransactionType,IsTaxIncluded,LBR_Formula_ID,LBR_FormulaNet_ID,ValidFrom,LBR_FormulaBase_ID,Percentage,LBR_TaxFormula_UU) VALUES (1120054,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:13:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:13:14','YYYY-MM-DD HH24:MI:SS'),100,1120005,'EN2','Y',1120010,1120011,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1000014,100,'3d2b1944-d236-479e-af55-63d3738ca4bf')
;

-- 2 de set de 2020 23:14:15 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120202,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:14:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:14:14','YYYY-MM-DD HH24:MI:SS'),100,'41','Não tributada',TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1120005,'f969e420-fc30-4853-9ec9-7d50f0deafa1')
;

-- 2 de set de 2020 23:14:33 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120203,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:14:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:14:33','YYYY-MM-DD HH24:MI:SS'),100,'60','ICMS cobrado anteriormente por substituição tributária',TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),1120005,'86c94f57-53dc-42a3-8ec4-52aa571e4276')
;

-- 2 de set de 2020 23:18:24 BRT
INSERT INTO LBR_TaxGroup (LBR_TaxGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_TaxGroup_UU) VALUES (1120011,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:18:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:18:23','YYYY-MM-DD HH24:MI:SS'),100,'ICMSSTDEST','178fd5d8-2908-47cb-9428-d824fb727c12')
;

-- 2 de set de 2020 23:18:42 BRT
INSERT INTO LBR_TaxGroup (LBR_TaxGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,LBR_TaxGroup_UU) VALUES (1120012,0,0,'Y',TO_TIMESTAMP('2020-09-02 23:18:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-09-02 23:18:42','YYYY-MM-DD HH24:MI:SS'),100,'ICMSSTREMET','55876776-6911-4900-b864-2468df766600')
;

SELECT Register_Migration_Script ('202009031200_NewTaxRelatedICMSST.sql') FROM DUAL
;