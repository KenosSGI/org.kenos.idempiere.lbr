-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 04/10/2018 16h2min2s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,IsChangeLog,ReplicationType,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120605,'Production Group Header Report','Production Group Header Report','RV_LBR_ProductionGroup_Header',125,'3',0,0,'Y',TO_TIMESTAMP('2018-10-04 16:02:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:02:01','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','L','Y','eccfede4-2ca4-4ed9-8e40-e37d34a3f162','N','N')
;

-- 04/10/2018 16h2min2s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_ProductionGroup_Header',1000000,'N','N','Table RV_LBR_ProductionGroup_Header','Y','Y',0,0,TO_TIMESTAMP('2018-10-04 16:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:02:02','YYYY-MM-DD HH24:MI:SS'),100,1153605,'Y',1000000,1,200000,'312389a4-6d73-47de-9176-ed019e0f5c63')
;

-- 04/10/2018 16h8min26s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120006,'c8b47de1-ac0e-43ce-94e9-2f56ed65c212',TO_TIMESTAMP('2018-10-04 16:08:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Production Report',TO_TIMESTAMP('2018-10-04 16:08:26','YYYY-MM-DD HH24:MI:SS'),100,1120605,10,'FROM M_Production p')
;

-- 04/10/2018 16h8min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120328,'939705d0-35bc-4b61-b597-e2c7668e54a1',TO_TIMESTAMP('2018-10-04 16:08:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:26','YYYY-MM-DD HH24:MI:SS'),100,1120006,'M_Production_ID','p.M_Production_ID',10)
;

-- 04/10/2018 16h8min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120329,'ad87b1c7-0a3e-42f7-9e67-6dc46edbc09d',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,1120006,'AD_Client_ID','p.AD_Client_ID',20)
;

-- 04/10/2018 16h8min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120330,'3bfb8902-45af-400a-86ed-4276ba162731',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,1120006,'AD_Org_ID','p.AD_Org_ID',30)
;

-- 04/10/2018 16h8min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120331,'f68678f9-dd04-4c74-93c5-61d3ef9d4297',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:27','YYYY-MM-DD HH24:MI:SS'),100,1120006,'IsActive','p.IsActive',40)
;

-- 04/10/2018 16h8min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120332,'86f52fc9-9279-4d8d-ab4f-a0632a57db63',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,1120006,'Created','p.Created',50)
;

-- 04/10/2018 16h8min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120333,'f478eca7-bf2c-4e22-a4c5-955d7a4591dc',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,1120006,'CreatedBy','p.CreatedBy',60)
;

-- 04/10/2018 16h8min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120334,'47c257bb-22fe-4df0-8dd4-912000abcd26',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:28','YYYY-MM-DD HH24:MI:SS'),100,1120006,'Updated','p.Updated',70)
;

-- 04/10/2018 16h8min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120335,'36488795-f7b1-40ea-886f-22c2904d32f7',TO_TIMESTAMP('2018-10-04 16:08:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:29','YYYY-MM-DD HH24:MI:SS'),100,1120006,'UpdatedBy','p.UpdatedBy',80)
;

-- 04/10/2018 16h8min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120336,'a331c3f1-e7f3-4d98-9666-74461b4e2466',TO_TIMESTAMP('2018-10-04 16:08:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:29','YYYY-MM-DD HH24:MI:SS'),100,1120006,'M_Product_ID','p.M_Product_ID',90)
;

-- 04/10/2018 16h8min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120337,'b2885b15-1f0c-42bf-96b2-6efe33477ce7',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,1120006,'ProductionQty','p.ProductionQty',100)
;

-- 04/10/2018 16h8min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120338,'e3d53a83-2c8f-4d39-9be0-9be83bce94f5',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,1120006,'PriceEntered','p.PriceEntered',110)
;

-- 04/10/2018 16h8min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120339,'ff336e63-7b12-4e22-ae9d-04ece772e731',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:30','YYYY-MM-DD HH24:MI:SS'),100,1120006,'MovementDate','p.MovementDate',120)
;

-- 04/10/2018 16h8min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120340,'7cec8694-a5ea-4d8b-8dca-43ffc77a4360',TO_TIMESTAMP('2018-10-04 16:08:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:31','YYYY-MM-DD HH24:MI:SS'),100,1120006,'DocumentNo','p.DocumentNo',130)
;

-- 04/10/2018 16h8min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120341,'a8dc1b02-4de7-45a2-b877-4054a675cb23',TO_TIMESTAMP('2018-10-04 16:08:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:31','YYYY-MM-DD HH24:MI:SS'),100,1120006,'LBR_ProductionGroup_ID','p.LBR_ProductionGroup_ID',140)
;

