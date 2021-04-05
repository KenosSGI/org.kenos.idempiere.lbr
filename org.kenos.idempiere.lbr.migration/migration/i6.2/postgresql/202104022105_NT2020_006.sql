-- 2 de abr de 2021 19:30:13 BRT
UPDATE AD_Ref_List SET Name='Bank Slip',Updated=TO_TIMESTAMP('2021-04-02 19:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121894
;

-- 2 de abr de 2021 19:30:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122930,'Depósito Bancário',1000035,'16',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:30:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:30:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','282b27e0-00de-4300-a5a0-c49b1fb2c48a')
;

-- 2 de abr de 2021 19:30:52 BRT
UPDATE AD_Ref_List SET Name='Bank Deposit',Updated=TO_TIMESTAMP('2021-04-02 19:30:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122930
;

-- 2 de abr de 2021 19:31:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122931,'Pagamento Instantâneo (PIX)',1000035,'17',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:31:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:31:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e02b2844-7177-4c87-8f91-623f0e4c0569')
;

-- 2 de abr de 2021 19:31:16 BRT
UPDATE AD_Ref_List SET Name='Instant Payment (PIX)',Updated=TO_TIMESTAMP('2021-04-02 19:31:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122931
;

-- 2 de abr de 2021 19:31:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122932,'Transferência bancária, Carteira Digital',1000035,'18',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:31:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:31:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c20cf066-7baf-482e-ac0c-9849902f5d87')
;

-- 2 de abr de 2021 19:31:52 BRT
UPDATE AD_Ref_List SET Name='Bank Transfer, Digital Wallet',Updated=TO_TIMESTAMP('2021-04-02 19:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122932
;

-- 2 de abr de 2021 19:32:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122933,'Programa de fidelidade, Cashback, Crédito Virtual',1000035,'19',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:32:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:32:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0be158b9-c930-4bf0-8fcd-6a869da532aa')
;

-- 2 de abr de 2021 19:33:12 BRT
UPDATE AD_Ref_List SET Name='Loyalty Program, Cashback, Virtual Credit',Updated=TO_TIMESTAMP('2021-04-02 19:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122933
;

-- 2 de abr de 2021 19:38:43 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120394,'LBR_CreditCardBrand','L',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:38:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:38:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','be31727b-b995-42f1-8255-0ff71b34b487')
;

-- 2 de abr de 2021 19:39:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122934,'Visa',1120394,'01',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:39:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:39:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','fad2d598-3a01-482f-a7b8-14f8460fc42e')
;

-- 2 de abr de 2021 19:40:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122935,'Mastercard',1120394,'02',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:52','YYYY-MM-DD HH24:MI:SS'),100,'U','676e1848-c42a-47ae-8013-bfde81d5c242')
;

-- 2 de abr de 2021 19:40:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122936,'American Express',1120394,'03',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:52','YYYY-MM-DD HH24:MI:SS'),100,'U','b217e6ad-2ddc-45c8-8750-e27331302634')
;

-- 2 de abr de 2021 19:40:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122937,'Sorocred',1120394,'04',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,'U','597b9098-b28e-4195-947b-f1b24a1fc150')
;

-- 2 de abr de 2021 19:40:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122938,'Diners Club',1120394,'05',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,'U','3c3274be-b8d0-4031-80d6-6c88fd587bdd')
;

-- 2 de abr de 2021 19:40:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122939,'Elo',1120394,'06',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:53','YYYY-MM-DD HH24:MI:SS'),100,'U','06b959b5-8c0e-44cf-ac54-47ea8f4e7153')
;

-- 2 de abr de 2021 19:40:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122940,'Hipercard',1120394,'07',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:54','YYYY-MM-DD HH24:MI:SS'),100,'U','b7e9dc9e-1dbb-4025-897e-9721fccd0cc4')
;

-- 2 de abr de 2021 19:40:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122941,'Aura',1120394,'08',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:54','YYYY-MM-DD HH24:MI:SS'),100,'U','25cfd1b6-8dd0-478d-96e5-b3bd5a712934')
;

-- 2 de abr de 2021 19:40:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122942,'Cabal',1120394,'09',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:55','YYYY-MM-DD HH24:MI:SS'),100,'U','e0117dc8-61e3-4727-a719-9d86f18e6a1b')
;

-- 2 de abr de 2021 19:40:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122943,'Alelo',1120394,'10',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:55','YYYY-MM-DD HH24:MI:SS'),100,'U','d03ffcc6-b17f-4f55-9142-12f2b4472c7e')
;

-- 2 de abr de 2021 19:40:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122944,'Banes Card',1120394,'11',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:56','YYYY-MM-DD HH24:MI:SS'),100,'U','63d66662-2327-4d6e-86a6-56091cd8542e')
;

-- 2 de abr de 2021 19:40:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122945,'CalCard ',1120394,'12',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:56','YYYY-MM-DD HH24:MI:SS'),100,'U','24499411-9f2f-4ae0-b496-6f033dea488a')
;

-- 2 de abr de 2021 19:40:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122946,'Credz',1120394,'13',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:57','YYYY-MM-DD HH24:MI:SS'),100,'U','5032c650-59fd-4d99-bafd-fe75a9019601')
;

-- 2 de abr de 2021 19:40:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122947,'Discover',1120394,'14',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:57','YYYY-MM-DD HH24:MI:SS'),100,'U','1af4ca35-dd28-4743-88d7-aaeedde34fd0')
;

-- 2 de abr de 2021 19:40:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122948,'GoodCard',1120394,'15',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:58','YYYY-MM-DD HH24:MI:SS'),100,'U','ef281982-9383-44d7-b23c-091eca779751')
;

-- 2 de abr de 2021 19:40:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122949,'GreenCard',1120394,'16',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:58','YYYY-MM-DD HH24:MI:SS'),100,'U','02a36949-ff19-4815-bf4d-2997f0120683')
;

-- 2 de abr de 2021 19:40:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122950,'Hiper',1120394,'17',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:59','YYYY-MM-DD HH24:MI:SS'),100,'U','013cdd03-332e-4f35-b984-51a92a94f173')
;

-- 2 de abr de 2021 19:40:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122951,'JcB',1120394,'18',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:40:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:40:59','YYYY-MM-DD HH24:MI:SS'),100,'U','3aeb1868-2603-4557-914a-e6f88b711cf0')
;

-- 2 de abr de 2021 19:41:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122952,'Mais',1120394,'19',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,'U','33aad1d2-b653-47e2-991a-56adda777f3b')
;

-- 2 de abr de 2021 19:41:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122953,'MaxVan',1120394,'20',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,'U','c71ff69b-a9d6-4fc5-81b6-909c6c92dfeb')
;

-- 2 de abr de 2021 19:41:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122954,'Policard',1120394,'21',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:00','YYYY-MM-DD HH24:MI:SS'),100,'U','eb6882cf-9af7-4329-b5f9-80fdf10a8147')
;

-- 2 de abr de 2021 19:41:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122955,'RedeCompras',1120394,'22',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:01','YYYY-MM-DD HH24:MI:SS'),100,'U','9c04e3f2-8a6f-49d3-bbb0-e9fb9dab45bd')
;

-- 2 de abr de 2021 19:41:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122956,'Sodexo',1120394,'23',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:01','YYYY-MM-DD HH24:MI:SS'),100,'U','36f550fb-78af-4164-9ec1-d95b5c78afdf')
;

-- 2 de abr de 2021 19:41:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122957,'ValeCard',1120394,'24',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:02','YYYY-MM-DD HH24:MI:SS'),100,'U','65df1920-b6b2-43c0-b526-32ec66edc162')
;

-- 2 de abr de 2021 19:41:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122958,'Verocheque',1120394,'25',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:02','YYYY-MM-DD HH24:MI:SS'),100,'U','8c703d2b-28a0-4761-b87f-b207473d552e')
;

-- 2 de abr de 2021 19:41:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122959,'VR',1120394,'26',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:03','YYYY-MM-DD HH24:MI:SS'),100,'U','9a767d65-b388-421d-87ce-c624cf780595')
;

-- 2 de abr de 2021 19:41:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122960,'Ticket',1120394,'27',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:03','YYYY-MM-DD HH24:MI:SS'),100,'U','8849ef38-56c3-4fca-90ca-34a0c8d267ff')
;

-- 2 de abr de 2021 19:41:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122961,'Outros',1120394,'99',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:41:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:41:04','YYYY-MM-DD HH24:MI:SS'),100,'U','005702a2-6d32-40bd-ad2f-7c0b872b3262')
;

-- 2 de abr de 2021 19:51:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123358,0,0,'Y',TO_TIMESTAMP('2021-04-02 19:51:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:51:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsMarketPlace','Market Place','Market Place','LBRA','8f62a1f0-243f-4112-a2b3-e4738a30e421')
;

-- 2 de abr de 2021 19:52:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133518,0,'Market Place',53244,'LBR_IsMarketPlace','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-04-02 19:52:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:52:00','YYYY-MM-DD HH24:MI:SS'),100,1123358,'Y','N','LBRA','N','N','N','Y','00ced425-9c3c-4e68-9fbf-079b9900fe2c','Y',0,'N','N','N','N')
;

