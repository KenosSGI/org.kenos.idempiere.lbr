SET SQLBLANKLINES ON
SET DEFINE OFF

-- 02/10/2018 19h39min6s BRT
UPDATE AD_Process_Para SET DefaultValue='@SQL=SELECT (CASE WHEN ''@lbr_NFModel@''=''S1'' THEN COALESCE (LBR_EMailNFSe,lbr_EMailNFe) ELSE COALESCE (lbr_EMailNFe,lbr_EMailNFe) END) FROM C_BPartner WHERE C_BPartner_ID=@C_BPartner_ID@',Updated=TO_DATE('2018-10-02 19:39:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120237
;

SELECT Register_Migration_Script ('201810021940_FixNFSeEmailParameter.sql') FROM DUAL
;