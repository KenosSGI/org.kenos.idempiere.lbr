SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de abr de 2022 12:00:12 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Could not find any Bank Slip Contract',0,0,'Y',TO_DATE('2022-04-20 12:00:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-20 12:00:11','YYYY-MM-DD HH24:MI:SS'),100,1120074,'LBR_NoBankSlipContract','LBRA','dcd87f6b-dae4-44ca-885c-5106d1259989')
;

-- 20 de abr de 2022 12:01:04 BRT
INSERT INTO AD_Message (MsgType,MsgText,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Message_ID,Value,EntityType,AD_Message_UU) VALUES ('E','Could not find Bank Slip Document Type',0,0,'Y',TO_DATE('2022-04-20 12:01:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-20 12:01:04','YYYY-MM-DD HH24:MI:SS'),100,1120075,'LBR_NoBankSlipDocType','LBRA','fe45841a-a640-44cb-8c96-32acb41d3272')
;

-- 20 de abr de 2022 12:01:04 BRT
SELECT Register_Migration_Script ('202204201204_BankSlipMsg.sql') FROM DUAL
;