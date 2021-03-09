-- 9 de mar de 2021 10:27:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133131,0,'Cod. Cidade (IBGE)','Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)',1000028,'lbr_CityCode',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:27:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:27:47','YYYY-MM-DD HH24:MI:SS'),100,1000650,'Y','N','LBRA','N','N','N','Y','d58e03a1-c225-46e5-8c23-f0fe4e6776b9','Y',0,'N','N','N')
;

-- 9 de mar de 2021 10:29:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133132,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1000028,1000003,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:29:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:29:21','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','N','N','Y','36c2ed39-fb84-40f6-abd7-1fb3fbef77c4','Y',0,'N','N','N','N')
;

-- 9 de mar de 2021 10:29:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133133,0,'City','City','City in a country',1000028,1000009,'C_City_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:29:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:29:44','YYYY-MM-DD HH24:MI:SS'),100,1830,'N','N','LBRA','N','N','N','Y','0d80a2ac-de72-463f-8b57-213b3bc8f9d2','Y',0,'N','N','N')
;

-- 9 de mar de 2021 10:30:33 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2021-03-09 10:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133133
;

-- 9 de mar de 2021 10:30:36 BRT
UPDATE AD_Column SET FKConstraintName='CCity_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-03-09 10:30:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133133
;

-- 9 de mar de 2021 10:30:36 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_City_ID NUMERIC(10) DEFAULT NULL 
;

-- 9 de mar de 2021 10:30:36 BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CCity_LBRNotaFiscalLine FOREIGN KEY (C_City_ID) REFERENCES c_city(c_city_id) DEFERRABLE INITIALLY DEFERRED
;

-- 9 de mar de 2021 10:30:47 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNotaFiscalLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-03-09 10:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133132
;

-- 9 de mar de 2021 10:30:47 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- 9 de mar de 2021 10:30:47 BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT CRegion_LBRNotaFiscalLine FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 9 de mar de 2021 10:31:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133135,0,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1000028,'lbr_ServiceCode',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:31:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:31:11','YYYY-MM-DD HH24:MI:SS'),100,1100059,'Y','N','LBRA','N','N','N','Y','cdbb755a-9e6d-4b56-b3fa-62889f60cd8b','Y',0,'N','N','N')
;

-- 9 de mar de 2021 10:31:14 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN lbr_ServiceCode VARCHAR(20) DEFAULT NULL 
;

-- 9 de mar de 2021 10:31:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123302,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:31:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:31:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_StimulusISS','Stimulus ISS',NULL,NULL,'Stimulus ISS','LBRA','0e95d6d8-2d57-49e3-907c-a74a636d5b48')
;

-- 9 de mar de 2021 10:32:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133136,0,'Stimulus ISS',1000028,'LBR_StimulusISS','N',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:32:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:32:42','YYYY-MM-DD HH24:MI:SS'),100,1123302,'Y','N','LBRA','N','N','N','Y','ba49dd55-af23-4840-b8bb-a599bb9aa337','Y',0,'N','N','N','N')
;

-- 9 de mar de 2021 10:32:47 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_StimulusISS CHAR(1) DEFAULT 'N' 
;

-- 9 de mar de 2021 10:33:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130575,'Cod. Cidade (IBGE)','Código da Cidade do IBGE (Institudo Brasileiro de Geografia e Estatística)',1000021,1133131,'Y',10,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-09 10:33:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:33:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78792d8b-e363-42c3-a3ec-e57489ef3ad5','Y',400,2)
;

-- 9 de mar de 2021 10:33:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130576,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1000021,1133132,'Y',10,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-09 10:33:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:33:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78850286-d015-46ed-9cd7-6c3ad66e772f','Y',410,2)
;

-- 9 de mar de 2021 10:33:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130577,'City','City','City in a country',1000021,1133133,'Y',10,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','49baf53c-e4df-4698-8ab8-a6a68ce3e5ef','Y',420,2)
;

-- 9 de mar de 2021 10:33:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130578,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1000021,1133135,'Y',20,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','67765e67-1f78-46fe-9cae-8540f28ffa2a','Y',430,2)
;

-- 9 de mar de 2021 10:33:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130579,'Stimulus ISS',1000021,1133136,'Y',1,440,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ad682bac-b910-494a-967d-b09bcedf0b9a','Y',440,2)
;

-- 9 de mar de 2021 10:33:49 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:33:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130579
;

-- 9 de mar de 2021 10:33:58 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:33:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130578
;

