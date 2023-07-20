-- 6 de jul de 2023 15:46:23 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120759,'Bank Slip Report',1000022,'RV_BankSlip',0,'3',0,0,'Y',TO_TIMESTAMP('2023-07-06 15:46:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:46:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','23e66f93-2772-4640-aff8-2db239d5704e','N','N','N','N')
;

-- 6 de jul de 2023 15:46:23 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_BankSlip',1000000,'N','N','Table RV_BankSlip','Y','Y',0,0,TO_TIMESTAMP('2023-07-06 15:46:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:46:23','YYYY-MM-DD HH24:MI:SS'),100,1154033,'Y',1000000,1,200000,'d644a123-9f9b-4f60-8fa5-2a1608f2a000')
;

-- 6 de jul de 2023 15:46:39 BRT
UPDATE AD_Table SET IsDeleteable='N', IsView='Y', IsChangeLog='N',Updated=TO_TIMESTAMP('2023-07-06 15:46:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120759
;

-- 6 de jul de 2023 15:47:16 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120030,'d0b7add1-8358-4e96-b68d-b2519cc05466',TO_TIMESTAMP('2023-07-06 15:47:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_BankSlip',TO_TIMESTAMP('2023-07-06 15:47:16','YYYY-MM-DD HH24:MI:SS'),100,1120759,10,'FROM LBR_BankSlip bs')
;

-- 6 de jul de 2023 15:47:40 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120706,'a6b4ee61-2dbd-4f52-9886-77f6883df10e',TO_TIMESTAMP('2023-07-06 15:47:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2023-07-06 15:47:40','YYYY-MM-DD HH24:MI:SS'),100,1120030,'AD_Client_ID','bs.AD_Client_ID',10)
;

-- 6 de jul de 2023 15:55:35 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120707,'c6616af1-9ea9-4b2c-91e5-e445fcba8b2a',TO_TIMESTAMP('2023-07-06 15:55:34','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:34','YYYY-MM-DD HH24:MI:SS'),100,1120030,'AD_Org_ID','bs.AD_Org_ID',20)
;

-- 6 de jul de 2023 15:55:35 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120708,'915f96ee-77f0-4efb-a0a7-c1a4d677894a',TO_TIMESTAMP('2023-07-06 15:55:35','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:35','YYYY-MM-DD HH24:MI:SS'),100,1120030,'Created','bs.Created',30)
;

-- 6 de jul de 2023 15:55:36 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120709,'4e3a3398-3a37-4a90-b534-739ce04a90d9',TO_TIMESTAMP('2023-07-06 15:55:35','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:35','YYYY-MM-DD HH24:MI:SS'),100,1120030,'CreatedBy','bs.CreatedBy',40)
;

-- 6 de jul de 2023 15:55:36 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120710,'967a1e50-52b7-45b6-ac1e-97121ef225d0',TO_TIMESTAMP('2023-07-06 15:55:36','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:36','YYYY-MM-DD HH24:MI:SS'),100,1120030,'Updated','bs.Updated',50)
;

-- 6 de jul de 2023 15:55:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120711,'a77af11a-b5c5-4027-8e41-aa6a94302dc5',TO_TIMESTAMP('2023-07-06 15:55:36','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:36','YYYY-MM-DD HH24:MI:SS'),100,1120030,'UpdatedBy','bs.UpdatedBy',60)
;

-- 6 de jul de 2023 15:55:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120712,'9e9a4213-d704-4d26-beb2-83e58a49f7a9',TO_TIMESTAMP('2023-07-06 15:55:37','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:37','YYYY-MM-DD HH24:MI:SS'),100,1120030,'IsActive','bs.IsActive',70)
;

-- 6 de jul de 2023 15:55:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120713,'ff11ea30-89bf-4faf-968f-2c29d64d7a0e',TO_TIMESTAMP('2023-07-06 15:55:37','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:37','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_BankSlip_ID','bs.LBR_BankSlip_ID',80)
;

-- 6 de jul de 2023 15:55:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120714,'1a711194-01d6-4b91-9775-08ab056d5941',TO_TIMESTAMP('2023-07-06 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_DocType_ID','bs.C_DocType_ID',90)
;

-- 6 de jul de 2023 15:55:39 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120715,'faaf44f4-4f0f-49f5-85c6-cea0684797c9',TO_TIMESTAMP('2023-07-06 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_Bank_ID','bs.C_Bank_ID',100)
;