-- 04/10/2018 16h8min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120342,'9e98b262-f434-4fa8-b06f-4a7e2eacf98e',TO_TIMESTAMP('2018-10-04 16:08:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:08:32','YYYY-MM-DD HH24:MI:SS'),100,1120006,'GrandTotal','ROUND((p.PriceEntered*p.ProductionQty),2)',150)
;

-- 04/10/2018 16h9min33s BRT
UPDATE AD_ViewComponent SET Name='Production Group Header Report', FromClause='FROM LBR_ProductionGroup p
INNER JOIN AD_OrgInfo oi ON oi.AD_Org_ID = p.AD_Org_ID',Updated=TO_TIMESTAMP('2018-10-04 16:09:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120006
;

-- 04/10/2018 16h10min0s BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_ProductionGroup_ID', ColumnSQL='p.LBR_ProductionGroup_ID',Updated=TO_TIMESTAMP('2018-10-04 16:10:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120328
;

-- 04/10/2018 16h10min48s BRT
UPDATE AD_ViewColumn SET ColumnName='C_BPartner_ID', ColumnSQL='p.C_BPartner_ID',Updated=TO_TIMESTAMP('2018-10-04 16:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120336
;

-- 04/10/2018 16h11min19s BRT
DELETE FROM AD_ViewColumn WHERE AD_ViewColumn_ID=1120341
;

-- 04/10/2018 16h11min19s BRT
DELETE FROM AD_ViewColumn WHERE AD_ViewColumn_ID=1120342
;

-- 04/10/2018 16h11min39s BRT
DELETE FROM AD_ViewColumn WHERE AD_ViewColumn_ID=1120337
;

-- 04/10/2018 16h11min39s BRT
DELETE FROM AD_ViewColumn WHERE AD_ViewColumn_ID=1120338
;

-- 04/10/2018 16h11min55s BRT
UPDATE AD_ViewColumn SET ColumnName='DateOrdered', ColumnSQL='p.DateOrdered',Updated=TO_TIMESTAMP('2018-10-04 16:11:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120339
;

-- 04/10/2018 16h12min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120343,'f8902aa3-e048-4684-8a05-aec642fcef0b',TO_TIMESTAMP('2018-10-04 16:12:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:12:23','YYYY-MM-DD HH24:MI:SS'),100,1120006,'C_BPartner_Location_ID','p.C_BPartner_Location_ID',90)
;

-- 04/10/2018 16h12min40s BRT
UPDATE AD_ViewColumn SET SeqNo=100,Updated=TO_TIMESTAMP('2018-10-04 16:12:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120343
;

-- 04/10/2018 16h13min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120344,'691838df-63c3-4883-a191-65a55ae79e0a',TO_TIMESTAMP('2018-10-04 16:13:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:13:15','YYYY-MM-DD HH24:MI:SS'),100,1120006,'DatePromised','p.DatePromised',110)
;

-- 04/10/2018 16h13min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120345,'20650ada-bb02-40ac-8070-bbeef53b5176',TO_TIMESTAMP('2018-10-04 16:13:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:13:54','YYYY-MM-DD HH24:MI:SS'),100,1120006,'M_PriceList_ID','p.M_PriceList_ID',140)
;

-- 04/10/2018 16h14min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120346,'183f6bc6-3aae-47f7-9003-9eb39c1afaaa',TO_TIMESTAMP('2018-10-04 16:14:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:14:12','YYYY-MM-DD HH24:MI:SS'),100,1120006,'LBR_CFOP_ID','p.LBR_CFOP_ID',140)
;

-- 04/10/2018 16h14min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120347,'96e23201-d988-420d-b9b5-7be0fad664b3',TO_TIMESTAMP('2018-10-04 16:14:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:14:34','YYYY-MM-DD HH24:MI:SS'),100,1120006,'C_DocTypeTarget_ID','p.C_DocTypeTarget_ID',140)
;

-- 04/10/2018 16h14min42s BRT
UPDATE AD_ViewColumn SET SeqNo=150,Updated=TO_TIMESTAMP('2018-10-04 16:14:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120345
;

-- 04/10/2018 16h14min45s BRT
UPDATE AD_ViewColumn SET SeqNo=160,Updated=TO_TIMESTAMP('2018-10-04 16:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120347
;

-- 04/10/2018 16h15min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120348,'00082658-e8f7-49e0-bb97-e1411248dbd7',TO_TIMESTAMP('2018-10-04 16:15:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:15:04','YYYY-MM-DD HH24:MI:SS'),100,1120006,'DocStatus','p.DocStatus',170)
;

-- 04/10/2018 16h15min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120349,'8cd091aa-58fc-4c0b-8930-2cdbc4b0310c',TO_TIMESTAMP('2018-10-04 16:15:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:15:33','YYYY-MM-DD HH24:MI:SS'),100,1120006,'Description','p.Description',180)
;

