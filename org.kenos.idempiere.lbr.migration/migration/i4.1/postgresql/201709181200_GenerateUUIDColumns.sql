-- 18/09/2017 15h21min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122344,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ADI_UU','LBR_ADI_UU','LBR_ADI_UU','U','e4beae92-ce5e-420c-8d63-c1acb895e4de')
;

-- 18/09/2017 15h21min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129820,1.0,'LBR_ADI_UU',1120028,'LBR_ADI_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:41','YYYY-MM-DD HH24:MI:SS'),100,1122344,'Y','N','U','N','86e597c7-d379-423a-8627-34b00513be21','N')
;

-- 18/09/2017 15h21min43s BRT
ALTER TABLE LBR_ADI ADD COLUMN LBR_ADI_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min43s BRT
ALTER TABLE LBR_ADI ADD CONSTRAINT LBR_ADI_UU_idx UNIQUE (LBR_ADI_UU)
;

-- 18/09/2017 15h21min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122345,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ADILine_UU','LBR_ADILine_UU','LBR_ADILine_UU','U','bae13b42-c085-4417-976a-a1b4cd4b9939')
;

-- 18/09/2017 15h21min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129821,1.0,'LBR_ADILine_UU',1120029,'LBR_ADILine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:43','YYYY-MM-DD HH24:MI:SS'),100,1122345,'Y','N','U','N','fceb460f-018e-4fc9-a9c1-2a3f0b65b73b','N')
;

-- 18/09/2017 15h21min44s BRT
ALTER TABLE LBR_ADILine ADD COLUMN LBR_ADILine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min44s BRT
ALTER TABLE LBR_ADILine ADD CONSTRAINT LBR_ADILine_UU_idx UNIQUE (LBR_ADILine_UU)
;

-- 18/09/2017 15h21min45s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122346,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_AuthorizedAccessXML_UU','LBR_AuthorizedAccessXML_UU','LBR_AuthorizedAccessXML_UU','U','33ee0feb-4512-458e-b74b-ceca654461eb')
;

-- 18/09/2017 15h21min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129822,1.0,'LBR_AuthorizedAccessXML_UU',1120446,'LBR_AuthorizedAccessXML_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:44','YYYY-MM-DD HH24:MI:SS'),100,1122346,'Y','N','U','N','e82f3219-0536-49a4-b31e-cd051de7136a','N')
;

-- 18/09/2017 15h21min46s BRT
ALTER TABLE LBR_AuthorizedAccessXML ADD COLUMN LBR_AuthorizedAccessXML_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min46s BRT
ALTER TABLE LBR_AuthorizedAccessXML ADD CONSTRAINT LBR_AuthorizedAccessXML_UU_idx UNIQUE (LBR_AuthorizedAccessXML_UU)
;

-- 18/09/2017 15h21min46s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122347,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_AverageCost_UU','LBR_AverageCost_UU','LBR_AverageCost_UU','U','e20e0ed3-183c-4771-b2bf-e2090d4c654f')
;

-- 18/09/2017 15h21min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129823,1.0,'LBR_AverageCost_UU',1120019,'LBR_AverageCost_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:46','YYYY-MM-DD HH24:MI:SS'),100,1122347,'Y','N','U','N','34be94a3-0e20-44fb-ba04-727012b500a8','N')
;

-- 18/09/2017 15h21min47s BRT
ALTER TABLE LBR_AverageCost ADD COLUMN LBR_AverageCost_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min47s BRT
ALTER TABLE LBR_AverageCost ADD CONSTRAINT LBR_AverageCost_UU_idx UNIQUE (LBR_AverageCost_UU)
;

-- 18/09/2017 15h21min48s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122348,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_AverageCostLine_UU','LBR_AverageCostLine_UU','LBR_AverageCostLine_UU','U','1d3db29a-8796-4aa9-9d61-91aae3da156f')
;

-- 18/09/2017 15h21min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129824,1.0,'LBR_AverageCostLine_UU',1120020,'LBR_AverageCostLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:47','YYYY-MM-DD HH24:MI:SS'),100,1122348,'Y','N','U','N','29396cfe-6aa5-4916-95c5-e937a85d33a3','N')
;

-- 18/09/2017 15h21min48s BRT
ALTER TABLE LBR_AverageCostLine ADD COLUMN LBR_AverageCostLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min48s BRT
ALTER TABLE LBR_AverageCostLine ADD CONSTRAINT LBR_AverageCostLine_UU_idx UNIQUE (LBR_AverageCostLine_UU)
;

-- 18/09/2017 15h21min49s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122349,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BPartnerCategory_UU','LBR_BPartnerCategory_UU','LBR_BPartnerCategory_UU','U','4a729857-bb27-43be-a0ed-51b1be185cdc')
;

-- 18/09/2017 15h21min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129825,1.0,'LBR_BPartnerCategory_UU',1000014,'LBR_BPartnerCategory_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:48','YYYY-MM-DD HH24:MI:SS'),100,1122349,'Y','N','U','N','f249323f-fa0c-46e9-83ab-fb0fae6472aa','N')
;

-- 18/09/2017 15h21min49s BRT
ALTER TABLE LBR_BPartnerCategory ADD COLUMN LBR_BPartnerCategory_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min49s BRT
ALTER TABLE LBR_BPartnerCategory ADD CONSTRAINT LBR_BPartnerCategory_UU_idx UNIQUE (LBR_BPartnerCategory_UU)
;

-- 18/09/2017 15h21min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122350,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BSSetup_UU','LBR_BSSetup_UU','LBR_BSSetup_UU','U','1c7bf42a-f238-4d54-9c17-0252c88e711f')
;

-- 18/09/2017 15h21min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129826,1.0,'LBR_BSSetup_UU',1120556,'LBR_BSSetup_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,1122350,'Y','N','U','N','d66f5e9f-f304-457a-ba8b-ef1cb7159aec','N')
;

-- 18/09/2017 15h21min51s BRT
ALTER TABLE LBR_BSSetup ADD COLUMN LBR_BSSetup_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min51s BRT
ALTER TABLE LBR_BSSetup ADD CONSTRAINT LBR_BSSetup_UU_idx UNIQUE (LBR_BSSetup_UU)
;

-- 18/09/2017 15h21min51s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122351,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BSSetupLine_UU','LBR_BSSetupLine_UU','LBR_BSSetupLine_UU','U','88198df2-e303-4bbe-9813-a90cbadb2be4')
;

-- 18/09/2017 15h21min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129827,1.0,'LBR_BSSetupLine_UU',1120557,'LBR_BSSetupLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:51','YYYY-MM-DD HH24:MI:SS'),100,1122351,'Y','N','U','N','7f67832d-7ee5-42e0-bb49-35c9e56bf14d','N')
;

-- 18/09/2017 15h21min52s BRT
ALTER TABLE LBR_BSSetupLine ADD COLUMN LBR_BSSetupLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min52s BRT
ALTER TABLE LBR_BSSetupLine ADD CONSTRAINT LBR_BSSetupLine_UU_idx UNIQUE (LBR_BSSetupLine_UU)
;

-- 18/09/2017 15h21min52s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122352,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Bank_UU','LBR_Bank_UU','LBR_Bank_UU','U','471536d5-c8cd-4f25-8cbe-0d0413e94f8c')
;

-- 18/09/2017 15h21min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129828,1.0,'LBR_Bank_UU',1000003,'LBR_Bank_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:52','YYYY-MM-DD HH24:MI:SS'),100,1122352,'Y','N','U','N','0a38e326-ec8a-414b-a850-be562d15c86d','N')
;

