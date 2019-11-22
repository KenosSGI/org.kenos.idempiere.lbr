-- 22 de nov de 2019 17:04:11 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120488,0,0,'Y',TO_TIMESTAMP('2019-11-22 17:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-22 17:04:10','YYYY-MM-DD HH24:MI:SS'),100,'Update NFe with protocol data','Update the NFe with protocol data',1120216,80,20,'N',1,'Y','N','LBR_UpdateNFe','Y','U',1122338,'c6146cd8-19db-4577-9bb9-83aa967c784f','N')
;

-- 22 de nov de 2019 17:04:11 BRT
SELECT Register_Migration_Script ('201911221706_UpdateNFInut.sql') FROM DUAL
;

