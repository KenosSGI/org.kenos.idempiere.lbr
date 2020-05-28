-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27 de mai de 2020 23:17:45 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120673,'Bank Statement Detail','RV_LBR_BankStatementDetail',0,'3',0,0,'Y',TO_TIMESTAMP('2020-05-27 23:17:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:17:44','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','f7ab8b31-561c-42b4-91c2-2b2042c8bcfc','N','N','N','N')
;

-- 27 de mai de 2020 23:17:46 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_BankStatementDetail',1000000,'N','N','Table RV_LBR_BankStatementDetail','Y','Y',0,0,TO_TIMESTAMP('2020-05-27 23:17:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:17:45','YYYY-MM-DD HH24:MI:SS'),100,1153919,'Y',1000000,1,200000,'1951419d-ea0c-4b9c-b195-8cf78f8eb3b1')
;

-- 27 de mai de 2020 23:19:37 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120009,'2ce82ba6-d1d1-4424-b06c-a26a8a5791e6',TO_TIMESTAMP('2020-05-27 23:19:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bank Statement Detail',TO_TIMESTAMP('2020-05-27 23:19:37','YYYY-MM-DD HH24:MI:SS'),100,1120673,10,'FROM C_BankStatementLine bsl
INNER JOIN C_BankStatement bs')
;

-- 27 de mai de 2020 23:20:58 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120404,'57aa063d-4a2c-4387-8231-0a7ef0e998dd',TO_TIMESTAMP('2020-05-27 23:20:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:20:57','YYYY-MM-DD HH24:MI:SS'),100,1120009,'AD_Client_ID','bs.AD_Client_ID',10)
;

-- 27 de mai de 2020 23:21:21 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120405,'e14e9170-f0e5-4711-9ca6-0bd693da6f47',TO_TIMESTAMP('2020-05-27 23:21:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:21:21','YYYY-MM-DD HH24:MI:SS'),100,1120009,'AD_Org_ID','bs.AD_Org_ID',20)
;

-- 27 de mai de 2020 23:21:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120406,'e4b0f31f-150a-4d50-bedb-078582456b31',TO_TIMESTAMP('2020-05-27 23:21:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:21:42','YYYY-MM-DD HH24:MI:SS'),100,1120009,'Updated','bs.Updated',30)
;

-- 27 de mai de 2020 23:21:53 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120407,'b166237f-2ad2-4de0-9fdf-195385e62184',TO_TIMESTAMP('2020-05-27 23:21:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:21:53','YYYY-MM-DD HH24:MI:SS'),100,1120009,'UpdatedBy','bs.UpdatedBy',40)
;

-- 27 de mai de 2020 23:22:13 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120408,'9180d381-ee7b-424f-98ff-dc7dc95a98ab',TO_TIMESTAMP('2020-05-27 23:22:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:22:12','YYYY-MM-DD HH24:MI:SS'),100,1120009,'Created','bs.Created',50)
;

-- 27 de mai de 2020 23:22:22 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120409,'b7acb376-93b0-4c5f-9738-3f8f879c839d',TO_TIMESTAMP('2020-05-27 23:22:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:22:21','YYYY-MM-DD HH24:MI:SS'),100,1120009,'CreatedBy','bs.CreatedBy',60)
;

-- 27 de mai de 2020 23:22:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120410,'e195d1a8-2699-4b08-9fee-ba6faab77471',TO_TIMESTAMP('2020-05-27 23:22:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:22:30','YYYY-MM-DD HH24:MI:SS'),100,1120009,'IsActive','bs.IsActive',70)
;

-- 27 de mai de 2020 23:23:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120411,'74fbffb3-b061-4fc1-9ec7-d7d94b9176e4',TO_TIMESTAMP('2020-05-27 23:23:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:23:38','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_BankStatement_ID','bsd.C_BankStatement_ID',80)
;

-- 27 de mai de 2020 23:23:55 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120412,'167638b3-2eb1-4be6-b9d3-44f1cd938aa5',TO_TIMESTAMP('2020-05-27 23:23:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:23:55','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_BankStatementLine_ID','bsd.C_BankStatementLine_ID',90)
;

-- 27 de mai de 2020 23:24:11 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120413,'ef263a32-722b-4ea5-ac79-a2466f131bab',TO_TIMESTAMP('2020-05-27 23:24:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:24:10','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_BPartner_ID','bs.C_BPartner_ID',100)
;

