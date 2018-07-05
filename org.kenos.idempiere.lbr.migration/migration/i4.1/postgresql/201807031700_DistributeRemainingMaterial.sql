-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 03/07/2018 10h20min8s BRT
INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,Classname,AccessLevel,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (1120029,0,0,'Y',TO_TIMESTAMP('2018-07-03 10:20:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-03 10:20:08','YYYY-MM-DD HH24:MI:SS'),100,'Distribute Remaining Material','Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor','Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor','org.kenos.idempiere.lbr.base.form.POGDistribMaterial','3','LBRA','N','0833c179-da14-4831-b92c-3b28442c0943')
;

-- 03/07/2018 10h22min39s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,AD_Form_ID,CopyFromProcess,AD_Process_UU) VALUES (1120220,0,0,'Y',TO_TIMESTAMP('2018-07-03 10:22:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-03 10:22:39','YYYY-MM-DD HH24:MI:SS'),100,'Distribute Remaining Material','Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor','Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor','N','LBR_POG_DistribMaterial','N','3','LBRA',0,0,'N','N','Y',1120029,'N','714808ff-94f8-47c0-a29b-eaffce45edd5')
;

-- 03/07/2018 10h24min2s BRT
UPDATE AD_Form SET Name='Form Distribute Remaining Material', Description='Form Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor', Help='Form Distribute Remaining Material sent to Industrialization to be used in others productions sent to the same productor',Updated=TO_TIMESTAMP('2018-07-03 10:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Form_ID=1120029
;

-- 03/07/2018 10h31min19s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2018-07-03 10:31:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_POG_DistribMaterial','Y',1120004,'Distribuir Insumo Remanescente',TO_TIMESTAMP('2018-07-03 10:31:19','YYYY-MM-DD HH24:MI:SS'),100,'N','1417d422-f3cb-44a5-a418-f4e90a296846','W',1120281,1120220,'@DocStatus@=CO | @DocStatus@=WC',25)
;

-- 03/07/2018 10h47min4s BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Esse formulário permite a Distribuição dos Insumos remanescentes de uma Industrialização concluída para serem utilizados em uma nova Industrialização enviada ao mesmo fornecedor.',0,0,'Y',TO_TIMESTAMP('2018-07-03 10:47:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-03 10:47:03','YYYY-MM-DD HH24:MI:SS'),100,1120046,'LBR_POGDistribMaterialHelp','LBRA','977b3a48-8d8d-4b50-8934-32a1c3b19f27')
;

SELECT Register_Migration_Script ('201807031700_DistributeRemainingMaterial.sql') FROM DUAL
;