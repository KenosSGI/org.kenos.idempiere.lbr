SET SQLBLANKLINES ON
SET DEFINE OFF

-- Export XML - Email sent parameter
-- Jun 18, 2018 3:38:08 PM BRT
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_DATE('2018-06-18 15:53:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120346
;

-- Jun 18, 2018 3:38:08 PM BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120419,0,0,'Y',TO_DATE('2018-06-18 15:38:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-18 15:38:07','YYYY-MM-DD HH24:MI:SS'),100,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1120163,90,17,319,'N',0,'N','LBR_EMailSent','Y','LBRA',1121729,'540f4998-8b9a-4160-9db1-29338812d585','N')
;

-- Jun 18, 2018 3:38:08 PM BRT
SELECT Register_Migration_Script ('201806181539_ExportXMLEmailParam.sql') FROM DUAL
;

