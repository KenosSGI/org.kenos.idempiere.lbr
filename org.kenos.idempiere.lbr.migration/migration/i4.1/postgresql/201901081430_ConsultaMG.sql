-- Consultar Cadastro para o estado de MG
-- Jan 8, 2019 2:23:59 PM BRST
UPDATE AD_Val_Rule SET Code='C_Region.C_Country_ID=139 AND C_Region.Name IN (''AC'',''BA'',''CE'',''GO'',''MG'',''MS'',''MT'',''PB'',''PR'',''RN'',''RS'',''SC'',''SP'')',Updated=TO_TIMESTAMP('2019-01-08 14:23:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120144
;

-- Jan 8, 2019 2:24:44 PM BRST
INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,C_Region_ID,lbr_NFeEnv,VersionNo,URL,LBR_WSType,LBR_NFeWebService_UU) VALUES (1122293,0,0,'Y',TO_TIMESTAMP('2019-01-08 14:24:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-01-08 14:24:44','YYYY-MM-DD HH24:MI:SS'),100,'NfeConsultaCadastro',453,'1','4.00','https://nfe.fazenda.mg.gov.br/nfe2/services/CadConsultaCadastro4','1','e5be021e-4666-4703-8cce-09a3e0b741b7')
;

-- Jan 8, 2019 2:25:22 PM BRST
INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,C_Region_ID,lbr_NFeEnv,VersionNo,URL,LBR_WSType,LBR_NFeWebService_UU) VALUES (1122294,0,0,'Y',TO_TIMESTAMP('2019-01-08 14:25:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-01-08 14:25:22','YYYY-MM-DD HH24:MI:SS'),100,'NfeConsultaCadastro',453,'2','4.00','https://hnfe.fazenda.mg.gov.br/nfe2/services/CadConsultaCadastro4','1','e7258e31-3a4e-4ef9-90e9-56799d89c9ce')
;

-- Jan 8, 2019 2:25:22 PM BRST
SELECT Register_Migration_Script ('201901081430_ConsultaMG.sql') FROM DUAL
;