-- 6 de jul de 2023 15:55:39 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120716,'576050c2-06f2-4c56-824b-5b3bc102ab85',TO_TIMESTAMP('2023-07-06 15:55:39','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:39','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_BankAccount_ID','bs.C_BankAccount_ID',110)
;

-- 6 de jul de 2023 15:55:40 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120717,'58aaab78-c058-40e2-91d5-eb829722a704',TO_TIMESTAMP('2023-07-06 15:55:39','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:39','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_BPartner_ID','bs.C_BPartner_ID',120)
;

-- 6 de jul de 2023 15:55:40 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120718,'d9256e73-42e9-4088-aa9f-c8eccf5c33f5',TO_TIMESTAMP('2023-07-06 15:55:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:40','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_BPartner_Location_ID','bs.C_BPartner_Location_ID',130)
;

-- 6 de jul de 2023 15:55:41 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120719,'ae2b8690-b8db-40ac-aacc-bca744763dbb',TO_TIMESTAMP('2023-07-06 15:55:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:40','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_Invoice_ID','bs.C_Invoice_ID',140)
;

-- 6 de jul de 2023 15:55:41 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120720,'71aa5148-1407-490e-8817-4708091d3879',TO_TIMESTAMP('2023-07-06 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,1120030,'C_InvoicePaySchedule_ID','bs.C_InvoicePaySchedule_ID',150)
;

-- 6 de jul de 2023 15:55:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120721,'abe2bde6-ad35-421d-acc1-39ff23ee3352',TO_TIMESTAMP('2023-07-06 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,1120030,'DateDoc','bs.DateDoc',160)
;

-- 6 de jul de 2023 15:55:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120722,'8c98855e-4101-47a6-8246-f5925a6c761c',TO_TIMESTAMP('2023-07-06 15:55:42','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:42','YYYY-MM-DD HH24:MI:SS'),100,1120030,'DiscountAmt','bs.DiscountAmt',170)
;

-- 6 de jul de 2023 15:55:43 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120723,'5690d38f-17d0-4e0a-9234-c7dfd366d9af',TO_TIMESTAMP('2023-07-06 15:55:42','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:42','YYYY-MM-DD HH24:MI:SS'),100,1120030,'DocStatus','bs.DocStatus',180)
;

-- 6 de jul de 2023 15:55:43 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120724,'ff1eeb6e-f5ef-47e7-bf38-abeaa82cbf8c',TO_TIMESTAMP('2023-07-06 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,1120030,'DocumentNo','bs.DocumentNo',190)
;

-- 6 de jul de 2023 15:55:44 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120725,'1ba9ae5d-6ddd-403b-b9ca-4f7a34ec2285',TO_TIMESTAMP('2023-07-06 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,1120030,'DueDate','bs.DueDate',200)
;

-- 6 de jul de 2023 15:55:44 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120726,'8a6e9395-13ba-4e44-a4de-dcbd2500495b',TO_TIMESTAMP('2023-07-06 15:55:44','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:44','YYYY-MM-DD HH24:MI:SS'),100,1120030,'GrandTotal','bs.GrandTotal',210)
;

-- 6 de jul de 2023 15:55:45 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120727,'f7650676-80a5-447e-a49a-b048b319c618',TO_TIMESTAMP('2023-07-06 15:55:44','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:44','YYYY-MM-DD HH24:MI:SS'),100,1120030,'IsCancelled','bs.IsCancelled',220)
;

