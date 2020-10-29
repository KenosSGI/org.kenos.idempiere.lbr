-- 28 de out de 2020 07:31:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132674,0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120699,'LBR_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2020-10-28 07:31:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-28 07:31:14','YYYY-MM-DD HH24:MI:SS'),100,1000177,'Y','N','@IsManual@!Y','LBRA','N','N','N','Y','8ff3ed42-cca6-4709-805d-105f91c872db','Y',0,'N','N','N')
;

-- 28 de out de 2020 07:31:20 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_LBRSIMPLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-10-28 07:31:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132674
;

-- 28 de out de 2020 07:31:20 BRT
ALTER TABLE LBR_SIMPLine ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 28 de out de 2020 07:31:20 BRT
ALTER TABLE LBR_SIMPLine ADD CONSTRAINT LBRNotaFiscal_LBRSIMPLine FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 28 de out de 2020 07:31:36 BRT
UPDATE AD_Table SET AD_Window_ID=1120168,Updated=TO_TIMESTAMP('2020-10-28 07:31:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120699
;

-- 28 de out de 2020 07:31:44 BRT
UPDATE AD_Table SET AD_Window_ID=1120168,Updated=TO_TIMESTAMP('2020-10-28 07:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120698
;

-- 28 de out de 2020 07:32:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130017,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120405,1132674,'Y',10,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-28 07:32:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-28 07:32:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c338b3e-fea4-498e-aaf8-55b8cda45b56','Y',300,2)
;

-- 29 de out de 2020 15:56:39 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:56:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132655
;

-- 29 de out de 2020 15:57:46 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:57:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132671
;

-- 29 de out de 2020 15:57:56 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132604
;

-- 29 de out de 2020 15:57:59 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132609
;

-- 29 de out de 2020 15:58:04 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132623
;

-- 29 de out de 2020 15:58:09 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2020-10-29 15:58:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132624
;

-- 29 de out de 2020 16:00:14 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132626
;

-- 29 de out de 2020 16:00:41 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132674
;

-- 29 de out de 2020 16:00:44 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132616
;

-- 29 de out de 2020 16:00:47 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132614
;

-- 29 de out de 2020 16:00:49 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132613
;

-- 29 de out de 2020 16:00:52 BRT
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2020-10-29 16:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132612
;

-- 29 de out de 2020 18:08:36 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120256,0,0,'Y',TO_TIMESTAMP('2020-10-29 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-29 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,'SIMP Recalculate Totals','This process will delete and recalculate the totals in case the generate data was manually modified','N','LBR_SIMPRecalculate','N','3','LBRA',0,0,'N','N','Y','N','82cee6f6-e30a-42f0-8d0b-a38b90d858cf','P')
;

-- 29 de out de 2020 18:08:53 BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.tax.fuel.process.RecalculateTotals',Updated=TO_TIMESTAMP('2020-10-29 18:08:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120256
;

-- 29 de out de 2020 18:10:37 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2020-10-29 18:10:37','YYYY-MM-DD HH24:MI:SS'),100,'Recalculate Totals','Y',1120014,'Recalculate Totals',TO_TIMESTAMP('2020-10-29 18:10:37','YYYY-MM-DD HH24:MI:SS'),100,'N','dfe898c5-1d42-46a2-9bef-216085e44aea','W',1120404,1120256,10)
;

-- 28 de out de 2020 07:32:07 BRT
SELECT Register_Migration_Script ('202010280736_iSIMPFix.sql') FROM DUAL
;

