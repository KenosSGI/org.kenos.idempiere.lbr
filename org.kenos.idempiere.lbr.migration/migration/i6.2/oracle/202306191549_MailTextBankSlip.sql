SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de jun de 2023 15:47:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133807,0,'Mail Template','Text templates for mailings','The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',1120690,'R_MailText_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2023-06-19 15:47:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-19 15:47:15','YYYY-MM-DD HH24:MI:SS'),100,1515,'Y','N','LBRA','N','N','N','Y','710d44cc-4db8-4182-ac1a-ae422185b305','Y',0,'N','N','N')
;

-- 19 de jun de 2023 15:47:21 BRT
UPDATE AD_Column SET FKConstraintName='RMailText_LBRBankSlipConfig', FKConstraintType='N',Updated=TO_DATE('2023-06-19 15:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133807
;

-- 19 de jun de 2023 15:47:21 BRT
ALTER TABLE LBR_BankSlipConfig ADD R_MailText_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de jun de 2023 15:47:21 BRT
ALTER TABLE LBR_BankSlipConfig ADD CONSTRAINT RMailText_LBRBankSlipConfig FOREIGN KEY (R_MailText_ID) REFERENCES r_mailtext(r_mailtext_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de jun de 2023 15:47:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131763,'Mail Template','Text templates for mailings','The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',1120397,1133807,'Y',10,220,'N','N','N','N',0,0,'Y',TO_DATE('2023-06-19 15:47:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-19 15:47:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','64a93cc7-f043-4db1-8d59-bea13df851cc','Y',230,2)
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131763
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129794
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129797
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129798
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129799
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129800
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129801
;

-- 19 de jun de 2023 15:48:15 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129802
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129803
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129804
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129805
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129806
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129807
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129808
;

-- 19 de jun de 2023 15:48:16 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-19 15:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129809
;

-- 19 de jun de 2023 16:23:53 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120324,0,0,'Y',TO_DATE('2023-06-19 16:23:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-19 16:23:52','YYYY-MM-DD HH24:MI:SS'),100,'Email Bank Slip','This process will send by e-mail the selected bank slip','N','EmailBankSlip','N','org.kenos.idempiere.lbr.bankslip.process.EmailBankSlip','3','U',0,0,'N','N','Y','N','da63d19f-8036-4823-8a29-593c1247c888','P')
;

-- 19 de jun de 2023 16:27:44 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120627,0,0,'Y',TO_DATE('2023-06-19 16:27:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-19 16:27:44','YYYY-MM-DD HH24:MI:SS'),100,'EMail Address','Electronic Mail Address','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.',1120324,10,10,'N',0,'Y','@SQL=SELECT COALESCE (LBR_EMailBilling,LBR_EMailNFSe,lbr_EMailNFe) FROM C_BPartner WHERE C_BPartner_ID=@C_BPartner_ID@','EMail','Y','LBRA',881,'c068e486-50e4-4797-94ec-f5c643782656','N')
;

-- 19 de jun de 2023 16:28:45 BRT
UPDATE AD_Process SET Value='LBR_EmailBankSlip',Updated=TO_DATE('2023-06-19 16:28:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120324
;

-- 19 de jun de 2023 16:29:10 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_DATE('2023-06-19 16:29:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EmailBankSlip','Y',1120025,'LBR_EmailBankSlip',TO_DATE('2023-06-19 16:29:10','YYYY-MM-DD HH24:MI:SS'),100,'N','aa7c4f19-d42f-44c5-a4d6-6ebe0e21f2e9','W',1120398,1120324,'@DocStatus@=CO',20)
;

-- 19 de jun de 2023 16:29:26 BRT
UPDATE AD_Process SET EntityType='LBRA',Updated=TO_DATE('2023-06-19 16:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120324
;

-- 19 de jun de 2023 15:48:16 BRT
SELECT Register_Migration_Script ('202306191549_MailTextBankSlip.sql') FROM DUAL
;