-- 6 de jul de 2023 15:55:45 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120728,'26a078ad-5d2f-44fb-90b1-60d0ea2e6795',TO_TIMESTAMP('2023-07-06 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,1120030,'IsPaid','bs.IsPaid',230)
;

-- 6 de jul de 2023 15:55:46 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120729,'957083c8-cdf2-4795-b2d3-596537e8bf0e',TO_TIMESTAMP('2023-07-06 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,1120030,'IsRegistered','bs.IsRegistered',240)
;

-- 6 de jul de 2023 15:55:46 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120730,'82eace57-2d70-4d65-bd8e-545064c4302b',TO_TIMESTAMP('2023-07-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_BankSlipContract_ID','bs.LBR_BankSlipContract_ID',250)
;

-- 6 de jul de 2023 15:55:47 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120731,'19fe7fde-83be-4c04-bc41-d89edbded82b',TO_TIMESTAMP('2023-07-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:46','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_EMailSent','bs.LBR_EMailSent',260)
;

-- 6 de jul de 2023 15:55:47 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120732,'d32b76ff-63c6-4241-9e96-13727e7c012a',TO_TIMESTAMP('2023-07-06 15:55:47','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:47','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IsAccepted','bs.LBR_IsAccepted',270)
;

-- 6 de jul de 2023 15:55:48 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120733,'783bdeaa-7250-4ccc-8373-25002c6080d7',TO_TIMESTAMP('2023-07-06 15:55:47','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:47','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IsHalted','bs.LBR_IsHalted',280)
;

-- 6 de jul de 2023 15:55:48 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120734,'531bd326-2d28-4ab1-8446-1c6fa4261c99',TO_TIMESTAMP('2023-07-06 15:55:48','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:48','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IsPartialPayment','bs.LBR_IsPartialPayment',290)
;

-- 6 de jul de 2023 15:55:49 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120735,'dc543b4e-c1bf-47cd-bf87-8b085c70dbb6',TO_TIMESTAMP('2023-07-06 15:55:48','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:48','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IsProtested','bs.LBR_IsProtested',300)
;

-- 6 de jul de 2023 15:55:49 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120736,'1e5fd7cb-ec88-4528-b07c-e756579d1a8c',TO_TIMESTAMP('2023-07-06 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IssuedBy','bs.LBR_IssuedBy',310)
;

-- 6 de jul de 2023 15:55:50 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120737,'cfb11ad5-47b4-4460-922b-bff24dfea4b1',TO_TIMESTAMP('2023-07-06 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_IsWrittenOff','bs.LBR_IsWrittenOff',320)
;

-- 6 de jul de 2023 15:55:50 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120738,'f3c7812f-8bc4-4070-acc9-aa92a836c991',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_NotaFiscal_ID','bs.LBR_NotaFiscal_ID',330)
;

-- 6 de jul de 2023 15:55:50 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120739,'048854cf-9322-4131-bc94-ec837ec47c5c',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_NumberInBank','bs.LBR_NumberInBank',340)
;

-- 6 de jul de 2023 15:55:51 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120740,'d684a770-56d9-4c79-aae9-eaeefc9a04d3',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,1120030,'LBR_NumberInOrg','bs.LBR_NumberInOrg',350)
;

-- 6 de jul de 2023 15:55:51 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120741,'a5cb8074-5fd7-49ae-add9-a0fadca5cbf0',TO_TIMESTAMP('2023-07-06 15:55:51','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:51','YYYY-MM-DD HH24:MI:SS'),100,1120030,'lbr_PayScheduleNo','bs.lbr_PayScheduleNo',360)
;