-- 18/09/2017 15h21min53s BRT
ALTER TABLE LBR_Bank ADD COLUMN LBR_Bank_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min53s BRT
ALTER TABLE LBR_Bank ADD CONSTRAINT LBR_Bank_UU_idx UNIQUE (LBR_Bank_UU)
;

-- 18/09/2017 15h21min53s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122353,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankInfo_UU','LBR_BankInfo_UU','LBR_BankInfo_UU','U','3a030c62-1ed1-41da-aa94-15933e98fbc0')
;

-- 18/09/2017 15h21min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129829,1.0,'LBR_BankInfo_UU',1000008,'LBR_BankInfo_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:53','YYYY-MM-DD HH24:MI:SS'),100,1122353,'Y','N','U','N','26b1d3ea-8a3c-4627-838e-cb1955085ef0','N')
;

-- 18/09/2017 15h21min54s BRT
ALTER TABLE LBR_BankInfo ADD COLUMN LBR_BankInfo_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min54s BRT
ALTER TABLE LBR_BankInfo ADD CONSTRAINT LBR_BankInfo_UU_idx UNIQUE (LBR_BankInfo_UU)
;

-- 18/09/2017 15h21min54s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122354,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Boleto_UU','LBR_Boleto_UU','LBR_Boleto_UU','U','7712d30f-27f2-4cf4-b4a7-e250c5bef171')
;

-- 18/09/2017 15h21min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129830,1.0,'LBR_Boleto_UU',1000001,'LBR_Boleto_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:54','YYYY-MM-DD HH24:MI:SS'),100,1122354,'Y','N','U','N','f3ef1e1e-254b-4368-96db-0fa74afb622e','N')
;

-- 18/09/2017 15h21min55s BRT
ALTER TABLE LBR_Boleto ADD COLUMN LBR_Boleto_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min55s BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT LBR_Boleto_UU_idx UNIQUE (LBR_Boleto_UU)
;

-- 18/09/2017 15h21min55s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122355,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CEST_UU','LBR_CEST_UU','LBR_CEST_UU','U','34636717-29ba-4b0b-9728-f24c41ca105d')
;

-- 18/09/2017 15h21min56s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129831,1.0,'LBR_CEST_UU',1120531,'LBR_CEST_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:55','YYYY-MM-DD HH24:MI:SS'),100,1122355,'Y','N','U','N','3106ccd2-d3d9-482b-9ba3-18e1a28643aa','N')
;

-- 18/09/2017 15h21min56s BRT
ALTER TABLE LBR_CEST ADD COLUMN LBR_CEST_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min56s BRT
ALTER TABLE LBR_CEST ADD CONSTRAINT LBR_CEST_UU_idx UNIQUE (LBR_CEST_UU)
;

-- 18/09/2017 15h21min57s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122356,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CFOP_UU','LBR_CFOP_UU','LBR_CFOP_UU','U','72016888-0415-4b26-88e0-6f18e70b2364')
;

-- 18/09/2017 15h21min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129832,1.0,'LBR_CFOP_UU',1000010,'LBR_CFOP_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:56','YYYY-MM-DD HH24:MI:SS'),100,1122356,'Y','N','U','N','7addd43f-01e9-4c1e-a149-cc7f6f744b9b','N')
;

-- 18/09/2017 15h21min57s BRT
ALTER TABLE LBR_CFOP ADD COLUMN LBR_CFOP_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min57s BRT
ALTER TABLE LBR_CFOP ADD CONSTRAINT LBR_CFOP_UU_idx UNIQUE (LBR_CFOP_UU)
;

-- 18/09/2017 15h21min58s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122357,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CFOPLine_UU','LBR_CFOPLine_UU','LBR_CFOPLine_UU','U','a885faee-43fb-4b96-9eba-1327a1132d81')
;

-- 18/09/2017 15h21min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129833,1.0,'LBR_CFOPLine_UU',1000012,'LBR_CFOPLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,1122357,'Y','N','U','N','3551ddcf-3e23-4028-b4c7-498d38c20ce9','N')
;

-- 18/09/2017 15h21min59s BRT
ALTER TABLE LBR_CFOPLine ADD COLUMN LBR_CFOPLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h21min59s BRT
ALTER TABLE LBR_CFOPLine ADD CONSTRAINT LBR_CFOPLine_UU_idx UNIQUE (LBR_CFOPLine_UU)
;

-- 18/09/2017 15h21min59s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122358,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNAB_UU','LBR_CNAB_UU','LBR_CNAB_UU','U','a7df30c2-d618-41ad-957b-2d602af2c429')
;

-- 18/09/2017 15h22min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129834,1.0,'LBR_CNAB_UU',1000002,'LBR_CNAB_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:21:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:21:59','YYYY-MM-DD HH24:MI:SS'),100,1122358,'Y','N','U','N','1e54fecc-a05c-4795-b410-aa18a202ae8d','N')
;

-- 18/09/2017 15h22min0s BRT
ALTER TABLE LBR_CNAB ADD COLUMN LBR_CNAB_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min0s BRT
ALTER TABLE LBR_CNAB ADD CONSTRAINT LBR_CNAB_UU_idx UNIQUE (LBR_CNAB_UU)
;

-- 18/09/2017 15h22min0s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122359,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CSC_UU','LBR_CSC_UU','LBR_CSC_UU','U','741e5017-77e3-478f-b35b-092d9785fa8a')
;

-- 18/09/2017 15h22min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129835,1.0,'LBR_CSC_UU',1120577,'LBR_CSC_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,1122359,'Y','N','U','N','6d94f94c-5d1f-433e-9b82-b5e27fd328ed','N')
;

-- 18/09/2017 15h22min1s BRT
ALTER TABLE LBR_CSC ADD COLUMN LBR_CSC_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min1s BRT
ALTER TABLE LBR_CSC ADD CONSTRAINT LBR_CSC_UU_idx UNIQUE (LBR_CSC_UU)
;

-- 18/09/2017 15h22min1s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122360,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DE_UU','LBR_DE_UU','LBR_DE_UU','U','ee8443a5-6abb-4852-bace-979f22f9bc1d')
;

-- 18/09/2017 15h22min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129836,1.0,'LBR_DE_UU',1120014,'LBR_DE_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:01','YYYY-MM-DD HH24:MI:SS'),100,1122360,'Y','N','U','N','aa5bf873-72f4-47d3-b789-8dece4a594c3','N')
;

-- 18/09/2017 15h22min2s BRT
ALTER TABLE LBR_DE ADD COLUMN LBR_DE_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min2s BRT
ALTER TABLE LBR_DE ADD CONSTRAINT LBR_DE_UU_idx UNIQUE (LBR_DE_UU)
;

-- 18/09/2017 15h22min2s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122361,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DI_UU','LBR_DI_UU','LBR_DI_UU','U','c6a9e8b3-9180-47cf-bb5b-afd25130f72f')
;

-- 18/09/2017 15h22min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129837,1.0,'LBR_DI_UU',1120027,'LBR_DI_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:02','YYYY-MM-DD HH24:MI:SS'),100,1122361,'Y','N','U','N','a019a8e0-4c82-4143-8cd1-286362cdbee2','N')
;