-- 2 de abr de 2021 19:52:04 BRT
ALTER TABLE C_OrderSource ADD COLUMN LBR_IsMarketPlace CHAR(1) DEFAULT 'N' CHECK (LBR_IsMarketPlace IN ('Y','N')) NOT NULL
;

-- 2 de abr de 2021 19:52:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133519,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',53244,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-04-02 19:52:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:52:47','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','N','@LBR_IsMarketPlace@=Y','N','Y','248752a5-3df9-441b-9eae-1267b63c9a97','Y',0,'N','N','N')
;

-- 2 de abr de 2021 19:52:53 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-04-02 19:52:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133519
;

-- 2 de abr de 2021 19:52:58 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_COrderSource', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-02 19:52:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133519
;

-- 2 de abr de 2021 19:52:59 BRT
ALTER TABLE C_OrderSource ADD COLUMN C_BPartner_ID NUMERIC(10) DEFAULT NULL 
;

-- 2 de abr de 2021 19:52:59 BRT
ALTER TABLE C_OrderSource ADD CONSTRAINT CBPartner_COrderSource FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 2 de abr de 2021 19:53:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133520,0,'User Name',53244,'UserName',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-02 19:53:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:53:18','YYYY-MM-DD HH24:MI:SS'),100,1903,'Y','Y','LBRA','N','N','N','Y','e7f83412-741f-448f-9931-ccd7ac74f61a','Y',10,'N','N','N')
;