-- 6 de jul de 2023 15:55:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120742,'9e2f66bc-9f8b-401a-91f7-5cdeda9808b7',TO_TIMESTAMP('2023-07-06 15:55:51','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_TIMESTAMP('2023-07-06 15:55:51','YYYY-MM-DD HH24:MI:SS'),100,1120030,'WriteOffAmt','bs.WriteOffAmt',370)
;

-- 6 de jul de 2023 15:56:33 BRT
UPDATE AD_ViewComponent SET Referenced_Table_ID=1120689,Updated=TO_TIMESTAMP('2023-07-06 15:56:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120030
;

-- 6 de jul de 2023 15:56:43 BRT
CREATE OR REPLACE VIEW RV_BankSlip(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_BankSlip_ID, C_DocType_ID, C_Bank_ID, C_BankAccount_ID, C_BPartner_ID, C_BPartner_Location_ID, C_Invoice_ID, C_InvoicePaySchedule_ID, DateDoc, DiscountAmt, DocStatus, DocumentNo, DueDate, GrandTotal, IsCancelled, IsPaid, IsRegistered, LBR_BankSlipContract_ID, LBR_EMailSent, LBR_IsAccepted, LBR_IsHalted, LBR_IsPartialPayment, LBR_IsProtested, LBR_IssuedBy, LBR_IsWrittenOff, LBR_NotaFiscal_ID, LBR_NumberInBank, LBR_NumberInOrg, lbr_PayScheduleNo, WriteOffAmt) AS SELECT bs.AD_Client_ID AS AD_Client_ID, bs.AD_Org_ID AS AD_Org_ID, bs.Created AS Created, bs.CreatedBy AS CreatedBy, bs.Updated AS Updated, bs.UpdatedBy AS UpdatedBy, bs.IsActive AS IsActive, bs.LBR_BankSlip_ID AS LBR_BankSlip_ID, bs.C_DocType_ID AS C_DocType_ID, bs.C_Bank_ID AS C_Bank_ID, bs.C_BankAccount_ID AS C_BankAccount_ID, bs.C_BPartner_ID AS C_BPartner_ID, bs.C_BPartner_Location_ID AS C_BPartner_Location_ID, bs.C_Invoice_ID AS C_Invoice_ID, bs.C_InvoicePaySchedule_ID AS C_InvoicePaySchedule_ID, bs.DateDoc AS DateDoc, bs.DiscountAmt AS DiscountAmt, bs.DocStatus AS DocStatus, bs.DocumentNo AS DocumentNo, bs.DueDate AS DueDate, bs.GrandTotal AS GrandTotal, bs.IsCancelled AS IsCancelled, bs.IsPaid AS IsPaid, bs.IsRegistered AS IsRegistered, bs.LBR_BankSlipContract_ID AS LBR_BankSlipContract_ID, bs.LBR_EMailSent AS LBR_EMailSent, bs.LBR_IsAccepted AS LBR_IsAccepted, bs.LBR_IsHalted AS LBR_IsHalted, bs.LBR_IsPartialPayment AS LBR_IsPartialPayment, bs.LBR_IsProtested AS LBR_IsProtested, bs.LBR_IssuedBy AS LBR_IssuedBy, bs.LBR_IsWrittenOff AS LBR_IsWrittenOff, bs.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, bs.LBR_NumberInBank AS LBR_NumberInBank, bs.LBR_NumberInOrg AS LBR_NumberInOrg, bs.lbr_PayScheduleNo AS lbr_PayScheduleNo, bs.WriteOffAmt AS WriteOffAmt FROM LBR_BankSlip bs
;

-- 6 de jul de 2023 15:56:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133809,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120759,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:54','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','18e0025c-f46b-4b8f-95c9-250612ed0697','N','D')
;

-- 6 de jul de 2023 15:56:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133810,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120759,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:54','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','0995e07a-167e-4632-aae6-97df2d29ea51','N','D')
;

-- 6 de jul de 2023 15:56:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133811,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120759,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:55','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','99f5a4d4-8072-433e-91d4-deab3de4a91f','N')
;

-- 6 de jul de 2023 15:56:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133812,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120759,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:55','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','283fa9eb-84ac-4eef-a36d-2e81fc8bcb75','N','D')
;

-- 6 de jul de 2023 15:56:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133813,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120759,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:56','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','843b19a5-7bab-46d9-9f16-75035a87c7f9','N')
;

-- 6 de jul de 2023 15:56:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133814,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120759,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:56','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','aed23320-6e98-4b06-aed4-1db538f91cc8','N','D')
;

-- 6 de jul de 2023 15:56:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133815,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120759,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','e95350ef-1c7f-4884-bdc1-efc1540e924c','N')
;

-- 6 de jul de 2023 15:56:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133816,0.0,'Bank Slip',1120759,'LBR_BankSlip_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,1123118,'N','N','LBRA','N','631418fe-d3e6-4cec-b56f-68b825623836','N','N')
;

-- 6 de jul de 2023 15:56:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133817,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120759,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','442e2361-6555-4fdb-8379-9475d352e8f8','N')
;

-- 6 de jul de 2023 15:56:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133818,0.0,'Bank','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.',1120759,'C_Bank_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,835,'N','N','LBRA','N','d72cb4cc-159e-4cb9-82f1-2626f07ef6eb','N','N')
;

-- 6 de jul de 2023 15:56:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133819,0.0,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120759,'C_BankAccount_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,836,'N','N','LBRA','N','67614d42-3304-4a65-8b5a-06fa8954375c','N','N')
;

-- 6 de jul de 2023 15:56:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133820,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120759,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','d30d118f-295d-4331-9817-b9a1eeb8a90a','N')
;

-- 6 de jul de 2023 15:57:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133821,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120759,'C_BPartner_Location_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:56:59','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','3b0a1a58-1d96-49d2-a50d-bcda7336bea7','N')
;

-- 6 de jul de 2023 15:57:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133822,0.0,'Invoice','Invoice Identifier','The Invoice Document.',1120759,'C_Invoice_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','0e53e0e7-a0be-4c9b-996c-760e1cb9bab9','N')
;