-- 18/09/2017 15h22min3s BRT
ALTER TABLE LBR_DI ADD COLUMN LBR_DI_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min3s BRT
ALTER TABLE LBR_DI ADD CONSTRAINT LBR_DI_UU_idx UNIQUE (LBR_DI_UU)
;

-- 18/09/2017 15h22min3s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122362,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DigitalCertificate_UU','LBR_DigitalCertificate_UU','LBR_DigitalCertificate_UU','U','206892d0-a040-4c6a-8eab-dc0b90c8f0a2')
;

-- 18/09/2017 15h22min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129838,1.0,'LBR_DigitalCertificate_UU',1100000,'LBR_DigitalCertificate_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:03','YYYY-MM-DD HH24:MI:SS'),100,1122362,'Y','N','U','N','c48528b6-e893-4a0b-8efb-df02a808de00','N')
;

-- 18/09/2017 15h22min4s BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN LBR_DigitalCertificate_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min4s BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT LBR_DigitalCertificate_UU_idx UNIQUE (LBR_DigitalCertificate_UU)
;

-- 18/09/2017 15h22min4s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122363,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FactFiscal_UU','LBR_FactFiscal_UU','LBR_FactFiscal_UU','U','d60d4ae1-7895-4d37-bb20-1e37c87d40ce')
;

-- 18/09/2017 15h22min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129839,1.0,'LBR_FactFiscal_UU',1120466,'LBR_FactFiscal_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:04','YYYY-MM-DD HH24:MI:SS'),100,1122363,'Y','N','U','N','08ee4d2f-d1c9-4a1d-99e7-20a440d1ca0e','N')
;

-- 18/09/2017 15h22min5s BRT
ALTER TABLE LBR_FactFiscal ADD COLUMN LBR_FactFiscal_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min5s BRT
ALTER TABLE LBR_FactFiscal ADD CONSTRAINT LBR_FactFiscal_UU_idx UNIQUE (LBR_FactFiscal_UU)
;

-- 18/09/2017 15h22min6s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122364,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FiscalGroup_BPartner_UU','LBR_FiscalGroup_BPartner_UU','LBR_FiscalGroup_BPartner_UU','U','108f79b5-059c-4b31-b563-f52065cb40e8')
;

-- 18/09/2017 15h22min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129840,1.0,'LBR_FiscalGroup_BPartner_UU',1000018,'LBR_FiscalGroup_BPartner_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:05','YYYY-MM-DD HH24:MI:SS'),100,1122364,'Y','N','U','N','ed8b17c0-29aa-4876-8721-bdc75e76277d','N')
;

-- 18/09/2017 15h22min6s BRT
ALTER TABLE LBR_FiscalGroup_BPartner ADD COLUMN LBR_FiscalGroup_BPartner_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min6s BRT
ALTER TABLE LBR_FiscalGroup_BPartner ADD CONSTRAINT LBR_FiscalGroup_BPartner_uuidx UNIQUE (LBR_FiscalGroup_BPartner_UU)
;

-- 18/09/2017 15h22min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122365,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:06','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FiscalGroup_Product_UU','LBR_FiscalGroup_Product_UU','LBR_FiscalGroup_Product_UU','U','a37219ad-6771-43f4-b039-393277280efe')
;

-- 18/09/2017 15h22min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129841,1.0,'LBR_FiscalGroup_Product_UU',1000017,'LBR_FiscalGroup_Product_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:06','YYYY-MM-DD HH24:MI:SS'),100,1122365,'Y','N','U','N','f33a83c3-039e-49ae-b86d-bcc24d5513c8','N')
;

-- 18/09/2017 15h22min7s BRT
ALTER TABLE LBR_FiscalGroup_Product ADD COLUMN LBR_FiscalGroup_Product_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min7s BRT
ALTER TABLE LBR_FiscalGroup_Product ADD CONSTRAINT LBR_FiscalGroup_Product_UU_idx UNIQUE (LBR_FiscalGroup_Product_UU)
;

-- 18/09/2017 15h22min8s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122366,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Formula_UU','LBR_Formula_UU','LBR_Formula_UU','U','5cb05b47-eaec-4bc4-ad1a-9890863b2a84')
;

-- 18/09/2017 15h22min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129842,1.0,'LBR_Formula_UU',1120021,'LBR_Formula_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:07','YYYY-MM-DD HH24:MI:SS'),100,1122366,'Y','N','U','N','a255d95e-8b51-483c-b88c-0d5b2cb5207d','N')
;

-- 18/09/2017 15h22min8s BRT
ALTER TABLE LBR_Formula ADD COLUMN LBR_Formula_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min8s BRT
ALTER TABLE LBR_Formula ADD CONSTRAINT LBR_Formula_UU_idx UNIQUE (LBR_Formula_UU)
;

-- 18/09/2017 15h22min9s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122367,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IBPTax_UU','LBR_IBPTax_UU','LBR_IBPTax_UU','U','3d2e148a-08e3-40d8-a6b3-e546672d20d7')
;

-- 18/09/2017 15h22min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129843,1.0,'LBR_IBPTax_UU',1120342,'LBR_IBPTax_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:08','YYYY-MM-DD HH24:MI:SS'),100,1122367,'Y','N','U','N','cc789d09-83da-4ef3-a106-332011e32fb6','N')
;

-- 18/09/2017 15h22min9s BRT
ALTER TABLE LBR_IBPTax ADD COLUMN LBR_IBPTax_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min9s BRT
ALTER TABLE LBR_IBPTax ADD CONSTRAINT LBR_IBPTax_UU_idx UNIQUE (LBR_IBPTax_UU)
;

-- 18/09/2017 15h22min10s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122368,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ICMSMatrix_UU','LBR_ICMSMatrix_UU','LBR_ICMSMatrix_UU','U','e2fc7589-2e62-489d-a83d-2a46fe062a44')
;

-- 18/09/2017 15h22min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129844,1.0,'LBR_ICMSMatrix_UU',1000015,'LBR_ICMSMatrix_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:09','YYYY-MM-DD HH24:MI:SS'),100,1122368,'Y','N','U','N','70b19437-ade9-4323-88e1-187fc3855227','N')
;

-- 18/09/2017 15h22min10s BRT
ALTER TABLE LBR_ICMSMatrix ADD COLUMN LBR_ICMSMatrix_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min10s BRT
ALTER TABLE LBR_ICMSMatrix ADD CONSTRAINT LBR_ICMSMatrix_UU_idx UNIQUE (LBR_ICMSMatrix_UU)
;

-- 18/09/2017 15h22min11s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122369,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ISSMatrix_UU','LBR_ISSMatrix_UU','LBR_ISSMatrix_UU','U','7543d289-2a24-41e8-b664-3c5534067b00')
;

-- 18/09/2017 15h22min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129845,1.0,'LBR_ISSMatrix_UU',1000036,'LBR_ISSMatrix_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,1122369,'Y','N','U','N','d79730e8-f6ec-438d-a92f-a72559acf070','N')
;

-- 18/09/2017 15h22min11s BRT
ALTER TABLE LBR_ISSMatrix ADD COLUMN LBR_ISSMatrix_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min11s BRT
ALTER TABLE LBR_ISSMatrix ADD CONSTRAINT LBR_ISSMatrix_UU_idx UNIQUE (LBR_ISSMatrix_UU)
;

-- 18/09/2017 15h22min12s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122370,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LegalMessage_UU','LBR_LegalMessage_UU','LBR_LegalMessage_UU','U','3c78d137-1382-4809-a970-7b092c58e179')
;

