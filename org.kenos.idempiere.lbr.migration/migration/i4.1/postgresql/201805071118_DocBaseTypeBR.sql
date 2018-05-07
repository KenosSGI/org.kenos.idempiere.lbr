-- 07/05/2018 10h55min55s BRT
UPDATE AD_Ref_List SET Name='Consignation Return Sales Order',Updated=TO_TIMESTAMP('2018-05-07 10:55:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000070
;

-- 07/05/2018 10h57min30s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121825,'Industrialization Shipment',1000043,'EXEI-',0,0,'Y',TO_TIMESTAMP('2018-05-07 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 10:57:23','YYYY-MM-DD HH24:MI:SS'),100,'U','a518ea0c-43c0-48d6-b80c-0b9ac981be9b')
;

-- 07/05/2018 10h59min18s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121826,'Industrialization Sales Order',1000043,'OVEI-',0,0,'Y',TO_TIMESTAMP('2018-05-07 10:59:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 10:59:16','YYYY-MM-DD HH24:MI:SS'),100,'U','ee9ce958-36e3-42f4-b0fa-c5004b6b1e19')
;

-- 07/05/2018 11h0min53s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121827,'Industrialization Return Sales Order',1000043,'OVRI+',0,0,'Y',TO_TIMESTAMP('2018-05-07 11:00:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 11:00:52','YYYY-MM-DD HH24:MI:SS'),100,'U','df7dff4b-b5d5-4b84-b831-31a314bbe6dd')
;

-- 07/05/2018 11h2min8s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121828,'Industrialization Invoice',1000043,'FAEI-',0,0,'Y',TO_TIMESTAMP('2018-05-07 11:02:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 11:02:08','YYYY-MM-DD HH24:MI:SS'),100,'U','58c35be5-38f1-4947-8213-9f3e4cb74e93')
;

-- 07/05/2018 11h3min27s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121829,'Industrialization Return Shipment',1000043,'EXRI+',0,0,'Y',TO_TIMESTAMP('2018-05-07 11:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 11:03:25','YYYY-MM-DD HH24:MI:SS'),100,'U','93e147f2-2587-4896-913e-c69c9ce7cc7e')
;

-- 07/05/2018 11h4min33s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121830,'Industrialization Return Invoice',1000043,'FARI+',0,0,'Y',TO_TIMESTAMP('2018-05-07 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-07 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,'U','9ca75ac8-2413-4e27-950a-c468183f16ea')
;

-- Transalations
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121825, 'en_US', 0, 0, 'Y', '2018-05-07 10:57:23.0', 100, '2018-05-07 10:57:23.0', 100, 'Industrialization Shipment', NULL, 'N', '84b9e5ba-0b81-4aaf-9a28-479dc93cd433')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121826, 'en_US', 0, 0, 'Y', '2018-05-07 10:59:16.0', 100, '2018-05-07 10:59:16.0', 100, 'Industrialization Sales Order', NULL, 'N', '665dca67-44a5-4bcd-8eb8-9eb4ea2871dc')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121827, 'en_US', 0, 0, 'Y', '2018-05-07 11:00:52.0', 100, '2018-05-07 11:00:52.0', 100, 'Industrialization Return Sales Order', NULL, 'N', '4122b091-4a60-4793-b1ca-df3af7884ff4')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121828, 'en_US', 0, 0, 'Y', '2018-05-07 11:02:08.0', 100, '2018-05-07 11:02:08.0', 100, 'Industrialization Invoice', NULL, 'N', '0f7ad9e4-5da5-4a6d-8856-7314d736ab2e')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121829, 'en_US', 0, 0, 'Y', '2018-05-07 11:03:25.0', 100, '2018-05-07 11:03:25.0', 100, 'Industrialization Return Shipment', NULL, 'N', '2ffe7012-d7ba-4574-88dc-c5b8a6c33b50')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121830, 'en_US', 0, 0, 'Y', '2018-05-07 11:04:30.0', 100, '2018-05-07 11:04:30.0', 100, 'Industrialization Return Invoice', NULL, 'N', 'eb644d5e-ac1f-49f2-9a9f-3aa4f0c176c0')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121828, 'pt_BR', 0, 0, 'Y', '2018-05-07 11:02:08.0', 100, '2018-05-07 11:09:30.274', 100, 'Fatura de Envio de Industrialização', NULL, 'N', 'a851a362-d32a-4784-a2ee-92fd3a4fb51d')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121830, 'pt_BR', 0, 0, 'Y', '2018-05-07 11:04:30.0', 100, '2018-05-07 11:09:35.673', 100, 'Fatura de Retorno de Industrialização', NULL, 'N', 'c709bebd-4081-4f4f-a109-d7aba97a5974')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121827, 'pt_BR', 0, 0, 'Y', '2018-05-07 11:00:52.0', 100, '2018-05-07 11:09:38.324', 100, 'Ordem de Venda de Retorno de Industrialização', NULL, 'N', '268ce8c0-25e8-437e-8924-d223083ab742')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121829, 'pt_BR', 0, 0, 'Y', '2018-05-07 11:03:25.0', 100, '2018-05-07 11:09:41.151', 100, 'Expedição de Retorno de Industrialização', NULL, 'N', '6a747ba6-4da3-42b1-b62c-3c4d6ad3a226')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121826, 'pt_BR', 0, 0, 'Y', '2018-05-07 10:59:16.0', 100, '2018-05-07 11:09:44.497', 100, 'Ordem de Venda de Envio para Industrialização', NULL, 'N', 'daa737b2-1004-4d5f-865b-afe528b96b78')
;
INSERT INTO AD_Ref_List_Trl (AD_Ref_List_ID, AD_Language, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, Description, IsTranslated, AD_Ref_List_Trl_UU)
  VALUES (1121825, 'pt_BR', 0, 0, 'Y', '2018-05-07 10:57:23.0', 100, '2018-05-07 11:11:49.515', 100, 'Expedição de Envio para Industrialização', NULL, 'Y', '00768fd6-ee63-4d29-871c-b655c0556dcc')
;

SELECT Register_Migration_Script ('201805071118_DocBaseTypeBR.sql') FROM DUAL
;


