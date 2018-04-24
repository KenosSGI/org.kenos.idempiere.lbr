SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20/04/2018 9h37min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130241,0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',326,'LBR_NotaFiscalLine_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-04-20 09:37:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-20 09:37:33','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','U','N','N','N','Y','e0c733e3-bab0-4b75-bfc9-eb2a5b7aa1e0','Y',0,'N','N')
;

-- 20/04/2018 9h39min12s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2018-04-20 09:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130241
;

-- 20/04/2018 9h40min17s BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLine_MProductionL', FKConstraintType='N',Updated=TO_DATE('2018-04-20 09:40:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130241
;

-- 20/04/2018 9h40min17s BRT
ALTER TABLE M_ProductionLine ADD LBR_NotaFiscalLine_ID NUMBER(10) DEFAULT NULL 
;

-- 20/04/2018 9h40min18s BRT
ALTER TABLE M_ProductionLine ADD CONSTRAINT LBRNotaFiscalLine_MProductionL FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20/04/2018 10h14min16s BRT
INSERT INTO AD_Form (AD_Form_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Classname,AccessLevel,EntityType,IsBetaFunctionality,AD_Form_UU) VALUES (1120028,0,0,'Y',TO_DATE('2018-04-20 10:14:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-20 10:14:15','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Production Group','org.kenos.idempiere.lbr.base.form.POGInvoiceGen','3','LBRA','N','2be15466-dad6-41d2-a174-8d8b31329b09')
;

-- 20/04/2018 10h15min11s BRT
UPDATE AD_Process SET Classname=NULL, AD_Form_ID=1120028,Updated=TO_DATE('2018-04-20 10:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120198
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 23/04/2018 10h36min27s BRT
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy,IsDirected,Type,AD_RelationType_UU) VALUES (0,0,1120001,TO_DATE('2018-04-23 10:36:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Production Group <-> Nota Fiscal (PO)',TO_DATE('2018-04-23 10:36:27','YYYY-MM-DD HH24:MI:SS'),100,'N','I','5e6ae449-cb85-4925-9bc4-96e307cfae9d')
;

-- 23/04/2018 10h37min53s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120261,'Production Group <-> Nota Fiscal (PO)','Finds Nota Fiscal From Production Group','T',0,0,'Y',TO_DATE('2018-04-23 10:37:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 10:37:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','44a7fb9f-ff61-43dd-ae20-439a04361cfa')
;

-- 23/04/2018 10h39min14s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120261,1000027,1000473,1000491,0,0,'Y',TO_DATE('2018-04-23 10:39:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 10:39:14','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','8e76205e-06cc-4fc4-ba10-7bc5fda5dd8a')
;

-- 23/04/2018 10h46min11s BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_NotaFiscal_ID IN
(SELECT nf.LBR_NotaFiscal_ID FROM LBR_NotaFiscal nf
LEFT JOIN LBR_NotaFiscalLine nfl ON nfl.LBR_NotaFiscal_ID = nf.LBR_NotaFiscal_ID
LEFT JOIN M_ProductionLine pl ON pl.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID
LEFT JOIN M_Production p ON pl.M_Production_ID = p.M_Production_ID
LEFT JOIN LBR_ProductionGroup pg ON pg.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID
WHERE pg.LBR_ProductionGroup_ID=@LBR_ProductionGroup_ID@)',Updated=TO_DATE('2018-04-23 10:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120261
;

-- 23/04/2018 10h46min34s BRT
UPDATE AD_RelationType SET AD_Reference_Source_ID=1120261,Updated=TO_DATE('2018-04-23 10:46:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120001
;

-- 23/04/2018 10h47min18s BRT
UPDATE AD_RelationType SET IsDirected='Y',Updated=TO_DATE('2018-04-23 10:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120001
;

-- 23/04/2018 10h47min48s BRT
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120261, IsDirected='N',Updated=TO_DATE('2018-04-23 10:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120001
;

-- 23/04/2018 10h49min27s BRT
UPDATE AD_Ref_Table SET OrderByClause='DocumentNo',Updated=TO_DATE('2018-04-23 10:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120261
;

-- 23/04/2018 10h50min25s BRT
UPDATE AD_RelationType SET AD_Reference_Target_ID=NULL,Updated=TO_DATE('2018-04-23 10:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120001
;

-- 23/04/2018 11h0min25s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=1120133,Updated=TO_DATE('2018-04-23 11:00:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120261
;

-- 23/04/2018 11h1min52s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=NULL,Updated=TO_DATE('2018-04-23 11:01:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120261
;

-- 23/04/2018 11h4min39s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120262,'Nota Fiscal (PO) <-> Production Group','Finds Production Group From Nota Fiscal','T',0,0,'Y',TO_DATE('2018-04-23 11:04:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:04:38','YYYY-MM-DD HH24:MI:SS'),100,'U','N','67c89b4b-0571-4338-a202-898d42bc7ed6')
;

-- 23/04/2018 11h5min1s BRT
UPDATE AD_Reference SET EntityType='LBRA',Updated=TO_DATE('2018-04-23 11:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120262
;

-- 23/04/2018 11h23min40s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120262,1120582,1129909,1129925,'LBR_ProductionGroup_ID IN 
(SELECT pg.LBR_ProductionGroup_ID FROM LBR_ProductionGroup pg
LEFT JOIN M_Production p ON pg.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID
LEFT JOIN M_ProductionLine pl ON pl.M_Production_ID = p.M_Production_ID
LEFT JOIN LBR_NotaFiscalLine nfl ON pl.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID
LEFT JOIN LBR_NotaFiscal nf ON nfl.LBR_NotaFiscal_ID = nf.LBR_NotaFiscal_ID
WHERE nf.LBR_NotaFiscal_ID = @LBR_ProductionGroup_ID@)',0,0,'Y',TO_DATE('2018-04-23 11:23:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:23:40','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','558ac1e6-6a48-40de-b2c4-cd507bed9df9')
;

-- 23/04/2018 11h23min55s BRT
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120262,Updated=TO_DATE('2018-04-23 11:23:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120001
;

-- 23/04/2018 11h26min31s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=1000019,Updated=TO_DATE('2018-04-23 11:26:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120261
;

-- 23/04/2018 11h27min43s BRT
UPDATE AD_Ref_Table SET WhereClause='LBR_ProductionGroup_ID IN 
(SELECT pg.LBR_ProductionGroup_ID FROM LBR_ProductionGroup pg
LEFT JOIN M_Production p ON pg.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID
LEFT JOIN M_ProductionLine pl ON pl.M_Production_ID = p.M_Production_ID
LEFT JOIN LBR_NotaFiscalLine nfl ON pl.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID
LEFT JOIN LBR_NotaFiscal nf ON nfl.LBR_NotaFiscal_ID = nf.LBR_NotaFiscal_ID
WHERE nf.LBR_NotaFiscal_ID = @LBR_NotaFiscal_ID@)',Updated=TO_DATE('2018-04-23 11:27:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120262
;

-- 23/04/2018 11h34min28s BRT
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy,IsDirected,Type,AD_RelationType_UU) VALUES (0,0,1120002,TO_DATE('2018-04-23 11:34:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Production Group <-> Invoice (Vendor)',TO_DATE('2018-04-23 11:34:28','YYYY-MM-DD HH24:MI:SS'),100,'N','I','90201093-cd20-4ed4-ae8a-9f2236bb4b9f')
;

-- 23/04/2018 11h35min6s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120263,'Production Group <-> Invoice (Vendor)','Finds Production Group From Invoice','T',0,0,'Y',TO_DATE('2018-04-23 11:35:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:35:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','1d879272-8969-4513-bf79-4230e4bf3dfe')
;

-- 23/04/2018 11h36min4s BRT
UPDATE AD_Reference SET Name='Invoice (Vendor) <-> Production Group',Updated=TO_DATE('2018-04-23 11:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120263
;

-- 23/04/2018 11h41min6s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120263,1120582,1129909,1129925,'LBR_ProductionGroup_ID IN 
(SELECT pg.LBR_ProductionGroup_ID FROM LBR_ProductionGroup pg
LEFT JOIN M_Production p ON pg.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID
LEFT JOIN M_ProductionLine pl ON pl.M_Production_ID = p.M_Production_ID
LEFT JOIN LBR_NotaFiscalLine nfl ON pl.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID
LEFT JOIN LBR_NotaFiscal nf ON nfl.LBR_NotaFiscal_ID = nf.LBR_NotaFiscal_ID
LEFT JOIN C_InvoiceLine il ON il.C_InvoiceLine_ID = nfl.C_InvoiceLine_ID
LEFT JOIN C_Invoice i ON i.C_Invoice_ID = il.C_Invoice_ID
WHERE i.C_Invoice_ID = @C_Invoice_ID@)',0,0,'Y',TO_DATE('2018-04-23 11:41:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:41:06','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','aba71aa9-c2c1-4e7a-9c95-f03ba6afdf32')
;

-- 23/04/2018 11h41min53s BRT
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120263,Updated=TO_DATE('2018-04-23 11:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120002
;

-- 23/04/2018 11h42min31s BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120264,'Production Group <-> Invoice (Vendor)','Finds Invoice From Production Group','T',0,0,'Y',TO_DATE('2018-04-23 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,'U','N','f85c3177-e88b-48ef-81e7-2501b10c52c8')
;

-- 23/04/2018 11h42min52s BRT
UPDATE AD_Reference SET EntityType='LBRA',Updated=TO_DATE('2018-04-23 11:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120264
;

-- 23/04/2018 11h46min0s BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,WhereClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120264,318,3484,3492,'C_Invoice_ID IN
(SELECT i.C_Invoice_ID FROM C_Invoice i
LEFT JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID
LEFT JOIN LBR_NotaFiscalLine nfl ON nfl.C_InvoiceLine_ID = il.C_InvoiceLine_ID
LEFT JOIN M_ProductionLine pl ON pl.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID
LEFT JOIN M_Production p ON pl.M_Production_ID = p.M_Production_ID
LEFT JOIN LBR_ProductionGroup pg ON pg.LBR_ProductionGroup_ID = p.LBR_ProductionGroup_ID
WHERE pg.LBR_ProductionGroup_ID=@LBR_ProductionGroup_ID@)',0,0,'Y',TO_DATE('2018-04-23 11:46:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 11:46:00','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','fd57400c-44f9-487c-a626-3e085cceb139')
;

-- 23/04/2018 11h46min27s BRT
UPDATE AD_RelationType SET AD_Reference_Source_ID=1120264,Updated=TO_DATE('2018-04-23 11:46:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120002
;

-- 23/04/2018 11h48min11s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=183,Updated=TO_DATE('2018-04-23 11:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120264
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 23/04/2018 14h34min54s BRT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' | @DocBaseType@=''POO'' | @DocBaseType@=''POG''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-04-23 14:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3071
;

-- 23/04/2018 14h37min6s BRT
UPDATE AD_Window SET IsSOTrx='N',Updated=TO_DATE('2018-04-23 14:37:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120133
;

-- 23/04/2018 14h37min19s BRT
UPDATE AD_Menu SET IsSOTrx='N',Updated=TO_DATE('2018-04-23 14:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120298
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 23/04/2018 19h12min49s BRT
INSERT INTO AD_Message (MsgType,MsgText,MsgTip,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Aqui você pode gerar uma Fatura de Cobrança, Nota Fiscal de Entrada de Produto Acabado e Notas Fiscais de Retorno de Insumos das Produções Individuais existentes nesse Pedido de Industrialização. Fatura de Cobrança será gerada apenas com os Produtos Acabados. Você poderá gerar 1 (uma) ou Várias Notas Fiscais de Retorno de Industrialização. O Produto Acabado sempre entrar na Primeira Nota Fiscal Emitida pelo Processo. A Fatura de Cobrança contém apenas os Produtos Acabado. Ela será gerada quando o processo for executado pela Primeira vez. Os Insumos desapareceram da Lista quando a Nota Fiscal correspondente a ele for emitida.',NULL,0,0,'Y',TO_DATE('2018-04-23 19:12:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-04-23 19:12:48','YYYY-MM-DD HH24:MI:SS'),100,1120045,'LBR_POGInvoiceHelp','LBRA','a11f5088-d240-45ae-b86e-ae1efdbf169e')
;

SELECT Register_Migration_Script ('201804241330_POGGenInvoiceForm.sql') FROM DUAL
;