-- 27 de mai de 2020 23:25:39 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120414,'8ceecd60-7a6a-45d3-9472-3dad32281190',TO_TIMESTAMP('2020-05-27 23:25:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:25:39','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_Charge_ID','bsd.C_Charge_ID',110)
;

-- 27 de mai de 2020 23:25:53 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120415,'3bbffce8-ff4f-43f5-87de-23345872d62d',TO_TIMESTAMP('2020-05-27 23:25:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:25:52','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_Currency_ID','bsd.C_Currency_ID',120)
;

-- 27 de mai de 2020 23:26:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120416,'93642113-aeb5-4845-aba8-e5a1e4bbd38e',TO_TIMESTAMP('2020-05-27 23:26:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:26:03','YYYY-MM-DD HH24:MI:SS'),100,1120009,'ChargeAmt','bsd.ChargeAmt',130)
;

-- 27 de mai de 2020 23:26:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120417,'129004ea-b59c-4a27-8348-1485a1d2785a',TO_TIMESTAMP('2020-05-27 23:26:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:26:17','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_Invoice_ID','bsd.C_Invoice_ID',140)
;

-- 27 de mai de 2020 23:26:42 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120418,'02d679c9-af6e-4ce7-a1dc-5865ffea1100',TO_TIMESTAMP('2020-05-27 23:26:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:26:42','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_Payment_ID','bsd.C_Payment_ID',150)
;

-- 27 de mai de 2020 23:26:54 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120419,'975814d9-a8c8-4097-a943-e7f92f1c0dad',TO_TIMESTAMP('2020-05-27 23:26:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:26:53','YYYY-MM-DD HH24:MI:SS'),100,1120009,'DateAcct','bsd.DateAcct',160)
;

-- 27 de mai de 2020 23:27:23 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120420,'91c9a42f-592d-49b5-b253-a44b30704575',TO_TIMESTAMP('2020-05-27 23:27:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:27:23','YYYY-MM-DD HH24:MI:SS'),100,1120009,'ValutaDate','bsd.ValutaDate',170)
;

-- 27 de mai de 2020 23:27:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120421,'454b98d7-8e19-4eef-9108-b9547ccb6d37',TO_TIMESTAMP('2020-05-27 23:27:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:27:37','YYYY-MM-DD HH24:MI:SS'),100,1120009,'TrxAmt','bsd.TrxAmt',180)
;

-- 27 de mai de 2020 23:28:31 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.Updated',Updated=TO_TIMESTAMP('2020-05-27 23:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120406
;

-- 27 de mai de 2020 23:28:34 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.UpdatedBy',Updated=TO_TIMESTAMP('2020-05-27 23:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120407
;

-- 27 de mai de 2020 23:28:37 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.Created',Updated=TO_TIMESTAMP('2020-05-27 23:28:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120408
;

-- 27 de mai de 2020 23:28:40 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.CreatedBy',Updated=TO_TIMESTAMP('2020-05-27 23:28:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120409
;

-- 27 de mai de 2020 23:28:48 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.IsActive',Updated=TO_TIMESTAMP('2020-05-27 23:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120410
;

-- 27 de mai de 2020 23:29:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120422,'d6ffb4d9-358f-46a3-bb76-2d7a74516002',TO_TIMESTAMP('2020-05-27 23:29:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:29:37','YYYY-MM-DD HH24:MI:SS'),100,1120009,'InterestAmt','bsd.InterestAmt',190)
;

-- 27 de mai de 2020 23:30:26 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120423,'086cf85a-aba4-4bfd-812c-a885995191d9',TO_TIMESTAMP('2020-05-27 23:30:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:30:26','YYYY-MM-DD HH24:MI:SS'),100,1120009,'StmtAmt','bsd.StmtAmt',200)
;

-- 27 de mai de 2020 23:30:47 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120424,'4709648e-040b-4441-b718-642fac89c55b',TO_TIMESTAMP('2020-05-27 23:30:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:30:46','YYYY-MM-DD HH24:MI:SS'),100,1120009,'StatementLineDate','bsd.StatementLineDate',210)
;

-- 27 de mai de 2020 23:31:59 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120425,'5b45fe92-777d-4b72-b43b-8cc1a09ad04b',TO_TIMESTAMP('2020-05-27 23:31:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:31:58','YYYY-MM-DD HH24:MI:SS'),100,1120009,'BeginningBalance','bs.BeginningBalance',220)
;

