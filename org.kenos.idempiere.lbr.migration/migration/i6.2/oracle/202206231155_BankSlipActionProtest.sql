SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jun 23, 2022, 11:50:36 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123006,'Do Not Protest',1000007,'N',0,0,'Y',TO_DATE('2022-06-23 11:50:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:50:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f3d902ae-01d6-4ef4-abfd-09ef4113c60a')
;

-- Jun 23, 2022, 11:51:08 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123008,'Cancel Protest',1000007,'Z',0,0,'Y',TO_DATE('2022-06-23 11:51:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:51:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','68e5b82d-4842-4571-b9e1-31a32c0f01cf')
;

-- Jun 23, 2022, 11:52:57 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123009,'Do Not Protest Confirmation',NULL,1000007,'5',0,0,'Y',TO_DATE('2022-06-23 11:52:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:52:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5110945c-44f1-46e0-b07c-966fe332903d')
;

-- Jun 23, 2022, 11:54:08 AM BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123010,'Cancel Protest Confirmation',1000007,'6',0,0,'Y',TO_DATE('2022-06-23 11:54:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:54:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3ed3ed22-58a4-490d-bc6d-e5d707928b43')
;

-- Jun 23, 2022, 11:29:29 AM BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133778,0,'Protest Days',1120688,'LBR_ProtestDays','0',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_DATE('2022-06-23 11:29:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:29:28','YYYY-MM-DD HH24:MI:SS'),100,1123109,'Y','N','LBRA','N','N','N','Y','92fcc0fa-b72f-4b9f-95a6-cb9227af86db','Y',0,'N','N','N','N')
;

-- Jun 23, 2022, 11:29:33 AM BRT
ALTER TABLE LBR_BankSlipMov ADD LBR_ProtestDays NUMBER(10) DEFAULT 0
;

-- Jun 23, 2022, 11:29:55 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131728,'Protest Days',1120396,1133778,'Y',10,180,'N','N','N','N',0,0,'Y',TO_DATE('2022-06-23 11:29:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:29:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','543bbe5a-e5e6-4393-9d6e-3f8084a3ccca','Y',80,2)
;

-- Jun 23, 2022, 11:30:10 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131728
;

-- Jun 23, 2022, 11:30:25 AM BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131729,'Protest Days',1120394,1133778,'Y',10,180,'N','N','N','N',0,0,'Y',TO_DATE('2022-06-23 11:30:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 11:30:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5b014d02-db8d-4f04-9ba4-1a34ba214696','Y',70,2)
;

-- Jun 23, 2022, 11:30:35 AM BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131729
;

-- Jun 23, 2022, 11:30:40 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131729
;

-- Jun 23, 2022, 11:30:45 AM BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131728
;

-- Jun 23, 2022, 11:30:45 AM BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131725
;

-- Jun 23, 2022, 11:30:51 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-06-23 11:30:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131728
;

-- Jun 23, 2022, 11:31:26 AM BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-06-23 11:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131729
;

-- 23 de jun de 2022 09:34:07 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123396,0,0,'Y',TO_DATE('2022-06-23 09:33:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:33:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DocNoStrategy','Numbering Strategy',NULL,NULL,'Numbering Strategy','LBRA','99ed9615-7b01-4c95-8e70-2cdd609a3b4a')
;

-- 23 de jun de 2022 09:34:30 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120401,'LBR_DocNoStrategy','L',0,0,'Y',TO_DATE('2022-06-23 09:34:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:34:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','646fe26d-ae9b-4c5c-b92b-343f9f6459ea')
;

-- 23 de jun de 2022 09:35:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123003,'Nota Fiscal, Invoice or Bank Slip',1120401,'N',0,0,'Y',TO_DATE('2022-06-23 09:35:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:35:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f66cc3d5-4c5b-4319-bf06-e7ddf1b0daf8')
;

-- 23 de jun de 2022 09:35:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123004,'Invoice or Bank Slip',1120401,'I',0,0,'Y',TO_DATE('2022-06-23 09:35:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:35:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ac48a65b-a043-438a-9ab2-1f36cb1bed07')
;

-- 23 de jun de 2022 09:35:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123005,'Bank Slip only',1120401,'B',0,0,'Y',TO_DATE('2022-06-23 09:35:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:35:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','4ec41b01-59fc-4c41-8ab0-38bedd5567ae')
;

