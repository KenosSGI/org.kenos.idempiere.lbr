SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10 de dez de 2020 15:14:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123230,0,0,'Y',TO_DATE('2020-12-10 15:14:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:14:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NAT_BC_CRED','Cód. BC de Crédito','Cód. BC de Crédito','Código da base de cálculo do crédito, conforme a Tabela indicada no item 4.3.7, caso seja informado código representativo de crédito no Campo 09
(CST_PIS) ou no Campo 13 (CST_COFINS).','Código da base de cálculo do crédito','LBRA','fd1e71f6-478d-4151-8070-8ed3b26b1ea8')
;

-- 10 de dez de 2020 15:18:26 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,Help,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120373,'LBR_NAT_BC_CRED -Tabela Cód. BC de Crédito','Tabela Código de Base de Cálculo do Crédito','A ser utilizada na codificação da base de cálculo dos créditos apurado no período, no caso de ser preenchido registro de documentos e operações geradoras de crédito, nos Blocos
A, C, D, F e 1 (Créditos extemporâneos)','L',0,0,'Y',TO_DATE('2020-12-10 15:18:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:18:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','502e4c42-a5c4-490e-bb02-6836e8b62574')
;

-- 10 de dez de 2020 15:18:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122881,'Aquisição de bens para revenda',1120373,'01',0,0,'Y',TO_DATE('2020-12-10 15:18:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:18:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9be81ec0-fe69-40af-a4be-725754c7f794')
;

-- 10 de dez de 2020 15:19:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122882,'Aquisição de bens utilizados como insumo',1120373,'02',0,0,'Y',TO_DATE('2020-12-10 15:19:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:19:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0469646c-3eed-46a9-8388-7c3e882af2f1')
;

-- 10 de dez de 2020 15:19:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122883,'Aquisição de serviços utilizados como insumo',1120373,'03',0,0,'Y',TO_DATE('2020-12-10 15:19:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:19:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','cb372dc1-e82e-40d4-b3a5-326997a7da11')
;

-- 10 de dez de 2020 15:19:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122884,'Energia elétrica e térmica, inclusive sob a forma de vapor',1120373,'04',0,0,'Y',TO_DATE('2020-12-10 15:19:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:19:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d36efe1e-e390-4f52-81a6-f6325c067bd0')
;

-- 10 de dez de 2020 15:19:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122885,'Aluguéis de prédios',1120373,'05',0,0,'Y',TO_DATE('2020-12-10 15:19:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:19:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5bd72aac-d798-4478-9b46-b6dad990f759')
;

-- 10 de dez de 2020 15:20:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122886,'Aluguéis de máquinas e equipamentos',1120373,'06',0,0,'Y',TO_DATE('2020-12-10 15:20:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:20:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2ecb81c9-b89d-49bb-9aa8-816da064450a')
;

-- 10 de dez de 2020 15:20:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122887,'Armazenagem de mercadoria e frete na operação de venda',1120373,'07',0,0,'Y',TO_DATE('2020-12-10 15:20:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:20:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0fa25d01-977c-4aff-98db-546b5976744f')
;

-- 10 de dez de 2020 15:20:25 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122888,'Contraprestações de arrendamento mercantil',1120373,'08',0,0,'Y',TO_DATE('2020-12-10 15:20:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:20:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','58cab0b4-3ff3-47e2-a7c6-c2cd8b32d3df')
;

-- 10 de dez de 2020 15:20:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122889,'Máquinas, equipamentos e outros bens incorporados ao ativo imobilizado (crédito sobre encargos de depreciação).',1120373,'09',0,0,'Y',TO_DATE('2020-12-10 15:20:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:20:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','64b60f0f-cd1b-428b-819d-6c8ecb8b3b30')
;

-- 10 de dez de 2020 15:20:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122890,'Máquinas, equipamentos e outros bens incorporados ao ativo imobilizado (crédito com base no valor de aquisição).',1120373,'10',0,0,'Y',TO_DATE('2020-12-10 15:20:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:20:46','YYYY-MM-DD HH24:MI:SS'),100,'U','07c76d1b-4068-4ca3-9f94-673c457c6f47')
;

-- 10 de dez de 2020 15:20:52 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2020-12-10 15:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122890
;