-- 27 de mai de 2020 23:32:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120426,'6f2791a0-e310-4555-88a7-15764a5e22aa',TO_TIMESTAMP('2020-05-27 23:32:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:32:14','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_BankAccount_ID','bs.C_BankAccount_ID',230)
;

-- 27 de mai de 2020 23:32:36 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120427,'f8c372fe-e0b4-4fab-98ee-8b0be808a604',TO_TIMESTAMP('2020-05-27 23:32:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:32:35','YYYY-MM-DD HH24:MI:SS'),100,1120009,'DocStatus','bs.DocStatus',240)
;

-- 27 de mai de 2020 23:32:59 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120428,'abc4f3d1-d5b9-4b2d-8771-5bf2f6b74b19',TO_TIMESTAMP('2020-05-27 23:32:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:32:59','YYYY-MM-DD HH24:MI:SS'),100,1120009,'Name','bs.Name',250)
;

-- 27 de mai de 2020 23:33:25 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120429,'344a882e-a89b-40e7-9e64-81c11a3bd078',TO_TIMESTAMP('2020-05-27 23:33:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:33:25','YYYY-MM-DD HH24:MI:SS'),100,1120009,'StatementDate','bs.StatementDate',260)
;

-- 27 de mai de 2020 23:33:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120430,'f7e60719-a167-46ff-aa7e-dc312e66c960',TO_TIMESTAMP('2020-05-27 23:33:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:33:37','YYYY-MM-DD HH24:MI:SS'),100,1120009,'StatementDifference','bs.StatementDifference',270)
;

-- 27 de mai de 2020 23:34:32 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120431,'90423a6c-6cfa-4f2c-a3dd-5e66d37ad86b',TO_TIMESTAMP('2020-05-27 23:34:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:34:32','YYYY-MM-DD HH24:MI:SS'),100,1120009,'EndingBalance','bs.EndingBalance',280)
;

-- 27 de mai de 2020 23:35:27 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120432,'02b0f06b-a527-4730-952f-655b803b3548',TO_TIMESTAMP('2020-05-27 23:35:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-05-27 23:35:26','YYYY-MM-DD HH24:MI:SS'),100,1120009,'C_BankStatementLine_UU','bs.C_BankStatementLine_UU',290)
;

-- 27 de mai de 2020 23:40:18 BRT
UPDATE AD_ViewComponent SET FromClause='FROM C_BankStatementLine bsl
INNER JOIN C_BankStatement bs ON bs.C_BankStatement_ID = bsl.C_BankStatement_ID',Updated=TO_TIMESTAMP('2020-05-27 23:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120009
;

-- 27 de mai de 2020 23:41:30 BRT
UPDATE AD_ViewComponent SET FromClause='FROM C_BankStatementLine bsd
INNER JOIN C_BankStatement bs ON bs.C_BankStatement_ID = bsd.C_BankStatement_ID',Updated=TO_TIMESTAMP('2020-05-27 23:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120009
;

-- 27 de mai de 2020 23:42:13 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.C_BPartner_ID',Updated=TO_TIMESTAMP('2020-05-27 23:42:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120413
;

-- 27 de mai de 2020 23:42:49 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bsd.C_BankStatementLine_UU',Updated=TO_TIMESTAMP('2020-05-27 23:42:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120432
;