-- 18/09/2017 15h22min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129846,1.0,'LBR_LegalMessage_UU',1000032,'LBR_LegalMessage_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:11','YYYY-MM-DD HH24:MI:SS'),100,1122370,'Y','N','U','N','1946ea73-a7b6-4321-abaf-195d45c52034','N')
;

-- 18/09/2017 15h22min12s BRT
ALTER TABLE LBR_LegalMessage ADD COLUMN LBR_LegalMessage_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min12s BRT
ALTER TABLE LBR_LegalMessage ADD CONSTRAINT LBR_LegalMessage_UU_idx UNIQUE (LBR_LegalMessage_UU)
;

-- 18/09/2017 15h22min13s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122371,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_UU','LBR_MDFe_UU','LBR_MDFe_UU','U','6f659b60-1894-43a5-9059-6c3465b10f1b')
;

-- 18/09/2017 15h22min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129847,1.0,'LBR_MDFe_UU',1120351,'LBR_MDFe_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:12','YYYY-MM-DD HH24:MI:SS'),100,1122371,'Y','N','U','N','846b2fd9-fa3c-4f00-9f1c-7f4e1228e272','N')
;

-- 18/09/2017 15h22min13s BRT
ALTER TABLE LBR_MDFe ADD COLUMN LBR_MDFe_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min13s BRT
ALTER TABLE LBR_MDFe ADD CONSTRAINT LBR_MDFe_UU_idx UNIQUE (LBR_MDFe_UU)
;

-- 18/09/2017 15h22min14s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122372,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeDriver_UU','LBR_MDFeDriver_UU','LBR_MDFeDriver_UU','U','e32b4c55-08e9-4fa1-866a-64df15962010')
;

-- 18/09/2017 15h22min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129848,1.0,'LBR_MDFeDriver_UU',1120358,'LBR_MDFeDriver_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:13','YYYY-MM-DD HH24:MI:SS'),100,1122372,'Y','N','U','N','1a9d4a0f-42d1-4ef7-82cc-2ea53c5d473a','N')
;

-- 18/09/2017 15h22min14s BRT
ALTER TABLE LBR_MDFeDriver ADD COLUMN LBR_MDFeDriver_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min14s BRT
ALTER TABLE LBR_MDFeDriver ADD CONSTRAINT LBR_MDFeDriver_UU_idx UNIQUE (LBR_MDFeDriver_UU)
;

-- 18/09/2017 15h22min15s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122373,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeLoad_UU','LBR_MDFeLoad_UU','LBR_MDFeLoad_UU','U','197fb036-414e-4541-9e27-7c2ce0e8e27b')
;

-- 18/09/2017 15h22min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129849,1.0,'LBR_MDFeLoad_UU',1120352,'LBR_MDFeLoad_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:14','YYYY-MM-DD HH24:MI:SS'),100,1122373,'Y','N','U','N','68aa09e5-5c4e-4cc3-93d7-8272be0b6427','N')
;

-- 18/09/2017 15h22min15s BRT
ALTER TABLE LBR_MDFeLoad ADD COLUMN LBR_MDFeLoad_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min15s BRT
ALTER TABLE LBR_MDFeLoad ADD CONSTRAINT LBR_MDFeLoad_UU_idx UNIQUE (LBR_MDFeLoad_UU)
;

-- 18/09/2017 15h22min16s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122374,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeRoute_UU','LBR_MDFeRoute_UU','LBR_MDFeRoute_UU','U','328870ed-3c97-4995-a10d-fc05fa6393fc')
;

-- 18/09/2017 15h22min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129850,1.0,'LBR_MDFeRoute_UU',1120353,'LBR_MDFeRoute_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:15','YYYY-MM-DD HH24:MI:SS'),100,1122374,'Y','N','U','N','d74c8393-19b2-4600-8d07-ff9cd8afa467','N')
;

-- 18/09/2017 15h22min17s BRT
ALTER TABLE LBR_MDFeRoute ADD COLUMN LBR_MDFeRoute_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min17s BRT
ALTER TABLE LBR_MDFeRoute ADD CONSTRAINT LBR_MDFeRoute_UU_idx UNIQUE (LBR_MDFeRoute_UU)
;

-- 18/09/2017 15h22min17s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122375,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeSeal_UU','LBR_MDFeSeal_UU','LBR_MDFeSeal_UU','U','add193cc-ac42-4c96-aae5-d52095f1fe4d')
;

-- 18/09/2017 15h22min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129851,1.0,'LBR_MDFeSeal_UU',1120356,'LBR_MDFeSeal_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:17','YYYY-MM-DD HH24:MI:SS'),100,1122375,'Y','N','U','N','9e08dd67-7fbc-40c7-9556-889d2bb56145','N')
;

-- 18/09/2017 15h22min18s BRT
ALTER TABLE LBR_MDFeSeal ADD COLUMN LBR_MDFeSeal_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min18s BRT
ALTER TABLE LBR_MDFeSeal ADD CONSTRAINT LBR_MDFeSeal_UU_idx UNIQUE (LBR_MDFeSeal_UU)
;

-- 18/09/2017 15h22min19s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122376,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeToll_UU','LBR_MDFeToll_UU','LBR_MDFeToll_UU','U','f338a923-39d2-49c1-bc96-0fff88082da2')
;

-- 18/09/2017 15h22min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129852,1.0,'LBR_MDFeToll_UU',1120359,'LBR_MDFeToll_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:18','YYYY-MM-DD HH24:MI:SS'),100,1122376,'Y','N','U','N','62ea063f-9646-449b-9601-ec98a8f24600','N')
;

-- 18/09/2017 15h22min19s BRT
ALTER TABLE LBR_MDFeToll ADD COLUMN LBR_MDFeToll_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min19s BRT
ALTER TABLE LBR_MDFeToll ADD CONSTRAINT LBR_MDFeToll_UU_idx UNIQUE (LBR_MDFeToll_UU)
;

-- 18/09/2017 15h22min20s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122377,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeUnload_UU','LBR_MDFeUnload_UU','LBR_MDFeUnload_UU','U','53be409d-dfcb-482f-8c1b-016b1d42ab6e')
;

-- 18/09/2017 15h22min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129853,1.0,'LBR_MDFeUnload_UU',1120354,'LBR_MDFeUnload_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:19','YYYY-MM-DD HH24:MI:SS'),100,1122377,'Y','N','U','N','92984fa1-bc2a-4b4d-a75b-685381d1fb59','N')
;

-- 18/09/2017 15h22min20s BRT
ALTER TABLE LBR_MDFeUnload ADD COLUMN LBR_MDFeUnload_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min20s BRT
ALTER TABLE LBR_MDFeUnload ADD CONSTRAINT LBR_MDFeUnload_UU_idx UNIQUE (LBR_MDFeUnload_UU)
;

-- 18/09/2017 15h22min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122378,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeUnloadDoc_UU','LBR_MDFeUnloadDoc_UU','LBR_MDFeUnloadDoc_UU','U','b656b53f-47f5-4829-bc63-23fef632d39b')
;

-- 18/09/2017 15h22min21s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129854,1.0,'LBR_MDFeUnloadDoc_UU',1120355,'LBR_MDFeUnloadDoc_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,1122378,'Y','N','U','N','bd4b1ade-c5f4-420a-b1eb-8f2559d27dd3','N')
;

