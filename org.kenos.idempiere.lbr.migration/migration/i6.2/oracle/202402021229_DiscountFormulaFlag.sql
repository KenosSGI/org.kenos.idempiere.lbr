SET SQLBLANKLINES ON
SET DEFINE OFF

-- 2 de fev de 2024 11:58:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133894,0,'IsDiscountAllowedOnTotal',1000026,'IsDiscountAllowedOnTotal','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2024-02-02 11:58:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 11:58:15','YYYY-MM-DD HH24:MI:SS'),100,52052,'Y','N','LBRA','N','N','N','Y','d54cc4f1-601a-419b-8054-58c818c59856','Y',0,'N','N','N')
;

-- 2 de fev de 2024 11:58:21 BRT
ALTER TABLE LBR_TaxFormula ADD IsDiscountAllowedOnTotal CHAR(1) DEFAULT 'Y' CHECK (IsDiscountAllowedOnTotal IN ('Y','N')) NOT NULL
;

-- 2 de fev de 2024 11:58:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131822,'IsDiscountAllowedOnTotal',1000019,1133894,'Y',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2024-02-02 11:58:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 11:58:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b71fbbdc-3656-4569-b7a5-dd24466b5ff4','Y',140,2,2)
;

-- 2 de fev de 2024 15:56:34 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120328,0,0,'Y',TO_DATE('2024-02-02 15:56:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 15:56:33','YYYY-MM-DD HH24:MI:SS'),100,'Apply Discount','N','LBR_ApplyDiscount','N','org.kenos.idempiere.lbr.base.process.ApplyDiscount','3','LBRA',0,0,'N','N','Y','N','8ded3a66-383c-4de0-b824-735c560b8d8d','P')
;

-- 2 de fev de 2024 15:57:39 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120404,'Order - DiscountType (LBR)','L',0,0,'Y',TO_DATE('2024-02-02 15:57:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 15:57:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','5027a27e-83f8-4a20-a215-689cbce85da1')
;

-- 2 de fev de 2024 15:59:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123017,'Flat Percent',1120404,'F',0,0,'Y',TO_DATE('2024-02-02 15:59:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 15:59:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c8d24766-af96-4e3a-9e5c-567e0cc7906b')
;

-- 2 de fev de 2024 15:59:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123018,'Amount',1120404,'A',0,0,'Y',TO_DATE('2024-02-02 15:59:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 15:59:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9978bf88-2c95-4acb-a17a-d87148d5363b')
;

-- 2 de fev de 2024 16:00:05 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120405,'Order - CumulativeLevel of Discount (LBR)','L',0,0,'Y',TO_DATE('2024-02-02 16:00:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:00:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','178af7e0-5278-42a8-b588-65abe8dae6ab')
;

-- 2 de fev de 2024 16:00:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123019,'Cummulative Discount',1120405,'C',0,0,'Y',TO_DATE('2024-02-02 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','62ac65ea-f955-44d6-bf19-c800f9602d3c')
;

-- 2 de fev de 2024 16:00:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123020,'Non-Accumulative Discount',1120405,'N',0,0,'Y',TO_DATE('2024-02-02 16:00:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:00:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','72eaba82-8e57-44d7-8706-044043c6a127')
;

-- 2 de fev de 2024 16:01:28 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120406,'Order - DistributionType of Discount (LBR)','L',0,0,'Y',TO_DATE('2024-02-02 16:01:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:01:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','d5e844fb-096c-478d-b51c-f6b4ae832fe4')
;

-- 2 de fev de 2024 16:01:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123021,'Distribute by Line Amount',1120406,'A',0,0,'Y',TO_DATE('2024-02-02 16:01:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:01:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9cefa78e-16c8-4583-89fe-6d0ec1808ccc')
;

-- 2 de fev de 2024 16:02:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123022,'Distribute by Weight',1120406,'W',0,0,'Y',TO_DATE('2024-02-02 16:02:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:02:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','df7f775f-f011-4599-8acf-a20f243f683c')
;

