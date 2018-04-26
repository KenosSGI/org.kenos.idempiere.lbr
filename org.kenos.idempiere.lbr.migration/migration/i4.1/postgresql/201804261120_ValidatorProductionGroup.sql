-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/04/2018 11h7min36s BRT
INSERT INTO AD_ModelValidator (AD_Client_ID,AD_ModelValidator_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive,Name,Description,EntityType,ModelValidationClass,SeqNo,AD_ModelValidator_UU) VALUES (0,1120017,0,TO_TIMESTAMP('2018-04-26 11:07:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-04-26 11:07:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Validator Production Group','Validator to Production Group and Production','LBRA','org.adempierelbr.validator.VLBRProductionGroup',10,'05bfd9f5-528c-4ead-8338-dc5d25402e2b')
;

SELECT Register_Migration_Script ('201804261120_ValidatorProductionGroup.sql') FROM DUAL
;