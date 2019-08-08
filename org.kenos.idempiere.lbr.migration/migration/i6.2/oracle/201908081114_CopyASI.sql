SET SQLBLANKLINES ON
SET DEFINE OFF

-- Campos para RH
-- 8 de ago de 2019 11:08:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (203314,0,0,'Y',TO_DATE('2019-08-08 11:08:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-08-08 11:08:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CopyASI','Copy Attributes','Copy Attributes Set Instance when copying Order Lines','Check if want the Attribute Set Instance to be copied when copying Order Lines','Copy Attributes','U','e7f5528d-3478-4b6b-b7d2-bd1525777282')
;

-- 8 de ago de 2019 11:08:37 BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=203314 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 8 de ago de 2019 11:08:37 BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Copiar Atributos',PrintName='Copiar Atributos',Description='Copia o Conjunto de Atributos',Help='Marque este campo caso queira copiar o Conjunto de Atributos ao copiar uma Linha de Pedido' WHERE AD_Element_ID=203314 AND AD_Language='pt_BR'
;

-- 8 de ago de 2019 11:11:07 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (200277,0,0,'Y',TO_DATE('2019-08-08 11:11:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-08-08 11:11:07','YYYY-MM-DD HH24:MI:SS'),100,'Copy Attributes','Copy Attributes Set Instance when copying Order Lines','Check if want the Attribute Set Instance to be copied when copying Order Lines',211,20,20,'N',0,'N','N','LBR_CopyASI','Y','U',203314,'c5f46a56-b492-495e-b500-8fce5961ec33','N')
;

-- 8 de ago de 2019 11:11:07 BRT
SELECT Register_Migration_Script ('201908081114_CopyASI.sql') FROM DUAL
;

