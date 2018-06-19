SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/06/2018 11h35min57s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120420,0,0,'Y',TO_DATE('2018-06-19 11:35:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-19 11:35:57','YYYY-MM-DD HH24:MI:SS'),100,'Is Return','Defines if the is a return of manufactured products','Defines if the is a return of manufactured products',1120197,10,20,'N',0,'Y','N','lbr_IsReturn','Y','LBRA',1000326,'93c6643d-6472-47e2-9395-49a24d05b545','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/06/2018 12h12min23s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120421,0,0,'Y',TO_DATE('2018-06-19 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-19 12:12:23','YYYY-MM-DD HH24:MI:SS'),100,'Customer NF Number','Number of the Customer NF','Number of the Customer NF',1120199,25,10,'N',0,'N','lbr_NFEntrada','Y','LBRA',1000364,'96a466f7-924f-45f1-b3a1-6e3f506bc981','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/06/2018 14h30min46s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120217,0,0,'Y',TO_DATE('2018-06-19 14:30:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-19 14:30:46','YYYY-MM-DD HH24:MI:SS'),100,'Return Not Used From Producer','Move back to internal warehouse the products not used by the Producer','Move back to internal warehouse the products not used by the Producer','N','LBR_POG_Return_From_Producer','N','org.kenos.idempiere.lbr.base.process.POGMoveToProducer','3','LBRA',0,0,'N','N','Y','N','3d6d7e21-b673-4c0e-b7ac-8a2a22d1aae0')
;

-- 19/06/2018 14h31min55s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted) VALUES (1120422,0,0,'Y',TO_DATE('2018-06-19 14:31:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-19 14:31:55','YYYY-MM-DD HH24:MI:SS'),100,'Is Return','Defines if the is a return of manufactured products','Defines if the is a return of manufactured products',1120217,10,20,'N',0,'Y','Y','lbr_IsReturn','Y','LBRA',1000326,'1=2','73c962d5-defb-4d85-bc79-0a99773878f9','N')
;

-- 19/06/2018 14h32min15s BRT
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2018-06-19 14:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120420
;

-- 19/06/2018 14h37min27s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2018-06-19 14:37:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_POG_Mov_Producer','Y',1120003,'Retornar Insumos Não Utilizados',TO_DATE('2018-06-19 14:37:26','YYYY-MM-DD HH24:MI:SS'),100,'N','0d50a703-a54e-4505-b3f6-e19fdf6e0409','W',1120281,1120217,'@DocStatus@=CO | @DocStatus@=WC',25)
;

-- 19/06/2018 14h37min27s BRT
SELECT Register_Migration_Script ('201806191600_POG_ReturnMaterialNotUsed.sql') FROM DUAL
;