-- 27 de mai de 2020 23:42:58 BRT
CREATE OR REPLACE VIEW RV_LBR_BankStatementDetail(AD_Client_ID, AD_Org_ID, Updated, UpdatedBy, Created, CreatedBy, IsActive, C_BankStatement_ID, C_BankStatementLine_ID, C_BPartner_ID, C_Charge_ID, C_Currency_ID, ChargeAmt, C_Invoice_ID, C_Payment_ID, DateAcct, ValutaDate, TrxAmt, InterestAmt, StmtAmt, StatementLineDate, BeginningBalance, C_BankAccount_ID, DocStatus, Name, StatementDate, StatementDifference, EndingBalance, C_BankStatementLine_UU) AS SELECT bs.AD_Client_ID AS AD_Client_ID, bs.AD_Org_ID AS AD_Org_ID, bsd.Updated AS Updated, bsd.UpdatedBy AS UpdatedBy, bsd.Created AS Created, bsd.CreatedBy AS CreatedBy, bsd.IsActive AS IsActive, bsd.C_BankStatement_ID AS C_BankStatement_ID, bsd.C_BankStatementLine_ID AS C_BankStatementLine_ID, bsd.C_BPartner_ID AS C_BPartner_ID, bsd.C_Charge_ID AS C_Charge_ID, bsd.C_Currency_ID AS C_Currency_ID, bsd.ChargeAmt AS ChargeAmt, bsd.C_Invoice_ID AS C_Invoice_ID, bsd.C_Payment_ID AS C_Payment_ID, bsd.DateAcct AS DateAcct, bsd.ValutaDate AS ValutaDate, bsd.TrxAmt AS TrxAmt, bsd.InterestAmt AS InterestAmt, bsd.StmtAmt AS StmtAmt, bsd.StatementLineDate AS StatementLineDate, bs.BeginningBalance AS BeginningBalance, bs.C_BankAccount_ID AS C_BankAccount_ID, bs.DocStatus AS DocStatus, bs.Name AS Name, bs.StatementDate AS StatementDate, bs.StatementDifference AS StatementDifference, bs.EndingBalance AS EndingBalance, bsd.C_BankStatementLine_UU AS C_BankStatementLine_UU FROM C_BankStatementLine bsd INNER JOIN C_BankStatement bs ON bs.C_BankStatement_ID = bsd.C_BankStatement_ID
;

-- 27 de mai de 2020 23:44:11 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120046,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:44:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:44:11','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_BankStatementDetail',1120673,'LBRA','22ffa0ec-8b88-4606-8bfc-2e188491cf4a')
;

-- 27 de mai de 2020 23:44:18 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120244,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:44:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:44:17','YYYY-MM-DD HH24:MI:SS'),100,'Bank Statement Detail','Y','RV_LBR_BankStatementDetail','N',1120046,'3','LBRA',0,0,'N','N','Y','N','e8438030-41dc-4976-8760-b2fc91f10d22')
;

-- 27 de mai de 2020 23:44:24 BRT
UPDATE AD_Process SET AllowMultipleExecution=NULL,Updated=TO_TIMESTAMP('2020-05-27 23:44:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120244
;

-- 27 de mai de 2020 23:45:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131896,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120673,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:07','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','d7cd8522-4e82-4cdb-b5b8-b58da2886b3d','N','D')
;

-- 27 de mai de 2020 23:45:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131897,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120673,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9d6bb022-ae34-4929-b035-89a21413ef7a','N','D')
;

-- 27 de mai de 2020 23:45:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131898,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120673,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','a93df87f-25a5-4c0f-be90-6471c684feb2','N')
;

-- 27 de mai de 2020 23:45:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131899,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120673,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:08','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','dfced74d-f62e-4920-868d-d9f75783e438','N','D')
;

-- 27 de mai de 2020 23:45:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131900,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120673,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:09','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','3cf7d68a-6fc3-46e6-8695-b01890006d3e','N')
;

-- 27 de mai de 2020 23:45:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131901,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120673,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:09','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','de439394-b86a-4389-b3a5-aa1e7136b27b','N','D')
;

-- 27 de mai de 2020 23:45:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131902,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120673,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','55a95732-03c3-48b4-8930-b2c60273d1f2','N')
;

-- 27 de mai de 2020 23:45:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131903,0.0,'Bank Statement','Bank Statement of account','The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred',1120673,'C_BankStatement_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,1381,'N','N','LBRA','N','27c63050-6c6e-48a6-8987-e1085a471914','N')
;

-- 27 de mai de 2020 23:45:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131904,0.0,'Bank statement line','Line on a statement from this Bank','The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Charge) for the defined time period at this Bank.',1120673,'C_BankStatementLine_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:10','YYYY-MM-DD HH24:MI:SS'),100,1382,'N','N','LBRA','N','cb013f2d-1642-4029-bc44-8ea67012635e','N')
;

-- 27 de mai de 2020 23:45:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131905,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120673,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:11','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','c8c40c82-b167-4023-b9b9-fb4d6f45e81d','N')
;

-- 27 de mai de 2020 23:45:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131906,0.0,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120673,'C_Charge_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:11','YYYY-MM-DD HH24:MI:SS'),100,968,'N','N','LBRA','N','5ae0f717-1305-4989-b8ec-219b4014bdc0','N')
;