-- 2 de abr de 2021 19:53:28 BRT
UPDATE AD_Column SET MandatoryLogic='@LBR_IsMarketPlace@=Y',Updated=TO_TIMESTAMP('2021-04-02 19:53:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133520
;

-- 2 de abr de 2021 19:53:32 BRT
ALTER TABLE C_OrderSource ADD COLUMN UserName VARCHAR(60) DEFAULT NULL 
;

-- 2 de abr de 2021 19:54:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131253,'Market Place',53284,1133518,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:54:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:54:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d39c7b79-1f94-4cda-8e44-c0a3f70ab280','Y',80,2,2)
;

-- 2 de abr de 2021 19:54:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131254,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',53284,1133519,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:54:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:54:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2c31cd97-d926-47ed-b0fc-c59ef0f2eead','Y',90,2)
;

-- 2 de abr de 2021 19:54:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131255,'User Name',53284,1133520,'Y',60,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 19:54:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:54:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','50411189-1a87-4c76-8b55-99dd49e5a644','Y',100,5)
;

-- 2 de abr de 2021 19:55:34 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 19:55:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131253
;

-- 2 de abr de 2021 19:55:34 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 19:55:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131255
;

-- 2 de abr de 2021 19:55:34 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 19:55:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204770
;

-- 2 de abr de 2021 19:56:28 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsMarketPlace@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 19:56:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131254
;

