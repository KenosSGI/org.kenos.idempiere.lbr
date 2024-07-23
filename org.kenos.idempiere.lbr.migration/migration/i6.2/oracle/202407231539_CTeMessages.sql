SET SQLBLANKLINES ON
SET DEFINE OFF

-- 23 de jul de 2024 14:50:28 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Retrieving DF-e from SeFaz',0,0,'Y',TO_DATE('2024-07-23 14:50:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 14:50:26','YYYY-MM-DD HH24:MI:SS'),100,1120086,'LBR_CTePayloadRetrieve','LBRA','e2cd13af-4920-406f-a00b-22d0aeadcded')
;

-- 23 de jul de 2024 14:51:21 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','DF-e (CT-e) payload processing',0,0,'Y',TO_DATE('2024-07-23 14:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 14:51:20','YYYY-MM-DD HH24:MI:SS'),100,1120087,'LBR_CTePayloadProcessing','LBRA','9e6752ea-c974-46d2-aa92-04b15fb07a05')
;

-- 23 de jul de 2024 14:52:13 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('I','Importing DF-e (CT-e) documents and events',0,0,'Y',TO_DATE('2024-07-23 14:52:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 14:52:12','YYYY-MM-DD HH24:MI:SS'),100,1120088,'LBR_CTeReceivedProcessing','LBRA','dc8b0374-8cb5-4d62-8284-7dd5dee99d85')
;

-- 23 de jul de 2024 14:54:13 BRT
UPDATE AD_Message SET MsgText='Retrieving DF-e (CT-e) from SeFaz',Updated=TO_DATE('2024-07-23 14:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120086
;

-- 23 de jul de 2024 14:54:13 BRT
SELECT Register_Migration_Script ('202407231539_CTeMessages.sql') FROM DUAL
;