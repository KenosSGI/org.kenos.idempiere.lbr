-- 10 de mar de 2021 16:52:35 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Show Inter-Company Invoices',0,0,'Y',TO_TIMESTAMP('2021-03-10 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-10 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,1120056,'LBR_InterCompany','LBRA','1e07307b-5e97-436b-a1a3-70be515e3377')
;

-- 10 de mar de 2021 16:52:35 BRT
SELECT Register_Migration_Script ('202103101727_PaySelectMessage.sql') FROM DUAL
;