-- 2 de abr de 2021 19:56:33 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsMarketPlace@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 19:56:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131255
;

-- 2 de abr de 2021 19:59:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133521,0,'Market Place',1000027,'LBR_IsMarketPlace','N',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-04-02 19:59:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 19:59:10','YYYY-MM-DD HH24:MI:SS'),100,1123358,'Y','N','LBRA','N','N','N','Y','ea32eaeb-5cb9-4885-9777-7131774912d9','Y',0,'N','N','N','N')
;

-- 2 de abr de 2021 19:59:15 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_IsMarketPlace CHAR(1) DEFAULT 'N' CHECK (LBR_IsMarketPlace IN ('Y','N'))
;

-- 2 de abr de 2021 20:00:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133523,0,'Order Source',1000027,'C_OrderSource_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:00:19','YYYY-MM-DD HH24:MI:SS'),100,53942,'Y','N','LBRA','N','N','@LBR_IsMarketPlace@=Y','N','Y','5fc41f5d-4e2e-498e-89bd-cfa3eb49ebeb','Y',0,'N','N','N','N')
;

-- 2 de abr de 2021 20:00:25 BRT
UPDATE AD_Column SET FKConstraintName='COrderSource_LBRNotaFiscal', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-02 20:00:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133523
;

-- 2 de abr de 2021 20:00:25 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN C_OrderSource_ID NUMERIC(10) DEFAULT NULL 
;

-- 2 de abr de 2021 20:00:25 BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT COrderSource_LBRNotaFiscal FOREIGN KEY (C_OrderSource_ID) REFERENCES c_ordersource(c_ordersource_id) DEFERRABLE INITIALLY DEFERRED
;

-- 2 de abr de 2021 20:01:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123359,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:00:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:00:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MarketPlaceCNPJ','CNPJ (MarketPlace)',NULL,NULL,'CNPJ (MarketPlace)','LBRA','29ac397d-3f2c-48f3-a94f-939a9991a1ce')
;

-- 2 de abr de 2021 20:02:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133524,0,'CNPJ (MarketPlace)',1000027,'LBR_MarketPlaceCNPJ',18,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:02:31','YYYY-MM-DD HH24:MI:SS'),100,1123359,'Y','N','LBRA','N','N','@LBR_IsMarketPlace@=Y','N','Y','bd75ef95-f1f8-4a26-b55b-4b90ba3e8256','Y',0,'N','N','N','N')
;