-- 2 de fev de 2024 16:02:33 BRT
UPDATE AD_Ref_List SET IsActive='N',Updated=TO_DATE('2024-02-02 16:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123022
;

-- 2 de fev de 2024 16:03:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123023,'Apply to Line with Highest Amount',1120406,'H',0,0,'Y',TO_DATE('2024-02-02 16:03:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:03:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c9238105-8c2d-4ea6-ad83-01e13f65dd52')
;

-- 2 de fev de 2024 16:04:26 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120641,0,0,'Y',TO_DATE('2024-02-02 16:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:04:26','YYYY-MM-DD HH24:MI:SS'),100,'Discount Type','Type of trade discount calculation','Type of procedure used to calculate the trade discount percentage',1120328,10,17,1120404,'N',0,'Y','A','DiscountType','Y','LBRA',1711,'429f887f-da1a-4b15-8cd5-787f3bd08c46','N')
;

-- 2 de fev de 2024 16:05:12 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120642,0,0,'Y',TO_DATE('2024-02-02 16:05:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:05:11','YYYY-MM-DD HH24:MI:SS'),100,'Distribution Type','Type of quantity distribution calculation using comparison qty and order qty as operand',1120328,20,17,1120406,'N',0,'Y','A','DistributionType','Y','LBRA',53810,'69a514ac-3274-4c7e-8f72-e7e035ede5a5','N')
;

-- 2 de fev de 2024 16:06:43 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120643,0,0,'Y',TO_DATE('2024-02-02 16:06:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:06:43','YYYY-MM-DD HH24:MI:SS'),100,'Accumulation Level','Level for accumulative calculations',1120328,30,17,1120405,'N',0,'Y','Y','CumulativeLevel','Y','LBRA',1710,'17df4e8f-d94f-4a11-9540-8f302238c214','N')
;

-- 2 de fev de 2024 16:07:04 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120644,0,0,'Y',TO_DATE('2024-02-02 16:07:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:07:04','YYYY-MM-DD HH24:MI:SS'),100,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120328,40,12,'N',0,'Y','0','Amount','Y','LBRA',1367,'3198f123-ee70-4601-b492-85ff86b626fb','N')
;

-- 2 de fev de 2024 16:07:20 BRT
UPDATE AD_Process_Para SET DisplayLogic='@DiscountType@=A',Updated=TO_DATE('2024-02-02 16:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120644
;

-- 2 de fev de 2024 16:11:49 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,VFormat,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted) VALUES (1120645,0,0,'Y',TO_DATE('2024-02-02 16:11:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:11:48','YYYY-MM-DD HH24:MI:SS'),100,'Percentage','Percent of the entire amount','Percentage of an amount (up to 100)',1120328,50,12,'N',0,'Y','0','0.00%','Percentage','Y','LBRA',2004,'@DiscountType@=F','8ad0cb4f-8e0e-4273-8d60-500515dd7e05','N')
;

-- 2 de fev de 2024 16:13:13 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2024-02-02 16:13:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ApplyDiscount','Y',1120026,'LBR_ApplyDiscount',TO_DATE('2024-02-02 16:13:12','YYYY-MM-DD HH24:MI:SS'),100,'N','c86785d1-1dfb-4a22-b8f3-2c99da36d284','W',294,1120328,'@Processed@=N',30)
;

-- 2 de fev de 2024 16:13:35 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2024-02-02 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ApplyDiscount','Y',1120027,'LBR_ApplyDiscount',TO_DATE('2024-02-02 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'N','7c4d5b46-326f-46f8-8beb-b399bb88be6e','W',186,1120328,'@Processed@=N',40)
;

-- 2 de fev de 2024 16:14:48 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Error saving taxes',0,0,'Y',TO_DATE('2024-02-02 16:14:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:14:48','YYYY-MM-DD HH24:MI:SS'),100,1120082,'LBR|ErrorSavingTaxes','LBRA','829c9cda-240c-45fd-a339-a52b8ed02721')
;

-- 2 de fev de 2024 16:16:21 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Discount Tax not found. Please make sure you have a Discount Tax (Tax Indicator = DISCOUNT) created and linked to this tax parent.',0,0,'Y',TO_DATE('2024-02-02 16:16:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-02 16:16:21','YYYY-MM-DD HH24:MI:SS'),100,1120083,'LBR|DiscountTaxNotFound','U','4896e18e-f8f5-42f4-a12b-1e75aae6f1e2')
;