-- 04/10/2018 16h15min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120350,'f6893c9c-3a1b-4612-9509-f6c28a93e4ed',TO_TIMESTAMP('2018-10-04 16:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:15:54','YYYY-MM-DD HH24:MI:SS'),100,1120006,'LBR_Tax_ID','p.LBR_Tax_ID',190)
;

-- 04/10/2018 16h16min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120351,'36c4f0ab-2235-4743-818a-68424f88bf7a',TO_TIMESTAMP('2018-10-04 16:16:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:16:09','YYYY-MM-DD HH24:MI:SS'),100,1120006,'M_Warehouse_ID','p.M_Warehouse_ID',200)
;

-- 04/10/2018 16h16min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120352,'8c57a01f-4f34-49a4-9f3e-97dadde18b66',TO_TIMESTAMP('2018-10-04 16:16:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:16:24','YYYY-MM-DD HH24:MI:SS'),100,1120006,'DateStart','p.DateStart',210)
;

-- 04/10/2018 16h16min46s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120353,'25f6dd67-26f2-4403-84ee-d5378886c928',TO_TIMESTAMP('2018-10-04 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:16:45','YYYY-MM-DD HH24:MI:SS'),100,1120006,'SalesRep_ID','p.SalesRep_ID',220)
;

-- 04/10/2018 16h16min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120354,'0332c1b5-af3c-4b16-ab1b-e499da6df0c9',TO_TIMESTAMP('2018-10-04 16:16:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:16:58','YYYY-MM-DD HH24:MI:SS'),100,1120006,'lbr_LegalEntity','p.lbr_LegalEntity',230)
;

-- 04/10/2018 16h17min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120355,'a1235379-36f7-4e5c-9f6c-e849f81c5d92',TO_TIMESTAMP('2018-10-04 16:17:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:17:09','YYYY-MM-DD HH24:MI:SS'),100,1120006,'C_Location_ID','oi.C_Location_ID',240)
;

-- 04/10/2018 16h17min12s BRT
UPDATE AD_ViewColumn SET ColumnSQL='oi.lbr_LegalEntity',Updated=TO_TIMESTAMP('2018-10-04 16:17:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120354
;

-- 04/10/2018 16h17min35s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120356,'183c8f60-4a35-410c-86d2-9cf0be786d08',TO_TIMESTAMP('2018-10-04 16:17:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-10-04 16:17:35','YYYY-MM-DD HH24:MI:SS'),100,1120006,'lbr_CNPJ','oi.lbr_CNPJ',250)
;

-- 04/10/2018 16h18min43s BRT
CREATE OR REPLACE VIEW RV_LBR_ProductionGroup_Header(LBR_ProductionGroup_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, C_BPartner_ID, C_BPartner_Location_ID, DatePromised, DateOrdered, DocumentNo, LBR_CFOP_ID, M_PriceList_ID, C_DocTypeTarget_ID, DocStatus, Description, LBR_Tax_ID, M_Warehouse_ID, DateStart, SalesRep_ID, lbr_LegalEntity, C_Location_ID, lbr_CNPJ) AS SELECT p.LBR_ProductionGroup_ID AS LBR_ProductionGroup_ID, p.AD_Client_ID AS AD_Client_ID, p.AD_Org_ID AS AD_Org_ID, p.IsActive AS IsActive, p.Created AS Created, p.CreatedBy AS CreatedBy, p.Updated AS Updated, p.UpdatedBy AS UpdatedBy, p.C_BPartner_ID AS C_BPartner_ID, p.C_BPartner_Location_ID AS C_BPartner_Location_ID, p.DatePromised AS DatePromised, p.DateOrdered AS DateOrdered, p.DocumentNo AS DocumentNo, p.LBR_CFOP_ID AS LBR_CFOP_ID, p.M_PriceList_ID AS M_PriceList_ID, p.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, p.DocStatus AS DocStatus, p.Description AS Description, p.LBR_Tax_ID AS LBR_Tax_ID, p.M_Warehouse_ID AS M_Warehouse_ID, p.DateStart AS DateStart, p.SalesRep_ID AS SalesRep_ID, oi.lbr_LegalEntity AS lbr_LegalEntity, oi.C_Location_ID AS C_Location_ID, oi.lbr_CNPJ AS lbr_CNPJ FROM LBR_ProductionGroup p INNER JOIN AD_OrgInfo oi ON oi.AD_Org_ID = p.AD_Org_ID
;

-- 04/10/2018 16h18min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130474,0.0,'Production Group',1120605,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:57','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','5a6f49f0-1f15-4264-ba7d-bcb35cb7f82d','N','N')
;

-- 04/10/2018 16h18min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130475,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120605,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:58','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','606a31a1-b4fd-4fe9-ab41-74df84570a80','N','D')
;

-- 04/10/2018 16h18min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130476,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120605,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:58','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','0fd5d10f-6cb7-4d12-9bc5-9ee5a5adb870','N','D')
;

