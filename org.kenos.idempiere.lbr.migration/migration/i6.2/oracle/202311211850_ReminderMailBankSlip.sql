SET SQLBLANKLINES ON
SET DEFINE OFF

-- 21 de nov de 2023 18:15:35 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120327,0,0,'Y',TO_DATE('2023-11-21 18:15:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-21 18:15:34','YYYY-MM-DD HH24:MI:SS'),100,'Reminder Bank Slip Due','Send a reminder e-mail when bank slip is about to due','N','ReminderEmail','N','org.kenos.idempiere.lbr.bankslip.process.ReminderEmail','3','LBRA',0,0,'N','N','Y','N','b96449b7-3e18-4114-a4da-ec4d3d0d6290','P')
;

-- 21 de nov de 2023 18:16:01 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120636,0,0,'Y',TO_DATE('2023-11-21 18:16:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-21 18:16:00','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120327,10,19,'N',0,'N','AD_Org_ID','Y','LBRA',113,'234d6ae4-e4ef-4569-bd5b-0d408d9426ae','N')
;

-- 21 de nov de 2023 18:16:40 BRT
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=322,Updated=TO_DATE('2023-11-21 18:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120636
;

-- 21 de nov de 2023 18:17:18 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120637,0,0,'Y',TO_DATE('2023-11-21 18:17:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-21 18:17:18','YYYY-MM-DD HH24:MI:SS'),100,'Mail Template','Text templates for mailings','The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.',1120327,20,19,'N',0,'Y','R_MailText_ID','Y','LBRA',1515,'9d9b60cf-c9e1-4c5c-b6a0-099c8628c39d','N')
;

-- 21 de nov de 2023 18:18:06 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120638,0,0,'Y',TO_DATE('2023-11-21 18:18:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-21 18:18:06','YYYY-MM-DD HH24:MI:SS'),100,'Days due','Number of days due (negative: due in number of days)',1120327,30,11,'N',0,'N','0','DaysDue','Y','LBRA',1496,'2ea4de4f-b80e-471e-8ebe-2dc541f76f19','N')
;

-- 21 de nov de 2023 18:18:06 BRT
SELECT Register_Migration_Script ('202311211850_ReminderMailBankSlip.sql') FROM DUAL
;