-- 27 de mai de 2020 23:45:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131907,0.0,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120673,'C_Currency_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,193,'N','N','LBRA','N','62f0e7c8-73c4-4630-a2a9-63193b9e79ad','N','N')
;

-- 27 de mai de 2020 23:45:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131908,0.0,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120673,'ChargeAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,849,'N','N','LBRA','N','20e18d5b-9a9d-46e5-8941-4fee86c982d9','N')
;

-- 27 de mai de 2020 23:45:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131909,0.0,'Invoice','Invoice Identifier','The Invoice Document.',1120673,'C_Invoice_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:12','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','8a9724e7-42b6-4300-8a63-e9c4dea30635','N')
;

-- 27 de mai de 2020 23:45:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131910,0.0,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120673,'C_Payment_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,1384,'N','N','LBRA','N','20090e81-7587-4215-8cd5-816274c55381','N')
;

-- 27 de mai de 2020 23:45:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131911,0.0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120673,'DateAcct',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,263,'N','N','LBRA','N','744b786c-b82d-449e-ba19-2f873b8779ab','N')
;

-- 27 de mai de 2020 23:45:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131912,0.0,'Effective date','Date when money is available','The Effective Date indicates the date that money is available from the bank.',1120673,'ValutaDate','@StatementDate@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:13','YYYY-MM-DD HH24:MI:SS'),100,1487,'N','N','LBRA','N','c08108a3-e089-4d6b-a800-266b935f3453','N')
;

-- 27 de mai de 2020 23:45:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131913,0.0,'Transaction Amount','Amount of a transaction','The Transaction Amount indicates the amount for a single transaction.',1120673,'TrxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:14','YYYY-MM-DD HH24:MI:SS'),100,1136,'N','N','LBRA','N','ec994731-08b7-4e31-a3a7-b92b75630f68','N')
;

-- 27 de mai de 2020 23:45:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131914,0.0,'Interest Amount','Interest Amount','The Interest Amount indicates any interest charged or received on a Bank Statement.',1120673,'InterestAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:14','YYYY-MM-DD HH24:MI:SS'),100,1457,'N','N','LBRA','N','b597e34a-64e6-4467-8a3b-1cc92b47d93a','N')
;

-- 27 de mai de 2020 23:45:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131915,0.0,'Statement amount','Statement Amount','The Statement Amount indicates the amount of a single statement line.',1120673,'StmtAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:15','YYYY-MM-DD HH24:MI:SS'),100,1482,'N','N','LBRA','N','9da3105e-1513-4cda-82ce-bfc6b0bf5315','N')
;

-- 27 de mai de 2020 23:45:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131916,0.0,'Statement Line Date','Date of the Statement Line',1120673,'StatementLineDate','@StatementLineDate@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:15','YYYY-MM-DD HH24:MI:SS'),100,2300,'N','N','LBRA','N','4ad8e1b8-a2db-4bf9-a2c2-7a60468167de','N')
;

-- 27 de mai de 2020 23:45:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131917,0.0,'Beginning Balance','Balance prior to any transactions','The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.',1120673,'BeginningBalance','@SQL=SELECT COALESCE(MIN(CurrentBalance),0) FROM C_BankAccount WHERE C_BankAccount_ID=@C_BankAccount_ID:0@',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,1378,'N','N','LBRA','N','7afbca92-70e3-4067-b8e9-6d9ba78dae2b','N')
;

-- 27 de mai de 2020 23:45:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131918,0.0,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120673,'C_BankAccount_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,836,'N','N','LBRA','N','4de8a153-09bc-4725-9694-8904507e1450','N','N')
;

-- 27 de mai de 2020 23:45:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131919,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120673,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:16','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','7bc98f30-4f72-4082-9e92-238748b89d88','N')
;

-- 27 de mai de 2020 23:45:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1131920,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120673,'Name',60,'N','N','N','N','Y','N',10,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,469,'N','Y','LBRA','N','2bcfde53-c72e-4667-adb4-f7c8dbb71727',10,'N')
;

-- 27 de mai de 2020 23:45:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131921,0.0,'Statement date','Date of the statement','The Statement Date field defines the date of the statement.',1120673,'StatementDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,1434,'N','N','LBRA','N','e6e2cb27-76c5-40d2-879e-a5ce7b954fbf','N')
;