-- 9 de mar de 2021 10:34:03 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:34:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130577
;

-- 9 de mar de 2021 10:34:06 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130576
;

-- 9 de mar de 2021 10:34:11 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:34:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130575
;

-- 9 de mar de 2021 10:34:50 BRT
UPDATE AD_Field SET SeqNo=425, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:34:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130575
;

-- 9 de mar de 2021 10:34:58 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-09 10:34:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130578
;

-- 9 de mar de 2021 10:36:14 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120204,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:36:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:36:13','YYYY-MM-DD HH24:MI:SS'),100,'1','Exigível',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'bef6b119-2780-4d6c-a186-beec914612fc')
;

-- 9 de mar de 2021 10:36:19 BRT
UPDATE LBR_TaxStatus SET Description='Exigivel',Updated=TO_TIMESTAMP('2021-03-09 10:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120204
;

-- 9 de mar de 2021 10:36:35 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120205,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:36:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:36:35','YYYY-MM-DD HH24:MI:SS'),100,'2','Não incidência',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'4adeb2f6-d985-4277-88ac-385e25569d83')
;

-- 9 de mar de 2021 10:36:41 BRT
UPDATE LBR_TaxStatus SET Description='Nao incidencia',Updated=TO_TIMESTAMP('2021-03-09 10:36:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120205
;

-- 9 de mar de 2021 10:36:52 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120206,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:36:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:36:51','YYYY-MM-DD HH24:MI:SS'),100,'3','Isenção',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'28d92a9d-0c61-4b28-a397-b91634a2f9c7')
;

-- 9 de mar de 2021 10:36:56 BRT
UPDATE LBR_TaxStatus SET Description='Isencao',Updated=TO_TIMESTAMP('2021-03-09 10:36:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120206
;

-- 9 de mar de 2021 10:37:06 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120207,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:37:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:37:06','YYYY-MM-DD HH24:MI:SS'),100,'4','Exportação',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'01753fa2-10de-48f8-bddf-83e5b53b9363')
;

-- 9 de mar de 2021 10:37:12 BRT
UPDATE LBR_TaxStatus SET Description='Exportacao',Updated=TO_TIMESTAMP('2021-03-09 10:37:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120207
;

-- 9 de mar de 2021 10:37:22 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120208,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:37:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:37:21','YYYY-MM-DD HH24:MI:SS'),100,'5','Imunidade',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'b5ebc46e-e3a3-4c25-9401-86a3b8135a44')
;

-- 9 de mar de 2021 10:37:35 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120209,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:37:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:37:34','YYYY-MM-DD HH24:MI:SS'),100,'6','Exigibilidade Suspensa por Decisão Judicial',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'a15884b0-99e9-4c47-8d60-8db0debb629a')
;

-- 9 de mar de 2021 10:37:38 BRT
UPDATE LBR_TaxStatus SET Description='Exigibilidade Suspensa por Decisao Judicial',Updated=TO_TIMESTAMP('2021-03-09 10:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120209
;

-- 9 de mar de 2021 10:37:54 BRT
INSERT INTO LBR_TaxStatus (LBR_TaxStatus_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,ValidFrom,LBR_TaxName_ID,LBR_TaxStatus_UU) VALUES (1120210,0,0,'Y',TO_TIMESTAMP('2021-03-09 10:37:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-09 10:37:52','YYYY-MM-DD HH24:MI:SS'),100,'7','Exigibilidade Suspensa por Processo Administrativo',TO_TIMESTAMP('2021-03-09','YYYY-MM-DD'),1106011,'ca1d3a76-b988-4dae-94c4-818c894d451f')
;

-- 9 de mar de 2021 10:38:07 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120210
;

-- 9 de mar de 2021 10:38:27 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120208
;

-- 9 de mar de 2021 10:38:35 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120209
;

-- 9 de mar de 2021 10:38:39 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120207
;

-- 9 de mar de 2021 10:38:42 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120206
;

-- 9 de mar de 2021 10:38:45 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120205
;

-- 9 de mar de 2021 10:38:48 BRT
UPDATE LBR_TaxStatus SET ValidFrom=TO_TIMESTAMP('2021-01-01','YYYY-MM-DD'),Updated=TO_TIMESTAMP('2021-03-09 10:38:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxStatus_ID=1120204
;

-- 9 de mar de 2021 15:08:42 BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN lbr_CityCode NUMERIC(10) DEFAULT NULL 
;

SELECT Register_Migration_Script ('202103091200_ISSQN.sql') FROM DUAL
;