-- 6 de jul de 2023 15:57:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133823,0.0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',1120759,'C_InvoicePaySchedule_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,1995,'N','N','LBRA','N','3af162fa-b82f-46c5-b9e7-be64387ae63f','N')
;

-- 6 de jul de 2023 15:57:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133824,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120759,'DateDoc',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:00','YYYY-MM-DD HH24:MI:SS'),100,265,'N','N','LBRA','N','041ece20-fe7d-4970-8069-2af6f6c7e8d7','N')
;

-- 6 de jul de 2023 15:57:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133825,0.0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120759,'DiscountAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:01','YYYY-MM-DD HH24:MI:SS'),100,1395,'N','N','LBRA','N','a0eeee9b-8532-4914-8812-be4d3ce9f60a','N')
;

-- 6 de jul de 2023 15:57:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133826,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120759,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:01','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','6dac993f-79f3-4511-ab82-d029b6b3c07a','N')
;

-- 6 de jul de 2023 15:57:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133827,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120759,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:02','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','fc728f07-821e-4e28-bf47-dddf8874051b',10,'N')
;

-- 6 de jul de 2023 15:57:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133828,0.0,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120759,'DueDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:02','YYYY-MM-DD HH24:MI:SS'),100,2000,'N','N','LBRA','N','91660ba3-0418-44b9-8e00-688def67958f','N')
;

-- 6 de jul de 2023 15:57:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133829,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120759,'GrandTotal',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','7e57ef11-5091-4853-9e4b-dcf824621138','N')
;

-- 6 de jul de 2023 15:57:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133830,0.0,'Cancelled','The transaction was cancelled',1120759,'IsCancelled',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,2531,'N','N','LBRA','N','45562c09-5340-428b-9e38-b9dc6869d3c8','N')
;

-- 6 de jul de 2023 15:57:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133831,0.0,'Paid','The document is paid',1120759,'IsPaid',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:03','YYYY-MM-DD HH24:MI:SS'),100,1402,'N','N','LBRA','N','4e4178c3-8adb-463f-aaab-417cd6b017ed','N')
;

-- 6 de jul de 2023 15:57:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133832,0.0,'Registered','The application is registered.',1120759,'IsRegistered',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:04','YYYY-MM-DD HH24:MI:SS'),100,2211,'N','N','LBRA','N','93edb931-00a9-4926-b886-58ff71cc2bd1','N')
;

-- 6 de jul de 2023 15:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133833,0.0,'Bank Slip Contract',1120759,'LBR_BankSlipContract_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:04','YYYY-MM-DD HH24:MI:SS'),100,1123147,'N','N','LBRA','N','f69ca688-53a8-4046-aec4-821b0619acc2','N','N')
;

-- 6 de jul de 2023 15:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133834,0.0,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1120759,'LBR_EMailSent','N',1,'N','N','N','N','N','N',17,1120399,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,1121729,'N','N','LBRA','N','82069731-81ee-4fa5-a7dc-dd9eaf981fa8','N')
;

-- 6 de jul de 2023 15:57:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133835,0.0,'Accepted',1120759,'LBR_IsAccepted',1,'N','N','N','N','N','N',17,1120353,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,1123095,'N','N','LBRA','N','38c3ffb6-cfd1-405a-b9c5-31482d1caeca','N','N')
;

-- 6 de jul de 2023 15:57:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133836,0.0,'Halted',1120759,'LBR_IsHalted','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:05','YYYY-MM-DD HH24:MI:SS'),100,1123166,'N','N','LBRA','N','67064887-6e12-4733-bf6d-407e87d5b75b','N','N')
;

-- 6 de jul de 2023 15:57:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133837,0.0,'Partial Payment',1120759,'LBR_IsPartialPayment','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:06','YYYY-MM-DD HH24:MI:SS'),100,1123167,'N','N','LBRA','N','dc0be20a-1f85-44c1-8988-d2050541f9a5','N','N')
;

-- 6 de jul de 2023 15:57:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133838,0.0,'Protested',1120759,'LBR_IsProtested','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:06','YYYY-MM-DD HH24:MI:SS'),100,1123168,'N','N','LBRA','N','2c76660c-102e-4615-b781-82847a153d9f','N','N')
;