-- 10 de dez de 2020 15:21:03 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122891,'Amortização e Depreciação de edificações e benfeitorias em imóveis',1120373,'11',0,0,'Y',TO_DATE('2020-12-10 15:21:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:21:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f03738c2-6390-490b-b267-fe70a14b4af8')
;

-- 10 de dez de 20SELECT Register_Migration_Script ('202012101930_FixSPEDContribution.sql') FROM DUAL
;20 15:21:15 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122892,'Devolução de Vendas Sujeitas à Incidência Não-Cumulativa',1120373,'12',0,0,'Y',TO_DATE('2020-12-10 15:21:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:21:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','63c92f6e-3777-4518-8267-701a97e3f3ee')
;

-- 10 de dez de 2020 15:21:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122893,'Outras Operações com Direito a Crédito',1120373,'13',0,0,'Y',TO_DATE('2020-12-10 15:21:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:21:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e2938198-8be2-4bd3-b929-58649992b0ae')
;

-- 10 de dez de 2020 15:21:40 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122894,'Atividade de Transporte de Cargas – Subcontratação',1120373,'14',0,0,'Y',TO_DATE('2020-12-10 15:21:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:21:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','12541c30-4140-4dbe-a26b-4a6d796b92aa')
;

-- 10 de dez de 2020 15:21:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122895,'Atividade Imobiliária – Custo Incorrido de Unidade Imobiliária',1120373,'15',0,0,'Y',TO_DATE('2020-12-10 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:21:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','1009d0d5-5f70-4bbd-a517-db2aef0b9e37')
;

-- 10 de dez de 2020 15:22:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122896,'Atividade Imobiliária – Custo Orçado de unidade não concluída',1120373,'16',0,0,'Y',TO_DATE('2020-12-10 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:22:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','36a7294c-d959-467e-a052-7aa40c4ad040')
;

-- 10 de dez de 2020 15:22:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122897,'Atividade de Prestação de Serviços de Limpeza, Conservação e Manutenção – vale-transporte, vale- refeição ou vale-alimentação, f',1120373,'17',0,0,'Y',TO_DATE('2020-12-10 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:22:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','eadd67e9-562e-49ed-acf6-53952bf2a03b')
;

-- 10 de dez de 2020 15:22:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122898,'Estoque de abertura de bens',1120373,'18',0,0,'Y',TO_DATE('2020-12-10 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:22:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b13fc144-b8a9-400c-9f80-24d5fa90758e')
;

-- 10 de dez de 2020 15:22:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132771,0,'Cód. BC de Crédito','Cód. BC de Crédito','Código da base de cálculo do crédito, conforme a Tabela indicada no item 4.3.7, caso seja informado código representativo de crédito no Campo 09
(CST_PIS) ou no Campo 13 (CST_COFINS).',208,'LBR_NAT_BC_CRED',2,'N','N','N','N','N',0,'N',17,1120373,0,0,'Y',TO_DATE('2020-12-10 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:22:44','YYYY-MM-DD HH24:MI:SS'),100,1123230,'Y','N','LBRA','N','N','N','Y','c3ec70c9-e83c-49bf-aed7-3ab9dcdad726','Y',0,'N','N','N','N')
;

-- 10 de dez de 2020 15:22:54 BRT
ALTER TABLE M_Product ADD LBR_NAT_BC_CRED VARCHAR2(2) DEFAULT NULL 
;

-- 10 de dez de 2020 15:28:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130135,'Cód. BC de Crédito','Cód. BC de Crédito','Código da base de cálculo do crédito, conforme a Tabela indicada no item 4.3.7, caso seja informado código representativo de crédito no Campo 09
(CST_PIS) ou no Campo 13 (CST_COFINS).',180,1132771,'Y',1,20565,'Y','N','N','N',0,0,'Y',TO_DATE('2020-12-10 15:28:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 15:28:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','3898b20a-6bbc-4eea-8867-d1fc3d850745','N',0,4,2,1,'N','N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 10 de dez de 2020 17:15:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122899,'Recibo Provisório de Serviço',1120009,'RS',0,0,'Y',TO_DATE('2020-12-10 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-10 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2e1c3449-6edc-4da2-963e-7edba292431d')
;

SELECT Register_Migration_Script ('202012101930_FixSPEDContribution.sql') FROM DUAL
;