-- 27 de mai de 2020 23:45:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131922,0.0,'Statement difference','Difference between statement ending balance and actual ending balance','The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.',1120673,'StatementDifference',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:17','YYYY-MM-DD HH24:MI:SS'),100,1435,'N','N','LBRA','N','28523212-3274-49af-9eb2-d5e818c34595','N')
;

-- 27 de mai de 2020 23:45:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131923,0.0,'Ending balance','Ending  or closing balance','The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.',1120673,'EndingBalance',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:18','YYYY-MM-DD HH24:MI:SS'),100,1396,'N','N','LBRA','N','e143ec60-67f4-44b8-885d-d82260c9eeeb','N')
;

-- 27 de mai de 2020 23:45:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131924,0.0,'C_BankStatementLine_UU',1120673,'C_BankStatementLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:45:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:45:18','YYYY-MM-DD HH24:MI:SS'),100,54696,'N','N','LBRA','N','0d0f6095-7ecf-47a8-8e93-db34497ad9ee','N')
;

-- 27 de mai de 2020 23:47:10 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120493,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120244,10,19,'N',10,'Y','C_BankAccount_ID','Y','LBRA',836,'a9262afd-5436-46a0-a005-b513a205e0ca','N')
;

-- 27 de mai de 2020 23:48:11 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120494,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,'Statement date','Date of the statement','The Statement Date field defines the date of the statement.',1120244,20,15,'Y',0,'N','StatementDate','Y','LBRA',1434,'3adc5f1f-cb78-4159-a155-eb48b31c8ca1','N')
;

-- 27 de mai de 2020 23:48:31 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120495,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Statement Line Date','Date of the Statement Line',1120244,30,15,'Y',0,'N','StatementLineDate','Y','LBRA',2300,'5832f346-56d4-4df7-8569-2e46ca60ccb0','N')
;

-- 27 de mai de 2020 23:49:49 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted) VALUES (1120496,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:49:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:49:48','YYYY-MM-DD HH24:MI:SS'),100,'C_Payment_ID',1120244,40,30,'N',10,'N','C_Payment_ID','N','LBRA','c1550e8d-7a74-45fb-aafc-845c093296c9','N')
;

-- 27 de mai de 2020 23:49:55 BRT
UPDATE AD_Process_Para SET AD_Element_ID=1384,Updated=TO_TIMESTAMP('2020-05-27 23:49:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120496
;

-- 27 de mai de 2020 23:50:17 BRT
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1120496
;

-- 27 de mai de 2020 23:50:17 BRT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120496
;

-- 27 de mai de 2020 23:50:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120497,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:50:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120244,40,200012,'N',0,'N','C_Payment_ID','Y','LBRA',1384,'2f6ac1db-111f-4382-91a2-f2cdded5742f','N')
;

-- 27 de mai de 2020 23:50:28 BRT
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1120497
;

-- 27 de mai de 2020 23:50:28 BRT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120497
;

-- 27 de mai de 2020 23:50:44 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120498,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:50:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:50:43','YYYY-MM-DD HH24:MI:SS'),100,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120244,40,30,'N',10,'N','C_Payment_ID','Y','LBRA',1384,'4085eafc-4c25-489e-807e-145fee24ef0c','N')
;

-- 27 de mai de 2020 23:51:22 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120499,0,0,'Y',TO_TIMESTAMP('2020-05-27 23:51:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:51:22','YYYY-MM-DD HH24:MI:SS'),100,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120244,50,17,131,'N',0,'N','DocStatus','Y','LBRA',289,'2b5c48a2-bfa6-42a7-bbe4-7300eaf4d6d1','N')
;

-- 27 de mai de 2020 23:52:47 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120362,'Bank Statement Detail','R',0,0,'Y',TO_TIMESTAMP('2020-05-27 23:52:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-27 23:52:47','YYYY-MM-DD HH24:MI:SS'),100,'N',1120244,'Y','N','LBRA','Y','510c4c8e-b269-4a58-a048-9eaee3012ebe')
;

-- 27 de mai de 2020 23:52:47 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120362, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120362)
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 27 de mai de 2020 23:53:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120255
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120362
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 27 de mai de 2020 23:53:39 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200023
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120255
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120362
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200035
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53313
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53314
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200043
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200041
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=33, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200042
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=34, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 27 de mai de 2020 23:53:41 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=35, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=200024
;

SELECT Register_Migration_Script ('202005272300_BankStatementDetailReport.sql') FROM DUAL
;