-- 18/09/2017 15h22min21s BRT
ALTER TABLE LBR_MDFeUnloadDoc ADD COLUMN LBR_MDFeUnloadDoc_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min21s BRT
ALTER TABLE LBR_MDFeUnloadDoc ADD CONSTRAINT LBR_MDFeUnloadDoc_UU_idx UNIQUE (LBR_MDFeUnloadDoc_UU)
;

-- 18/09/2017 15h22min22s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122379,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:21','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFeVehicle_UU','LBR_MDFeVehicle_UU','LBR_MDFeVehicle_UU','U','1326f37e-8430-48b9-bf01-6a824a9f9256')
;

-- 18/09/2017 15h22min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129855,1.0,'LBR_MDFeVehicle_UU',1120357,'LBR_MDFeVehicle_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:21','YYYY-MM-DD HH24:MI:SS'),100,1122379,'Y','N','U','N','333e9601-5399-468a-86db-12ca050b5e5d','N')
;

-- 18/09/2017 15h22min22s BRT
ALTER TABLE LBR_MDFeVehicle ADD COLUMN LBR_MDFeVehicle_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min22s BRT
ALTER TABLE LBR_MDFeVehicle ADD CONSTRAINT LBR_MDFeVehicle_UU_idx UNIQUE (LBR_MDFeVehicle_UU)
;

-- 18/09/2017 15h22min23s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122380,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MDFe_DriverInstance_UU','LBR_MDFe_DriverInstance_UU','LBR_MDFe_DriverInstance_UU','U','83001c7a-bce8-4271-a661-58773a71bb95')
;

-- 18/09/2017 15h22min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129856,1.0,'LBR_MDFe_DriverInstance_UU',1120360,'LBR_MDFe_DriverInstance_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:22','YYYY-MM-DD HH24:MI:SS'),100,1122380,'Y','N','U','N','2cc8c682-ea97-4721-8ead-9d3bb055d240','N')
;

-- 18/09/2017 15h22min24s BRT
ALTER TABLE LBR_MDFe_DriverInstance ADD COLUMN LBR_MDFe_DriverInstance_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min24s BRT
ALTER TABLE LBR_MDFe_DriverInstance ADD CONSTRAINT LBR_MDFe_DriverInstance_UU_idx UNIQUE (LBR_MDFe_DriverInstance_UU)
;

-- 18/09/2017 15h22min24s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122381,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NBS_UU','LBR_NBS_UU','LBR_NBS_UU','U','abb86bc7-9060-48fe-a8ba-d506cf2f8589')
;

-- 18/09/2017 15h22min25s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129857,1.0,'LBR_NBS_UU',1120576,'LBR_NBS_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:24','YYYY-MM-DD HH24:MI:SS'),100,1122381,'Y','N','U','N','ea59e6ec-93cb-495c-bec8-2d8bc94149fe','N')
;

-- 18/09/2017 15h22min25s BRT
ALTER TABLE LBR_NBS ADD COLUMN LBR_NBS_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min25s BRT
ALTER TABLE LBR_NBS ADD CONSTRAINT LBR_NBS_UU_idx UNIQUE (LBR_NBS_UU)
;

-- 18/09/2017 15h22min26s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122382,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCM_UU','LBR_NCM_UU','LBR_NCM_UU','U','257a92ef-dc22-4320-b0ee-1a585267a1ef')
;

-- 18/09/2017 15h22min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129858,1.0,'LBR_NCM_UU',1000009,'LBR_NCM_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:25','YYYY-MM-DD HH24:MI:SS'),100,1122382,'Y','N','U','N','88e1ed4a-4b2b-4290-86f2-f43a27f4a4c9','N')
;

-- 18/09/2017 15h22min27s BRT
ALTER TABLE LBR_NCM ADD COLUMN LBR_NCM_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min27s BRT
ALTER TABLE LBR_NCM ADD CONSTRAINT LBR_NCM_UU_idx UNIQUE (LBR_NCM_UU)
;

-- 18/09/2017 15h22min31s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122383,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCMTax_UU','LBR_NCMTax_UU','LBR_NCMTax_UU','U','353e5a63-3c1c-4ae1-866a-147b59eec90c')
;

-- 18/09/2017 15h22min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129859,1.0,'LBR_NCMTax_UU',1106000,'LBR_NCMTax_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:30','YYYY-MM-DD HH24:MI:SS'),100,1122383,'Y','N','U','N','c94ebfde-097d-4229-bf93-eb247b66b479','N')
;

-- 18/09/2017 15h22min31s BRT
ALTER TABLE LBR_NCMTax ADD COLUMN LBR_NCMTax_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min31s BRT
ALTER TABLE LBR_NCMTax ADD CONSTRAINT LBR_NCMTax_UU_idx UNIQUE (LBR_NCMTax_UU)
;

-- 18/09/2017 15h22min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122384,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NCM_CEST_UU','LBR_NCM_CEST_UU','LBR_NCM_CEST_UU','U','aaa97f63-004e-4f36-bd0c-7aa87a65f39a')
;

-- 18/09/2017 15h22min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129860,1.0,'LBR_NCM_CEST_UU',1120542,'LBR_NCM_CEST_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:31','YYYY-MM-DD HH24:MI:SS'),100,1122384,'Y','N','U','N','f5ebe479-be43-4bcf-a57a-bc36888534f6','N')
;

-- 18/09/2017 15h22min32s BRT
ALTER TABLE LBR_NCM_CEST ADD COLUMN LBR_NCM_CEST_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min33s BRT
ALTER TABLE LBR_NCM_CEST ADD CONSTRAINT LBR_NCM_CEST_UU_idx UNIQUE (LBR_NCM_CEST_UU)
;

-- 18/09/2017 15h22min37s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122385,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFConfig_UU','LBR_NFConfig_UU','LBR_NFConfig_UU','U','31c1319c-5f1a-4eaa-8eb7-4c31daa4e06c')
;

-- 18/09/2017 15h22min38s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129861,1.0,'LBR_NFConfig_UU',1120547,'LBR_NFConfig_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:37','YYYY-MM-DD HH24:MI:SS'),100,1122385,'Y','N','U','N','e287e1fb-81cc-4eba-91f8-23c766236e83','N')
;

-- 18/09/2017 15h22min38s BRT
ALTER TABLE LBR_NFConfig ADD COLUMN LBR_NFConfig_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min38s BRT
ALTER TABLE LBR_NFConfig ADD CONSTRAINT LBR_NFConfig_UU_idx UNIQUE (LBR_NFConfig_UU)
;

-- 18/09/2017 15h22min38s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122386,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFConfig_SVC_UU','LBR_NFConfig_SVC_UU','LBR_NFConfig_SVC_UU','U','3211f474-c98d-4cff-9414-270666708a53')
;

-- 18/09/2017 15h22min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129862,1.0,'LBR_NFConfig_SVC_UU',1120552,'LBR_NFConfig_SVC_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:38','YYYY-MM-DD HH24:MI:SS'),100,1122386,'Y','N','U','N','3600ac28-e582-471b-8974-2f7c49b08490','N')
;

-- 18/09/2017 15h22min39s BRT
ALTER TABLE LBR_NFConfig_SVC ADD COLUMN LBR_NFConfig_SVC_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min39s BRT
ALTER TABLE LBR_NFConfig_SVC ADD CONSTRAINT LBR_NFConfig_SVC_UU_idx UNIQUE (LBR_NFConfig_SVC_UU)
;