-- 2 de abr de 2021 20:03:34 BRT
UPDATE AD_Column SET VFormat='00.000.000/0000-00',Updated=TO_TIMESTAMP('2021-04-02 20:03:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133524
;

-- 2 de abr de 2021 20:03:45 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_MarketPlaceCNPJ VARCHAR(18) DEFAULT NULL 
;

-- 2 de abr de 2021 20:03:52 BRT
INSERT INTO t_alter_column values('lbr_notafiscal','LBR_IsMarketPlace','CHAR(1)',null,'N')
;

-- 2 de abr de 2021 20:04:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133525,0,'User Name',1000027,'UserName',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:04:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:04:14','YYYY-MM-DD HH24:MI:SS'),100,1903,'Y','Y','LBRA','N','N','@LBR_IsMarketPlace@=Y','N','Y','9038dcda-061e-47b7-a3bd-ebbf3097d4a5','Y',20,'N','N','N')
;

-- 2 de abr de 2021 20:04:18 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN UserName VARCHAR(60) DEFAULT NULL 
;

-- 2 de abr de 2021 20:04:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131256,'Market Place',1000020,1133521,'Y',1,1310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 20:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:04:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','01c0f38f-eb98-4174-896a-2190693a60d8','Y',1095,2,2)
;

-- 2 de abr de 2021 20:04:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131257,'Order Source',1000020,1133523,'Y',10,1320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c5015bb5-fd5e-444d-88f1-a4f73dd194f6','Y',1105,2)
;

-- 2 de abr de 2021 20:04:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131258,'CNPJ (MarketPlace)',1000020,1133524,'Y',18,1330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6b8b73a7-af3a-418b-9183-c46a917c73f0','Y',1115,2)
;

-- 2 de abr de 2021 20:04:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131259,'User Name',1000020,1133525,'Y',60,1340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:04:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','54869c27-f036-439d-a3e1-03ce7d4090c7','Y',1125,5)
;

-- 2 de abr de 2021 20:09:10 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000346
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124951
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125797
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125405
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131256
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131257
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131258
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131259
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000329
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124869
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124939
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000302
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000303
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000304
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000305
;

-- 2 de abr de 2021 20:09:11 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000331
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000332
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000307
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124941
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000308
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000330
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128186
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000313
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000316
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128187
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128188
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000309
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000310
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000311
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000312
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000317
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000318
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000314
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124942
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000315
;

-- 2 de abr de 2021 20:09:12 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129391
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001093
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000660
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=780, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001092
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=790, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124850
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=800, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000356
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=810, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000376
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=820, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000380
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=830, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000381
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=840, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123448
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=850, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000882
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=860, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125484
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=870, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125485
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=880, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125483
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=890, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125781
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=900, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125782
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=910, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000625
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=920, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000659
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=930, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=940, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125777
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=950, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125779
;

-- 2 de abr de 2021 20:09:13 BRT
UPDATE AD_Field SET SeqNo=960, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125778
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=970, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125780
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=980, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125783
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=990, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000373
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000378
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1010, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000496
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1020, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120081
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1030, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122767
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1040, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127040
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1050, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125373
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1060, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100048
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1070, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100051
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1080, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100049
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128181
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000370
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129917
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001079
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001087
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127500
;

-- 2 de abr de 2021 20:09:14 BRT
UPDATE AD_Field SET SeqNo=1170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001080
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001081
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001082
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001083
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001090
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001085
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124943
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127367
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127495
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001084
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001088
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100077
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125803
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 2 de abr de 2021 20:09:15 BRT
UPDATE AD_Field SET SeqNo=1340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 20:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 2 de abr de 2021 20:10:36 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120200,'C_OrderSource (MarketPlace Only)','S','C_OrderSource.LBR_IsMarketPlace=''Y''',0,0,'Y',TO_TIMESTAMP('2021-04-02 20:10:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:10:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8c85918d-2378-463b-8853-5e263397b00e')
;

-- 2 de abr de 2021 20:10:50 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120200,Updated=TO_TIMESTAMP('2021-04-02 20:10:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133523
;

-- 2 de abr de 2021 20:48:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133526,0,'Version No','Version Number',1000027,'VersionNo',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:48:42','YYYY-MM-DD HH24:MI:SS'),100,1949,'N','N','LBRA','N','N','N','Y','2fcc1e61-f5dd-42d6-9b03-8a71b5592589','Y',0,'N','N','N')
;

-- 2 de abr de 2021 20:48:54 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-04-02 20:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133526
;

-- 2 de abr de 2021 20:48:56 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN VersionNo VARCHAR(20) DEFAULT NULL 
;

-- 2 de abr de 2021 20:50:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133527,0,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1000028,'C_OrderLine_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-04-02 20:50:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-02 20:50:24','YYYY-MM-DD HH24:MI:SS'),100,561,'Y','N','LBRA','N','N','N','Y','ca252e87-c9da-4004-8881-1ec613523081','Y',0,'N','N','N')
;

