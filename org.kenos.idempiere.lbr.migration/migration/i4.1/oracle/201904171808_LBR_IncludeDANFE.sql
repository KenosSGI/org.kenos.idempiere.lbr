SET SQLBLANKLINES ON
SET DEFINE OFF

-- Campos para RH
-- 17/04/2019 18h4min43s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1122874,0,0,'Y',TO_DATE('2019-04-17 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-04-17 18:04:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IncludeDANFE','Include DANFE','Include DANFE in XML Export','Include DANFE','LBRA','b77efdde-bd56-40f6-8c3c-3d57d7d08495')
;
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122874 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/04/2019 18h6min10s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120469,0,0,'Y',TO_DATE('2019-04-17 18:06:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-04-17 18:06:10','YYYY-MM-DD HH24:MI:SS'),100,'Include DANFE','Include DANFE in XML Export',1120163,110,20,'N',0,'N','N','LBR_IncludeDANFE','Y','LBRA',1122874,'4c07e95d-3a1e-4554-83bb-0664306d3b9d','N')
;
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120469 AND EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_Para_ID!=t.AD_Process_Para_ID)
;

SELECT Register_Migration_Script ('201904171808_LBR_IncludeDANFE.sql') FROM DUAL
;
