SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de jul de 2024 11:05:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123114,'Transporte de Pessoas',1120411,'6',0,0,'Y',TO_DATE('2024-07-24 11:05:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:05:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','66b5bfa7-00b2-4880-97b7-957f3b88246d')
;

-- 24 de jul de 2024 11:05:32 BRT
UPDATE AD_Ref_List SET Name='Transportation of People',Updated=TO_DATE('2024-07-24 11:05:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123114
;

-- 24 de jul de 2024 11:05:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123115,'Transporte de Valores',1120411,'7',0,0,'Y',TO_DATE('2024-07-24 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:05:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','fb2c94cb-4798-4e3f-885f-8728fbe3da55')
;

-- 24 de jul de 2024 11:05:55 BRT
UPDATE AD_Ref_List SET Name='Transportation of Valuables',Updated=TO_DATE('2024-07-24 11:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123115
;

-- 24 de jul de 2024 11:06:10 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123116,'Excesso de Bagagem',1120411,'8',0,0,'Y',TO_DATE('2024-07-24 11:06:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:06:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5be67f01-5c5b-4bda-982f-5a4a83aeb4b0')
;

-- 24 de jul de 2024 11:06:16 BRT
UPDATE AD_Ref_List SET Name='Excess Baggage',Updated=TO_DATE('2024-07-24 11:06:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123116
;

-- 24 de jul de 2024 11:06:37 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123117,'GTV',1120411,'9',0,0,'Y',TO_DATE('2024-07-24 11:06:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:06:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','52a730f4-b7ae-452d-92cf-66f1146a5641')
;

-- 24 de jul de 2024 11:16:54 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120419,'LBR_CTeConsignor','L',0,0,'Y',TO_DATE('2024-07-24 11:16:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:16:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','b7842e84-9cac-4870-a411-3f29efa5db65')
;

-- 24 de jul de 2024 11:17:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123118,'Remetente',1120419,'0',0,0,'Y',TO_DATE('2024-07-24 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d3f60ea4-3a1e-4695-becc-bce1b24d23e1')
;

-- 24 de jul de 2024 11:17:21 BRT
UPDATE AD_Ref_List SET Name='Sender',Updated=TO_DATE('2024-07-24 11:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123118
;

-- 24 de jul de 2024 11:17:39 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123119,'Destinatário',1120419,'1',0,0,'Y',TO_DATE('2024-07-24 11:17:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:17:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c26ebd7b-4bee-4c85-900f-3e5d5ca6aa10')
;

-- 24 de jul de 2024 11:18:39 BRT
UPDATE AD_Ref_List SET Name='Recipient',Updated=TO_DATE('2024-07-24 11:18:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123119
;

-- 24 de jul de 2024 11:19:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123120,'Outros',1120419,'4',0,0,'Y',TO_DATE('2024-07-24 11:19:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:19:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','11cf3217-5bae-40c7-a389-6b901e0afd70')
;

-- 24 de jul de 2024 11:19:15 BRT
UPDATE AD_Ref_List SET Name='Other',Updated=TO_DATE('2024-07-24 11:19:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123120
;

-- 24 de jul de 2024 11:26:03 BRT
UPDATE AD_Ref_List SET Name='Recipient',Updated=TO_DATE('2024-07-24 11:26:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123076
;

-- 24 de jul de 2024 11:26:52 BRT
UPDATE AD_Ref_List SET Value='2',Updated=TO_DATE('2024-07-24 11:26:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123119
;

-- 24 de jul de 2024 11:26:56 BRT
UPDATE AD_Ref_List SET Value='3',Updated=TO_DATE('2024-07-24 11:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123119
;

-- 24 de jul de 2024 11:27:18 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123121,'Expedidor',1120419,'1',0,0,'Y',TO_DATE('2024-07-24 11:27:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:27:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','64c1a9e3-c253-4ccc-995b-b3f6f5b6b4c6')
;

-- 24 de jul de 2024 11:27:22 BRT
UPDATE AD_Ref_List SET Name='Shipper',Updated=TO_DATE('2024-07-24 11:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123121
;

-- 24 de jul de 2024 11:27:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123122,'Recebedor',1120419,'2',0,0,'Y',TO_DATE('2024-07-24 11:27:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-24 11:27:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0961796d-54d5-4f67-9a60-1f0ecf0eee1e')
;

-- 24 de jul de 2024 11:27:46 BRT
UPDATE AD_Ref_List SET Name='Receiver',Updated=TO_DATE('2024-07-24 11:27:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123122
;

-- 24 de jul de 2024 11:29:48 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120419,Updated=TO_DATE('2024-07-24 11:29:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134155
;

-- 24 de jul de 2024 11:30:08 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120419,Updated=TO_DATE('2024-07-24 11:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134181
;

-- 24 de jul de 2024 11:30:14 BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120419,Updated=TO_DATE('2024-07-24 11:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134200
;

-- 24 de jul de 2024 11:33:04 BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2024-07-24 11:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134155
;

-- 24 de jul de 2024 11:33:05 BRT
ALTER TABLE LBR_CTe MODIFY LBR_CTeConsignor CHAR(1) DEFAULT NULL 
;

-- 24 de jul de 2024 11:33:05 BRT
ALTER TABLE LBR_CTe MODIFY LBR_CTeConsignor NULL
;

-- 24 de jul de 2024 11:33:05 BRT
SELECT Register_Migration_Script ('202407241137_CTeConsignorFix.sql') FROM DUAL
;

