-- 16/01/2018 18h5min30s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122433,0,0,'Y',TO_TIMESTAMP('2018-01-16 18:05:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-16 18:05:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR_UnreserveStock','Unreserve Stock','Unreserve Stock','LBRA','75e845d3-3fca-48f5-8bf6-7550fa9fffea')
;

-- 16/01/2018 18h6min49s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120406,0,0,'Y',TO_TIMESTAMP('2018-01-16 18:06:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-16 18:06:49','YYYY-MM-DD HH24:MI:SS'),100,'Unreserve Stock',1120212,60,20,'N',1,'Y','N','LBR_UnreserveStock','Y','LBRA',1122433,'ec6b8f34-db8f-4430-a362-1dbc8e4e26ef','N')
;

SELECT Register_Migration_Script ('201801161800_ReprocessOrderUnreserve.sql') FROM DUAL
;