-- 18/09/2017 15h22min40s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122387,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFDI_UU','LBR_NFDI_UU','LBR_NFDI_UU','U','667263df-8872-4775-8b02-c17a42f1730e')
;

-- 18/09/2017 15h22min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129863,1.0,'LBR_NFDI_UU',1100002,'LBR_NFDI_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:39','YYYY-MM-DD HH24:MI:SS'),100,1122387,'Y','N','U','N','068e6f1e-3a4c-45d6-8349-75fbb212c79d','N')
;

-- 18/09/2017 15h22min40s BRT
ALTER TABLE LBR_NFDI ADD COLUMN LBR_NFDI_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min40s BRT
ALTER TABLE LBR_NFDI ADD CONSTRAINT LBR_NFDI_UU_idx UNIQUE (LBR_NFDI_UU)
;

-- 18/09/2017 15h22min41s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122388,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFLineTax_UU','LBR_NFLineTax_UU','LBR_NFLineTax_UU','U','024f6cdb-47b2-44f9-95ce-2520ca1531cd')
;

-- 18/09/2017 15h22min41s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129864,1.0,'LBR_NFLineTax_UU',1000035,'LBR_NFLineTax_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:40','YYYY-MM-DD HH24:MI:SS'),100,1122388,'Y','N','U','N','a1e85a2e-b204-41e1-b254-061d106aa9dc','N')
;

-- 18/09/2017 15h22min41s BRT
ALTER TABLE LBR_NFLineTax ADD COLUMN LBR_NFLineTax_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min41s BRT
ALTER TABLE LBR_NFLineTax ADD CONSTRAINT LBR_NFLineTax_UU_idx UNIQUE (LBR_NFLineTax_UU)
;

-- 18/09/2017 15h22min42s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122389,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFSkipped_UU','LBR_NFSkipped_UU','LBR_NFSkipped_UU','U','0b189380-508e-4e35-b749-f92c1f11b3e5')
;

-- 18/09/2017 15h22min42s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129865,1.0,'LBR_NFSkipped_UU',1120448,'LBR_NFSkipped_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:41','YYYY-MM-DD HH24:MI:SS'),100,1122389,'Y','N','U','N','33ef7668-9bde-48e7-af26-884fbcb5b060','N')
;

-- 18/09/2017 15h22min42s BRT
ALTER TABLE LBR_NFSkipped ADD COLUMN LBR_NFSkipped_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min42s BRT
ALTER TABLE LBR_NFSkipped ADD CONSTRAINT LBR_NFSkipped_UU_idx UNIQUE (LBR_NFSkipped_UU)
;

-- 18/09/2017 15h22min43s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122390,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFTax_UU','LBR_NFTax_UU','LBR_NFTax_UU','U','6f595d31-38a3-470f-8d6f-c6a834436a8d')
;

-- 18/09/2017 15h22min44s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129866,1.0,'LBR_NFTax_UU',1000034,'LBR_NFTax_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:42','YYYY-MM-DD HH24:MI:SS'),100,1122390,'Y','N','U','N','e7c30590-c0f2-4ae9-a7d7-ad3262e296b6','N')
;

-- 18/09/2017 15h22min44s BRT
ALTER TABLE LBR_NFTax ADD COLUMN LBR_NFTax_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min44s BRT
ALTER TABLE LBR_NFTax ADD CONSTRAINT LBR_NFTax_UU_idx UNIQUE (LBR_NFTax_UU)
;

-- 18/09/2017 15h22min45s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122391,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeEvent_UU','LBR_NFeEvent_UU','LBR_NFeEvent_UU','U','12a04057-3e26-4a38-8e71-0b3b51fd63c1')
;

-- 18/09/2017 15h22min45s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129867,1.0,'LBR_NFeEvent_UU',1120247,'LBR_NFeEvent_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,1122391,'Y','N','U','N','14b9c81b-04cd-41f3-85e1-dc7673fee58e','N')
;

-- 18/09/2017 15h22min45s BRT
ALTER TABLE LBR_NFeEvent ADD COLUMN LBR_NFeEvent_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min45s BRT
ALTER TABLE LBR_NFeEvent ADD CONSTRAINT LBR_NFeEvent_UU_idx UNIQUE (LBR_NFeEvent_UU)
;

-- 18/09/2017 15h22min46s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122392,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeLot_UU','LBR_NFeLot_UU','LBR_NFeLot_UU','U','9e2cf883-e488-4089-8afc-cfe27a6d6b77')
;

-- 18/09/2017 15h22min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129868,1.0,'LBR_NFeLot_UU',1100001,'LBR_NFeLot_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:45','YYYY-MM-DD HH24:MI:SS'),100,1122392,'Y','N','U','N','d483016b-d3c2-45c7-b8c6-8fba86b93fd0','N')
;

-- 18/09/2017 15h22min46s BRT
ALTER TABLE LBR_NFeLot ADD COLUMN LBR_NFeLot_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min46s BRT
ALTER TABLE LBR_NFeLot ADD CONSTRAINT LBR_NFeLot_UU_idx UNIQUE (LBR_NFeLot_UU)
;

-- 18/09/2017 15h22min46s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122393,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeWebService_UU','LBR_NFeWebService_UU','LBR_NFeWebService_UU','U','4eb877c5-9864-4e45-9b41-7c735498ccb9')
;

-- 18/09/2017 15h22min47s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129869,1.0,'LBR_NFeWebService_UU',1120000,'LBR_NFeWebService_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:46','YYYY-MM-DD HH24:MI:SS'),100,1122393,'Y','N','U','N','746bc88c-11cd-4d68-b28b-02f683cc971a','N')
;

-- 18/09/2017 15h22min47s BRT
ALTER TABLE LBR_NFeWebService ADD COLUMN LBR_NFeWebService_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min47s BRT
ALTER TABLE LBR_NFeWebService ADD CONSTRAINT LBR_NFeWebService_UU_idx UNIQUE (LBR_NFeWebService_UU)
;

-- 18/09/2017 15h22min48s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122394,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NotaFiscal_UU','LBR_NotaFiscal_UU','LBR_NotaFiscal_UU','U','56790775-5aa2-44e5-ae74-2a204e62a24a')
;

-- 18/09/2017 15h22min48s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129870,1.0,'LBR_NotaFiscal_UU',1000027,'LBR_NotaFiscal_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:47','YYYY-MM-DD HH24:MI:SS'),100,1122394,'Y','N','U','N','e92b7f80-9842-4914-9da7-a001932d1577','N')
;

-- 18/09/2017 15h22min48s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_NotaFiscal_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min48s BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT LBR_NotaFiscal_UU_idx UNIQUE (LBR_NotaFiscal_UU)
;

-- 18/09/2017 15h22min49s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122395,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NotaFiscalDocRef_UU','LBR_NotaFiscalDocRef_UU','LBR_NotaFiscalDocRef_UU','U','9513916c-96fe-4147-94e1-08758a36f9b1')
;

-- 18/09/2017 15h22min49s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129871,1.0,'LBR_NotaFiscalDocRef_UU',1120447,'LBR_NotaFiscalDocRef_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:48','YYYY-MM-DD HH24:MI:SS'),100,1122395,'Y','N','U','N','a3915b6f-bb8c-4506-a6ad-965933ae5e9b','N')
;

-- 18/09/2017 15h22min49s BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_NotaFiscalDocRef_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min49s BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD CONSTRAINT LBR_NotaFiscalDocRef_UU_idx UNIQUE (LBR_NotaFiscalDocRef_UU)
;

