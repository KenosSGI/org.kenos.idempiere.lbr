SET SQLBLANKLINES ON
SET DEFINE OFF

UPDATE AD_Field SET DisplayLogic='@lbr_NFeStatus@=''215'' | @lbr_NFeStatus@=''539'' | @lbr_NFeStatus@=''204'' | @lbr_NFeStatus@=''344''' WHERE AD_Field_ID=1127176;

UPDATE AD_Field SET DisplayLogic='@lbr_NFeStatus@=''215'' | @lbr_NFeStatus@=''539'' | @lbr_NFeStatus@=''204'' | @lbr_NFeStatus@=''344''' WHERE AD_Field_ID=1127177;

SELECT Register_Migration_Script ('201804101000_ShowMsgErroNFeDuplicated.sql') FROM DUAL
;