-- 2 de abr de 2021 20:50:29 BRT
UPDATE AD_Column SET FKConstraintName='COrderLine_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-04-02 20:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133527
;

-- 2 de abr de 2021 20:50:29 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_OrderLine_ID NUMERIC(10) DEFAULT NULL 
;

-- 2 de abr de 2021 20:50:29 BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT COrderLine_LBRNotaFiscalLine FOREIGN KEY (C_OrderLine_ID) REFERENCES c_orderline(c_orderline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 2 de abr de 2021 21:04:47 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsMarketPlace@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 21:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131257
;

-- 2 de abr de 2021 21:04:52 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsMarketPlace@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 21:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131258
;

-- 2 de abr de 2021 21:04:56 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IsMarketPlace@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-02 21:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131259
;

-- 3 de abr de 2021 17:19:13 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:19:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133521
;

-- 3 de abr de 2021 17:19:18 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133524
;

-- 3 de abr de 2021 17:19:30 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133523
;

-- 3 de abr de 2021 17:20:00 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:20:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133525
;

-- 3 de abr de 2021 17:20:28 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:20:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133513
;

-- 3 de abr de 2021 17:20:51 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130451
;

-- 3 de abr de 2021 17:21:15 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:21:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131949
;

-- 3 de abr de 2021 17:21:46 BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2021-04-03 17:21:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132534
;

-- 3 de abr de 2021 23:15:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133584,0,'Indicação de Atendimento Presencial','Indicador de presença do comprador no estabelecimento comercial no momento da operação',1120547,'LBR_IndPres',NULL,1,'N','N','N','N','N',0,'N',17,1120204,0,0,'Y',TO_TIMESTAMP('2021-04-03 23:15:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-03 23:15:05','YYYY-MM-DD HH24:MI:SS'),100,1121694,'Y','N','LBRA','N','N','N','Y','81157938-61b1-4ac9-999f-06f939563e27','Y',0,'N','N','N')
;

-- 3 de abr de 2021 23:15:09 BRT
ALTER TABLE LBR_NFConfig ADD COLUMN LBR_IndPres CHAR(1) DEFAULT NULL 
;

-- 3 de abr de 2021 23:15:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133600,0,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120547,'lbr_PaymentRule',1,'N','N','N','N','N',0,'N',17,1000035,0,0,'Y',TO_TIMESTAMP('2021-04-03 23:15:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-03 23:15:32','YYYY-MM-DD HH24:MI:SS'),100,1000305,'Y','N','LBRA','N','N','N','Y','e94765e3-84de-431c-a1bd-50a58976d107','Y',0,'N','N','N')
;

-- 3 de abr de 2021 23:15:34 BRT
ALTER TABLE LBR_NFConfig ADD COLUMN lbr_PaymentRule CHAR(1) DEFAULT NULL 
;

-- 3 de abr de 2021 23:15:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131389,'Indicação de Atendimento Presencial','Indicador de presença do comprador no estabelecimento comercial no momento da operação',1120216,1133584,'Y',1,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-03 23:15:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-03 23:15:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','21fa3eee-f618-4b7e-82f0-b4221413c56f','Y',161,2)
;

-- 3 de abr de 2021 23:15:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131390,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120216,1133600,'Y',1,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-04-03 23:15:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-04-03 23:15:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9cf5a673-c2e8-4220-b32f-3208a0c99fa3','Y',171,2)
;

-- 3 de abr de 2021 23:16:13 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130094
;

-- 3 de abr de 2021 23:16:13 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125815
;

-- 3 de abr de 2021 23:16:13 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125816
;

-- 3 de abr de 2021 23:16:13 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128231
;

-- 3 de abr de 2021 23:16:13 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125817
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125810
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131389
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131390
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128192
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128172
;

-- 3 de abr de 2021 23:16:14 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-04-03 23:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128171
;

-- 3 de abr de 2021 23:18:17 BRT
SELECT Register_Migration_Script ('202104022105_NT2020_006.sql') FROM DUAL
;