-- 04/10/2018 16h18min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130477,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120605,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','3f48c827-12e5-4aae-9e91-e27dcdff4ffa','N')
;

-- 04/10/2018 16h18min59s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130478,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120605,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','5221f15c-4706-4dc2-80b8-3f7f22481c85','N')
;

-- 04/10/2018 16h19min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130479,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120605,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:18:59','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','2cb7d8c7-c243-4baa-9036-807c1e83a0ac','N','D')
;

-- 04/10/2018 16h19min0s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130480,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120605,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:00','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','26a86f45-d9b0-4ebd-956b-f6495ef651d4','N')
;

-- 04/10/2018 16h19min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130481,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120605,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:00','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','ed78b243-e3b4-42b7-b9bf-3ff890ae70b1','N','D')
;

-- 04/10/2018 16h19min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130482,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120605,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','0bae886c-24d6-4091-aca7-3faa1a0a4e68','N')
;

-- 04/10/2018 16h19min1s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130483,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120605,'C_BPartner_Location_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','17e10f29-d7f2-4d1c-b446-a14777b7a990','N')
;

-- 04/10/2018 16h19min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130484,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120605,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:01','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','72e69664-fff7-469f-b1a4-f552e9a536b6','N')
;

-- 04/10/2018 16h19min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130485,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120605,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','fca75470-052f-4cd3-9922-a2ac906e9749','N')
;

-- 04/10/2018 16h19min2s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130486,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120605,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','e44bd3d6-dd72-4ddb-9fbd-683242aa8121','N')
;

-- 04/10/2018 16h19min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130487,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120605,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:02','YYYY-MM-DD HH24:MI:SS'),100,1000137,'N','N','LBRA','N','70f9f255-5bbb-485d-adf2-f4d9204f2834','N','N')
;

-- 04/10/2018 16h19min3s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130488,0.0,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120605,'M_PriceList_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,449,'N','N','LBRA','N','7119d5c5-7cfc-43e8-8b4b-a6c4ac62b65d','N','N')
;

-- 04/10/2018 16h19min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130489,0.0,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120605,'C_DocTypeTarget_ID',10,'N','N','N','N','N','N',18,170,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,197,'N','N','LBRA','N','fce3aa88-2b6d-4b61-996a-db2a8ef67000','N')
;

-- 04/10/2018 16h19min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130490,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120605,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','4b4d2279-4303-429c-b18c-121d8d0c7776','N')
;

-- 04/10/2018 16h19min4s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130491,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120605,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','e6a74555-9697-4955-857f-993a74b5079f','N')
;

-- 04/10/2018 16h19min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130492,0.0,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120605,'LBR_Tax_ID',10,'N','N','N','N','N','N',1000006,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:04','YYYY-MM-DD HH24:MI:SS'),100,1000094,'N','N','LBRA','N','d4f3a561-b609-4c10-aca4-2136a1c929ed','N')
;

-- 04/10/2018 16h19min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130493,0.0,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120605,'M_Warehouse_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:05','YYYY-MM-DD HH24:MI:SS'),100,459,'N','N','LBRA','N','a912458e-751a-4bcf-acfe-3c22c0b1ec0b','N')
;

-- 04/10/2018 16h19min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130494,0.0,'Date Start','Date Start for this Order',1120605,'DateStart',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:05','YYYY-MM-DD HH24:MI:SS'),100,53280,'N','N','LBRA','N','6646211a-830e-4a12-8adc-0238917f563b','N')
;

-- 04/10/2018 16h19min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130495,0.0,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120605,'SalesRep_ID',10,'N','N','N','N','N','N',18,190,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,1063,'N','N','LBRA','N','50d22080-5f09-4522-aa03-02eb33f15631','N')
;

-- 04/10/2018 16h19min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130496,0.0,'Legal Entity',1120605,'lbr_LegalEntity',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,1100005,'N','N','LBRA','N','1eb8bc9e-8eb2-41e2-85d2-fc8806ffe843','N')
;

-- 04/10/2018 16h19min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130497,0.0,'Address','Location or Address','The Location / Address field defines the location of an entity.',1120605,'C_Location_ID',10,'N','N','N','N','N','N',21,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,202,'N','N','LBRA','N','52ad5bba-e119-4b8a-8e1c-83723581f716','N','N')
;

-- 04/10/2018 16h19min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130498,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120605,'lbr_CNPJ',18,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-10-04 16:19:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-10-04 16:19:07','YYYY-MM-DD HH24:MI:SS'),100,1000009,'N','N','LBRA','N','fac2e4ee-5c84-48ac-9313-05af47c13989','N')
;

SELECT Register_Migration_Script ('201810041800_RV_LBR_ProductionGroup_Header.sql') FROM DUAL
;