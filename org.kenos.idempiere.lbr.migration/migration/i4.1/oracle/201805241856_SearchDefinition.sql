SET SQLBLANKLINES ON
SET DEFINE OFF

-- Search Definition for Localization Brazil
-- 24/05/2018 18h50min51s BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,Query,SearchType,Updated,UpdatedBy,IsDefault,AD_SearchDefinition_UU) VALUES (0,0,1120000,291,123,TO_DATE('2018-05-24 18:50:50','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por Nome do Parceiro de Negócios ou do Contato','SELECT b.C_BPartner_ID FROM C_BPartner b
LEFT JOIN AD_User u ON (b.C_BPartner_ID = u.C_BPartner_ID)
WHERE (UPPER(b.Value) LIKE UPPER(?) OR UPPER(b.Name) LIKE UPPER(?)
 OR UPPER(b.LBR_CNPJ) LIKE UPPER(?) OR UPPER(b.LBR_CPF) LIKE UPPER(?)
  OR UPPER(u.Name) LIKE UPPER(?) OR UPPER(u.EMail) LIKE UPPER(?))
AND b.AD_Client_ID=@#AD_Client_ID@','Q',TO_DATE('2018-05-24 18:50:50','YYYY-MM-DD HH24:MI:SS'),100,'N','901b78e2-318b-43ec-8bb5-18e467bbd1a1')
;

-- 24/05/2018 18h52min46s BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,SearchType,Updated,UpdatedBy,PO_Window_ID,IsDefault,AD_SearchDefinition_UU) VALUES (0,2169,0,1120001,259,143,TO_DATE('2018-05-24 18:52:46','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por Pedido','T',TO_DATE('2018-05-24 18:52:46','YYYY-MM-DD HH24:MI:SS'),100,181,'N','592e1ab4-45e2-46d8-97e9-71ad7d6c8088')
;

-- 24/05/2018 18h53min27s BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,SearchType,Updated,UpdatedBy,PO_Window_ID,IsDefault,AD_SearchDefinition_UU) VALUES (0,1000491,0,1120002,1000027,1000015,TO_DATE('2018-05-24 18:53:27','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por NFe','T',TO_DATE('2018-05-24 18:53:27','YYYY-MM-DD HH24:MI:SS'),100,1000019,'N','8aea74fc-663a-45f4-91ba-57cc5ae88028')
;

-- 24/05/2018 18h54min15s BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,SearchType,TransactionCode,Updated,UpdatedBy,PO_Window_ID,IsDefault,AD_SearchDefinition_UU) VALUES (0,1100064,0,1120003,1000027,1000015,TO_DATE('2018-05-24 18:54:14','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por Chave da NFe','T','NFE',TO_DATE('2018-05-24 18:54:14','YYYY-MM-DD HH24:MI:SS'),100,1000019,'N','9a550e04-56bc-4d54-8978-c63bab154393')
;

-- 24/05/2018 18h54min48s BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,SearchType,TransactionCode,Updated,UpdatedBy,IsDefault,AD_SearchDefinition_UU) VALUES (0,1126791,0,1120004,1120461,1120108,TO_DATE('2018-05-24 18:54:48','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por Chave da NFe','T','DFE',TO_DATE('2018-05-24 18:54:48','YYYY-MM-DD HH24:MI:SS'),100,'N','fd752eb7-1153-4242-9ed1-ea313d044e4a')
;

SELECT Register_Migration_Script ('201805241856_SearchDefinition.sql') FROM DUAL
;