-- 23 de jun de 2022 09:36:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133777,0,'Numbering Strategy',1120687,'LBR_DocNoStrategy','B',1,'N','N','Y','N','N',0,'N',17,1120401,0,0,'Y',TO_DATE('2022-06-23 09:36:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:36:31','YYYY-MM-DD HH24:MI:SS'),100,1123396,'Y','N','U','N','N','N','Y','973a4038-ff18-46ae-a216-23fd1fa27d2f','Y',0,'N','N','N','N')
;

-- 23 de jun de 2022 09:36:35 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_DocNoStrategy CHAR(1) DEFAULT 'B' NOT NULL
;

-- 23 de jun de 2022 09:36:41 BRT
UPDATE AD_Column SET DefaultValue='I',Updated=TO_DATE('2022-06-23 09:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133777
;

-- 23 de jun de 2022 09:36:42 BRT
ALTER TABLE LBR_BankSlipContract MODIFY LBR_DocNoStrategy CHAR(1) DEFAULT 'I'
;

-- 23 de jun de 2022 09:36:42 BRT
UPDATE LBR_BankSlipContract SET LBR_DocNoStrategy='I' WHERE LBR_DocNoStrategy IS NULL
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_Element SET Description='This field defines the strategy to fill document number in Bank Slip and CNAB',Updated=TO_DATE('2022-06-23 09:37:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123396
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_Column SET ColumnName='LBR_DocNoStrategy', Name='Numbering Strategy', Description='This field defines the strategy to fill document number in Bank Slip and CNAB', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123396
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_DocNoStrategy', Name='Numbering Strategy', Description='This field defines the strategy to fill document number in Bank Slip and CNAB', Help=NULL, AD_Element_ID=1123396 WHERE UPPER(ColumnName)='LBR_DOCNOSTRATEGY' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_DocNoStrategy', Name='Numbering Strategy', Description='This field defines the strategy to fill document number in Bank Slip and CNAB', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123396 AND IsCentrallyMaintained='Y'
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_DocNoStrategy', Name='Numbering Strategy', Description='This field defines the strategy to fill document number in Bank Slip and CNAB', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123396 AND IsCentrallyMaintained='Y'
;

-- 23 de jun de 2022 09:37:18 BRT
UPDATE AD_Field SET Name='Numbering Strategy', Description='This field defines the strategy to fill document number in Bank Slip and CNAB', Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123396) AND IsCentrallyMaintained='Y'
;

-- 23 de jun de 2022 09:41:12 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2022-06-23 09:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133777
;

-- 23 de jun de 2022 09:41:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131727,'Numbering Strategy','This field defines the strategy to fill document number in Bank Slip and CNAB',1120393,1133777,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2022-06-23 09:41:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 09:41:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37523f0d-c321-41bd-ba10-39964679372a','Y',200,2)
;

-- 23 de jun de 2022 09:41:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-06-23 09:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131727
;

-- 23 de jun de 2022 09:41:45 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-06-23 09:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129690
;

-- 23 de jun de 2022 09:41:45 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-06-23 09:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129691
;

-- 23 de jun de 2022 09:42:07 BRT
UPDATE AD_Column SET DefaultValue='1',Updated=TO_DATE('2022-06-23 09:42:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132336
;

-- Jun 23, 2022, 12:02:19 PM BRT
UPDATE AD_Val_Rule SET Code='AD_Ref_List.Value IN (''P'', ''W'', ''D'', ''B'', ''N'', ''Z'')',Updated=TO_DATE('2022-06-23 12:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120211
;

-- 23 de jun de 2022 12:25:23 BRT
UPDATE AD_Process_Para SET Name='Write-off Amount', Description='Amount to write-off', Help='The Write Off Amount indicates the amount to be written off as uncollectible.', ColumnName='WriteOffAmt', AD_Element_ID=1450,Updated=TO_DATE('2022-06-23 12:25:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120613
;

-- 23 de jun de 2022 12:26:33 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic) VALUES (1120616,0,0,'Y',TO_DATE('2022-06-23 12:26:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-06-23 12:26:33','YYYY-MM-DD HH24:MI:SS'),100,'Protest Days',1120318,50,11,'N',1,'N','30','LBR_ProtestDays','Y','LBRA',1123109,'@lbr_OccurType@=P','f0385ad9-a87d-4742-a1d3-d8a6247d51fe','N','@lbr_OccurType@=P')
;

-- Jun 23, 2022, 12:02:19 PM BRT
SELECT Register_Migration_Script ('202206231155_BankSlipActionProtest.sql') FROM DUAL
;