-- 2 de fev de 2024 16:56:01 BRT
UPDATE AD_Process_Para SET DefaultValue='C',Updated=TO_DATE('2024-02-02 16:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120643
;

-- 5 de fev de 2024 15:25:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133895,0,'Limit price Discount %','Discount in percent to be subtracted from base, if negative it will be added to base price','Indicates the discount in percent to be subtracted from base, if negative it will be added to base price',156,'Limit_Discount','0',22,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_DATE('2024-02-05 15:24:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 15:24:59','YYYY-MM-DD HH24:MI:SS'),100,1236,'Y','N','LBRA','N','N','N','Y','53787660-2cff-41c7-94a9-6f8a7618e03a','Y',0,'N','N','N')
;

-- 5 de fev de 2024 15:25:07 BRT
ALTER TABLE AD_Role ADD Limit_Discount NUMBER DEFAULT 0
;

-- 5 de fev de 2024 15:25:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131823,'Limit price Discount %','Discount in percent to be subtracted from base, if negative it will be added to base price','Indicates the discount in percent to be subtracted from base, if negative it will be added to base price',119,1133895,'Y',22,450,'N','N','N','N',0,0,'Y',TO_DATE('2024-02-05 15:25:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 15:25:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','470307f0-ace6-4c38-9319-7e238fc4dad6','Y',450,2)
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131823
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205947
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11003
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5227
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=202366
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10813
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11257
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8312
;

-- 5 de fev de 2024 15:25:56 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8310
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8313
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8314
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8311
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11006
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12367
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12368
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11256
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50168
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50178
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50176
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50170
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50174
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50173
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50172
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50175
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50169
;

-- 5 de fev de 2024 15:25:57 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 15:25:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=50177
;

