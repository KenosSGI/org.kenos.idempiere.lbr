-- 22/01/2018 19h9min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,DisplayLogic,AD_Process_Para_UU,IsEncrypted,MandatoryLogic) VALUES (1120408,0,0,'Y',TO_TIMESTAMP('2018-01-22 19:09:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-22 19:09:50','YYYY-MM-DD HH24:MI:SS'),100,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120212,55,19,166,'N',271,0,'N','@M_PriceList_ID@','M_PriceList_ID','Y','LBRA',449,'@LBR_EnforcePriceList@=Y','6a2af15e-5a9f-4ed3-aab4-1b050d1a5cac','N','@LBR_EnforcePriceList@=Y')
;

-- 30/01/2018 11h31min27s BRST
UPDATE AD_Process_Para SET DisplayLogic='@LBR_EnforcePriceList@=N',Updated=TO_TIMESTAMP('2018-01-30 11:31:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120404
;

-- 30/01/2018 11h31min42s BRST
UPDATE AD_Process_Para SET DisplayLogic='@LBR_DistributeFreight@=N',Updated=TO_TIMESTAMP('2018-01-30 11:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120405
;

SELECT Register_Migration_Script ('201801291915_ReprocessOrderPriceList.sql') FROM DUAL
;
