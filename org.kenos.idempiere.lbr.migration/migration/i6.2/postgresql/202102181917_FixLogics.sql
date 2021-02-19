UPDATE AD_Column SET MandatoryLogic=NULL 
WHERE AD_Column_ID=1132514 AND MandatoryLogic='0'
;
UPDATE AD_Column SET ReadOnlyLogic='@AD_Client_ID@=0' 
WHERE AD_Column_ID IN (1983,2347,2348,2349,2350,3881,3883,5956,6735) AND ReadOnlyLogic='@AD_Client_ID=0'
;
UPDATE AD_Column SET ReadOnlyLogic=NULL 
WHERE AD_Column_ID=200452 AND ReadOnlyLogic='N'
;
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y''' 
WHERE AD_Column_ID=1001039 AND ReadOnlyLogic='@lbr_BPTypeBRIsValid=''Y'''
;
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y''' 
WHERE AD_Column_ID=1001039 AND ReadOnlyLogic='@lbr_BPTypeBRIsValid=''Y'''
;
UPDATE AD_Field SET DisplayLogic='@Processed@=''Y''' 
WHERE AD_Field_ID IN (10456,10457) AND DisplayLogic='Processed=Y'
;
UPDATE AD_Field SET DisplayLogic='@Type@=''D''|@Type@=''SQL''|@Type@=''SQM''' 
WHERE AD_Field_ID=50105 AND DisplayLogic='@Type@=''D''|Type@=''SQL''|Type@=''SQM'''
;
UPDATE AD_Field SET DisplayLogic='@Type@=''D''|@Type@=''SQL''' 
WHERE AD_Field_ID=50135 AND DisplayLogic='@Type@=''D''|Type@=''SQL'''
;
UPDATE AD_Field SET DisplayLogic='@lbr_CertType@!''R11'' & @lbr_CertType@!''N11''' 
WHERE AD_Field_ID IN (1100006,1100013) AND DisplayLogic='@lbr_CertType@!''R11'' & @ lbr_CertType@!''N11'''
;
UPDATE AD_Field SET DisplayLogic='@lbr_CertType@=''R11'' | @lbr_CertType@=''N11''' 
WHERE AD_Field_ID IN (1129949) AND DisplayLogic='@lbr_CertType@=''R11'' | @ lbr_CertType@=''N11'''
;
UPDATE AD_Field SET MandatoryLogic='@lbr_CertType@=''R11'' | @lbr_CertType@=''N11''' 
WHERE AD_Field_ID IN (1129949) AND MandatoryLogic='@lbr_CertType@=''R11'' | @ lbr_CertType@=''N11'''
;
SELECT Register_Migration_Script ('202102181917_FixLogics.sql') FROM DUAL
;