-- 18/09/2017 15h22min50s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122396,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NotaFiscalLine_UU','LBR_NotaFiscalLine_UU','LBR_NotaFiscalLine_UU','U','133459ab-3462-4874-a634-e05fcbdc3eeb')
;

-- 18/09/2017 15h22min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129872,1.0,'LBR_NotaFiscalLine_UU',1000028,'LBR_NotaFiscalLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:49','YYYY-MM-DD HH24:MI:SS'),100,1122396,'Y','N','U','N','b2f2f41d-d426-4c6f-a251-39025b9225c1','N')
;

-- 18/09/2017 15h22min50s BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_NotaFiscalLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min50s BRT
ALTER TABLE LBR_NotaFiscalLine ADD CONSTRAINT LBR_NotaFiscalLine_UU_idx UNIQUE (LBR_NotaFiscalLine_UU)
;

-- 18/09/2017 15h22min51s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122397,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PartnerDFe_UU','LBR_PartnerDFe_UU','LBR_PartnerDFe_UU','U','c8af1399-f76d-4eff-a060-b2328c0adaac')
;

-- 18/09/2017 15h22min51s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129873,1.0,'LBR_PartnerDFe_UU',1120461,'LBR_PartnerDFe_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:50','YYYY-MM-DD HH24:MI:SS'),100,1122397,'Y','N','U','N','b247433a-d2eb-461c-9bcb-aeb046de1fe0','N')
;

-- 18/09/2017 15h22min51s BRT
ALTER TABLE LBR_PartnerDFe ADD COLUMN LBR_PartnerDFe_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min51s BRT
ALTER TABLE LBR_PartnerDFe ADD CONSTRAINT LBR_PartnerDFe_UU_idx UNIQUE (LBR_PartnerDFe_UU)
;

-- 18/09/2017 15h22min52s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122398,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductCategory_UU','LBR_ProductCategory_UU','LBR_ProductCategory_UU','U','71dc434d-86e9-4335-a07d-c980b271c474')
;

-- 18/09/2017 15h22min53s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129874,1.0,'LBR_ProductCategory_UU',1000013,'LBR_ProductCategory_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:52','YYYY-MM-DD HH24:MI:SS'),100,1122398,'Y','N','U','N','6c0934ff-28ef-43a6-b44a-cef80f301a86','N')
;

-- 18/09/2017 15h22min53s BRT
ALTER TABLE LBR_ProductCategory ADD COLUMN LBR_ProductCategory_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min53s BRT
ALTER TABLE LBR_ProductCategory ADD CONSTRAINT LBR_ProductCategory_UU_idx UNIQUE (LBR_ProductCategory_UU)
;

-- 18/09/2017 15h22min53s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122399,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductFCI_UU','LBR_ProductFCI_UU','LBR_ProductFCI_UU','U','574a81c6-b604-48d5-9c52-bea2884cc07f')
;

-- 18/09/2017 15h22min54s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129875,1.0,'LBR_ProductFCI_UU',1120349,'LBR_ProductFCI_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:53','YYYY-MM-DD HH24:MI:SS'),100,1122399,'Y','N','U','N','a350d871-e0a6-4504-9d0d-1bc4f482e3cd','N')
;

-- 18/09/2017 15h22min54s BRT
ALTER TABLE LBR_ProductFCI ADD COLUMN LBR_ProductFCI_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min54s BRT
ALTER TABLE LBR_ProductFCI ADD CONSTRAINT LBR_ProductFCI_UU_idx UNIQUE (LBR_ProductFCI_UU)
;

-- 18/09/2017 15h22min54s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122400,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPED_UU','LBR_SPED_UU','LBR_SPED_UU','U','b30f3bbc-8eff-4e9d-a454-9f3d9723bced')
;

-- 18/09/2017 15h22min55s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129876,1.0,'LBR_SPED_UU',1120328,'LBR_SPED_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:54','YYYY-MM-DD HH24:MI:SS'),100,1122400,'Y','N','U','N','f59de18e-6e34-48d0-93f3-1cd8febd46fb','N')
;

-- 18/09/2017 15h22min55s BRT
ALTER TABLE LBR_SPED ADD COLUMN LBR_SPED_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min55s BRT
ALTER TABLE LBR_SPED ADD CONSTRAINT LBR_SPED_UU_idx UNIQUE (LBR_SPED_UU)
;

-- 18/09/2017 15h22min56s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122401,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SalesCardTotal_UU','LBR_SalesCardTotal_UU','LBR_SalesCardTotal_UU','U','c5d87f3a-c767-48f4-8f85-1ec798cbd543')
;

-- 18/09/2017 15h22min57s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129877,1.0,'LBR_SalesCardTotal_UU',1120333,'LBR_SalesCardTotal_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:55','YYYY-MM-DD HH24:MI:SS'),100,1122401,'Y','N','U','N','53799fa1-5355-462e-a270-08cac44dccee','N')
;

-- 18/09/2017 15h22min57s BRT
ALTER TABLE LBR_SalesCardTotal ADD COLUMN LBR_SalesCardTotal_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min57s BRT
ALTER TABLE LBR_SalesCardTotal ADD CONSTRAINT LBR_SalesCardTotal_UU_idx UNIQUE (LBR_SalesCardTotal_UU)
;

-- 18/09/2017 15h22min57s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122402,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:57','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Tax_UU','LBR_Tax_UU','LBR_Tax_UU','U','f26706fa-8ef1-45e7-afbd-1b27044445a3')
;

-- 18/09/2017 15h22min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129878,1.0,'LBR_Tax_UU',1000006,'LBR_Tax_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:57','YYYY-MM-DD HH24:MI:SS'),100,1122402,'Y','N','U','N','3ba64f70-be9f-41fe-b8f3-c79ffd090dfe','N')
;

-- 18/09/2017 15h22min58s BRT
ALTER TABLE LBR_Tax ADD COLUMN LBR_Tax_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min58s BRT
ALTER TABLE LBR_Tax ADD CONSTRAINT LBR_Tax_UU_idx UNIQUE (LBR_Tax_UU)
;

-- 18/09/2017 15h22min59s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122403,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxAssessment_UU','LBR_TaxAssessment_UU','LBR_TaxAssessment_UU','U','1b8772c2-1c72-4ee4-a3e8-74d0f02c20a3')
;

-- 18/09/2017 15h22min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129879,1.0,'LBR_TaxAssessment_UU',1120331,'LBR_TaxAssessment_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:58','YYYY-MM-DD HH24:MI:SS'),100,1122403,'Y','N','U','N','a614cd2c-fc44-4cfd-abaa-796a99ad8740','N')
;

-- 18/09/2017 15h22min59s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_TaxAssessment_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h22min59s BRT
ALTER TABLE LBR_TaxAssessment ADD CONSTRAINT LBR_TaxAssessment_UU_idx UNIQUE (LBR_TaxAssessment_UU)
;

-- 18/09/2017 15h23min0s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122404,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxAssessmentLine_UU','LBR_TaxAssessmentLine_UU','LBR_TaxAssessmentLine_UU','U','bcd3c569-1422-4a80-80dc-3f9673a03d2f')
;

-- 18/09/2017 15h23min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129880,1.0,'LBR_TaxAssessmentLine_UU',1120332,'LBR_TaxAssessmentLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:22:59','YYYY-MM-DD HH24:MI:SS'),100,1122404,'Y','N','U','N','500ee186-1fbd-424b-9b4b-789b08d169fb','N')
;