-- 5 de fev de 2024 15:29:48 BRT
UPDATE AD_Column SET ValueMin='0', ValueMax='1',Updated=TO_DATE('2024-02-05 15:29:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133895
;

-- 5 de fev de 2024 15:34:30 BRT
UPDATE AD_Message SET EntityType='LBRA',Updated=TO_DATE('2024-02-05 15:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120083
;

-- 5 de fev de 2024 15:36:44 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Discount applied exceeds the discount limit. You can review your discount or ask to another user apply them.',0,0,'Y',TO_DATE('2024-02-05 15:36:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 15:36:43','YYYY-MM-DD HH24:MI:SS'),100,1120084,'LBR|DiscountOverLimit','LBRA','bc285988-6fa9-4edc-a74b-fa93664b941b')
;

-- 5 de fev de 2024 16:00:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133896,0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',260,'DiscountAmt','0',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2024-02-05 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,1395,'Y','N','LBRA','N','N','N','Y','397de317-854c-4aa2-b3db-15d37174adf8','Y',0,'N','N','N')
;

-- 5 de fev de 2024 16:00:29 BRT
ALTER TABLE C_OrderLine ADD DiscountAmt NUMBER DEFAULT 0
;

-- 5 de fev de 2024 16:01:44 BRT
UPDATE AD_Column SET ReadOnlyLogic='@#LBRUserCanApplyDiscounts@=Y',Updated=TO_DATE('2024-02-05 16:01:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133896
;

-- 5 de fev de 2024 16:01:49 BRT
ALTER TABLE C_OrderLine MODIFY DiscountAmt NUMBER DEFAULT 0
;

-- 5 de fev de 2024 16:02:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133897,0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',333,'DiscountAmt','0',22,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2024-02-05 16:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 16:02:26','YYYY-MM-DD HH24:MI:SS'),100,1395,'Y','N','@#LBRUserCanApplyDiscounts@=Y','LBRA','N','N','N','Y','5921b63a-aa42-4a5d-bde6-738917da9966','Y',0,'N','N','N')
;

-- 5 de fev de 2024 16:02:29 BRT
ALTER TABLE C_InvoiceLine ADD DiscountAmt NUMBER DEFAULT 0
;

-- 5 de fev de 2024 16:02:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131824,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',293,1133896,'Y',22,30040,'N','N','N','N',0,0,'Y',TO_DATE('2024-02-05 16:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 16:02:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6004fb10-8629-4432-898f-e8fc31e22a56','Y',150,2)
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131824
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3397
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3383
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12174
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13652
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13653
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13690
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13658
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13659
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3416
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122733
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000235
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000234
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120315
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120316
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120321
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120322
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204763
;

-- 5 de fev de 2024 16:03:13 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106002
;

-- 5 de fev de 2024 16:03:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131825,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',187,1133896,'Y',22,20420,'N','N','N','N',0,0,'Y',TO_DATE('2024-02-05 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-05 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a61c2009-91b8-4a67-8df4-984232096900','Y',110,2)
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2117
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6570
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5385
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10828
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1133
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1135
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10829
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1138
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1137
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2115
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131825
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1141
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12745
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13644
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13645
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13691
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13650
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13651
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2880
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12744
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200272
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10332
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200271
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122718
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000233
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000232
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000450
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000451
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204766
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001050
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001051
;

-- 5 de fev de 2024 16:03:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 16:03:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106001
;

-- 5 de fev de 2024 16:29:42 BRT
UPDATE AD_Column SET FormatPattern='0.00%',Updated=TO_DATE('2024-02-05 16:29:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133895
;

-- 5 de fev de 2024 18:24:21 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-05 18:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131825
;

-- 5 de fev de 2024 18:25:57 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2024-02-05 18:25:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ApplyDiscount','Y',1120028,'LBR_ApplyDiscount',TO_DATE('2024-02-05 18:25:56','YYYY-MM-DD HH24:MI:SS'),100,'N','6658333c-ca2c-4f7a-90f3-edd171edb4d8','W',187,1120328,10)
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1574
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2595
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2117
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1135
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1133
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131825
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1138
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1137
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=6, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2115
;

-- 6 de fev de 2024 15:59:11 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 15:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1141
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1141
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1138
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1137
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2115
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13645
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13650
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13651
;

-- 6 de fev de 2024 16:00:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13691
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10332
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1119
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1574
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2595
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2117
;

-- 6 de fev de 2024 16:41:49 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6570
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5385
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10828
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1135
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1133
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12744
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10829
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131825
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1138
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1137
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310, AD_FieldGroup_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2880
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122718
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330, AD_FieldGroup_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2115
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=340, AD_FieldGroup_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000233
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=350, AD_FieldGroup_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000232
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1141
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12745
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13644
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13645
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13650
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13651
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13691
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200272
;

-- 6 de fev de 2024 16:41:50 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 16:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200271
;

-- 6 de fev de 2024 16:41:59 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000451
;

-- 6 de fev de 2024 16:41:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000451
;

-- 6 de fev de 2024 16:42:02 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000450
;

-- 6 de fev de 2024 16:42:02 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000450
;

-- 6 de fev de 2024 17:09:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,ColumnSQL,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133898,0,'Line Discount %','Line Discount as a percentage','The Line Discount Percent indicates the discount for this line as a percentage.',260,'LineDiscount',22,'N','N','N','N','N',0,'N',22,0,0,'Y',TO_DATE('2024-02-06 17:09:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-06 17:09:35','YYYY-MM-DD HH24:MI:SS'),100,1272,'N','N','LBRA','N','N','COALESCE(ROUND(C_OrderLine.DiscountAmt/NULLIF(C_OrderLine.LineNetAmt,0),4),0)','N','Y','5df916c5-ecda-48f2-8c2c-a02361ecb662','N',0,'N','N','N')
;

-- 6 de fev de 2024 17:11:24 BRT
UPDATE AD_Column SET FormatPattern='0.00%',Updated=TO_DATE('2024-02-06 17:11:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133898
;

-- 6 de fev de 2024 17:11:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131826,'Line Discount %','Line Discount as a percentage','The Line Discount Percent indicates the discount for this line as a percentage.',187,1133898,'Y',22,450,'N','N','N','N',0,0,'Y',TO_DATE('2024-02-06 17:11:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-02-06 17:11:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','35c68ea8-ad0a-4d41-8527-5b7e5bec5d71','Y',120,2)
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131826
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1138
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1137
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2880
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122718
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2115
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000233
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000232
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1141
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=12745
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13645
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13644
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13650
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13651
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13691
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200272
;

-- 6 de fev de 2024 17:12:42 BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200271
;

-- 6 de fev de 2024 17:13:53 BRT
UPDATE AD_Field SET DisplayLogic='@#LBRShowPriceListDiscount@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-02-06 17:13:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3124
;

-- 6 de fev de 2024 18:34:38 BRT
UPDATE AD_Process_Para SET DisplayLogic='@C_OrderLine_ID@=0',Updated=TO_DATE('2024-02-06 18:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120642
;

-- 2 de fev de 2024 11:58:50 BRT
SELECT Register_Migration_Script ('202402021229_DiscountFormulaFlag.sql') FROM DUAL
;