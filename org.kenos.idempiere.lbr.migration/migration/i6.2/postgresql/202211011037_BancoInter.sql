-- 1 de nov de 2022 10:24:22 BRT
INSERT INTO LBR_Bank (LBR_Bank_ID,AD_Org_ID,AD_Client_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,RoutingNo,Name,LBR_Bank_UU,LBR_BankAccountVD,LBR_BankAgencyVD) VALUES (1120000,0,0,'Y',TO_TIMESTAMP('2022-11-01 10:24:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:24:21','YYYY-MM-DD HH24:MI:SS'),100,'077','BANCO INTER S.A.','4ffe6dae-fcfe-4983-9d97-754d41b0d40f','Y','Y')
;

-- 1 de nov de 2022 10:24:32 BRT
INSERT INTO AD_Image (AD_Image_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,ImageURL,AD_Image_UU) VALUES (1120156,0,0,'Y',TO_TIMESTAMP('2022-11-01 10:24:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:24:25','YYYY-MM-DD HH24:MI:SS'),100,'banco-inter.png','banco-inter.png','fd73b396-8f3e-4a85-a50c-504da00a3692')
;

-- 1 de nov de 2022 10:24:37 BRT
UPDATE LBR_Bank SET Logo_ID=1120156,Updated=TO_TIMESTAMP('2022-11-01 10:24:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Bank_ID=1120000
;

-- 1 de nov de 2022 10:26:22 BRT
INSERT INTO LBR_BankSlipLayout (LBR_BankSlipLayout_ID,LBR_BankSlipLayout_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,LBR_Bank_ID,Name,Type,Version) VALUES (1120000,'880e72c1-7d83-4c7e-b71e-cdc1988a76e8',0,0,TO_TIMESTAMP('2022-11-01 10:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:26:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120000,'CNAB 400','2','1.10')
;

-- 1 de nov de 2022 10:27:51 BRT
INSERT INTO LBR_BankSlipFold (LBR_BankSlipFold_ID,LBR_BankSlipFold_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,LBR_BankSlipLayout_ID,Value,ValueNumber,Name,LBR_IssueType) VALUES (1120000,'9dcdd389-d7b6-43d3-b589-2bd9280074f1',0,0,TO_TIMESTAMP('2022-11-01 10:27:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:27:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120000,'112',112,'Carteira 112','1')
;

-- 1 de nov de 2022 10:35:27 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120000,'c83abe55-34fb-4385-b3a3-2bf297a7cf19',0,0,TO_TIMESTAMP('2022-11-01 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1120000,'01','Pedido de Registro','R')
;

-- 1 de nov de 2022 10:35:55 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120001,'b60eeac9-3269-4efd-bf7e-24a815a1d9cd',0,0,TO_TIMESTAMP('2022-11-01 10:35:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:35:55','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120000,'02','Em Aberto','C')
;

-- 1 de nov de 2022 10:36:15 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120002,'555f0ce4-61fd-46cc-b9c9-c4cfeac8b60a',0,0,TO_TIMESTAMP('2022-11-01 10:36:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:36:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120000,'03','Erro','O')
;

-- 1 de nov de 2022 10:36:36 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120003,'acab2746-58bd-4782-a205-861414c055c9',0,0,TO_TIMESTAMP('2022-11-01 10:36:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:36:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120000,'06','Pago','L')
;

-- 1 de nov de 2022 10:36:53 BRT
INSERT INTO LBR_BankSlipOccur (LBR_BankSlipOccur_ID,LBR_BankSlipOccur_UU,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,IsSOTrx,LBR_BankSlipLayout_ID,Value,Name,Type) VALUES (1120004,'95656704-5cf6-46b2-b0a7-91ab7f6f41ca',0,0,TO_TIMESTAMP('2022-11-01 10:36:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2022-11-01 10:36:52','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120000,'07','Baixado','3')
;

-- 1 de nov de 2022 10:37:20 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2022-11-01 10:37:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132311
;

-- 1 de nov de 2022 10:37:20 BRT
SELECT Register_Migration_Script ('202211011037_BancoInter.sql') FROM DUAL
;