-- 6 de jul de 2023 15:57:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133839,0.0,'Issued By',1120759,'LBR_IssuedBy','2',1,'N','N','N','N','N','N',17,1120365,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:07','YYYY-MM-DD HH24:MI:SS'),100,1123169,'N','N','LBRA','N','fdada7df-3996-4660-a769-54fa82af00b9','N','N')
;

-- 6 de jul de 2023 15:57:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133840,0.0,'Written Off',1120759,'LBR_IsWrittenOff','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:07','YYYY-MM-DD HH24:MI:SS'),100,1123170,'N','N','LBRA','N','948d7b63-c81b-49d4-855d-2e9a13d234ef','N','N')
;

-- 6 de jul de 2023 15:57:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133841,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120759,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','LBRA','N','32f14fb6-aa41-4a34-bb86-1982dfa5b056','N','N')
;

-- 6 de jul de 2023 15:57:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133842,0.0,'Number In Bank',1120759,'LBR_NumberInBank',20,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,1123172,'N','N','LBRA','N','7557fbf6-f31d-4061-8cf5-f9776cf981e5','N','N')
;

-- 6 de jul de 2023 15:57:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133843,0.0,'Number in the Org',1120759,'LBR_NumberInOrg',25,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:08','YYYY-MM-DD HH24:MI:SS'),100,1123173,'N','N','LBRA','N','00a2003d-06cb-4e82-be84-f588446f8bde','N','N')
;

-- 6 de jul de 2023 15:57:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133844,0.0,'PaySchedule Number','Defines the PaySchedule Number','Defines the PaySchedule Number',1120759,'lbr_PayScheduleNo',10,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:09','YYYY-MM-DD HH24:MI:SS'),100,1000077,'N','N','LBRA','N','ba6d4914-6afc-42e2-a484-4b1f4b81184f','N')
;

-- 6 de jul de 2023 15:57:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133845,0.0,'Write-off Amount','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.',1120759,'WriteOffAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2023-07-06 15:57:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 15:57:09','YYYY-MM-DD HH24:MI:SS'),100,1450,'N','N','LBRA','N','f3a8f578-9238-4560-aa58-50958eed013b','N')
;

-- 6 de jul de 2023 16:00:10 BRT
UPDATE AD_Table SET IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:00:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120579
;

-- 6 de jul de 2023 16:00:17 BRT
UPDATE AD_ReportView SET IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:00:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=1120028
;

-- 6 de jul de 2023 16:00:37 BRT
UPDATE AD_Process SET IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:00:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120188
;

-- 6 de jul de 2023 16:00:37 BRT
UPDATE AD_Menu SET Name='Bill Detail', Description='Bill Detail', IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:00:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120289
;

-- 6 de jul de 2023 16:01:41 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120049,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:01:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:01:41','YYYY-MM-DD HH24:MI:SS'),100,'RV_BankSlip',1120759,'LBRA','0d64fbd3-37fe-4f5e-a581-45f1072bdf32')
;

-- 6 de jul de 2023 16:02:05 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,AD_Process_UU,AllowMultipleExecution) VALUES (1120325,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:02:05','YYYY-MM-DD HH24:MI:SS'),100,'BankSlip Report','BankSlip Report','BankSlip Report Detail','Y','RV_BankSlip','N',1120049,'3','LBRA',0,0,'N','N','Y','f4b20cb6-8aa0-4461-a3db-dac2d37d2eaa','P')
;

-- 6 de jul de 2023 16:02:35 BRT
UPDATE AD_Process SET IsActive='Y',Updated=TO_TIMESTAMP('2023-07-06 16:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120188
;

-- 6 de jul de 2023 16:02:35 BRT
UPDATE AD_Menu SET Name='Bill Detail', Description='Bill Detail', IsActive='Y',Updated=TO_TIMESTAMP('2023-07-06 16:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120289
;

-- 6 de jul de 2023 16:03:24 BRT
UPDATE AD_Process SET Description='Bill Detail', Help='Bill Detail', ProcedureName=NULL, IsReport='Y', IsDirectPrint='N', AD_ReportView_ID=1120028, Classname=NULL, AccessLevel='3', AD_PrintFormat_ID=1120006, AD_Workflow_ID=NULL, IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_Form_ID=NULL,Updated=TO_TIMESTAMP('2023-07-06 16:03:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120325
;

-- 6 de jul de 2023 16:03:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120628,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:24','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120325,10,19,'N',0,'N','AD_Org_ID','Y','LBRA',113,'87d5c5ac-c717-4524-8f71-365c2c5dac97')
;

-- 6 de jul de 2023 16:03:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120629,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:25','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120325,20,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'1849854a-90d2-478b-a8e3-151f0ba01674')
;

-- 6 de jul de 2023 16:03:26 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120630,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:25','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120325,30,15,'Y',0,'N','DateDoc','Y','LBRA',265,'4f08ea7d-0823-4da9-b9ab-11ad0fd48b8f')
;

-- 6 de jul de 2023 16:03:26 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120631,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120325,40,15,'Y',0,'N','DueDate','Y','LBRA',2000,'f6b90a2a-9905-4b91-bfa1-8b6b7955dd0e')
;

