-- Adicionar relatórios do Produto na barra de ferramentas
-- 10/09/2018 16h34min28s BRT
DELETE FROM AD_PrintFormat_TRL WHERE AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat 
WHERE Name = 'Relatório de Lista de Materiais' AND Description = '** SPECIAL - DO NOT CHANGE ** KENOS ** LBR **')
;

-- 10/09/2018 16h34min28s BRT
DELETE FROM AD_PrintFormat 
WHERE Name = 'Relatório de Lista de Materiais' AND Description = '** SPECIAL - DO NOT CHANGE ** KENOS ** LBR **'
;

-- 10/09/2018 16h34min28s BRT
DELETE FROM AD_PrintFormat_TRL WHERE AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat 
WHERE Name = 'Relatório de Detalhes de Produto' AND Description = '** SPECIAL - DO NOT CHANGE ** KENOS ** LBR **')
;

-- 10/09/2018 16h34min28s BRT
DELETE FROM AD_PrintFormat 
WHERE Name = 'Relatório de Detalhes de Produto' AND Description = '** SPECIAL - DO NOT CHANGE ** KENOS ** LBR **'
;

-- 24/09/2015 10h36min32s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,Classname) VALUES (0,0,1120155,'3','N',TO_TIMESTAMP('2015-09-24 10:36:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','resource:reports/ProductBOM.jasper','Product BOM Report','S',0,0,TO_TIMESTAMP('2015-09-24 10:36:28','YYYY-MM-DD HH24:MI:SS'),100,'ProductBOM','org.kenos.idempiere.lbr.base.process.ReportStarter')
ON CONFLICT ON CONSTRAINT AD_Process_PKEY DO UPDATE SET EntityType='LBRA', Classname='org.kenos.idempiere.lbr.base.process.ReportStarter'
;

-- 24/09/2015 10h37min18s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,Classname) VALUES (0,0,1120156,'3','N',TO_TIMESTAMP('2015-09-24 10:37:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','resource:reports/ProductDetail.jasper','Product Detail Report','S',0,0,TO_TIMESTAMP('2015-09-24 10:37:17','YYYY-MM-DD HH24:MI:SS'),100,'ProductDetail','org.kenos.idempiere.lbr.base.process.ReportStarter')
ON CONFLICT ON CONSTRAINT AD_Process_PKEY DO UPDATE SET EntityType='LBRA', Classname='org.kenos.idempiere.lbr.base.process.ReportStarter'
;

-- Translation of AD_Process
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120155 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Relatório de Lista de Materiais',Updated=TO_TIMESTAMP('2015-09-24 10:37:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120155 AND AD_Language='pt_BR'
;

INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120156 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

UPDATE AD_Process_Trl SET Name='Relatório de Detalhes de Produto',Updated=TO_TIMESTAMP('2015-09-24 10:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120156 AND AD_Language='pt_BR'
;

-- 10/09/2018 16h37min23s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2018-09-10 16:37:23','YYYY-MM-DD HH24:MI:SS'),100,'Relatório de Lista de Material','Y',1120005,'Relatório de Lista de Material',TO_TIMESTAMP('2018-09-10 16:37:23','YYYY-MM-DD HH24:MI:SS'),100,'N','1573636e-ea61-4f47-a9bc-90505e59124f','W',180,1120155,10)
;

-- 10/09/2018 16h37min53s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2018-09-10 16:37:53','YYYY-MM-DD HH24:MI:SS'),100,'Relatório Detalhes de Produto','Y',1120006,'Relatório Detalhes de Produto',TO_TIMESTAMP('2018-09-10 16:37:53','YYYY-MM-DD HH24:MI:SS'),100,'N','39ebdb47-f45a-4fa0-9cdf-dd31c20b30ad','W',180,1120156,20)
;

-- 12/09/2018 11h30min57s BRT
UPDATE AD_ToolBarButton SET DisplayLogic='@IsBOM@=''Y''',Updated=TO_TIMESTAMP('2018-09-12 11:30:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=1120005
;

SELECT Register_Migration_Script ('201809121144_AddReportInToolBar.sql') FROM DUAL
;
