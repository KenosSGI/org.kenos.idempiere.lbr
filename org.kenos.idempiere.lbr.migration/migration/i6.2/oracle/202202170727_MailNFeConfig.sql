SET SQLBLANKLINES ON
SET DEFINE OFF

-- 16 de fev de 2022 18:39:01 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2022-02-16 18:39:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131556
;

-- 16 de fev de 2022 18:41:15 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120398,'LBR_NFConfig - SendEMail','L',0,0,'Y',TO_DATE('2022-02-16 18:41:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:41:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','ddbf7879-4487-4079-a9fe-550e2fc3c6f5')
;

-- 16 de fev de 2022 18:41:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122974,'Do not send e-mail',1120398,'N',0,0,'Y',TO_DATE('2022-02-16 18:41:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:41:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f31a8928-1a7a-4c87-9699-a36625121363')
;

-- 16 de fev de 2022 18:42:17 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122975,'Send immediatelly',1120398,'Y',0,0,'Y',TO_DATE('2022-02-16 18:42:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:42:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b2b5f05d-b1b9-4626-8277-17a873db0dfb')
;

-- 16 de fev de 2022 18:42:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122976,'Automatic (agent)',1120398,'A',0,0,'Y',TO_DATE('2022-02-16 18:42:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:42:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','69ca1337-be95-4154-9ce7-6e3eaf0f79c9')
;

-- 16 de fev de 2022 18:43:18 BRT
UPDATE AD_Ref_List SET Name='Send immediately',Updated=TO_DATE('2022-02-16 18:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122975
;

-- 16 de fev de 2022 18:43:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133761,0,'Send EMail','Enable sending Document EMail','Send emails with document attached (e.g. Invoice, Delivery Note, etc.)',1120547,'SendEMail','A',1,'N','N','N','N','N',0,'N',17,1120398,0,0,'Y',TO_DATE('2022-02-16 18:43:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:43:46','YYYY-MM-DD HH24:MI:SS'),100,1978,'N','N','LBRA','N','N','N','Y','8bb318bb-d7ab-46ce-9f65-0e444a746741','Y',0,'N','N','N')
;

-- 16 de fev de 2022 18:43:51 BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_DATE('2022-02-16 18:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133761
;

-- 16 de fev de 2022 18:43:53 BRT
ALTER TABLE LBR_NFConfig ADD SendEMail CHAR(1) DEFAULT NULL 
;

-- 16 de fev de 2022 18:43:58 BRT
UPDATE AD_Column SET DefaultValue='A',Updated=TO_DATE('2022-02-16 18:43:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133761
;

-- 16 de fev de 2022 18:44:02 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2022-02-16 18:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133761
;

-- 16 de fev de 2022 18:44:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133762,0,'From EMail','Full EMail address used to send requests - e.g. edi@organization.com',1120547,'EMail_From',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2022-02-16 18:44:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:44:39','YYYY-MM-DD HH24:MI:SS'),100,1265,'Y','N','LBRA','N','N','N','Y','fc62dfde-6160-436d-8480-079f5713f914','Y',0,'N','N','N')
;

-- 16 de fev de 2022 18:44:41 BRT
ALTER TABLE LBR_NFConfig ADD EMail_From VARCHAR2(60) DEFAULT NULL 
;

-- 16 de fev de 2022 18:44:59 BRT
ALTER TABLE LBR_NFConfig MODIFY SendEMail CHAR(1) DEFAULT 'A'
;

-- 16 de fev de 2022 18:46:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133763,0,'To EMail','EMail address to send requests to - e.g. edi@manufacturer.com ',1120547,'EMail_To',512,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2022-02-16 18:46:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:46:48','YYYY-MM-DD HH24:MI:SS'),100,1269,'Y','N','U','N','N','N','Y','3fac75f3-6414-463e-93dc-3fc7d05cad22','Y',0,'N','N','N')
;

-- 16 de fev de 2022 18:46:52 BRT
ALTER TABLE LBR_NFConfig ADD EMail_To VARCHAR2(512) DEFAULT NULL 
;

-- 16 de fev de 2022 18:47:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133764,0,'Delivery Confirmation','EMail Delivery confirmation',1120547,'DeliveryConfirmation','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2022-02-16 18:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:47:35','YYYY-MM-DD HH24:MI:SS'),100,1950,'N','N','LBRA','N','N','N','Y','0aaa87a5-8f44-4198-ad8a-0e3b17732489','Y',0,'N','N','N')
;

