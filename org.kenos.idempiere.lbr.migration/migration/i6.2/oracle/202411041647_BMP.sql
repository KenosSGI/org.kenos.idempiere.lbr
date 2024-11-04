SET SQLBLANKLINES ON
SET DEFINE OFF

-- 1 de nov de 2024 15:27:39 BRT
INSERT INTO LBR_Bank (LBR_Bank_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,RoutingNo,Name,LBR_Bank_UU,LBR_BankAccountVD,LBR_BankAgencyVD) VALUES (1120002,0,0,'Y',TO_DATE('2024-11-01 15:27:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:27:38','YYYY-MM-DD HH24:MI:SS'),100,'274','BMP Sociedade de Crédito','6250b313-0906-4891-963f-3e25feeee20f','Y','Y')
;

-- 1 de nov de 2024 15:28:01 BRT
INSERT INTO LBR_BankSlipLayout (LBR_BankSlipLayout_ID,LBR_BankSlipLayout_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,LBR_Bank_ID,Name,Type,Version) VALUES (1120002,'336e83c7-d99d-4374-bbc7-9f716341f34f',0,0,TO_DATE('2024-11-01 15:28:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:28:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120002,'CNAB 240','2','1.00')
;

-- 1 de nov de 2024 15:29:33 BRT
UPDATE LBR_BankSlipLayout SET Name='CNAB 400',Updated=TO_DATE('2024-11-01 15:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_BankSlipLayout_ID=1120002
;

-- 1 de nov de 2024 15:41:23 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120072,'b5dc9ca3-b25f-468e-8a33-bfbedced6b83',0,0,TO_DATE('2024-11-01 15:41:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'02','Entrada Confirmada','C')
;

-- 1 de nov de 2024 15:41:24 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120073,'02009c39-4341-4c5e-8eb1-9c7d7cfe49c9',0,0,TO_DATE('2024-11-01 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'03','Entrada Rejeitada','X')
;

-- 1 de nov de 2024 15:41:24 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120074,'937bdafb-b209-48d7-bfb8-16a56fef89dc',0,0,TO_DATE('2024-11-01 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'06','Liquidação normal','L')
;

-- 1 de nov de 2024 15:41:25 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120075,'93a76d80-22a5-484b-885c-edf7a479a085',0,0,TO_DATE('2024-11-01 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'09','Baixado Automat. via Arquivo','3')
;

-- 1 de nov de 2024 15:41:25 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120076,'fd21ea73-9516-49cd-b30b-0ef33828f172',0,0,TO_DATE('2024-11-01 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'10','Baixado conforme instruções da Agência','3')
;

-- 1 de nov de 2024 15:41:26 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120077,'f42fda67-ebcc-4278-a876-ed0980d35d97',0,0,TO_DATE('2024-11-01 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'11','Em Ser - Arquivo de Títulos pendentes','O')
;

-- 1 de nov de 2024 15:41:26 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120078,'9c935054-cbc9-4795-ac9c-cd84de5188fc',0,0,TO_DATE('2024-11-01 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'12','Abatimento Concedido','O')
;

-- 1 de nov de 2024 15:41:27 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120079,'d79a0356-f211-4ce2-8e37-4f91c5bfae4c',0,0,TO_DATE('2024-11-01 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'13','Abatimento Cancelado','O')
;

-- 1 de nov de 2024 15:41:27 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120080,'842f31cc-b379-4768-93b8-3f23f9cb28ed',0,0,TO_DATE('2024-11-01 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'17','Liquidação após baixa ou Título não registrado','3')
;

-- 1 de nov de 2024 15:41:28 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120081,'33633833-0744-49ed-8ddf-62504b25961b',0,0,TO_DATE('2024-11-01 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'18','Acerto de Depositária','O')
;

-- 1 de nov de 2024 15:41:28 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120082,'dda49451-14b0-453c-8b1b-28b52143a3ea',0,0,TO_DATE('2024-11-01 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'21','Acerto do Controle do Participante','O')
;

-- 1 de nov de 2024 15:41:29 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120083,'03c27573-b8c0-4c4c-a54d-c9e34d94b57d',0,0,TO_DATE('2024-11-01 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'22','Título Com Pagamento Cancelado','O')
;

-- 1 de nov de 2024 15:41:29 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120084,'8bed5b17-d48c-4d3e-bc01-c30d2ca9859c',0,0,TO_DATE('2024-11-01 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'24','Entrada rejeitada por CEP Irregular','O')
;

-- 1 de nov de 2024 15:41:30 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120085,'940f9487-b5f7-4e47-aa2b-121fce133487',0,0,TO_DATE('2024-11-01 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'27','Baixa Rejeitada','O')
;

-- 1 de nov de 2024 15:41:30 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120086,'7b4dadee-2828-4297-a854-14dff682fabe',0,0,TO_DATE('2024-11-01 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'28','Débito de tarifas/custas','O')
;

-- 1 de nov de 2024 15:41:31 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120087,'5a6ad8c3-1538-4367-95fa-abae64078acb',0,0,TO_DATE('2024-11-01 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'29','Ocorrências do Pagador','O')
;

-- 1 de nov de 2024 15:41:31 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120088,'60a1a33a-8af9-4094-8ab4-0f814a305271',0,0,TO_DATE('2024-11-01 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'32','Instrução Rejeitada','O')
;

-- 1 de nov de 2024 15:41:32 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120089,'25d5a99a-b98a-470e-92cb-d9f3a4974a06',0,0,TO_DATE('2024-11-01 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120002,'40','Estorno de pagamento','O')
;

-- 1 de nov de 2024 15:42:04 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120090,'d8678633-64f2-4bb0-b790-b7403d75664e',0,0,TO_DATE('2024-11-01 15:42:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-01 15:42:04','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1120002,'00','Pedido de Registro','R')
;

-- 1 de nov de 2024 15:42:39 BRT
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2024-11-01 15:42:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000003
;

-- 1 de nov de 2024 16:06:28 BRT
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2024-11-01 16:06:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120684
;

-- 4 de nov de 2024 16:44:41 BRT
UPDATE LBR_BankSlipOccur SET Value='01',Updated=TO_DATE('2024-11-04 16:44:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_BankSlipOccur_ID=1120090
;

-- 4 de nov de 2024 16:45:11 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120091,'c2891075-6bc7-45c2-91f5-4f21d444b94d',0,0,TO_DATE('2024-11-04 16:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-04 16:45:09','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1120002,'02','Pedido de baixa','W')
;

-- 4 de nov de 2024 16:45:24 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120092,'c856a454-ec42-42e3-adfc-738786a03857',0,0,TO_DATE('2024-11-04 16:45:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-04 16:45:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1120002,'06','Alteração de vencimento','D')
;

-- 4 de nov de 2024 16:45:53 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120093,'31c45607-9f1e-46e6-a64c-a6cd7e911097',0,0,TO_DATE('2024-11-04 16:45:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-11-04 16:45:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1120002,'20','Alteração do valor','B')
;

-- 4 de nov de 2024 16:45:53 BRT
SELECT Register_Migration_Script ('202411041647_BMP.sql') FROM DUAL
;