-- 18/09/2017 15h23min0s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD COLUMN LBR_TaxAssessmentLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min0s BRT
ALTER TABLE LBR_TaxAssessmentLine ADD CONSTRAINT LBR_TaxAssessmentLine_UU_idx UNIQUE (LBR_TaxAssessmentLine_UU)
;

-- 18/09/2017 15h23min1s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122405,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxBaseType_UU','LBR_TaxBaseType_UU','LBR_TaxBaseType_UU','U','90de6f4f-4d49-4719-aa18-63afeb9b2a37')
;

-- 18/09/2017 15h23min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129881,1.0,'LBR_TaxBaseType_UU',1120302,'LBR_TaxBaseType_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:00','YYYY-MM-DD HH24:MI:SS'),100,1122405,'Y','N','U','N','024012cd-ef7a-47ef-a636-1aeb49859553','N')
;

-- 18/09/2017 15h23min1s BRT
ALTER TABLE LBR_TaxBaseType ADD COLUMN LBR_TaxBaseType_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min1s BRT
ALTER TABLE LBR_TaxBaseType ADD CONSTRAINT LBR_TaxBaseType_UU_idx UNIQUE (LBR_TaxBaseType_UU)
;

-- 18/09/2017 15h23min2s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122406,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:01','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxDefinition_UU','LBR_TaxDefinition_UU','LBR_TaxDefinition_UU','U','061092e6-5f3b-4989-839c-80b2fc2637d6')
;

-- 18/09/2017 15h23min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129882,1.0,'LBR_TaxDefinition_UU',1106001,'LBR_TaxDefinition_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:01','YYYY-MM-DD HH24:MI:SS'),100,1122406,'Y','N','U','N','6eee02d6-b60f-4f72-990a-1d639d080184','N')
;

-- 18/09/2017 15h23min2s BRT
ALTER TABLE LBR_TaxDefinition ADD COLUMN LBR_TaxDefinition_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min2s BRT
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT LBR_TaxDefinition_UU_idx UNIQUE (LBR_TaxDefinition_UU)
;

-- 18/09/2017 15h23min3s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122407,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxFormula_UU','LBR_TaxFormula_UU','LBR_TaxFormula_UU','U','f1f64b09-2495-4dfb-82f5-92c7507caddc')
;

-- 18/09/2017 15h23min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129883,1.0,'LBR_TaxFormula_UU',1000026,'LBR_TaxFormula_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:02','YYYY-MM-DD HH24:MI:SS'),100,1122407,'Y','N','U','N','cde5b51b-7264-4519-968d-cce101a423b8','N')
;

-- 18/09/2017 15h23min3s BRT
ALTER TABLE LBR_TaxFormula ADD COLUMN LBR_TaxFormula_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min3s BRT
ALTER TABLE LBR_TaxFormula ADD CONSTRAINT LBR_TaxFormula_UU_idx UNIQUE (LBR_TaxFormula_UU)
;

-- 18/09/2017 15h23min4s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122408,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxGroup_UU','LBR_TaxGroup_UU','LBR_TaxGroup_UU','U','79a53774-f69e-409c-ad6f-adb0834b3c71')
;

-- 18/09/2017 15h23min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129884,1.0,'LBR_TaxGroup_UU',1000033,'LBR_TaxGroup_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:03','YYYY-MM-DD HH24:MI:SS'),100,1122408,'Y','N','U','N','1fe0688f-d307-4f8b-9acd-f4084a9b6fbf','N')
;

-- 18/09/2017 15h23min4s BRT
ALTER TABLE LBR_TaxGroup ADD COLUMN LBR_TaxGroup_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min4s BRT
ALTER TABLE LBR_TaxGroup ADD CONSTRAINT LBR_TaxGroup_UU_idx UNIQUE (LBR_TaxGroup_UU)
;

-- 18/09/2017 15h23min5s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122409,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxLegalFW_UU','LBR_TaxLegalFW_UU','LBR_TaxLegalFW_UU','U','db45b961-e4ce-461d-adaa-8e9cfd34ee00')
;

-- 18/09/2017 15h23min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129885,1.0,'LBR_TaxLegalFW_UU',1120462,'LBR_TaxLegalFW_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:04','YYYY-MM-DD HH24:MI:SS'),100,1122409,'Y','N','U','N','d4933222-07a9-4071-8948-79e90a3c096d','N')
;

-- 18/09/2017 15h23min5s BRT
ALTER TABLE LBR_TaxLegalFW ADD COLUMN LBR_TaxLegalFW_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min5s BRT
ALTER TABLE LBR_TaxLegalFW ADD CONSTRAINT LBR_TaxLegalFW_UU_idx UNIQUE (LBR_TaxLegalFW_UU)
;

-- 18/09/2017 15h23min6s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122410,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxLine_UU','LBR_TaxLine_UU','LBR_TaxLine_UU','U','c0144e36-23ef-47b1-bfff-5a11d2750623')
;

-- 18/09/2017 15h23min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129886,1.0,'LBR_TaxLine_UU',1000007,'LBR_TaxLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,1122410,'Y','N','U','N','48619c1a-c178-4e6f-aaed-eda4d02113e9','N')
;

-- 18/09/2017 15h23min7s BRT
ALTER TABLE LBR_TaxLine ADD COLUMN LBR_TaxLine_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min7s BRT
ALTER TABLE LBR_TaxLine ADD CONSTRAINT LBR_TaxLine_UU_idx UNIQUE (LBR_TaxLine_UU)
;

-- 18/09/2017 15h23min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122411,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxName_UU','LBR_TaxName_UU','LBR_TaxName_UU','U','1d583e07-0e27-4231-9789-f28cb4f6d3b9')
;

-- 18/09/2017 15h23min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129887,1.0,'LBR_TaxName_UU',1000025,'LBR_TaxName_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:07','YYYY-MM-DD HH24:MI:SS'),100,1122411,'Y','N','U','N','d0a63b0a-3d46-4475-9eb2-e8174de03ec3','N')
;

-- 18/09/2017 15h23min8s BRT
ALTER TABLE LBR_TaxName ADD COLUMN LBR_TaxName_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min8s BRT
ALTER TABLE LBR_TaxName ADD CONSTRAINT LBR_TaxName_UU_idx UNIQUE (LBR_TaxName_UU)
;

-- 18/09/2017 15h23min8s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122412,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxStatus_UU','LBR_TaxStatus_UU','LBR_TaxStatus_UU','U','b5ec8135-a525-46c1-9b5a-fa53b1d13f23')
;

-- 18/09/2017 15h23min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129888,1.0,'LBR_TaxStatus_UU',1106002,'LBR_TaxStatus_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-09-18 15:23:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-18 15:23:08','YYYY-MM-DD HH24:MI:SS'),100,1122412,'Y','N','U','N','61f44ec5-996f-4c7d-bf3f-dfc5ce9a6598','N')
;

-- 18/09/2017 15h23min9s BRT
ALTER TABLE LBR_TaxStatus ADD COLUMN LBR_TaxStatus_UU VARCHAR(36) DEFAULT NULL 
;

-- 18/09/2017 15h23min9s BRT
ALTER TABLE LBR_TaxStatus ADD CONSTRAINT LBR_TaxStatus_UU_idx UNIQUE (LBR_TaxStatus_UU)
;

SELECT Register_Migration_Script ('201709181200_GenerateUUIDColumns.sql') FROM DUAL
;