-- 6 de jul de 2023 16:03:27 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120632,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:26','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','Invoice Identifier','The Invoice Document.',1120325,50,19,'N',0,'N','C_Invoice_ID','Y','LBRA',1008,'37661b16-e083-4d0c-bd1d-fc947f4ef9a6')
;

-- 6 de jul de 2023 16:03:27 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120633,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:27','YYYY-MM-DD HH24:MI:SS'),100,'Paid','The document is paid',1120325,60,17,319,'N',0,'N','IsPaid','Y','LBRA',1402,'812113ea-bfcf-49fc-bc4a-2430b4ba0267')
;

-- 6 de jul de 2023 16:03:27 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120634,0,0,'Y',TO_TIMESTAMP('2023-07-06 16:03:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:03:27','YYYY-MM-DD HH24:MI:SS'),100,'Cancelled','The transaction was cancelled',1120325,70,17,319,'N',0,'N','N','IsCancelled','Y','LBRA',2531,'fb761387-3508-453e-b20b-99d27f5cd014')
;

-- 6 de jul de 2023 16:03:35 BRT
UPDATE AD_Process SET IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120188
;

-- 6 de jul de 2023 16:03:35 BRT
UPDATE AD_Menu SET Name='Bill Detail', Description='Bill Detail', IsActive='N',Updated=TO_TIMESTAMP('2023-07-06 16:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120289
;

-- 6 de jul de 2023 16:03:51 BRT
UPDATE AD_Process SET Description='BankSlip Report', Help='BankSlip Report Detail',Updated=TO_TIMESTAMP('2023-07-06 16:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120325
;

-- 6 de jul de 2023 16:04:39 BRT
UPDATE AD_Process SET AD_ReportView_ID=1120049, AD_PrintFormat_ID=NULL,Updated=TO_TIMESTAMP('2023-07-06 16:04:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120325
;

-- 6 de jul de 2023 16:05:52 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120421,'Detalhes de Boleto','R',0,0,'Y',TO_TIMESTAMP('2023-07-06 16:05:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-07-06 16:05:52','YYYY-MM-DD HH24:MI:SS'),100,'N',1120325,'Y','N','LBRA','Y','f7c3b5c6-ec9e-4ffd-9ebd-db00007a141a')
;

-- 6 de jul de 2023 16:05:52 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120421, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120421)
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120401
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000030
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000002
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000006
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000031
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000007
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120367
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120289
;

-- 6 de jul de 2023 16:06:06 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000001, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120421
;

-- Migrate access from old report
INSERT INTO AD_Process_Access (AD_Process_ID, AD_Role_ID, AD_Client_ID, AD_Org_ID, IsActive, 
Created, CreatedBy, Updated, UpdatedBy, IsReadWrite, AD_Process_Access_UU)
SELECT 1120325 AS AD_Process_ID, AD_Role_ID, AD_Client_ID, AD_Org_ID, IsActive, 
Created, CreatedBy, Updated, UpdatedBy, IsReadWrite, UUID_GENERATE_V4() AS AD_Process_UU
FROM AD_Process_Access 
WHERE AD_Process_ID=1120188 
AND NOT EXISTS (SELECT 1 
FROM AD_Process_Access a 
WHERE a.AD_Role_ID=AD_Process_Access.AD_Role_ID 
AND a.AD_Process_ID=1120325)
;

-- 6 de jul de 2023 16:06:06 BRT
SELECT Register_Migration_Script ('202307061649_BankSlipReport.sql') FROM DUAL
;