-- 16 de fev de 2022 18:47:37 BRT
ALTER TABLE LBR_NFConfig ADD DeliveryConfirmation CHAR(1) DEFAULT 'N' CHECK (DeliveryConfirmation IN ('Y','N')) NOT NULL
;

-- 16 de fev de 2022 18:47:47 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2022-02-16 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133763
;

-- 16 de fev de 2022 18:47:51 BRT
ALTER TABLE LBR_NFConfig MODIFY EMail_To VARCHAR2(512) DEFAULT NULL 
;

-- 16 de fev de 2022 18:48:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133765,0,'Mail Template','Text templates for mailings','The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',1120547,'R_MailText_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2022-02-16 18:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:48:24','YYYY-MM-DD HH24:MI:SS'),100,1515,'Y','N','LBRA','N','N','N','Y','0e582e7d-0c31-4931-9bf7-2019a66e1b11','Y',0,'N','N','N')
;

-- 16 de fev de 2022 18:48:28 BRT
UPDATE AD_Column SET FKConstraintName='RMailText_LBRNFConfig', FKConstraintType='N',Updated=TO_DATE('2022-02-16 18:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133765
;

-- 16 de fev de 2022 18:48:28 BRT
ALTER TABLE LBR_NFConfig ADD R_MailText_ID NUMBER(10) DEFAULT NULL 
;

-- 16 de fev de 2022 18:48:28 BRT
ALTER TABLE LBR_NFConfig ADD CONSTRAINT RMailText_LBRNFConfig FOREIGN KEY (R_MailText_ID) REFERENCES r_mailtext(r_mailtext_id) DEFERRABLE INITIALLY DEFERRED
;

-- 16 de fev de 2022 18:48:40 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2022-02-16 18:48:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133764
;

-- 16 de fev de 2022 18:51:51 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120399,'LBR_NotaFiscal - IsMailSent','L',0,0,'Y',TO_DATE('2022-02-16 18:51:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:51:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','0fb49a40-ccc9-43ea-9516-25abb0f34c24')
;

-- 16 de fev de 2022 18:52:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122977,'Mail sent',1120399,'Y',0,0,'Y',TO_DATE('2022-02-16 18:52:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:52:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a97fb27d-3dd3-45b9-a45e-7dd18882bcbd')
;

-- 16 de fev de 2022 18:52:19 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122978,'Not ready to send',1120399,'N',0,0,'Y',TO_DATE('2022-02-16 18:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:52:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','6115e8e5-7f05-40d2-9786-2470d07ce42b')
;

-- 16 de fev de 2022 18:52:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122979,'Scheduled',1120399,'S',0,0,'Y',TO_DATE('2022-02-16 18:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:52:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c404edb5-5ace-44fc-a409-38068067191f')
;

-- 16 de fev de 2022 18:52:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122980,'Temporary fail',1120399,'T',0,0,'Y',TO_DATE('2022-02-16 18:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:52:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5a523e48-6aa8-44d0-992a-f3a9acef9d0a')
;

-- 16 de fev de 2022 18:53:21 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122981,'Permanently fail ',1120399,'P',0,0,'Y',TO_DATE('2022-02-16 18:53:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:53:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','dff38beb-b877-41fe-947f-f169773340d3')
;

-- 16 de fev de 2022 18:53:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122982,'Disabled',1120399,'X',0,0,'Y',TO_DATE('2022-02-16 18:53:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:53:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9485b11f-eb2f-4913-97dd-d8db6cdb2bae')
;

-- 16 de fev de 2022 18:55:39 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120399,Updated=TO_DATE('2022-02-16 18:55:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126600
;

-- 16 de fev de 2022 18:55:46 BRT
UPDATE AD_Reference SET Name='LBR_NotaFiscal - LBR_EMailSent',Updated=TO_DATE('2022-02-16 18:55:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120399
;

-- 16 de fev de 2022 18:55:51 BRT
ALTER TABLE LBR_NotaFiscal MODIFY LBR_EMailSent CHAR(1) DEFAULT 'N'
;

-- 16 de fev de 2022 18:55:51 BRT
UPDATE LBR_NotaFiscal SET LBR_EMailSent='N' WHERE LBR_EMailSent IS NULL
;

-- 16 de fev de 2022 18:57:16 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:57:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125370
;

-- 16 de fev de 2022 18:58:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131699,'Send EMail','Enable sending Document EMail','Send emails with document attached (e.g. Invoice, Delivery Note, etc.)',1120216,1133761,'Y',1,230,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-16 18:58:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:58:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','45f0f4e6-e20f-40ac-9020-7a672840b18f','Y',191,2)
;

-- 16 de fev de 2022 18:58:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131700,'From EMail','Full EMail address used to send requests - e.g. edi@organization.com',1120216,1133762,'Y',60,240,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-16 18:58:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:58:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c4fb2b5-42a9-463e-bb70-a4b3bef47c60','Y',201,5)
;

-- 16 de fev de 2022 18:58:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131701,'To EMail','EMail address to send requests to - e.g. edi@manufacturer.com ',1120216,1133763,'Y',512,250,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-16 18:58:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:58:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a1288e8b-740e-4e31-b114-a97df0bb2a4a','Y',211,5)
;

-- 16 de fev de 2022 18:58:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131702,'Delivery Confirmation','EMail Delivery confirmation',1120216,1133764,'Y',1,260,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-16 18:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:58:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e6883c0-9d1f-441b-926f-0b0458cec589','Y',221,2,2)
;

-- 16 de fev de 2022 18:58:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131703,'Mail Template','Text templates for mailings','The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',1120216,1133765,'Y',10,270,'N','N','N','N',0,0,'Y',TO_DATE('2022-02-16 18:58:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 18:58:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a1c29430-2e2b-400f-b82e-d495b349bd7a','Y',231,2)
;

-- 16 de fev de 2022 18:59:26 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131699
;

-- 16 de fev de 2022 18:59:26 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131700
;

-- 16 de fev de 2022 18:59:26 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131701
;

-- 16 de fev de 2022 18:59:26 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131703
;

-- 16 de fev de 2022 18:59:26 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131702
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131389
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131390
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128192
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128172
;

-- 16 de fev de 2022 18:59:27 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 18:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128171
;

-- 16 de fev de 2022 19:00:04 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120096,0,0,'Y',TO_DATE('2022-02-16 19:00:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 19:00:04','YYYY-MM-DD HH24:MI:SS'),100,'Email','LBRA','C','N','3414c102-7ec1-46aa-8455-665d806d0160')
;

-- 16 de fev de 2022 19:00:12 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120096, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:00:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131699
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131389
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131390
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 16 de fev de 2022 19:01:03 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131699
;

-- 16 de fev de 2022 19:01:04 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131700
;

-- 16 de fev de 2022 19:01:04 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131701
;

-- 16 de fev de 2022 19:01:04 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131703
;

-- 16 de fev de 2022 19:01:04 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-02-16 19:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131702
;

-- 16 de fev de 2022 19:07:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122983,'Re-Activate',1120211,'RE',0,0,'Y',TO_DATE('2022-02-16 19:07:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-02-16 19:07:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b5c1e03c-687f-48ae-a0c5-12ab367a08f7')
;

-- 16 de fev de 2022 19:08:37 BRT
UPDATE AD_Ref_List SET Name='ReActivate',Updated=TO_DATE('2022-02-16 19:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122983
;

-- 16 de fev de 2022 19:08:37 BRT
SELECT Register_Migration_Script ('202202170727_MailNFeConfig.sql') FROM DUAL
;

