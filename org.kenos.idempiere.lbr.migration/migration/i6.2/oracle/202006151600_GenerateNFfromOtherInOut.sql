SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15 de jun de 2020 12:50:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1122997,0,0,'Y',TO_DATE('2020-06-15 12:50:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 12:50:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_OtherInOut_ID','Other InOut','Other InOut Documento','Use to delivery of receive product from others operations','Other InOut','LBRA','42c83859-c05e-46b8-b5ce-c72cc48fda51')
;

-- 15 de jun de 2020 12:56:17 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120338,'LBR_OtherInOut','Other In Out','T',0,0,'Y',TO_DATE('2020-06-15 12:56:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 12:56:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','1d5c1dfc-241d-4110-9cf6-266f115d50a0')
;

-- 15 de jun de 2020 12:57:19 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120338,259,2161,2169,'EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocTypeTarget_ID AND C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.LBR_IsSalesPurchaseOperation = ''N'')',0,0,'Y',TO_DATE('2020-06-15 12:57:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 12:57:19','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','0b29a589-108c-46a7-87d5-db294920b1c1')
;

-- 15 de jun de 2020 12:58:50 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120501,0,0,'Y',TO_DATE('2020-06-15 12:58:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 12:58:50','YYYY-MM-DD HH24:MI:SS'),100,'Other InOut','Other InOut Documento','Use to delivery of receive product from others operations',1120199,70,30,1120338,'N',0,'N','LBR_OtherInOut_ID','Y','LBRA',1122997,'5dbef8c0-0b78-476e-961d-37148c628dd5','N')
;

-- 15 de jun de 2020 13:00:24 BRT
UPDATE AD_Process_Para SET FieldLength=10,Updated=TO_DATE('2020-06-15 13:00:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120501
;

-- 15 de jun de 2020 13:04:11 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120245,0,0,'Y',TO_DATE('2020-06-15 13:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 13:04:10','YYYY-MM-DD HH24:MI:SS'),100,'Generate NF Other In Out','Generate NF from Other In Out','N','LBR_GenerateNFOtherInOut','N','org.kenos.idempiere.lbr.nfe.process.GenerateNF','3','LBRA',0,0,'N','N','Y','N','8d41fbb9-854d-40be-9801-66331f6b2ac5')
;

-- 15 de jun de 2020 13:07:40 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120502,0,0,'Y',TO_DATE('2020-06-15 13:07:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 13:07:39','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120245,10,19,322,'N',10,'Y','@AD_Org_ID@','AD_Org_ID','Y','LBRA',113,'6c3f9ed7-5331-473b-9130-d5a1a1e948bf','N')
;

-- 15 de jun de 2020 13:08:28 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120503,0,0,'Y',TO_DATE('2020-06-15 13:08:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 13:08:27','YYYY-MM-DD HH24:MI:SS'),100,'Other InOut','Other InOut Documento','Use to delivery of receive product from others operations',1120245,20,30,1120338,'N',0,'Y','LBR_OtherInOut_ID','Y','LBRA',1122997,'e9df6354-78e1-47a0-a2a2-fc9756bf48cd','N')
;

-- 15 de jun de 2020 13:09:13 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120504,0,0,'Y',TO_DATE('2020-06-15 13:09:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-15 13:09:13','YYYY-MM-DD HH24:MI:SS'),100,'Customer NF Number','Number of the Customer NF','Number of the Customer NF',1120245,30,10,'N',10,'N','lbr_NFEntrada','Y','LBRA',1000364,'b5c6f15e-7ec7-42c0-8baa-fa6f6979cc65','N')
;

-- 15 de jun de 2020 13:09:21 BRT
UPDATE AD_Process_Para SET FieldLength=10,Updated=TO_DATE('2020-06-15 13:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120503
;

-- 15 de jun de 2020 13:09:52 BRT
UPDATE AD_Process_Para SET DefaultValue='@C_Order_ID@',Updated=TO_DATE('2020-06-15 13:09:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120503
;

-- 15 de jun de 2020 13:11:48 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2020-06-15 13:11:48','YYYY-MM-DD HH24:MI:SS'),100,'Gerar NF-e a partir de Outras Entradas/Saídas','Y',1120010,'Gerar NF-e a partir de Outras Entradas/Saídas',TO_DATE('2020-06-15 13:11:48','YYYY-MM-DD HH24:MI:SS'),100,'N','7accb9eb-5dc2-455e-bfd5-c78f076813e7','W',1120365,1120245,10)
;

-- 15 de jun de 2020 13:12:09 BRT
UPDATE AD_ToolBarButton SET ComponentName='Generate NF Other In Out', Name='Generate NF Other In Out',Updated=TO_DATE('2020-06-15 13:12:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=2000015
;2000016

-- 15 de jun de 2020 13:12:22 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2020-06-15 13:12:22','YYYY-MM-DD HH24:MI:SS'),100,'Generate NF Other In Out','Y',1120011,'Generate NF Other In Out',TO_DATE('2020-06-15 13:12:22','YYYY-MM-DD HH24:MI:SS'),100,'N','c42ff499-fbf8-4945-8118-3e9c43eb0cd6','W',1120371,1120245,10)
;

SELECT Register_Migration_Script ('202006151600_GenerateNFfromOtherInOut.sql') FROM DUAL
;