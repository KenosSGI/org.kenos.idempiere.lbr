SET SQLBLANKLINES ON
SET DEFINE OFF

-- 31 de jul de 2020 09:47:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123093,0,0,'Y',TO_DATE('2020-07-31 09:47:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipConfig_ID','Bank Slip Config','Bank Slip Config','LBRA','0343aacf-d8df-4823-92ed-0f19bc5881b8')
;

-- 31 de jul de 2020 09:47:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123094,0,0,'Y',TO_DATE('2020-07-31 09:47:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipConfig_UU','LBR_BankSlipConfig_UU','LBR_BankSlipConfig_UU','LBRA','9a9a4215-76d3-4af9-9021-0ccc6de85e06')
;

-- 31 de jul de 2020 09:47:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123095,0,0,'Y',TO_DATE('2020-07-31 09:47:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsAccepted','Accepted','Accepted','LBRA','7a6eb2ed-424d-46c5-afa0-ad1245c627ec')
;

-- 31 de jul de 2020 09:47:40 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120353,'LBR_IsAccepted','L',0,0,'Y',TO_DATE('2020-07-31 09:47:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','9f24215d-cb54-407c-b308-27f2a571edb5')
;

-- 31 de jul de 2020 09:47:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122365,'Is Accepted',1120353,'1',0,0,'Y',TO_DATE('2020-07-31 09:47:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0a429412-c496-4aae-bf45-9083ae945722')
;

-- 31 de jul de 2020 09:47:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122366,'Not Accepted',1120353,'0',0,0,'Y',TO_DATE('2020-07-31 09:47:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9a51ad96-146a-4ba2-bc8c-fc1fcaf01889')
;

-- 31 de jul de 2020 09:47:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123096,0,0,'Y',TO_DATE('2020-07-31 09:47:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReturnAction','Return Action','Return Action','LBRA','411e4ee6-e6da-46b9-842e-01cef7924c93')
;

-- 31 de jul de 2020 09:47:42 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120354,'LBR_ReturnAction','L',0,0,'Y',TO_DATE('2020-07-31 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','f688af42-6b88-4b2b-8425-c35345558e44')
;

-- 31 de jul de 2020 09:47:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122367,'Write Off',1120354,'1',0,0,'Y',TO_DATE('2020-07-31 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d9cf2d4e-376f-44a1-abd1-d787658c0bad')
;

-- 31 de jul de 2020 09:47:43 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122368,'Keep',1120354,'2',0,0,'Y',TO_DATE('2020-07-31 09:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:43','YYYY-MM-DD HH24:MI:SS'),100,'U','50ff96d0-4f3b-41ed-aafe-6bdbdbe8c7c8')
;

-- 31 de jul de 2020 09:47:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123097,0,0,'Y',TO_DATE('2020-07-31 09:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReturnDays','Return Days','Return Days','LBRA','4be94e14-500a-42ef-92c6-819cb7939a51')
;

-- 31 de jul de 2020 09:47:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123098,0,0,'Y',TO_DATE('2020-07-31 09:47:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InterestValue','Interest Value','Interest Value','LBRA','8fcd0122-e344-4d96-9e4f-bd48b45ed311')
;

-- 31 de jul de 2020 09:47:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123099,0,0,'Y',TO_DATE('2020-07-31 09:47:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InterestCharge_ID','Interest Charge','Interest Charge','LBRA','2adbe0d1-6200-414b-91c6-5d196c684b64')
;

-- 31 de jul de 2020 09:47:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123100,0,0,'Y',TO_DATE('2020-07-31 09:47:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InterestType','Interest Type','Interest Type','LBRA','3cd0d6c1-a52e-462b-8db0-9d3ad719c69c')
;

-- 31 de jul de 2020 09:47:46 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120355,'LBR_InterestType','L',0,0,'Y',TO_DATE('2020-07-31 09:47:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','c76feda5-81b8-46b3-9828-ce37aac458e4')
;

-- 31 de jul de 2020 09:47:46 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122369,'Daily Value',1120355,'1',0,0,'Y',TO_DATE('2020-07-31 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5c5f682e-5249-4b4b-a01d-118578142c04')
;

-- 31 de jul de 2020 09:47:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122370,'Monthly Rate',1120355,'2',0,0,'Y',TO_DATE('2020-07-31 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e8e274a8-44f9-430d-9e42-e03c1773290d')
;

-- 31 de jul de 2020 09:47:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122371,'Do not charge',1120355,'9',0,0,'Y',TO_DATE('2020-07-31 09:47:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0a871d55-7585-4feb-bf04-a0dc0360432d')
;

-- 31 de jul de 2020 09:47:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123101,0,0,'Y',TO_DATE('2020-07-31 09:47:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InterestDays','Interest Days','Interest Days','LBRA','3c4ad34a-f840-48f1-bd54-db424d24ac9a')
;

-- 31 de jul de 2020 09:47:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123102,0,0,'Y',TO_DATE('2020-07-31 09:47:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Message1','Message 1','Message 1','LBRA','3a4ebbfd-cae0-4c0b-b69e-4ac750e5605b')
;

-- 31 de jul de 2020 09:47:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123103,0,0,'Y',TO_DATE('2020-07-31 09:47:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Message2','Message 2','Message 2','LBRA','d875a9a1-1d47-4909-9b00-e820eeb34523')
;

-- 31 de jul de 2020 09:47:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123104,0,0,'Y',TO_DATE('2020-07-31 09:47:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PenaltyValue','Penalty Value','Penalty Value','LBRA','4b6a7e03-ea60-456e-ae26-911b6e7263f4')
;

-- 31 de jul de 2020 09:47:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123105,0,0,'Y',TO_DATE('2020-07-31 09:47:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PenaltyCharge_ID','Penalty Charge','Penalty Charge','LBRA','a394b137-fcd0-4824-a515-4255a471b87e')
;

-- 31 de jul de 2020 09:47:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123106,0,0,'Y',TO_DATE('2020-07-31 09:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PenaltyDays','Penalty Days','Penalty Days','LBRA','c0c5c86e-f9ec-4cd2-9e2f-4c05bc2bb297')
;

-- 31 de jul de 2020 09:47:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123107,0,0,'Y',TO_DATE('2020-07-31 09:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PenaltyType','Penalty Type','Penalty Type','LBRA','ebd53cfd-2023-4689-a3ab-00c0df2af08b')
;

-- 31 de jul de 2020 09:47:53 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120356,'LBR_PenaltyType','L',0,0,'Y',TO_DATE('2020-07-31 09:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','4d230266-b4d1-4e5c-97b9-8452f316b80a')
;

-- 31 de jul de 2020 09:47:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122372,'Amount',1120356,'1',0,0,'Y',TO_DATE('2020-07-31 09:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f59f699f-1904-41b1-8e56-c72c19e30722')
;

-- 31 de jul de 2020 09:47:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122373,'Rate',1120356,'2',0,0,'Y',TO_DATE('2020-07-31 09:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','866bd21d-2abe-4679-a635-590d44ad15cf')
;

-- 31 de jul de 2020 09:47:54 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123108,0,0,'Y',TO_DATE('2020-07-31 09:47:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProtestType','Protest Type','Protest Type','LBRA','6b93199b-80fb-4795-9847-1c0685b098e0')
;

-- 31 de jul de 2020 09:47:55 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120357,'LBR_ProtestType','L',0,0,'Y',TO_DATE('2020-07-31 09:47:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','b6f6a91b-f661-478f-aefe-0eb2eec7b6b9')
;

-- 31 de jul de 2020 09:47:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122374,'Protest Calendar Days',1120357,'1',0,0,'Y',TO_DATE('2020-07-31 09:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a776db54-9c6a-459b-965c-8be42d627b3e')
;

-- 31 de jul de 2020 09:47:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122375,'Protest Business Days',1120357,'2',0,0,'Y',TO_DATE('2020-07-31 09:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','04b3cc64-03c1-48e3-9e46-9a49a162cd09')
;

-- 31 de jul de 2020 09:47:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122376,'Do not Protest',1120357,'3',0,0,'Y',TO_DATE('2020-07-31 09:47:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ccde44ff-4f5a-4f06-b0c7-e48fd9fd2f9c')
;

-- 31 de jul de 2020 09:47:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122377,'Protest for Bankruptcy Calendar Days',1120357,'4',0,0,'Y',TO_DATE('2020-07-31 09:47:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','cfd4f970-df9a-437e-88b7-f2ae7af0b695')
;

-- 31 de jul de 2020 09:47:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122378,'Protest for Bankruptcy Working Days',1120357,'5',0,0,'Y',TO_DATE('2020-07-31 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','eca70221-ff2b-4b90-8794-1f75428f7396')
;

-- 31 de jul de 2020 09:47:58 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122379,'Notify Credit Score',1120357,'8',0,0,'Y',TO_DATE('2020-07-31 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','54ae130a-f895-459f-87bd-541b3e167d2e')
;

-- 31 de jul de 2020 09:47:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123109,0,0,'Y',TO_DATE('2020-07-31 09:47:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProtestDays','Protest Days','Protest Days','LBRA','c265a095-a1a5-4063-a684-89454c7f16bc')
;

-- 31 de jul de 2020 09:47:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123110,0,0,'Y',TO_DATE('2020-07-31 09:47:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DistributedVia','Distributed Via','Distributed Via','LBRA','4e0bd3bd-f875-4069-b0c4-01bcd2004a43')
;

-- 31 de jul de 2020 09:47:59 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120358,'LBR_DistributedVia','L',0,0,'Y',TO_DATE('2020-07-31 09:47:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','acc826d3-b493-4b30-8f78-219bd760bb2a')
;

-- 31 de jul de 2020 09:48:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122380,'Printed with Fiscal Document',1120358,'2',0,0,'Y',TO_DATE('2020-07-31 09:47:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:47:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','87c632ad-845e-4725-8eff-229f9b409ab9')
;

-- 31 de jul de 2020 09:48:00 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122381,'Printed and Mailed',1120358,'1',0,0,'Y',TO_DATE('2020-07-31 09:48:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ffcda5a2-12b3-41fb-9660-58fa370c7155')
;

-- 31 de jul de 2020 09:48:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122382,'E-mailed',1120358,'4',0,0,'Y',TO_DATE('2020-07-31 09:48:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0b184ecb-2c0b-40fe-a5fd-2d03369aa6a9')
;

-- 31 de jul de 2020 09:48:01 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122383,'E-mailed with Fiscal Document XML',1120358,'5',0,0,'Y',TO_DATE('2020-07-31 09:48:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','fe1f67f9-cb6c-4e39-9125-69eade4c52f1')
;

-- 31 de jul de 2020 09:48:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122384,'Printed with Fiscal Document & E-mailed',1120358,'3r',0,0,'Y',TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','66ef233e-fd78-44d9-8622-2e0009cc9df5')
;

-- 31 de jul de 2020 09:48:02 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120682,'Bank Slip Kind',1000000,'LBR_BankSlipKind',0,'6',0,0,'Y',TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','309d8d85-4e81-4cb8-93b6-5ff3d401c337','N','N','N','N')
;

-- 31 de jul de 2020 09:48:03 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipKind',1000000,'N','N','Table LBR_BankSlipKind','Y','Y',0,0,TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:02','YYYY-MM-DD HH24:MI:SS'),100,1153928,'Y',1000000,1,200000,'b34cf25c-bbdd-46fd-9240-a3b33dab8c1f')
;

-- 31 de jul de 2020 09:48:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123111,0,0,'Y',TO_DATE('2020-07-31 09:48:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipKind_ID','Bank Slip Kind','Bank Slip Kind','LBRA','e0c73acd-a62f-4e93-90a8-33fff2eb24de')
;

-- 31 de jul de 2020 09:48:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132199,0.0,'Bank Slip Kind',1120682,'LBR_BankSlipKind_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:48:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:04','YYYY-MM-DD HH24:MI:SS'),100,1123111,'N','N','LBRA','Y','N','N','Y','35834714-7f1c-4074-9a64-94d99765e5ec','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:04 BRT
CREATE TABLE LBR_BankSlipKind (LBR_BankSlipKind_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipKind_Key PRIMARY KEY (LBR_BankSlipKind_ID))
;

-- 31 de jul de 2020 09:48:05 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123112,0,0,'Y',TO_DATE('2020-07-31 09:48:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipKind_UU','LBR_BankSlipKind_UU','LBR_BankSlipKind_UU','LBRA','3fac1906-01d8-4418-a565-979100a56ac9')
;

-- 31 de jul de 2020 09:48:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132200,0.0,'LBR_BankSlipKind_UU',1120682,'LBR_BankSlipKind_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:05','YYYY-MM-DD HH24:MI:SS'),100,1123112,'N','N','LBRA','Y','N','N','Y','788ed100-8c1c-40fb-966b-610c760fc757','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:05 BRT
ALTER TABLE LBR_BankSlipKind ADD LBR_BankSlipKind_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:05 BRT
ALTER TABLE LBR_BankSlipKind ADD CONSTRAINT LBR_BankSlipKind_UU_idx UNIQUE (LBR_BankSlipKind_UU)
;

-- 31 de jul de 2020 09:48:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132201,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120682,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:05','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','33428af4-fa7a-44e8-887d-246afc226375','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:06 BRT
ALTER TABLE LBR_BankSlipKind ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132202,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120682,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:06','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','d3182dd7-245b-4065-863d-4ddcd669e5d6','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:06 BRT
ALTER TABLE LBR_BankSlipKind ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132203,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120682,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:06','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','aba2a570-1109-4214-81d7-99e33a0fd5fc','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:07 BRT
ALTER TABLE LBR_BankSlipKind ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132204,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120682,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:07','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','bb92a0fb-5803-42e6-bc09-331ff855f450','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:08 BRT
ALTER TABLE LBR_BankSlipKind ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132205,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120682,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:08','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','46d91c2a-e5d2-400d-92af-c7668bfd66e3','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:08 BRT
ALTER TABLE LBR_BankSlipKind ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132206,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120682,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:08','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','0d6ea772-524f-4ab7-945c-9c37514cc113','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:09 BRT
ALTER TABLE LBR_BankSlipKind ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132207,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120682,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:48:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:09','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','22120353-09b3-4c7c-9aad-eb59708533be','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:09 BRT
ALTER TABLE LBR_BankSlipKind ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:48:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132208,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120682,'Value',60,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:09','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','Y','N','N','Y','0ab8da14-c90b-480b-b10b-bc645c1ab892','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:10 BRT
ALTER TABLE LBR_BankSlipKind ADD Value VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:48:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132209,0.0,'Value','Numeric Value',1120682,'ValueNumber',60,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:48:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:10','YYYY-MM-DD HH24:MI:SS'),100,2579,'N','N','LBRA','Y','N','N','Y','6afb6031-7404-4997-a54f-31135e49530f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:10 BRT
ALTER TABLE LBR_BankSlipKind ADD ValueNumber NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132210,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120682,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:10','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','3acfa69e-2fa0-42c1-81a3-b66e3109107f','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:11 BRT
ALTER TABLE LBR_BankSlipKind ADD Name VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:48:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132211,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120682,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:11','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','130943c4-97c9-4ba3-a569-800dcae111a4','Y',30,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:11 BRT
ALTER TABLE LBR_BankSlipKind ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:12 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120683,'Fold',1000000,'LBR_BankSlipFold',0,'6',0,0,'Y',TO_DATE('2020-07-31 09:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','0aea839d-8c0a-4a40-a594-047ed8a9cbe7','N','N','N','N')
;

-- 31 de jul de 2020 09:48:12 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipFold',1000000,'N','N','Table LBR_BankSlipFold','Y','Y',0,0,TO_DATE('2020-07-31 09:48:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:12','YYYY-MM-DD HH24:MI:SS'),100,1153929,'Y',1000000,1,200000,'c3304b55-1400-444e-aa4b-8473ac6fdabe')
;

-- 31 de jul de 2020 09:48:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123113,0,0,'Y',TO_DATE('2020-07-31 09:48:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipFold_ID','Fold','Fold','LBRA','e4575b30-4395-49c6-8b6a-915e60456361')
;

-- 31 de jul de 2020 09:48:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132212,0.0,'Fold',1120683,'LBR_BankSlipFold_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:48:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:13','YYYY-MM-DD HH24:MI:SS'),100,1123113,'N','N','LBRA','Y','N','N','Y','35bfa0e7-8cad-4954-a55e-f49c39cdc897','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:13 BRT
CREATE TABLE LBR_BankSlipFold (LBR_BankSlipFold_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipFold_Key PRIMARY KEY (LBR_BankSlipFold_ID))
;

-- 31 de jul de 2020 09:48:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123114,0,0,'Y',TO_DATE('2020-07-31 09:48:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipFold_UU','LBR_BankSlipFold_UU','LBR_BankSlipFold_UU','LBRA','308d2af4-3c6c-4698-8599-1580d99685ec')
;

-- 31 de jul de 2020 09:48:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132213,0.0,'LBR_BankSlipFold_UU',1120683,'LBR_BankSlipFold_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:14','YYYY-MM-DD HH24:MI:SS'),100,1123114,'N','N','LBRA','Y','N','N','Y','601b38e9-0892-4038-a311-36c03b76dbea','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:14 BRT
ALTER TABLE LBR_BankSlipFold ADD LBR_BankSlipFold_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:14 BRT
ALTER TABLE LBR_BankSlipFold ADD CONSTRAINT LBR_BankSlipFold_UU_idx UNIQUE (LBR_BankSlipFold_UU)
;

-- 31 de jul de 2020 09:48:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132214,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120683,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:14','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','4db693fa-666b-4a5d-9862-833d564c2831','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:15 BRT
ALTER TABLE LBR_BankSlipFold ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132215,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120683,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:15','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','a50fa0e2-10b6-439c-8167-62e7341dd890','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:15 BRT
ALTER TABLE LBR_BankSlipFold ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132216,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120683,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:15','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','3c873499-458c-46ab-9981-bdafc372c424','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:16 BRT
ALTER TABLE LBR_BankSlipFold ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132217,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120683,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','d5f67cf0-bae1-4640-b790-4fab31f8c2b9','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:16 BRT
ALTER TABLE LBR_BankSlipFold ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132218,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120683,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','b9d3c87a-dc50-4698-ae77-a8e7d074f353','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:17 BRT
ALTER TABLE LBR_BankSlipFold ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132219,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120683,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:17','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','5accd7e8-234a-417f-aa35-4b42921df2ac','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:17 BRT
ALTER TABLE LBR_BankSlipFold ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132220,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120683,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:17','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','3a7dcd02-adf5-4add-949b-34055f5e46e1','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:18 BRT
ALTER TABLE LBR_BankSlipFold ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:48:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123115,0,0,'Y',TO_DATE('2020-07-31 09:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipLayout_ID','Bank Slip Layout','Bank Slip Layout','LBRA','9d1a361f-4725-4abf-b5d6-76ed4ea671f6')
;

-- 31 de jul de 2020 09:48:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132221,0.0,'Bank Slip Layout',1120683,'LBR_BankSlipLayout_ID',10,'N','Y','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:19','YYYY-MM-DD HH24:MI:SS'),100,1123115,'N','N','LBRA','Y','N','N','Y','fdba0d7b-3e2b-41e5-8041-75eb0bae5709','Y','N','N','LBRBankSlipLayout_LBRBankSlipF','N','N')
;

-- 31 de jul de 2020 09:48:19 BRT
ALTER TABLE LBR_BankSlipFold ADD LBR_BankSlipLayout_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132222,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120683,'Value',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:19','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','Y','N','N','Y','c92008fd-e057-4de9-9c42-0426d578c58c','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:20 BRT
ALTER TABLE LBR_BankSlipFold ADD Value VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132223,0.0,'Value','Numeric Value',1120683,'ValueNumber',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:20','YYYY-MM-DD HH24:MI:SS'),100,2579,'Y','N','LBRA','Y','N','N','Y','32bd9648-0425-44c0-bb33-9b1c3e4c40a5','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:20 BRT
ALTER TABLE LBR_BankSlipFold ADD ValueNumber NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132224,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120683,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:20','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','c51242f0-fa3f-4916-953b-de6d0ae7f84d','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:21 BRT
ALTER TABLE LBR_BankSlipFold ADD Name VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:48:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132225,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120683,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:21','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','35e06f76-a933-4a9a-9bdd-38e577d58896','Y',30,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:21 BRT
ALTER TABLE LBR_BankSlipFold ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123116,0,0,'Y',TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IssueType','Issue Type','Issue Type','LBRA','8a363957-d225-46e7-844a-9944ba0c45ce')
;

-- 31 de jul de 2020 09:48:22 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120359,'LBR_IssueType','L',0,0,'Y',TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','d6b94aa5-edf6-4a4d-a957-100949a5e7e1')
;

-- 31 de jul de 2020 09:48:23 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122385,'Direta',1120359,'1',0,0,'Y',TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9e74b513-980f-40db-ab5a-1df1effabce6')
;

-- 31 de jul de 2020 09:48:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122386,'Escritural',1120359,'2',0,0,'Y',TO_DATE('2020-07-31 09:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','cba7578b-b475-44e5-b15f-433abc8a6eb3')
;

-- 31 de jul de 2020 09:48:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132226,0,'Issue Type',1120683,'LBR_IssueType',1,'N','N','N','N','N',0,'N',17,1120359,0,0,'Y',TO_DATE('2020-07-31 09:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:24','YYYY-MM-DD HH24:MI:SS'),100,1123116,'Y','N','LBRA','Y','N','N','Y','88e43a7e-44e2-4c46-9ec9-237fb3a44316','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:24 BRT
ALTER TABLE LBR_BankSlipFold ADD LBR_IssueType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:25 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120684,'Bank Slip Layout',1000000,'LBR_BankSlipLayout',0,'4',0,0,'Y',TO_DATE('2020-07-31 09:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','a4a0a436-3b32-44e0-b01d-a1da20a0ad26','N','N','N','N')
;

-- 31 de jul de 2020 09:48:25 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipLayout',1000000,'N','N','Table LBR_BankSlipLayout','Y','Y',0,0,TO_DATE('2020-07-31 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,1153930,'Y',1000000,1,200000,'caf33ee5-a202-4568-836d-cf6d5186dd32')
;

-- 31 de jul de 2020 09:48:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132227,0.0,'Bank Slip Layout',1120684,'LBR_BankSlipLayout_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,1123115,'N','N','LBRA','Y','N','N','Y','045d759f-9afa-4a13-8127-609cfadbc278','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:26 BRT
CREATE TABLE LBR_BankSlipLayout (LBR_BankSlipLayout_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipLayout_Key PRIMARY KEY (LBR_BankSlipLayout_ID))
;

-- 31 de jul de 2020 09:48:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123117,0,0,'Y',TO_DATE('2020-07-31 09:48:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipLayout_UU','LBR_BankSlipLayout_UU','LBR_BankSlipLayout_UU','LBRA','380cf13c-f94d-4739-9b42-0666df84e5b5')
;

-- 31 de jul de 2020 09:48:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132228,0.0,'LBR_BankSlipLayout_UU',1120684,'LBR_BankSlipLayout_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:26','YYYY-MM-DD HH24:MI:SS'),100,1123117,'N','N','LBRA','Y','N','N','Y','7cc9e90c-b71e-477f-92a4-d36427b15d16','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:27 BRT
ALTER TABLE LBR_BankSlipLayout ADD LBR_BankSlipLayout_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:27 BRT
ALTER TABLE LBR_BankSlipLayout ADD CONSTRAINT LBR_BankSlipLayout_UU_idx UNIQUE (LBR_BankSlipLayout_UU)
;

-- 31 de jul de 2020 09:48:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132229,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120684,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','ea5f0fac-e942-4c7e-92ac-6d57aef887a8','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:27 BRT
ALTER TABLE LBR_BankSlipLayout ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132230,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120684,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','c882014f-4fc0-445c-8e8c-de4317a20886','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:28 BRT
ALTER TABLE LBR_BankSlipLayout ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132231,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120684,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','52588749-cf66-4eb0-84fa-9efa30c21e19','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:28 BRT
ALTER TABLE LBR_BankSlipLayout ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132232,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120684,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','ec472dd6-a2e3-42d5-b9cd-94849b5c20bd','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:29 BRT
ALTER TABLE LBR_BankSlipLayout ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132233,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120684,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:29','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','509e08c2-0213-46a0-8aea-60c09efd940a','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:29 BRT
ALTER TABLE LBR_BankSlipLayout ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132234,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120684,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:29','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','b235a4c4-b9b3-449a-b29a-09709fbca8c7','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:30 BRT
ALTER TABLE LBR_BankSlipLayout ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132235,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120684,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','35c83dfc-c982-4737-a10d-af494e392746','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:30 BRT
ALTER TABLE LBR_BankSlipLayout ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:48:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132236,0.0,'Bank','Primary Key table LBR_Bank','Primary Key table LBR_Bank',1120684,'LBR_Bank_ID',10,'N','Y','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,1000075,'N','N','LBRA','Y','N','N','Y','48d6e04a-43a9-441a-8508-ebbb75e8315a','Y','N','N','LBRBank_LBRBankSlipLayout','N','N')
;

-- 31 de jul de 2020 09:48:31 BRT
ALTER TABLE LBR_BankSlipLayout ADD LBR_Bank_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132237,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120684,'Name',60,'N','N','Y','N','Y',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:31','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','8d30cca8-9afe-4f4d-adf4-ab2eba3a3c3c','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:31 BRT
ALTER TABLE LBR_BankSlipLayout ADD Name VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:48:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132238,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120684,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:31','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','0f5a66d3-88ba-49dc-a25a-6cce37075ba1','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:32 BRT
ALTER TABLE LBR_BankSlipLayout ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:32 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120360,'LBR_BankSlipLayout - Type','L',0,0,'Y',TO_DATE('2020-07-31 09:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','d4673695-5288-4e4a-b73b-07ecd226a859')
;

-- 31 de jul de 2020 09:48:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122387,'CNAB 240',1120360,'1',0,0,'Y',TO_DATE('2020-07-31 09:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d890b448-2f49-4755-a577-3dacc4117b4b')
;

-- 31 de jul de 2020 09:48:33 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122388,'CNAB 400',1120360,'2',0,0,'Y',TO_DATE('2020-07-31 09:48:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','dcf9e677-59eb-4b31-bd9d-62b1b168a5f0')
;

-- 31 de jul de 2020 09:48:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132239,0.0,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120684,'Type',2,'N','N','Y','N','N','N',17,1120360,0,0,'Y',TO_DATE('2020-07-31 09:48:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:33','YYYY-MM-DD HH24:MI:SS'),100,600,'Y','N','LBRA','Y','N','N','Y','8882816a-afdd-439e-af64-6943de7e7afa','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:34 BRT
ALTER TABLE LBR_BankSlipLayout ADD Type VARCHAR2(2) NOT NULL
;

-- 31 de jul de 2020 09:48:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132240,0.0,'Version','Version of the table definition','The Version indicates the version of this table definition.',1120684,'Version',5,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:34','YYYY-MM-DD HH24:MI:SS'),100,624,'Y','N','LBRA','Y','N','N','Y','450a564b-0801-4e4f-9cfb-e3dd237295b6','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:34 BRT
ALTER TABLE LBR_BankSlipLayout ADD Version VARCHAR2(5) NOT NULL
;

-- 31 de jul de 2020 09:48:35 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120685,'Bank Slip Info','Bank Slip Static Data',1000022,'LBR_BankSlipInfo',0,'3',0,0,'Y',TO_DATE('2020-07-31 09:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','a6610dca-1c83-45ad-a17e-6a3f35b0c621','N','N','N','N')
;

-- 31 de jul de 2020 09:48:35 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipInfo',1000000,'N','N','Table LBR_BankSlipInfo','Y','Y',0,0,TO_DATE('2020-07-31 09:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:35','YYYY-MM-DD HH24:MI:SS'),100,1153931,'Y',1000000,1,200000,'fcf730af-a02d-415c-8977-da73432f7f0a')
;

-- 31 de jul de 2020 09:48:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123118,0,0,'Y',TO_DATE('2020-07-31 09:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlip_ID','Bank Slip','Bank Slip','LBRA','f2935ee7-3244-4b1a-9b6c-1214e94ff603')
;

-- 31 de jul de 2020 09:48:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132241,0.0,'Bank Slip',1120685,'LBR_BankSlip_ID','@LBR_BankSlip_ID@',10,'N','Y','Y','N','N','N',30,0,0,'Y',TO_DATE('2020-07-31 09:48:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:36','YYYY-MM-DD HH24:MI:SS'),100,1123118,'N','N','LBRA','Y','N','N','Y','f681dcc7-d45a-430b-9498-5292d8eb07d3','N','N','N','LBRBankSlip_LBRBankSlipInfo','C','N')
;

-- 31 de jul de 2020 09:48:36 BRT
CREATE TABLE LBR_BankSlipInfo (LBR_BankSlip_ID NUMBER(10) NOT NULL)
;

-- 31 de jul de 2020 09:48:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123119,0,0,'Y',TO_DATE('2020-07-31 09:48:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipInfo_UU','LBR_BankSlipInfo_UU','LBR_BankSlipInfo_UU','LBRA','9ce2240d-2ed8-4373-9a0d-3fee9b3cdd45')
;

-- 31 de jul de 2020 09:48:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132242,0.0,'LBR_BankSlipInfo_UU',1120685,'LBR_BankSlipInfo_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:37','YYYY-MM-DD HH24:MI:SS'),100,1123119,'N','N','LBRA','Y','N','N','Y','d435ccd8-e729-4ffc-9bd9-64101cba76c5','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:37 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankSlipInfo_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:37 BRT
ALTER TABLE LBR_BankSlipInfo ADD CONSTRAINT LBR_BankSlipInfo_UU_idx UNIQUE (LBR_BankSlipInfo_UU)
;

-- 31 de jul de 2020 09:48:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132243,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120685,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:37','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','61eba7f8-8467-4fd7-b874-331a532c6208','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:38 BRT
ALTER TABLE LBR_BankSlipInfo ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132244,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120685,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:48:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:38','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','1c197413-3a14-48f9-a2c9-1b05dbc6bd9d','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:38 BRT
ALTER TABLE LBR_BankSlipInfo ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:48:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132245,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120685,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:38','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','93797534-d4f7-48b2-b5b9-c2f295ca768f','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:39 BRT
ALTER TABLE LBR_BankSlipInfo ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132246,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120685,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:39','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','071b4e2c-d1a6-4313-b6b4-076534c1c2ac','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:39 BRT
ALTER TABLE LBR_BankSlipInfo ADD CreatedBy NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132247,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120685,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:48:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:39','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','82ce7216-8aba-4b16-b77c-4d6cf0e7838b','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:40 BRT
ALTER TABLE LBR_BankSlipInfo ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:48:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132248,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120685,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:48:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:40','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','07563504-fdb4-4c2f-bf60-d98ecf271581','N','N','N','D','N')
;

-- 31 de jul de 2020 09:48:40 BRT
ALTER TABLE LBR_BankSlipInfo ADD UpdatedBy NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132249,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120685,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:48:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:40','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','afc53004-3c16-4728-ac35-1498f589df77','N','N','N','N','N')
;

-- 31 de jul de 2020 09:48:41 BRT
ALTER TABLE LBR_BankSlipInfo ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:48:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132250,0.0,'Routing No','Bank Routing Number','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.',1120685,'RoutingNo',20,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:41','YYYY-MM-DD HH24:MI:SS'),100,964,'Y','N','LBRA','Y','N','N','Y','345119be-7441-4d11-a076-d02c455bb975','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:41 BRT
ALTER TABLE LBR_BankSlipInfo ADD RoutingNo VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132251,0.0,'Account No','Account Number','The Account Number indicates the Number assigned to this bank account. ',1120685,'AccountNo',10,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:41','YYYY-MM-DD HH24:MI:SS'),100,840,'Y','N','LBRA','Y','N','N','Y','9d6e6415-424e-40c7-babe-7f35e89cc93c','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:42 BRT
ALTER TABLE LBR_BankSlipInfo ADD AccountNo VARCHAR2(10) NOT NULL
;

-- 31 de jul de 2020 09:48:42 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123120,0,0,'Y',TO_DATE('2020-07-31 09:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankAccountVD','Account Digit','Account Digit','LBRA','08f89be0-5997-4798-840d-6a55e4365716')
;

-- 31 de jul de 2020 09:48:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132252,0.0,'Account Digit',1120685,'LBR_BankAccountVD',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:42','YYYY-MM-DD HH24:MI:SS'),100,1123120,'Y','N','LBRA','Y','N','N','Y','3402e20c-ff41-44aa-b17a-bf4d2c9b28a8','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:43 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankAccountVD VARCHAR2(3) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132253,0.0,'Agency Number','Agency Number','Agency Number',1120685,'lbr_AgencyNo',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:43','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N','LBRA','Y','N','N','Y','e9a0f074-6710-4ed9-84a4-6436ceeda58d','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:43 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_AgencyNo VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123121,0,0,'Y',TO_DATE('2020-07-31 09:48:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankAgencyVD','Agency Digit','Agency Digit','LBRA','56309d8f-0a8f-4ff5-b094-74f9c3734235')
;

-- 31 de jul de 2020 09:48:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132254,0.0,'Agency Digit',1120685,'LBR_BankAgencyVD',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:44','YYYY-MM-DD HH24:MI:SS'),100,1123121,'Y','N','LBRA','Y','N','N','Y','0a0f006a-11db-4594-89f7-f86ffef16e12','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:44 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankAgencyVD VARCHAR2(3) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123122,0,0,'Y',TO_DATE('2020-07-31 09:48:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipFoldValue','Bank Slip Value','Bank Slip Value','LBRA','7eedeea9-dbab-496b-9d7a-55954f5e025d')
;

-- 31 de jul de 2020 09:48:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132255,0.0,'Bank Slip Value',1120685,'LBR_BankSlipFoldValue',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:45','YYYY-MM-DD HH24:MI:SS'),100,1123122,'Y','N','LBRA','Y','N','N','Y','05f6109c-3192-4b89-86aa-7580612d8335','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:45 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankSlipFoldValue VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123123,0,0,'Y',TO_DATE('2020-07-31 09:48:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipFoldCode','Bank Slip Code','Bank Slip Code','LBRA','f6ab38e0-c694-44b7-adc7-d18556f17ee2')
;

-- 31 de jul de 2020 09:48:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132256,0.0,'Bank Slip Code',1120685,'LBR_BankSlipFoldCode',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:46','YYYY-MM-DD HH24:MI:SS'),100,1123123,'Y','N','LBRA','Y','N','N','Y','bc56d163-26f3-41ac-99f7-97bd7f7aeb55','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:46 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankSlipFoldCode VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123124,0,0,'Y',TO_DATE('2020-07-31 09:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipKindValue','Bank Slip Kind Value','Bank Slip Kind Value','LBRA','d97f3239-ff43-44ac-aa72-b227136441df')
;

-- 31 de jul de 2020 09:48:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132257,0.0,'Bank Slip Kind Value',1120685,'LBR_BankSlipKindValue',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:47','YYYY-MM-DD HH24:MI:SS'),100,1123124,'Y','N','LBRA','Y','N','N','Y','6abe3c35-97be-4956-8a3b-8e9491d349ed','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:47 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankSlipKindValue VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123125,0,0,'Y',TO_DATE('2020-07-31 09:48:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipKindCode','Bank Slip Kind Code','Bank Slip Kind Code','LBRA','615aaa72-cd6c-412a-8441-e3cd3f6c63e6')
;

-- 31 de jul de 2020 09:48:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132258,0.0,'Bank Slip Kind Code',1120685,'LBR_BankSlipKindCode',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,1123125,'Y','N','LBRA','Y','N','N','Y','7e114916-a8ae-4d4f-a767-fc6126743952','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:48 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_BankSlipKindCode VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123126,0,0,'Y',TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ManualInput','Manual Input','Manual Input','LBRA','e4a2348e-b833-40f8-b7f0-28e99aec267e')
;

-- 31 de jul de 2020 09:48:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132259,0.0,'Manual Input',1120685,'LBR_ManualInput',54,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:48','YYYY-MM-DD HH24:MI:SS'),100,1123126,'Y','N','LBRA','Y','N','N','Y','de0b5c2e-2e76-45b9-b0b8-499465517625','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:49 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_ManualInput VARCHAR2(54) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123127,0,0,'Y',TO_DATE('2020-07-31 09:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Barcode','Barcode','Barcode','LBRA','63c3211e-a40e-4fb8-8dfe-c4ba83a2dd4c')
;

-- 31 de jul de 2020 09:48:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132260,0.0,'Barcode',1120685,'LBR_Barcode',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:49','YYYY-MM-DD HH24:MI:SS'),100,1123127,'Y','N','LBRA','Y','N','N','Y','71f283a5-b705-4d6a-ad78-5b42281a7c1e','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:50 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_Barcode VARCHAR2(44) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132261,0.0,'Payment Location 1','Identifies the Payment Location 1','Identifies the Payment Location 1',1120685,'lbr_PaymentLocation1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:50','YYYY-MM-DD HH24:MI:SS'),100,1000022,'Y','N','LBRA','Y','N','N','Y','ea1f141e-3d19-4286-88d5-a85381787d87','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:50 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_PaymentLocation1 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:51 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123128,0,0,'Y',TO_DATE('2020-07-31 09:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InstructionBP','Instruction to BP','Instruction to BP','LBRA','76744c9f-f8bf-48ce-a6b4-f32ef32139b6')
;

-- 31 de jul de 2020 09:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132262,0.0,'Instruction to BP',1120685,'LBR_InstructionBP',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:51','YYYY-MM-DD HH24:MI:SS'),100,1123128,'Y','N','LBRA','Y','N','N','Y','bc68782c-6d4b-4a2d-a7f1-7b69502be42b','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:51 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_InstructionBP VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132263,0.0,'Instruction 1','Identifies the Instrucion 1','Identifies the Instrucion 1',1120685,'lbr_Instruction1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:52','YYYY-MM-DD HH24:MI:SS'),100,1000024,'N','N','LBRA','Y','N','N','Y','a06766e3-155f-40f6-bb0b-0fe14f48f56a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:52 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_Instruction1 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132264,0.0,'Instruction 2','Identifies the Instrucion 2','Identifies the Instrucion 2',1120685,'lbr_Instruction2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:52','YYYY-MM-DD HH24:MI:SS'),100,1000025,'N','N','LBRA','Y','N','N','Y','a816b7da-e844-4a11-a870-a944365df434','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:53 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_Instruction2 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132265,0.0,'Instruction 3','Identifies the Instrucion 3','Identifies the Instrucion 3',1120685,'lbr_Instruction3',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:53','YYYY-MM-DD HH24:MI:SS'),100,1000026,'N','N','LBRA','Y','N','N','Y','0341aa10-339c-40ea-958b-ed4248de45cb','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:53 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_Instruction3 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:54 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123129,0,0,'Y',TO_DATE('2020-07-31 09:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Instruction4','Instruction 4','Instruction 4','LBRA','ce7ad256-787b-4e88-8336-1d75d3087295')
;

-- 31 de jul de 2020 09:48:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132266,0.0,'Instruction 4',1120685,'LBR_Instruction4',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:54','YYYY-MM-DD HH24:MI:SS'),100,1123129,'Y','N','LBRA','Y','N','N','Y','72742b87-d100-40a8-9e61-353ae8a953a5','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:54 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_Instruction4 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123130,0,0,'Y',TO_DATE('2020-07-31 09:48:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Instruction5','Instruction 5','Instruction 5','LBRA','8ec2e8a0-3f24-4acf-a922-ab01d4a2ca85')
;

-- 31 de jul de 2020 09:48:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132267,0.0,'Instruction 5',1120685,'LBR_Instruction5',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:55','YYYY-MM-DD HH24:MI:SS'),100,1123130,'Y','N','LBRA','Y','N','N','Y','64badd39-d111-46de-bd4e-a8af2c62dd04','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:55 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_Instruction5 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123131,0,0,'Y',TO_DATE('2020-07-31 09:48:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Instruction6','Instruction 6','Instruction 6','LBRA','e8caecac-b01f-443f-8a79-2bea119b0418')
;

-- 31 de jul de 2020 09:48:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132268,0.0,'Instruction 6',1120685,'LBR_Instruction6',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,1123131,'Y','N','LBRA','Y','N','N','Y','4e0e2acc-cd1e-438f-a8c9-44f9161238ad','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:56 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_Instruction6 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123132,0,0,'Y',TO_DATE('2020-07-31 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Instruction7','Instruction 7','Instruction 7','LBRA','a8ef952f-da5c-4638-bb01-2a493072e656')
;

-- 31 de jul de 2020 09:48:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132269,0.0,'Instruction 7',1120685,'LBR_Instruction7',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:57','YYYY-MM-DD HH24:MI:SS'),100,1123132,'Y','N','LBRA','Y','N','N','Y','d6a12e4c-cbb8-4024-b585-b7b17a6366a9','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:57 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_Instruction7 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132270,0.0,'Organization Name','The Name of the Organization','The Name of the Organization',1120685,'lbr_OrgName',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:57','YYYY-MM-DD HH24:MI:SS'),100,1000375,'Y','Y','LBRA','Y','N','N','Y','0a389a1f-6af4-4b1f-a109-8b15036c5a10','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:48:58 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgName VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:58 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123133,0,0,'Y',TO_DATE('2020-07-31 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_OrgBPType','Org Type','Org Type','LBRA','7fc8fe47-1bcf-4580-9f6d-4d9372d57a55')
;

-- 31 de jul de 2020 09:48:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132271,0.0,'Org Type',1120685,'LBR_OrgBPType',1,'N','N','N','N','N','N',17,1120215,0,0,'Y',TO_DATE('2020-07-31 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:58','YYYY-MM-DD HH24:MI:SS'),100,1123133,'Y','N','LBRA','Y','N','N','Y','c822bd8f-9490-49a0-825a-e191054e277f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:59 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_OrgBPType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:48:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132272,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120685,'lbr_CNPJ',18,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:48:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:48:59','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','Y','N','N','Y','53bff93c-ce76-45e8-a933-4bc3894d2728','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:48:59 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_CNPJ VARCHAR2(18) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132273,0.0,'Organization Address 1','The issuer organization address 1','The issuer organization address 1',1120685,'lbr_OrgAddress1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:00','YYYY-MM-DD HH24:MI:SS'),100,1000365,'Y','N','LBRA','Y','N','N','Y','209d579e-e7c3-44a7-b6ba-900fdd0c7904','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:00 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgAddress1 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132274,0.0,'Organization Address 2','The issuer organization address 2','The issuer organization address 2',1120685,'lbr_OrgAddress2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:00','YYYY-MM-DD HH24:MI:SS'),100,1000366,'Y','N','@IsManual@!Y','LBRA','Y','N','N','Y','4c95d6b3-f6f4-4978-9c3f-67d92d4ef16a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:01 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgAddress2 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132275,0.0,'Organization Address 3','The issuer organization address 3','The issuer organization address 3',1120685,'lbr_OrgAddress3',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:01','YYYY-MM-DD HH24:MI:SS'),100,1000367,'Y','N','@IsManual@!Y','LBRA','Y','N','N','Y','30f8001d-623d-4c72-9759-99310bfb3d42','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:01 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgAddress3 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132276,0.0,'Organization Address 4','The issuer organization address 4','The issuer organization address 4',1120685,'lbr_OrgAddress4',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:01','YYYY-MM-DD HH24:MI:SS'),100,1000368,'Y','N','@IsManual@!Y','LBRA','Y','N','N','Y','04bf79fe-3920-445c-807d-53b436a77fa0','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:02 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgAddress4 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132277,0.0,'Organization City','The City of the Organization','The City of the Organization',1120685,'lbr_OrgCity',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:02','YYYY-MM-DD HH24:MI:SS'),100,1000369,'Y','N','LBRA','Y','N','N','Y','4c9ce5bd-76d4-4977-8a73-00703a9cc4f2','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:03 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgCity VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132278,0.0,'Organization Region','The Region of the Organization','The Region of the Organization',1120685,'lbr_OrgRegion',2,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:03','YYYY-MM-DD HH24:MI:SS'),100,1000371,'Y','N','LBRA','Y','N','N','Y','278342e7-b5f9-4f67-b7c8-3b03965c67d6','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:04 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgRegion VARCHAR2(2) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132279,0.0,'Organization Postal Code','The Postal Code of the Organization','The Postal Code of the Organization',1120685,'lbr_OrgPostal',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:04','YYYY-MM-DD HH24:MI:SS'),100,1000370,'Y','N','LBRA','Y','N','N','Y','21357b4c-c145-45fc-8a4c-e646dbd4b5d6','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:04 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_OrgPostal VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132280,0.0,'BP Name',1120685,'BPName',60,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:04','YYYY-MM-DD HH24:MI:SS'),100,2510,'N','Y','LBRA','Y','N','N','Y','957407da-08a4-4444-8b2e-89874406ac38','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:05 BRT
ALTER TABLE LBR_BankSlipInfo ADD BPName VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:49:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132281,0.0,'Brazilian BP Type','Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','Used to identify if the Business partner is a legal entity or an individual',1120685,'lbr_BPTypeBR',1,'N','N','N','N','N','N',17,1120215,0,0,'Y',TO_DATE('2020-07-31 09:49:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:05','YYYY-MM-DD HH24:MI:SS'),100,1000008,'N','N','LBRA','Y','N','N','Y','5c8f1e8c-7686-4c53-b816-195516f1310a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:05 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPTypeBR CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132282,0.0,'BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',1120685,'lbr_BPCNPJ',18,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:05','YYYY-MM-DD HH24:MI:SS'),100,1000187,'Y','N','LBRA','Y','N','N','Y','3bb16d29-7e7a-42f7-8cb4-cfffa2e9f3ac','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:06 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPCNPJ VARCHAR2(18) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132283,0.0,'BP Address 1','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPAddress1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:06','YYYY-MM-DD HH24:MI:SS'),100,1000178,'N','N','LBRA','Y','N','N','Y','08bd72d0-f0e4-40de-b4da-168536e4b6b3','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:06 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPAddress1 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132284,0.0,'BP Address 2','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPAddress2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:06','YYYY-MM-DD HH24:MI:SS'),100,1000179,'N','N','LBRA','Y','N','N','Y','712d6a28-4e56-4ef6-af0e-fe103eb4c19a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:07 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPAddress2 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132285,0.0,'BP Address 3','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPAddress3',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:07','YYYY-MM-DD HH24:MI:SS'),100,1000180,'N','N','LBRA','Y','N','N','Y','03afc11d-8525-48b7-89ee-f12c5f8cb456','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:07 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPAddress3 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132286,0.0,'BP Address 4','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPAddress4',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:08','YYYY-MM-DD HH24:MI:SS'),100,1000181,'N','N','LBRA','Y','N','N','Y','23415aef-7d65-4b0f-a912-17a954c8e239','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:08 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPAddress4 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132287,0.0,'BP City','BP City - Copied from the BP Location into Brazilan Legal and Tax Books','BP City - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPCity',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:08','YYYY-MM-DD HH24:MI:SS'),100,1000182,'N','N','LBRA','Y','N','N','Y','204d3758-bb57-4d3b-8a36-83ad0f2381ce','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:09 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPCity VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132288,0.0,'BP Region','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPRegion',2,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:09','YYYY-MM-DD HH24:MI:SS'),100,1000185,'Y','N','LBRA','Y','N','N','Y','b1fad23a-1760-44a0-8feb-8cd39030abba','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:09 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPRegion VARCHAR2(2) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132289,0.0,'BP Postal','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books',1120685,'lbr_BPPostal',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:09','YYYY-MM-DD HH24:MI:SS'),100,1000184,'Y','N','LBRA','Y','N','N','Y','219b6e41-03f7-4fef-8656-ec83e8d93dda','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:10 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_BPPostal VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123134,0,0,'Y',TO_DATE('2020-07-31 09:49:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorBPName','Guarantor Name','Guarantor Name','LBRA','1deb83b6-1cd2-4e98-936e-010cab1037a8')
;

-- 31 de jul de 2020 09:49:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132290,0.0,'Guarantor Name',1120685,'LBR_GuarantorBPName',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:10','YYYY-MM-DD HH24:MI:SS'),100,1123134,'Y','N','LBRA','Y','N','N','Y','40490ed3-11b5-4617-98f7-8b1cfb020e2c','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:11 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorBPName VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:11 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123135,0,0,'Y',TO_DATE('2020-07-31 09:49:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorCNPJ','Guarantor CNPJ','Guarantor CNPJ','LBRA','0002b3aa-1db7-43b8-be64-7cc4d4b12d71')
;

-- 31 de jul de 2020 09:49:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132291,0.0,'Guarantor CNPJ',1120685,'LBR_GuarantorCNPJ',18,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:11','YYYY-MM-DD HH24:MI:SS'),100,1123135,'Y','N','LBRA','Y','N','N','Y','fb6efc1f-fcb3-4a75-942c-12c65bd87306','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:12 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorCNPJ VARCHAR2(18) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123136,0,0,'Y',TO_DATE('2020-07-31 09:49:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorAddress1','Address 1','Address 1','LBRA','18b8b0b3-038d-45be-a466-c6581d4d48cd')
;

-- 31 de jul de 2020 09:49:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132292,0.0,'Address 1',1120685,'LBR_GuarantorAddress1',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:12','YYYY-MM-DD HH24:MI:SS'),100,1123136,'Y','N','LBRA','Y','N','N','Y','646f66d5-8176-4cc4-8dd5-4a0e767cce88','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:13 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorAddress1 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123137,0,0,'Y',TO_DATE('2020-07-31 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorAddress2','Address 2','Address 2','LBRA','4ddc0c9d-e23c-4f10-8f3f-0c63ac7d7f57')
;

-- 31 de jul de 2020 09:49:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132293,0.0,'Address 2',1120685,'LBR_GuarantorAddress2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,1123137,'Y','N','LBRA','Y','N','N','Y','ab1269c8-480b-440a-bf8f-e008cc715f2a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:14 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorAddress2 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:14 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123138,0,0,'Y',TO_DATE('2020-07-31 09:49:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:14','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorAddress3','Address 3','Address 3','LBRA','099415e4-f205-4e2f-9c6e-34a3b9f13429')
;

-- 31 de jul de 2020 09:49:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132294,0.0,'Address 3',1120685,'LBR_GuarantorAddress3',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:14','YYYY-MM-DD HH24:MI:SS'),100,1123138,'Y','N','LBRA','Y','N','N','Y','0fe9c2f2-e41c-41a9-9fdd-a0f20a7a2ab3','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:15 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorAddress3 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123139,0,0,'Y',TO_DATE('2020-07-31 09:49:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorAddress4','Address 4','Address 4','LBRA','b4ef8682-d947-4359-a1c5-1767fb5ad6f9')
;

-- 31 de jul de 2020 09:49:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132295,0.0,'Address 4',1120685,'LBR_GuarantorAddress4',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:15','YYYY-MM-DD HH24:MI:SS'),100,1123139,'Y','N','LBRA','Y','N','N','Y','3443c5ed-2fb5-41b5-a877-85950c22d457','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:16 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorAddress4 VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123140,0,0,'Y',TO_DATE('2020-07-31 09:49:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorCity','Guarantor City','Guarantor City','LBRA','2649e686-99b8-43c7-b9b6-ed232f4753ce')
;

-- 31 de jul de 2020 09:49:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132296,0.0,'Guarantor City',1120685,'LBR_GuarantorCity',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:16','YYYY-MM-DD HH24:MI:SS'),100,1123140,'Y','N','LBRA','Y','N','N','Y','f11c7627-ddea-4383-8a81-36026b046dd6','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:17 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorCity VARCHAR2(60) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123141,0,0,'Y',TO_DATE('2020-07-31 09:49:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorRegion','Guarantor Region','Guarantor Region','LBRA','0f72e487-951e-4a67-a1c4-e8403ed76e37')
;

-- 31 de jul de 2020 09:49:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132297,0.0,'Guarantor Region',1120685,'LBR_GuarantorRegion',2,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:17','YYYY-MM-DD HH24:MI:SS'),100,1123141,'Y','N','LBRA','Y','N','N','Y','183d6450-2255-444a-8292-f59c03a31c95','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:18 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorRegion VARCHAR2(2) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:18 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123142,0,0,'Y',TO_DATE('2020-07-31 09:49:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorPostal','Guarantor Postal','Guarantor Postal','LBRA','b335d708-78ce-4b06-ac6c-f7a8e678031e')
;

-- 31 de jul de 2020 09:49:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132298,0.0,'Guarantor Postal',1120685,'LBR_GuarantorPostal',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:18','YYYY-MM-DD HH24:MI:SS'),100,1123142,'Y','N','LBRA','Y','N','N','Y','3ea14a0a-9c46-40ab-a9ea-c70cc2499005','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:18 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorPostal VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123143,0,0,'Y',TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_AccordNo','Accord','Accord','LBRA','ec504c5e-8708-41c1-8893-79da4075f144')
;

-- 31 de jul de 2020 09:49:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132299,0,'Accord',1120685,'LBR_AccordNo',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,1123143,'Y','N','LBRA','Y','N','N','Y','5997d4a1-18a1-4b48-8d0d-0301061c8841','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:19 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_AccordNo VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123144,0,0,'Y',TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:19','YYYY-MM-DD HH24:MI:SS'),100,'LBR_GuarantorBPType','Guarantor Type','Guarantor Type','LBRA','d3540783-ee98-4403-93cb-04092e4287eb')
;

-- 31 de jul de 2020 09:49:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132300,0.0,'Guarantor Type',1120685,'LBR_GuarantorBPType',1,'N','N','N','N','N',0,'N',17,1120215,0,0,'Y',TO_DATE('2020-07-31 09:49:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:20','YYYY-MM-DD HH24:MI:SS'),100,1123144,'Y','N','LBRA','Y','N','N','Y','17ddc7a4-24d9-4fd1-8eba-ae628dea3fc0','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:20 BRT
ALTER TABLE LBR_BankSlipInfo ADD LBR_GuarantorBPType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132301,0,'NFe ID','Identification of NFe',1120685,'lbr_NFeID',44,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:20','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N','LBRA','Y','N','N','Y','fd408e57-3f3a-4f4f-8c0c-b63cab44cb00','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:21 BRT
ALTER TABLE LBR_BankSlipInfo ADD lbr_NFeID VARCHAR2(44) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:21 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120686,'Bank Slip Occurrence',1000000,'LBR_BankSlipOccur',0,'6',0,0,'Y',TO_DATE('2020-07-31 09:49:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','c5232cce-4516-45a0-8635-c3498f6ebc8b','N','N','N','N')
;

-- 31 de jul de 2020 09:49:22 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipOccur',1000000,'N','N','Table LBR_BankSlipOccur','Y','Y',0,0,TO_DATE('2020-07-31 09:49:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:21','YYYY-MM-DD HH24:MI:SS'),100,1153932,'Y',1000000,1,200000,'4ef01033-02e2-45d3-9c10-fff8e728a004')
;

-- 31 de jul de 2020 09:49:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123145,0,0,'Y',TO_DATE('2020-07-31 09:49:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipOccur_ID','Bank Slip Occurrence','Bank Slip Occurrence','LBRA','79169d5f-c83f-4cd1-bdbf-4d0efdfe47ef')
;

-- 31 de jul de 2020 09:49:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132302,0.0,'Bank Slip Occurrence',1120686,'LBR_BankSlipOccur_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:49:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:22','YYYY-MM-DD HH24:MI:SS'),100,1123145,'N','N','LBRA','Y','N','N','Y','2e65b237-77b1-4af5-ad18-6af3f0483e0b','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:23 BRT
CREATE TABLE LBR_BankSlipOccur (LBR_BankSlipOccur_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipOccur_Key PRIMARY KEY (LBR_BankSlipOccur_ID))
;

-- 31 de jul de 2020 09:49:23 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123146,0,0,'Y',TO_DATE('2020-07-31 09:49:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipOccur_UU','LBR_BankSlipOccur_UU','LBR_BankSlipOccur_UU','LBRA','aeb6b463-7638-4bd2-9150-3fb1cb8c6cce')
;

-- 31 de jul de 2020 09:49:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132303,0.0,'LBR_BankSlipOccur_UU',1120686,'LBR_BankSlipOccur_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:23','YYYY-MM-DD HH24:MI:SS'),100,1123146,'N','N','LBRA','Y','N','N','Y','7c180f15-734c-475b-8a43-f9ca4a87888c','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:24 BRT
ALTER TABLE LBR_BankSlipOccur ADD LBR_BankSlipOccur_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:24 BRT
ALTER TABLE LBR_BankSlipOccur ADD CONSTRAINT LBR_BankSlipOccur_UU_idx UNIQUE (LBR_BankSlipOccur_UU)
;

-- 31 de jul de 2020 09:49:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132304,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120686,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:24','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','e544d925-657f-44a7-9965-b6f85e2b1480','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:24 BRT
ALTER TABLE LBR_BankSlipOccur ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132305,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120686,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:24','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','9ea1da53-0f06-444c-b629-dd4fd99c7302','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:25 BRT
ALTER TABLE LBR_BankSlipOccur ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132306,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120686,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:49:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:25','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','d181a19c-323a-4689-accd-902bc355e669','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:25 BRT
ALTER TABLE LBR_BankSlipOccur ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:49:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132307,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120686,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:49:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:25','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','bee60255-4d7c-4dd9-8a9c-a578b8ef1d3a','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:26 BRT
ALTER TABLE LBR_BankSlipOccur ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132308,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120686,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:49:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:26','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','1ed2a6c2-09af-44f2-a6f3-af164d452d04','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:26 BRT
ALTER TABLE LBR_BankSlipOccur ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:49:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132309,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120686,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:49:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:26','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','e93b8a1b-066b-4a45-b749-5544e724bec2','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:27 BRT
ALTER TABLE LBR_BankSlipOccur ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132310,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120686,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:49:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:27','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','78bd7b0d-c840-417c-83cd-0baace988b47','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:27 BRT
ALTER TABLE LBR_BankSlipOccur ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:49:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132311,0.0,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120686,'IsSOTrx','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:49:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:27','YYYY-MM-DD HH24:MI:SS'),100,1106,'N','N','LBRA','Y','N','N','Y','d31b3827-c34c-4f3d-9957-56887e5202f9','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:28 BRT
ALTER TABLE LBR_BankSlipOccur ADD IsSOTrx CHAR(1) DEFAULT 'Y' CHECK (IsSOTrx IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:49:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132312,0.0,'Bank Slip Layout',1120686,'LBR_BankSlipLayout_ID',10,'N','Y','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:28','YYYY-MM-DD HH24:MI:SS'),100,1123115,'N','N','LBRA','Y','N','N','Y','411b7f69-2b19-45f1-b5fa-caf2cc9c15e5','Y','N','N','LBRBankSlipLayout_LBRBankSlipO','N','N')
;

-- 31 de jul de 2020 09:49:28 BRT
ALTER TABLE LBR_BankSlipOccur ADD LBR_BankSlipLayout_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132313,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120686,'Value',60,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:28','YYYY-MM-DD HH24:MI:SS'),100,620,'Y','Y','LBRA','Y','N','N','Y','1890ac18-ff4c-495d-befd-4a073a1c9d5b','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:29 BRT
ALTER TABLE LBR_BankSlipOccur ADD Value VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:49:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132314,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120686,'Name',120,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:29','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','9dc002aa-9230-4102-9556-154adeb402f0','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:29 BRT
ALTER TABLE LBR_BankSlipOccur ADD Name VARCHAR2(120) NOT NULL
;

-- 31 de jul de 2020 09:49:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132315,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120686,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:29','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','cd029715-57c2-4007-9826-981526aa4409','Y',30,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:30 BRT
ALTER TABLE LBR_BankSlipOccur ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:30 BRT
UPDATE AD_Reference SET Name='LBR_OccurType',Updated=TO_DATE('2020-07-31 09:49:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000007
;

-- 31 de jul de 2020 09:49:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122389,'Register Request',1000007,'R',0,0,'Y',TO_DATE('2020-07-31 09:49:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','74ef10bc-736d-4bd3-ae88-b6ccfbc9abfa')
;

-- 31 de jul de 2020 09:49:31 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122390,'Register Confirmed',1000007,'C',0,0,'Y',TO_DATE('2020-07-31 09:49:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','47816ef6-eddc-4001-9fc8-2658b9030f84')
;

-- 31 de jul de 2020 09:49:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132316,0.0,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120686,'Type','O',1,'N','N','Y','N','N','N',17,1000007,0,0,'Y',TO_DATE('2020-07-31 09:49:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:31','YYYY-MM-DD HH24:MI:SS'),100,600,'Y','N','LBRA','Y','N','N','Y','26b6ac2f-bcdf-4d9e-8e2f-746e81b58b31','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:32 BRT
ALTER TABLE LBR_BankSlipOccur ADD Type CHAR(1) DEFAULT 'O' NOT NULL
;

-- 31 de jul de 2020 09:49:32 BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120002,'24f1bbb3-84a5-4518-8f78-28ef54dcc888',TO_DATE('2020-07-31 09:49:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_BankSlipOccur_Value_Unq',TO_DATE('2020-07-31 09:49:32','YYYY-MM-DD HH24:MI:SS'),100,1120686,'N','Y','N','N','N')
;

-- 31 de jul de 2020 09:49:33 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120006,'8795be22-81f7-4351-9ea1-a3776807f38b',TO_DATE('2020-07-31 09:49:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-07-31 09:49:32','YYYY-MM-DD HH24:MI:SS'),100,1132304,1120002,1)
;

-- 31 de jul de 2020 09:49:33 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120007,'d2cb4505-a676-414d-831c-f4e8f6d8a564',TO_DATE('2020-07-31 09:49:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-07-31 09:49:33','YYYY-MM-DD HH24:MI:SS'),100,1132312,1120002,2)
;

-- 31 de jul de 2020 09:49:34 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120008,'14586cc2-c767-4ad3-a8eb-2d3b06c46c02',TO_DATE('2020-07-31 09:49:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-07-31 09:49:33','YYYY-MM-DD HH24:MI:SS'),100,1132311,1120002,3)
;

-- 31 de jul de 2020 09:49:34 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120009,'14b39f9e-2b5f-4665-b848-4ca03ac91fd7',TO_DATE('2020-07-31 09:49:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-07-31 09:49:34','YYYY-MM-DD HH24:MI:SS'),100,1132313,1120002,4)
;

-- 31 de jul de 2020 09:49:34 BRT
CREATE UNIQUE INDEX LBR_BankSlipOccur_Value_Unq ON LBR_BankSlipOccur (AD_Client_ID,LBR_BankSlipLayout_ID,IsSOTrx,Value)
;

-- 31 de jul de 2020 09:49:35 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120687,'Bank Slip Contract','Bank Slip agreement between company and bank',158,'LBR_BankSlipContract',0,'3',0,0,'Y',TO_DATE('2020-07-31 09:49:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','0faa6824-7b07-4a3c-82de-2e7a26c6089d','N','N','N','N')
;

-- 31 de jul de 2020 09:49:35 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipContract',1000000,'N','N','Table LBR_BankSlipContract','Y','Y',0,0,TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,1153933,'Y',1000000,1,200000,'b63c8923-26a0-400e-b230-360290c096d0')
;

-- 31 de jul de 2020 09:49:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123147,0,0,'Y',TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipContract_ID','Bank Slip Contract','Bank Slip Contract','LBRA','0e71799b-7408-4d0f-8c6b-132c12b4bf27')
;

-- 31 de jul de 2020 09:49:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132317,0.0,'Bank Slip Contract',1120687,'LBR_BankSlipContract_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:35','YYYY-MM-DD HH24:MI:SS'),100,1123147,'N','N','LBRA','Y','N','N','Y','399a12a8-bfd1-4636-baae-831034158f8c','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:36 BRT
CREATE TABLE LBR_BankSlipContract (LBR_BankSlipContract_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipContract_Key PRIMARY KEY (LBR_BankSlipContract_ID))
;

-- 31 de jul de 2020 09:49:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123148,0,0,'Y',TO_DATE('2020-07-31 09:49:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipContract_UU','LBR_BankSlipContract_UU','LBR_BankSlipContract_UU','LBRA','b06cc289-b04f-4127-8f68-b01f1e9eee58')
;

-- 31 de jul de 2020 09:49:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132318,0.0,'LBR_BankSlipContract_UU',1120687,'LBR_BankSlipContract_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:36','YYYY-MM-DD HH24:MI:SS'),100,1123148,'N','N','LBRA','Y','N','N','Y','f261bb3c-7e1d-4f1a-8b2b-a0460a1435f1','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:37 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_BankSlipContract_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:37 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBR_BankSlipContract_UU_idx UNIQUE (LBR_BankSlipContract_UU)
;

-- 31 de jul de 2020 09:49:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132319,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120687,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:37','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','1c158d23-bb53-422b-b790-cc48185e5883','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:37 BRT
ALTER TABLE LBR_BankSlipContract ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132320,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120687,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:37','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','be571ca2-f1cb-4a04-ab6b-3e930f96ee7c','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:38 BRT
ALTER TABLE LBR_BankSlipContract ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132321,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120687,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','28a119a6-afab-47eb-8ae6-6d5883f70bff','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:38 BRT
ALTER TABLE LBR_BankSlipContract ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:49:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132322,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120687,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','6f2c823f-2ffa-441b-a5f9-562317baad44','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:39 BRT
ALTER TABLE LBR_BankSlipContract ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132323,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120687,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:49:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:39','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','b532aa01-552b-4da0-9383-6909113c4c01','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:39 BRT
ALTER TABLE LBR_BankSlipContract ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:49:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132324,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120687,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:49:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:39','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','68d34208-0050-4efa-8a44-bb587ae182d1','N','N','N','D','N')
;

-- 31 de jul de 2020 09:49:40 BRT
ALTER TABLE LBR_BankSlipContract ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132325,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120687,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:49:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:40','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','baa843aa-453d-41ef-a406-73f24e3c2df6','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:40 BRT
ALTER TABLE LBR_BankSlipContract ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:49:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132326,0.0,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120687,'C_BankAccount_ID',10,'N','Y','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:40','YYYY-MM-DD HH24:MI:SS'),100,836,'N','N','LBRA','Y','N','N','Y','1bbdc062-66bd-4ced-84d0-a29bfbc2b70f','Y','N','N','CBankAccount_LBRBankSlipContra','N','N')
;

-- 31 de jul de 2020 09:49:41 BRT
ALTER TABLE LBR_BankSlipContract ADD C_BankAccount_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132327,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120687,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','188d46d7-7fcc-412b-8039-5fb840e7fdf7','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:41 BRT
ALTER TABLE LBR_BankSlipContract ADD Name VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:49:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132328,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120687,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','bc631e51-80f4-4c6a-8519-be4b0941d15d','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:42 BRT
ALTER TABLE LBR_BankSlipContract ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:42 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120180,'LBR_BankSlipLayout of Bank','S','EXISTS (SELECT 1 FROM C_BankAccount ba, C_Bank b, LBR_Bank bb WHERE ba.C_BankAccount_ID=@C_BankAccount_ID@ AND b.C_Bank_ID=ba.C_Bank_ID AND b.RoutingNo=bb.RoutingNo AND LBR_BankSlipLayout.LBR_Bank_ID=bb.LBR_Bank_ID)',0,0,'Y',TO_DATE('2020-07-31 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c40ac539-7267-4140-a09b-47eeb778d818')
;

-- 31 de jul de 2020 09:49:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132329,0.0,'Bank Slip Layout',1120687,1120180,'LBR_BankSlipLayout_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,1123115,'Y','N','LBRA','Y','N','N','Y','32479dbc-8a82-45c6-a44b-e1e9ebff753e','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:43 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_BankSlipLayout_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:43 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120181,'LBR_BankSlipFold of LBR_BankSlipLayout','S','LBR_BankSlipFold.LBR_BankSlipLayout_ID = @LBR_BankSlipLayout_ID@',0,0,'Y',TO_DATE('2020-07-31 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','6db9be1b-236c-4b2a-a815-bfb93688c377')
;

-- 31 de jul de 2020 09:49:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132330,0.0,'Fold',1120687,1120181,'LBR_BankSlipFold_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,1123113,'Y','N','LBRA','Y','N','N','Y','3601f042-76b5-46a0-a221-84b11541e422','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:44 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_BankSlipFold_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:44 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132331,0.0,'Bank Slip Kind',1120687,'LBR_BankSlipKind_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,1123111,'Y','N','LBRA','Y','N','N','Y','4eeff99c-dbc3-4027-a0e0-36fb8c671aee','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:44 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_BankSlipKind_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:49:45 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123149,0,0,'Y',TO_DATE('2020-07-31 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NumberInBankSeq_ID','NIB Sequence','NIB Sequence','LBRA','96421919-2ddd-447a-9b5b-0036bbaa234a')
;

-- 31 de jul de 2020 09:49:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132332,0.0,'NIB Sequence',1120687,'LBR_NumberInBankSeq_ID',10,'N','N','N','N','N','N',18,128,0,0,'Y',TO_DATE('2020-07-31 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,1123149,'Y','N','LBRA','Y','N','N','Y','cec69671-421a-4cf3-b0ee-573a424ef84f','Y','N','N','LBRNumberInBankSeq_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:49:45 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_NumberInBankSeq_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123150,0,0,'Y',TO_DATE('2020-07-31 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNABFileSeq_ID','CNAB File Sequence','CNAB File Sequence','LBRA','f5688dda-941c-4a27-a5b8-270a15cf028b')
;

-- 31 de jul de 2020 09:49:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132333,0.0,'CNAB File Sequence',1120687,'LBR_CNABFileSeq_ID',10,'N','N','N','N','N','N',18,128,0,0,'Y',TO_DATE('2020-07-31 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,1123150,'Y','N','LBRA','Y','N','N','Y','bed0124c-e9f3-42f0-a248-4e53930e62b6','Y','N','N','LBRCNABFileSeq_LBRBankSlipCont','N','N')
;

-- 31 de jul de 2020 09:49:46 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_CNABFileSeq_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123151,0,0,'Y',TO_DATE('2020-07-31 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CNABLotSeq_ID','CNAB Lot Sequence','CNAB Lot Sequence','LBRA','b0960cf7-af4b-448e-ab89-bd1c80a8112a')
;

-- 31 de jul de 2020 09:49:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132334,0.0,'CNAB Lot Sequence',1120687,'LBR_CNABLotSeq_ID',10,'N','N','N','N','N','N',18,128,0,0,'Y',TO_DATE('2020-07-31 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,1123151,'Y','N','LBRA','Y','N','N','Y','dd48bc12-49e5-4e57-b0d0-0f749cecdd25','Y','N','N','LBRCNABLotSeq_LBRBankSlipContr','N','N')
;

-- 31 de jul de 2020 09:49:47 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_CNABLotSeq_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132335,0.0,'Bank Slip Config',1120687,'LBR_BankSlipConfig_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,1123093,'Y','N','LBRA','Y','N','N','Y','27d77732-4d16-4d52-8dec-9b6e96e531f2','Y','N','N','LBRBankSlipConfig_LBRBankSlipC','N','N')
;

-- 31 de jul de 2020 09:49:48 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_BankSlipConfig_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123152,0,0,'Y',TO_DATE('2020-07-31 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RegisterType','Register Type','Register Type','LBRA','e2b8217f-fe37-4a51-adee-34ee823129d0')
;

-- 31 de jul de 2020 09:49:49 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,Description,Help,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120361,'LBR_RegisterType','Tipo de Registro do boleto junto ao banco','Preparado para funcionar com o CNAB 400, modificar de acordo com a implementação do outros leiautes','L',0,0,'Y',TO_DATE('2020-07-31 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','732f051a-a440-42f7-95b3-17415fd02f08')
;

-- 31 de jul de 2020 09:49:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122391,'Registered',1120361,'1',0,0,'Y',TO_DATE('2020-07-31 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b99713c5-6fd0-41a5-9feb-92705c24014f')
;

-- 31 de jul de 2020 09:49:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122392,'Not Registered',1120361,'2',0,0,'Y',TO_DATE('2020-07-31 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','aef60bcb-ce8f-42e1-8113-a3b4aa3e84e9')
;

-- 31 de jul de 2020 09:49:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132336,0.0,'Register Type',1120687,'LBR_RegisterType',1,'N','N','Y','N','N','N',17,1120361,0,0,'Y',TO_DATE('2020-07-31 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,1123152,'Y','N','LBRA','Y','N','N','Y','5b82244e-5998-4f44-9fdd-176c27780344','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:49:50 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_RegisterType CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:49:51 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123153,0,0,'Y',TO_DATE('2020-07-31 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Param1','Parameter 1','Param 1','LBRA','257885c0-7428-4348-95bc-843f2325a0ff')
;

-- 31 de jul de 2020 09:49:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132337,0,'Parameter 1',1120687,'LBR_Param1',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,1123153,'Y','N','LBRA','Y','N','N','Y','f866afb8-ed9a-4d77-b11e-d85df7b1b885','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:51 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_Param1 VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123154,0,0,'Y',TO_DATE('2020-07-31 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Param2','Parameter 2','Param 2','LBRA','20e9202d-34be-4687-8f0d-19f1168fe4a4')
;

-- 31 de jul de 2020 09:49:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132338,0,'Parameter 2',1120687,'LBR_Param2',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,1123154,'Y','N','LBRA','Y','N','N','Y','2d75bdc3-6294-4fe5-a2ce-d2eb1822b135','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:52 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_Param2 VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132339,0,'Accord',1120687,'LBR_AccordNo',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-07-31 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,1123143,'Y','N','LBRA','Y','N','N','Y','ab6e2bd7-9af6-4e8b-8c1e-53cca0401ccf','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:53 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_AccordNo VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:53 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123155,0,0,'Y',TO_DATE('2020-07-31 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_RecipientType','Recipient Type','Recipient Type','LBRA','cf1003f2-08a5-483c-8e1a-679132fe6e4b')
;

-- 31 de jul de 2020 09:49:54 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120362,'LBR_RecipientType','L',0,0,'Y',TO_DATE('2020-07-31 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','f14a1f03-0f69-4dd0-aa29-92cd07d5ae0b')
;

-- 31 de jul de 2020 09:49:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122393,'Organization',1120362,'1',0,0,'Y',TO_DATE('2020-07-31 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9f9995bf-13e7-49d3-b47d-d43359b41474')
;

-- 31 de jul de 2020 09:49:55 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,Description,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122394,'FIDC or 3rd Party','Chooset the partner to be included as Recipient of Bank Slipe',1120362,'2',0,0,'Y',TO_DATE('2020-07-31 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3620cec4-e0ed-4cec-9a0a-d95205b770ba')
;

-- 31 de jul de 2020 09:49:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132340,0,'Recipient Type',1120687,'LBR_RecipientType','1',1,'N','N','Y','N','N',0,'N',17,1120362,0,0,'Y',TO_DATE('2020-07-31 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,1123155,'Y','N','LBRA','Y','N','N','Y','6b170b2a-286f-4f24-b15e-a0dbdb098c35','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:49:55 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_RecipientType CHAR(1) DEFAULT '1' NOT NULL
;

-- 31 de jul de 2020 09:49:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123156,0,0,'Y',TO_DATE('2020-07-31 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Recipient_ID','Recipient','Recipient','LBRA','4387204b-0847-4da7-81f5-a9c804ffe781')
;

-- 31 de jul de 2020 09:49:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132341,0,'Recipient',1120687,'LBR_Recipient_ID',10,'N','N','N','N','N',0,'N',30,138,0,0,'Y',TO_DATE('2020-07-31 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,1123156,'Y','N','LBRA','Y','N','@LBR_RecipientType@=2','N','Y','6927d703-a2ab-4e8f-afc4-838b291ae2e8','Y',0,'N','N','LBRRecipient_LBRBankSlipContra','N','N')
;

-- 31 de jul de 2020 09:49:56 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_Recipient_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123157,0,0,'Y',TO_DATE('2020-07-31 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Recipient_Location_ID','Recipient Location','Recipient Location','LBRA','74fc2bc9-fdbf-4316-84f1-c81c001c6166')
;

-- 31 de jul de 2020 09:49:57 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120182,'C_BPartnerLocation of Recipient','S','C_BPartner_Location.C_BPartner_ID = @LBR_Recipient_ID@',0,0,'Y',TO_DATE('2020-07-31 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','78a198fc-68e6-4e34-9356-79b8ce7ec082')
;

-- 31 de jul de 2020 09:49:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132342,0,'Recipient Location',1120687,1120182,'LBR_Recipient_Location_ID',10,'N','N','N','N','N',0,'N',18,159,0,0,'Y',TO_DATE('2020-07-31 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,1123157,'Y','N','LBRA','Y','N','@LBR_RecipientType@=2','N','Y','16bb2b2b-ba94-4ee7-ab58-eabee61bb2ed','Y',0,'N','N','LBRRecipientLoc_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:49:57 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_Recipient_Location_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:49:58 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120688,'Bank Slip Mov',1000022,'LBR_BankSlipMov',0,'3',0,0,'Y',TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','40c2986d-3a7a-4fc8-84f1-17b6f3b81873','N','N','N','N')
;

-- 31 de jul de 2020 09:49:58 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipMov',1000000,'N','N','Table LBR_BankSlipMov','Y','Y',0,0,TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,1153934,'Y',1000000,1,200000,'4df06d86-50df-4fe4-9803-ce35fb875923')
;

-- 31 de jul de 2020 09:49:59 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123158,0,0,'Y',TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipMov_ID','Bank Slip Mov','Bank Slip Mov','LBRA','26ebd87f-ab57-4ec9-a40c-ee088d53f770')
;

-- 31 de jul de 2020 09:49:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132343,0.0,'Bank Slip Mov',1120688,'LBR_BankSlipMov_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:49:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:59','YYYY-MM-DD HH24:MI:SS'),100,1123158,'N','N','LBRA','Y','N','N','Y','a67c39e3-42be-4f63-8e44-69d748e51791','N','N','N','N','N')
;

-- 31 de jul de 2020 09:49:59 BRT
CREATE TABLE LBR_BankSlipMov (LBR_BankSlipMov_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipMov_Key PRIMARY KEY (LBR_BankSlipMov_ID))
;

-- 31 de jul de 2020 09:50:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123159,0,0,'Y',TO_DATE('2020-07-31 09:49:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:49:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipMov_UU','LBR_BankSlipMov_UU','LBR_BankSlipMov_UU','LBRA','7eec39d3-3eb3-4111-997b-2f68e55e5aee')
;

-- 31 de jul de 2020 09:50:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132344,0.0,'LBR_BankSlipMov_UU',1120688,'LBR_BankSlipMov_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:00','YYYY-MM-DD HH24:MI:SS'),100,1123159,'N','N','LBRA','Y','N','N','Y','882466df-6bd3-4d12-af71-822e10bbd4e2','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:00 BRT
ALTER TABLE LBR_BankSlipMov ADD LBR_BankSlipMov_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:00 BRT
ALTER TABLE LBR_BankSlipMov ADD CONSTRAINT LBR_BankSlipMov_UU_idx UNIQUE (LBR_BankSlipMov_UU)
;

-- 31 de jul de 2020 09:50:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132345,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120688,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:00','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','a43a9a5b-3a1a-4089-8f7b-7a56a1d31b2a','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:01 BRT
ALTER TABLE LBR_BankSlipMov ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132346,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120688,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:01','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','59254bf9-b54a-4c2f-8eaa-b39477e78f89','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:01 BRT
ALTER TABLE LBR_BankSlipMov ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132347,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120688,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:50:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:01','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','f61ff8b8-ab7a-4264-b46d-73d7725a787d','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:02 BRT
ALTER TABLE LBR_BankSlipMov ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:50:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132348,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120688,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:50:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:02','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','cd15bf9d-6806-42e7-bafd-c149e25700c9','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:02 BRT
ALTER TABLE LBR_BankSlipMov ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132349,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120688,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:50:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:02','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','921d7ad2-0294-4e1b-8b34-28748ee641fb','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:03 BRT
ALTER TABLE LBR_BankSlipMov ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:50:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132350,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120688,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:50:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:03','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','ce873c72-272f-4dbb-a7bc-15554ff56bce','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:03 BRT
ALTER TABLE LBR_BankSlipMov ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132351,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120688,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:03','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','097f8471-92d4-468d-a612-4186134ef9fe','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:04 BRT
ALTER TABLE LBR_BankSlipMov ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:50:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132352,0.0,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120688,'IsSOTrx','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:04','YYYY-MM-DD HH24:MI:SS'),100,1106,'N','N','LBRA','Y','N','N','Y','15677a7c-6396-4535-a879-0ceee61914cd','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:04 BRT
ALTER TABLE LBR_BankSlipMov ADD IsSOTrx CHAR(1) DEFAULT 'Y' CHECK (IsSOTrx IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:50:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132353,0.0,'Bank Slip',1120688,'LBR_BankSlip_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:04','YYYY-MM-DD HH24:MI:SS'),100,1123118,'N','N','LBRA','Y','N','N','Y','109f13f1-e5e6-4b63-8a8c-e55223578f8e','Y','N','N','LBRBankSlip_LBRBankSlipMov','N','N')
;

-- 31 de jul de 2020 09:50:05 BRT
ALTER TABLE LBR_BankSlipMov ADD LBR_BankSlip_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132354,0.0,'Bank Slip Occurrence',1120688,'LBR_BankSlipOccur_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:05','YYYY-MM-DD HH24:MI:SS'),100,1123145,'N','N','LBRA','Y','N','N','Y','a45c548d-12d4-477b-8e65-28cd2ed457d4','Y','N','N','LBRBankSlipOccur_LBRBankSlipMo','N','N')
;

-- 31 de jul de 2020 09:50:06 BRT
ALTER TABLE LBR_BankSlipMov ADD LBR_BankSlipOccur_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132355,0.0,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120688,'Value',60,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:06','YYYY-MM-DD HH24:MI:SS'),100,620,'N','Y','LBRA','Y','N','N','Y','e1a3d8f0-3df1-4d63-ae7c-2fda4a58f0e7','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:50:06 BRT
ALTER TABLE LBR_BankSlipMov ADD Value VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:50:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132356,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120688,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:06','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','3c1de571-ed42-42c5-bf6c-a751e3f59fe9','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:50:06 BRT
ALTER TABLE LBR_BankSlipMov ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132357,0.0,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120688,'Type',1,'N','N','N','N','N','N',17,1000007,0,0,'Y',TO_DATE('2020-07-31 09:50:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:07','YYYY-MM-DD HH24:MI:SS'),100,600,'Y','N','LBRA','Y','N','N','Y','250259ab-5a99-43b8-8171-382204b22232','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:07 BRT
ALTER TABLE LBR_BankSlipMov ADD Type CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132358,0.0,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120688,'MovementDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:07','YYYY-MM-DD HH24:MI:SS'),100,1037,'N','N','LBRA','Y','N','N','Y','bd1d4421-8ce5-4c3d-87c1-ba434457ddf0','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:08 BRT
ALTER TABLE LBR_BankSlipMov ADD MovementDate DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132359,0.0,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120688,'DateTrx',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:08','YYYY-MM-DD HH24:MI:SS'),100,1297,'N','N','LBRA','Y','N','N','Y','1a294454-7454-457a-8e8a-aa143bab642a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:08 BRT
ALTER TABLE LBR_BankSlipMov ADD DateTrx DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132360,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120688,'GrandTotal','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:08','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','Y','N','N','Y','1cc06d50-ed02-493e-9e87-fe307bf2ca9d','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:09 BRT
ALTER TABLE LBR_BankSlipMov ADD GrandTotal NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132361,0.0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120688,'DiscountAmt','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,1395,'N','N','LBRA','Y','N','N','Y','96e357b5-9db7-4dfb-a37a-46c4d3cd55e2','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:09 BRT
ALTER TABLE LBR_BankSlipMov ADD DiscountAmt NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132362,0.0,'Interest Value',1120688,'LBR_InterestValue','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,1123098,'N','N','LBRA','Y','N','N','Y','ce68ab9f-c1a0-441d-97b5-670c17da8510','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:10 BRT
ALTER TABLE LBR_BankSlipMov ADD LBR_InterestValue NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132363,0.0,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120688,'ChargeAmt','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:10','YYYY-MM-DD HH24:MI:SS'),100,849,'N','N','LBRA','Y','N','N','Y','c7daeb72-2a8c-4449-9cb5-264a3afd8d7f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:10 BRT
ALTER TABLE LBR_BankSlipMov ADD ChargeAmt NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132364,0.0,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120688,'DueDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:10','YYYY-MM-DD HH24:MI:SS'),100,2000,'Y','N','LBRA','Y','N','N','Y','b5c00828-dcd6-4796-ac21-122e343e6fec','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:11 BRT
ALTER TABLE LBR_BankSlipMov ADD DueDate DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132365,0.0,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120688,'C_Payment_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-07-31 09:50:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:11','YYYY-MM-DD HH24:MI:SS'),100,1384,'N','N','LBRA','Y','N','N','Y','4ff8fde8-8116-42c0-a6fd-be0786648030','Y','N','N','CPayment_LBRBankSlipMov','N','N')
;

-- 31 de jul de 2020 09:50:12 BRT
ALTER TABLE LBR_BankSlipMov ADD C_Payment_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:12 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120689,'Bank Slip',1000022,'LBR_BankSlip',0,'3',0,0,'Y',TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','422080e8-5e86-482d-8af5-8ed9069e711b','N','N','N','N')
;

-- 31 de jul de 2020 09:50:12 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlip',1000000,'N','N','Table LBR_BankSlip','Y','Y',0,0,TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,1153935,'Y',1000000,1,200000,'30856258-efd1-4c46-800b-fca04548ac78')
;

-- 31 de jul de 2020 09:50:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132366,0.0,'Bank Slip',1120689,'LBR_BankSlip_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:12','YYYY-MM-DD HH24:MI:SS'),100,1123118,'N','N','LBRA','Y','N','N','Y','40360c25-55cd-44e0-a50a-ba4091eb646e','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:13 BRT
CREATE TABLE LBR_BankSlip (LBR_BankSlip_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlip_Key PRIMARY KEY (LBR_BankSlip_ID))
;

-- 31 de jul de 2020 09:50:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123160,0,0,'Y',TO_DATE('2020-07-31 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlip_UU','LBR_BankSlip_UU','LBR_BankSlip_UU','LBRA','968e841a-a761-41e9-b1c9-12bf3057c618')
;

-- 31 de jul de 2020 09:50:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132367,0.0,'LBR_BankSlip_UU',1120689,'LBR_BankSlip_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:13','YYYY-MM-DD HH24:MI:SS'),100,1123160,'N','N','LBRA','Y','N','N','Y','4ce6b4a0-57e4-409e-be06-813a92900595','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:14 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlip_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:14 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBR_BankSlip_UU_idx UNIQUE (LBR_BankSlip_UU)
;

-- 31 de jul de 2020 09:50:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132368,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120689,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:14','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','4b0acf08-776c-4cd5-8ee8-de124cae4139','N','N','N','ADClient_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:15 BRT
ALTER TABLE LBR_BankSlip ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132369,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120689,202,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:15','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','054cd957-2b92-482a-b1f9-5d39e5ef784f','N','N','N','ADOrg_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:15 BRT
ALTER TABLE LBR_BankSlip ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132370,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120689,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:50:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:15','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','a956e40e-516e-4515-b1e3-9fa64eb4f584','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:15 BRT
ALTER TABLE LBR_BankSlip ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:50:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132371,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120689,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:50:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:16','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','24eb812a-4a12-41f7-b319-7fe5b610c5ca','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:16 BRT
ALTER TABLE LBR_BankSlip ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132372,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120689,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:50:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:16','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','704c05d8-c5a3-4b36-944b-e1054234f34c','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:17 BRT
ALTER TABLE LBR_BankSlip ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:50:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132373,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120689,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','20d46ff2-9e03-4eb6-940e-fbf994164982','N','N','N','D','N')
;

-- 31 de jul de 2020 09:50:17 BRT
ALTER TABLE LBR_BankSlip ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132374,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120689,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','de3285eb-510b-416e-97ad-390f272ce6fe','N','N','N','N','N')
;

-- 31 de jul de 2020 09:50:18 BRT
ALTER TABLE LBR_BankSlip ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:50:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132375,0.0,'Bank','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.',1120689,'C_Bank_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:18','YYYY-MM-DD HH24:MI:SS'),100,835,'N','N','LBRA','Y','N','N','Y','f3acdfe7-2509-4503-9f52-24b18e4fdabf','Y','N','N','CBank_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:18 BRT
ALTER TABLE LBR_BankSlip ADD C_Bank_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:19 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120183,'C_BankAccount by Org and Bank','S','C_BankAccount.AD_Org_ID = @AD_Org_ID@ AND C_BankAccount.C_Bank_ID = @C_Bank_ID@',0,0,'Y',TO_DATE('2020-07-31 09:50:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3ef15cf4-4584-49b1-a0f2-cb82510a6ff6')
;

-- 31 de jul de 2020 09:50:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132376,0.0,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120689,1120183,'C_BankAccount_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:19','YYYY-MM-DD HH24:MI:SS'),100,836,'N','N','LBRA','Y','N','N','Y','0a345068-482d-4a97-aaac-c3b55dc16a9b','Y','N','N','CBankAccount_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:19 BRT
ALTER TABLE LBR_BankSlip ADD C_BankAccount_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132377,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120689,'C_BPartner_ID',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_DATE('2020-07-31 09:50:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:19','YYYY-MM-DD HH24:MI:SS'),100,187,'Y','N','LBRA','Y','N','N','Y','46fa045e-fbbe-4c5b-b435-bbbd765a3251','Y','N','N','CBPartner_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:20 BRT
ALTER TABLE LBR_BankSlip ADD C_BPartner_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:20 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120184,'C_BPartner_Loc PayFrom','S','C_BPartner_Location.C_BPartner_ID=@C_BPartner_ID@ AND C_BPartner_Location.IsPayFrom=''Y'' AND C_BPartner_Location.IsActive=''Y''',0,0,'Y',TO_DATE('2020-07-31 09:50:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','89cc80f2-83bf-40a7-9255-a6f3fe7863f7')
;

-- 31 de jul de 2020 09:50:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132378,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120689,1120184,'C_BPartner_Location_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:20','YYYY-MM-DD HH24:MI:SS'),100,189,'Y','N','LBRA','Y','N','N','Y','5e5b0353-99cd-4fbc-bbc4-2accaa1ca5b5','Y','N','N','CBPartnerLocation_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:21 BRT
ALTER TABLE LBR_BankSlip ADD C_BPartner_Location_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:21 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123161,0,0,'Y',TO_DATE('2020-07-31 09:50:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:21','YYYY-MM-DD HH24:MI:SS'),100,'GuarantorBP_ID','Guarantor','Guarantor','LBRA','8fd9510f-0fd6-4d29-88fe-837143f0252b')
;

-- 31 de jul de 2020 09:50:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132379,0.0,'Guarantor',1120689,'GuarantorBP_ID',10,'N','N','N','N','N','N',30,138,0,0,'Y',TO_DATE('2020-07-31 09:50:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:21','YYYY-MM-DD HH24:MI:SS'),100,1123161,'Y','N','LBRA','Y','N','N','Y','76939228-c0f6-4308-bc19-8ad15812c9cb','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:22 BRT
ALTER TABLE LBR_BankSlip ADD GuarantorBP_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:22 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123162,0,0,'Y',TO_DATE('2020-07-31 09:50:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:22','YYYY-MM-DD HH24:MI:SS'),100,'GuarantorBP_Location_ID','Guarantor Location','Guarantor Location','LBRA','0c2ff1f1-2f6b-4af3-9dc7-4669568fc07f')
;

-- 31 de jul de 2020 09:50:23 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120185,'C_BPartnerLocation of Guarantor','S','C_BPartner_Location.C_BPartner_ID = @GuarantorBP_ID@',0,0,'Y',TO_DATE('2020-07-31 09:50:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','40ac5598-52a6-4f73-80dd-a3addceab033')
;

-- 31 de jul de 2020 09:50:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132380,0.0,'Guarantor Location',1120689,1120185,'GuarantorBP_Location_ID',10,'N','N','N','N','N','N',18,159,0,0,'Y',TO_DATE('2020-07-31 09:50:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:23','YYYY-MM-DD HH24:MI:SS'),100,1123162,'Y','N','LBRA','Y','N','N','Y','20805085-5e28-4a04-9e4d-08550db27755','Y','N','N','GuarantorBPLocation_LBRBankSli','N','N')
;

-- 31 de jul de 2020 09:50:24 BRT
ALTER TABLE LBR_BankSlip ADD GuarantorBP_Location_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:24 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120186,'C_DocType BankSlip','S','C_DocType.DocBaseType=''BSB''',0,0,'Y',TO_DATE('2020-07-31 09:50:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','445db9eb-65ed-487f-b84e-97c3c129edab')
;

-- 31 de jul de 2020 09:50:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132381,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120689,1120186,'C_DocType_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:24','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','Y','N','N','Y','7ea4d31d-bf76-424d-8a1d-3bf78a16a51d','Y','N','N','CDocType_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:25 BRT
ALTER TABLE LBR_BankSlip ADD C_DocType_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132382,0.0,'Invoice','Invoice Identifier','The Invoice Document.',1120689,145,'C_Invoice_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-07-31 09:50:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:25','YYYY-MM-DD HH24:MI:SS'),100,1008,'Y','N','LBRA','Y','N','N','Y','a7fc7f64-bf5a-4b9f-a681-f46de0837df4','Y','N','N','CInvoice_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:25 BRT
ALTER TABLE LBR_BankSlip ADD C_Invoice_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:26 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120187,'C_InvoicePaySchedule of Invoice','S','C_InvoicePaySchedule.C_Invoice_ID = @C_Invoice_ID@',0,0,'Y',TO_DATE('2020-07-31 09:50:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a862867b-219d-47fb-8f81-5dcc092e54f3')
;

-- 31 de jul de 2020 09:50:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132383,0.0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',1120689,1120187,'C_InvoicePaySchedule_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-07-31 09:50:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:26','YYYY-MM-DD HH24:MI:SS'),100,1995,'Y','N','LBRA','Y','N','N','Y','5fdf7930-5177-4f11-a0da-8a3ed450f3c9','Y','N','N','CInvoicePaySchedule_LBRBankSli','N','N')
;

-- 31 de jul de 2020 09:50:26 BRT
ALTER TABLE LBR_BankSlip ADD C_InvoicePaySchedule_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132384,0.0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120689,'DateAcct','@#Date@',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:27','YYYY-MM-DD HH24:MI:SS'),100,263,'Y','N','LBRA','Y','N','N','Y','c3a597ee-c1e3-458c-8053-595a28433d18','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:27 BRT
ALTER TABLE LBR_BankSlip ADD DateAcct DATE NOT NULL
;

-- 31 de jul de 2020 09:50:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132385,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120689,'DateDoc','@#Date@',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:27','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','Y','N','N','Y','5902161e-cc93-46ac-8161-7c1feb9db5bd','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:28 BRT
ALTER TABLE LBR_BankSlip ADD DateDoc DATE NOT NULL
;

-- 31 de jul de 2020 09:50:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132386,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120689,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:28','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','Y','N','Y','8a3eec44-b576-40c3-a012-74edde3dc6a4','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:50:28 BRT
ALTER TABLE LBR_BankSlip ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132387,0.0,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120689,'DiscountAmt','0',10,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:28','YYYY-MM-DD HH24:MI:SS'),100,1395,'N','N','LBRA','Y','N','N','Y','aa30df08-525a-4d24-af80-26e7824348bc','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:29 BRT
ALTER TABLE LBR_BankSlip ADD DiscountAmt NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:30 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,WorkingTime,Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,AD_Table_ID,Value,WorkflowType,IsValid,DocumentNo,QtyBatchSize,IsBetaFunctionality,Yield,AD_Workflow_UU) VALUES ('Process_LBR_BankSlip','(Standard Process Bank Slip)',1120032,0,0,'Y',TO_DATE('2020-07-31 09:50:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:29','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','Kenos Ltda',0,1,0,0,'D',0,'R','N',1120689,'Process_LBR_BankSlip','P','N','10000000',1,'N',100,'ca6dabd3-d7ea-42eb-a3c6-d6f664f5d4e0')
;

-- 31 de jul de 2020 09:50:30 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120124,'(DocComplete)',1120032,0,0,'Y',TO_DATE('2020-07-31 09:50:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:30','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocComplete)',0,'N','N',0,0,100,'5fa38207-e79c-4bae-9afa-ef0f4dcdb73e',200000)
;

-- 31 de jul de 2020 09:50:31 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120125,'(DocPrepare)',1120032,0,0,'Y',TO_DATE('2020-07-31 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'37bb093c-1fe6-4d6d-941e-254c25dae7ac',200000)
;

-- 31 de jul de 2020 09:50:32 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120125,'Y',TO_DATE('2020-07-31 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120124,'LBRA',10,1120076,'N','4bcff21b-45f8-4adc-bd79-cda3102a6d0a')
;

-- 31 de jul de 2020 09:50:32 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120126,'(Start)',1120032,0,0,'Y',TO_DATE('2020-07-31 09:50:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:32','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'46fa26c0-8ef9-4490-a401-58b0eb33f57e',200000)
;

-- 31 de jul de 2020 09:50:33 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120126,'Y',TO_DATE('2020-07-31 09:50:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120125,'LBRA',10,1120077,'N','3590099b-7387-4eef-ad4b-4a65c960b235')
;

-- 31 de jul de 2020 09:50:33 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120127,'(DocAuto)','(Standard Node)',1120032,0,0,'Y',TO_DATE('2020-07-31 09:50:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:33','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'7c421491-dcb3-49ab-8d9b-df719e4c1119',200000)
;

-- 31 de jul de 2020 09:50:33 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120126, IsValid='Y',Updated=TO_DATE('2020-07-31 09:50:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120032
;

-- 31 de jul de 2020 09:50:34 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,AD_Process_UU,AllowMultipleExecution) VALUES (1120249,0,0,'Y',TO_DATE('2020-07-31 09:50:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:33','YYYY-MM-DD HH24:MI:SS'),100,'Process Bank Slip','N','LBR_BankSlip Process','N','1','LBRA',0,0,1120032,'N','N','Y','daee8086-73fb-423c-ae34-e6324ec61837','P')
;

-- 31 de jul de 2020 09:50:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132388,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120689,'DocAction','CO',2,'N','N','Y','N','N','N',28,135,0,0,'Y',TO_DATE('2020-07-31 09:50:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:34','YYYY-MM-DD HH24:MI:SS'),100,287,'Y',1120249,'N','LBRA','Y','N','N','Y','d4de7910-a00a-4344-b91d-a2f52c8d708c','Y','B','N','N','N')
;

-- 31 de jul de 2020 09:50:34 BRT
ALTER TABLE LBR_BankSlip ADD DocAction CHAR(2) DEFAULT 'CO' NOT NULL
;

-- 31 de jul de 2020 09:50:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132389,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120689,'DocStatus','DR',2,'N','N','Y','N','N','N',17,131,0,0,'Y',TO_DATE('2020-07-31 09:50:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:34','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','Y','N','N','Y','d0e5c849-2212-4722-baf8-9090c751f057','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:35 BRT
ALTER TABLE LBR_BankSlip ADD DocStatus VARCHAR2(2) DEFAULT 'DR' NOT NULL
;

-- 31 de jul de 2020 09:50:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132390,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120689,'DocumentNo',30,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:35','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','Y','N','N','Y','e0db6270-1815-4895-b3f2-0663cac14920','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:50:36 BRT
ALTER TABLE LBR_BankSlip ADD DocumentNo VARCHAR2(30) NOT NULL
;

-- 31 de jul de 2020 09:50:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132391,0.0,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120689,'DueDate','@#Date@',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:50:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:36','YYYY-MM-DD HH24:MI:SS'),100,2000,'Y','N','LBRA','Y','N','N','Y','d5075968-bc67-4ae5-a243-e65ef9dd3157','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:36 BRT
ALTER TABLE LBR_BankSlip ADD DueDate DATE NOT NULL
;

-- 31 de jul de 2020 09:50:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132392,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120689,'GrandTotal','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:36','YYYY-MM-DD HH24:MI:SS'),100,316,'Y','N','LBRA','Y','N','N','Y','719e4b78-6fd7-483a-bb75-ae35a9b4a577','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:37 BRT
ALTER TABLE LBR_BankSlip ADD GrandTotal NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132393,0.0,'Paid','The document is paid',1120689,'IsPaid','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:37','YYYY-MM-DD HH24:MI:SS'),100,1402,'N','N','LBRA','Y','N','N','Y','2faea84a-c9f4-414f-b4e6-6950312eae58','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:38 BRT
ALTER TABLE LBR_BankSlip ADD IsPaid CHAR(1) DEFAULT 'N' CHECK (IsPaid IN ('Y','N'))
;

-- 31 de jul de 2020 09:50:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132394,0.0,'Cancelled','The transaction was cancelled',1120689,'IsCancelled','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:38','YYYY-MM-DD HH24:MI:SS'),100,2531,'N','N','LBRA','Y','N','N','Y','9672e718-78bc-43bd-ba87-3249ca832d0f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:38 BRT
ALTER TABLE LBR_BankSlip ADD IsCancelled CHAR(1) DEFAULT 'N' CHECK (IsCancelled IN ('Y','N'))
;

-- 31 de jul de 2020 09:50:39 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120188,'LBR_BankSlipContract of Bank Account','S','LBR_BankSlipContract.C_BankAccount_ID = @C_BankAccount_ID@',0,0,'Y',TO_DATE('2020-07-31 09:50:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','902bc1dd-bab5-4aed-a833-71b302ec9ab3')
;

-- 31 de jul de 2020 09:50:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132395,0.0,'Bank Slip Contract',1120689,1120188,'LBR_BankSlipContract_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:39','YYYY-MM-DD HH24:MI:SS'),100,1123147,'N','N','LBRA','Y','N','N','Y','eaa2424f-28ba-482e-a188-f92584220076','Y','N','N','LBRBankSlipContract_LBRBankSli','N','N')
;

-- 31 de jul de 2020 09:50:39 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlipContract_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:40 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123163,0,0,'Y',TO_DATE('2020-07-31 09:50:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BankSlipCurrency','Bank Slip Currency','Bank Slip Currency','LBRA','35bda544-687b-473a-9c1e-eae78c72bdff')
;

-- 31 de jul de 2020 09:50:40 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120363,'LBR_BankSlip Currency','L',0,0,'Y',TO_DATE('2020-07-31 09:50:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','22f7810c-d012-44c8-9aa8-29aa8dae3bdd')
;

-- 31 de jul de 2020 09:50:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122395,'09 - Brazilian Real',1120363,'09',0,0,'Y',TO_DATE('2020-07-31 09:50:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c776a812-1910-41b1-af1e-a294292c8a3c')
;

-- 31 de jul de 2020 09:50:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132396,0.0,'Bank Slip Currency',1120689,'LBR_BankSlipCurrency','09',2,'N','N','Y','N','N','N',17,1120363,0,0,'Y',TO_DATE('2020-07-31 09:50:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:41','YYYY-MM-DD HH24:MI:SS'),100,1123163,'Y','N','LBRA','Y','N','N','Y','ff24ba60-9f19-4c6c-8ed0-e4d33222ac7b','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:41 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlipCurrency VARCHAR2(2) DEFAULT '09' NOT NULL
;

-- 31 de jul de 2020 09:50:42 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120189,'LBR_BankSlipFold of Bank Contract','S','EXISTS (SELECT 1 FROM LBR_BankSlipContract c WHERE c.LBR_BankSlipContract_ID=@LBR_BankSlipContract_ID@ AND LBR_BankSlipFold.LBR_BankSlipFold_ID=c.LBR_BankSlipFold_ID)',0,0,'Y',TO_DATE('2020-07-31 09:50:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:41','YYYY-MM-DD HH24:MI:SS'),100,'U','aaffc51d-b9fa-4796-9800-2c99c928c0f2')
;

-- 31 de jul de 2020 09:50:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132397,0.0,'Fold',1120689,1120189,'LBR_BankSlipFold_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:42','YYYY-MM-DD HH24:MI:SS'),100,1123113,'Y','N','LBRA','Y','N','N','Y','4defa77b-a64b-4552-8856-2374b895a69a','Y','N','N','LBRBankSlipFold_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:42 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlipFold_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:43 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132398,0.0,'Bank Slip Kind',1120689,'LBR_BankSlipKind_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:50:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:42','YYYY-MM-DD HH24:MI:SS'),100,1123111,'Y','N','LBRA','Y','N','N','Y','d0f3e162-85a2-4209-b07b-84c571682d74','Y','N','N','LBRBankSlipKind_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:50:43 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlipKind_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:50:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123164,0,0,'Y',TO_DATE('2020-07-31 09:50:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DirectDebitNotice','Direct Debit Notice','Direct Debit Notice','LBRA','678541bb-5a97-424d-84ad-d9eaed9baf5f')
;

-- 31 de jul de 2020 09:50:44 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120364,'LBR_DirectDebitNotice','L',0,0,'Y',TO_DATE('2020-07-31 09:50:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','1c230e1d-16d9-4ad5-81d0-1361c87aacb4')
;

-- 31 de jul de 2020 09:50:44 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122396,'Notice with Address in File',1120364,'1',0,0,'Y',TO_DATE('2020-07-31 09:50:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','91b02faf-d08c-4061-a687-b66b6ed666bb')
;

-- 31 de jul de 2020 09:50:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122397,'No Notice',1120364,'2',0,0,'Y',TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','85f71d3b-ea9f-4321-87a1-9f9ffafed4c0')
;

-- 31 de jul de 2020 09:50:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122398,'Notice with Address in the Bank',1120364,'3',0,0,'Y',TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','46c89adf-4073-413e-9a1f-355beb8b5c53')
;

-- 31 de jul de 2020 09:50:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132399,0.0,'Direct Debit Notice',1120689,'LBR_DirectDebitNotice',1,'N','N','N','N','N','N',17,1120364,0,0,'Y',TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:45','YYYY-MM-DD HH24:MI:SS'),100,1123164,'Y','N','LBRA','Y','N','N','Y','a2e6a4c0-864a-4cac-adae-622bc7854179','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:46 BRT
ALTER TABLE LBR_BankSlip ADD LBR_DirectDebitNotice CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132400,0.0,'Distributed Via',1120689,'LBR_DistributedVia',1,'N','N','Y','N','N','N',17,1120358,0,0,'Y',TO_DATE('2020-07-31 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,1123110,'Y','N','LBRA','Y','N','N','Y','de522ce1-c77c-41d4-a152-74bd95ff7004','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:46 BRT
ALTER TABLE LBR_BankSlip ADD LBR_DistributedVia CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:50:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123165,0,0,'Y',TO_DATE('2020-07-31 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IOFAmt','IOF Amount','IOF Amount','LBRA','a99f2303-de58-4dd0-9a84-2b41ce93de99')
;

-- 31 de jul de 2020 09:50:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132401,0.0,'IOF Amount',1120689,'LBR_IOFAmt','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,1123165,'Y','N','LBRA','Y','N','N','Y','896c6298-ec8a-45d5-bb78-2683151d9e3d','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:47 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IOFAmt NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:50:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123166,0,0,'Y',TO_DATE('2020-07-31 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsHalted','Halted','Halted','LBRA','ec102320-f468-4fea-aaa2-e0260541e604')
;

-- 31 de jul de 2020 09:50:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132402,0.0,'Halted',1120689,'LBR_IsHalted','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:48','YYYY-MM-DD HH24:MI:SS'),100,1123166,'Y','N','LBRA','Y','N','N','Y','2d1d9920-ef7c-4dcb-a699-f8721ac70de2','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:48 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IsHalted CHAR(1) DEFAULT 'N' CHECK (LBR_IsHalted IN ('Y','N'))
;

-- 31 de jul de 2020 09:50:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123167,0,0,'Y',TO_DATE('2020-07-31 09:50:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsPartialPayment','Partial Payment','Partial Payment','LBRA','30e32b10-d934-44bd-8c3d-5701d4e72365')
;

-- 31 de jul de 2020 09:50:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132403,0.0,'Partial Payment',1120689,'LBR_IsPartialPayment','N',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:49','YYYY-MM-DD HH24:MI:SS'),100,1123167,'Y','N','LBRA','Y','N','N','Y','32cb2019-4c90-4dc1-89e6-756973f28c86','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:49 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IsPartialPayment CHAR(1) DEFAULT 'N' CHECK (LBR_IsPartialPayment IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:50:50 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123168,0,0,'Y',TO_DATE('2020-07-31 09:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:50','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsProtested','Protested','Protested','LBRA','cb99dc98-6174-4291-8e42-65541b95ee1f')
;

-- 31 de jul de 2020 09:50:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132404,0.0,'Protested',1120689,'LBR_IsProtested','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:50','YYYY-MM-DD HH24:MI:SS'),100,1123168,'Y','N','LBRA','Y','N','N','Y','21eaced6-9586-40b5-aefe-548db8584e8a','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:51 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IsProtested CHAR(1) DEFAULT 'N' CHECK (LBR_IsProtested IN ('Y','N'))
;

-- 31 de jul de 2020 09:50:51 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123169,0,0,'Y',TO_DATE('2020-07-31 09:50:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IssuedBy','Issued By','Issued By','LBRA','a76e9d70-850c-4468-ac8b-664a743650f3')
;

-- 31 de jul de 2020 09:50:51 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120365,'LBR_IssuedBy','L',0,0,'Y',TO_DATE('2020-07-31 09:50:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','f3c4d0a9-f0a0-48ae-8516-c99e141cb945')
;

-- 31 de jul de 2020 09:50:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122399,'Bank',1120365,'1',0,0,'Y',TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','cde377dd-1103-4d63-a248-ecd9c88b05db')
;

-- 31 de jul de 2020 09:50:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122400,'Organization',1120365,'2',0,0,'Y',TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e340fb44-db7d-4e11-bf1a-b1507ae171fe')
;

-- 31 de jul de 2020 09:50:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132405,0.0,'Issued By',1120689,'LBR_IssuedBy','2',1,'N','N','Y','N','N','N',17,1120365,0,0,'Y',TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:52','YYYY-MM-DD HH24:MI:SS'),100,1123169,'Y','N','LBRA','Y','N','N','Y','ab24df14-5153-450d-a88a-b4e4703ca276','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:53 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IssuedBy CHAR(1) DEFAULT '2' NOT NULL
;

-- 31 de jul de 2020 09:50:53 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123170,0,0,'Y',TO_DATE('2020-07-31 09:50:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsWrittenOff','Written Off','Written Off','LBRA','38168cdf-6791-4211-a374-235d14eba67b')
;

-- 31 de jul de 2020 09:50:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132406,0.0,'Written Off',1120689,'LBR_IsWrittenOff','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:54','YYYY-MM-DD HH24:MI:SS'),100,1123170,'Y','N','LBRA','Y','N','N','Y','43522f3f-6515-4153-a856-36e0bb8ad47f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:54 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IsWrittenOff CHAR(1) DEFAULT 'N' CHECK (LBR_IsWrittenOff IN ('Y','N'))
;

-- 31 de jul de 2020 09:50:54 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123171,0,0,'Y',TO_DATE('2020-07-31 09:50:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LoanContractNo','Loan Contract No','Loan Contract No','LBRA','f9972a42-5743-4dcd-9994-5017bc2f183f')
;

-- 31 de jul de 2020 09:50:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132407,0.0,'Loan Contract No',1120689,'LBR_LoanContractNo',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:55','YYYY-MM-DD HH24:MI:SS'),100,1123171,'Y','N','LBRA','Y','N','N','Y','84f060b8-4864-4ff4-8852-fc5e9733b7cd','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:55 BRT
ALTER TABLE LBR_BankSlip ADD LBR_LoanContractNo VARCHAR2(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:55 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123172,0,0,'Y',TO_DATE('2020-07-31 09:50:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NumberInBank','Number In Bank','Number In Bank','LBRA','3f2f4d0b-26a4-4e7e-8c2d-aa70a0f435fb')
;

-- 31 de jul de 2020 09:50:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132408,0.0,'Number In Bank',1120689,'LBR_NumberInBank',20,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:56','YYYY-MM-DD HH24:MI:SS'),100,1123172,'Y','N','LBRA','Y','N','N','Y','58df8d6f-5ba4-465c-86cd-e8903d789696','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:56 BRT
ALTER TABLE LBR_BankSlip ADD LBR_NumberInBank VARCHAR2(20) DEFAULT NULL 
;

-- 31 de jul de 2020 09:50:56 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123173,0,0,'Y',TO_DATE('2020-07-31 09:50:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NumberInOrg','Number in the Org','Number in the Org','LBRA','2aad0728-5810-476c-803b-9f4702673c69')
;

-- 31 de jul de 2020 09:50:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132409,0.0,'Number in the Org',1120689,'LBR_NumberInOrg',25,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,1123173,'Y','N','LBRA','Y','N','N','Y','9009fb7d-7bd8-49c4-8db9-34b4573a6d25','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:57 BRT
ALTER TABLE LBR_BankSlip ADD LBR_NumberInOrg VARCHAR2(25) NOT NULL
;

-- 31 de jul de 2020 09:50:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132410,0.0,'Register Type',1120689,'LBR_RegisterType',1,'N','N','Y','N','N','N',17,1120361,0,0,'Y',TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,1123152,'Y','N','LBRA','Y','N','N','Y','90fd0c0f-ca8e-4d41-b6fc-bc7737163737','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:57 BRT
ALTER TABLE LBR_BankSlip ADD LBR_RegisterType CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:50:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132411,0.0,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120689,'Posted','N',1,'N','N','Y','N','N','N',28,0,0,'Y',TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:57','YYYY-MM-DD HH24:MI:SS'),100,1308,'N','N','LBRA','Y','N','N','Y','3f03e726-406e-463f-a974-aa2857fe94ec','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:58 BRT
ALTER TABLE LBR_BankSlip ADD Posted CHAR(1) DEFAULT 'N' NOT NULL
;

-- 31 de jul de 2020 09:50:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132412,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120689,'Processed','N',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:50:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:58','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','Y','N','N','Y','4a299dc9-37a4-4f6d-8366-827c562e8147','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:59 BRT
ALTER TABLE LBR_BankSlip ADD Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:50:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132413,0.0,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120689,'ProcessedOn',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:50:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:59','YYYY-MM-DD HH24:MI:SS'),100,54128,'Y','N','LBRA','Y','N','N','Y','56a5b899-1610-4c38-a4d1-babfe37e662d','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:50:59 BRT
ALTER TABLE LBR_BankSlip ADD ProcessedOn NUMBER DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132414,0.0,'Process Now',1120689,'Processing',1,'N','N','N','N','N','N',28,0,0,'Y',TO_DATE('2020-07-31 09:50:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:50:59','YYYY-MM-DD HH24:MI:SS'),100,524,'Y','N','LBRA','Y','N','N','Y','ed8863b2-e7f4-4ddf-8c46-8b1d06225cc5','N','Y','N','N','N')
;

-- 31 de jul de 2020 09:51:00 BRT
ALTER TABLE LBR_BankSlip ADD Processing CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132415,0.0,'Write-off Amount','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.',1120689,'WriteOffAmt','0',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:51:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:00','YYYY-MM-DD HH24:MI:SS'),100,1450,'N','N','LBRA','Y','N','N','Y','89c7edd5-8a50-4ce6-a5b3-1c2fdf936dec','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:00 BRT
ALTER TABLE LBR_BankSlip ADD WriteOffAmt NUMBER DEFAULT 0
;

-- 31 de jul de 2020 09:51:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132416,0.0,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1120689,'LBR_EMailSent','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:51:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:00','YYYY-MM-DD HH24:MI:SS'),100,1121729,'Y','N','LBRA','Y','N','N','Y','d568cb3f-d4bd-4995-93bb-b09f65fe69ea','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:01 BRT
ALTER TABLE LBR_BankSlip ADD LBR_EMailSent CHAR(1) DEFAULT 'N' CHECK (LBR_EMailSent IN ('Y','N'))
;

-- 31 de jul de 2020 09:51:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132417,0.0,'PaySchedule Number','Defines the PaySchedule Number','Defines the PaySchedule Number',1120689,'lbr_PayScheduleNo','1',2,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:51:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:01','YYYY-MM-DD HH24:MI:SS'),100,1000077,'Y','N','LBRA','Y','N','N','Y','33889b47-1e63-4784-98ce-792094f4151e','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:01 BRT
ALTER TABLE LBR_BankSlip ADD lbr_PayScheduleNo NUMBER(10) DEFAULT 1 NOT NULL
;

-- 31 de jul de 2020 09:51:02 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123174,0,0,'Y',TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount1Date','Discount 1 Date','Discount 1 Date','LBRA','c8e8b404-9b65-47c3-8a85-46d38e8111a7')
;

-- 31 de jul de 2020 09:51:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132418,0.0,'Discount 1 Date',1120689,'LBR_Discount1Date',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,1123174,'Y','N','LBRA','Y','N','N','Y','311e129a-c12b-4220-b7f3-8b391e810bfd','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:02 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount1Date DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:03 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123175,0,0,'Y',TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:02','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount1Type','Discount 1 Type','Discount 1 Type','LBRA','d1568515-6639-4d1d-a1ba-5a800ac8bb6e')
;

-- 31 de jul de 2020 09:51:03 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120366,'LBR_DiscountType','L',0,0,'Y',TO_DATE('2020-07-31 09:51:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','dcd83ebd-c5fc-4649-b674-ed5fb3eda608')
;

-- 31 de jul de 2020 09:51:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122401,'Fixed Rate until Date Set',1120366,'2',0,0,'Y',TO_DATE('2020-07-31 09:51:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','25656d6d-8e1b-4bdd-9fa1-2f2714a91ffb')
;

-- 31 de jul de 2020 09:51:04 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122402,'Fixed Amount until Date Set',1120366,'1',0,0,'Y',TO_DATE('2020-07-31 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','68977769-1eea-42f3-ab97-c1c6f21940ff')
;

-- 31 de jul de 2020 09:51:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122403,'Amount for Early Payment in Calendar Days',1120366,'3',0,0,'Y',TO_DATE('2020-07-31 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8844a13a-55af-495b-b969-c17364367325')
;

-- 31 de jul de 2020 09:51:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122404,'Amount for Early Payment in Business Days',1120366,'4',0,0,'Y',TO_DATE('2020-07-31 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d8492d3d-6e7e-493c-abd4-71697b5f090a')
;

-- 31 de jul de 2020 09:51:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122405,'Rate over Grand Total in Calendar Days',1120366,'5',0,0,'Y',TO_DATE('2020-07-31 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e2980d2f-c2ea-41bf-af7e-f58efeda35ba')
;

-- 31 de jul de 2020 09:51:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122406,'Rate over Grand Total in Business Days',1120366,'6',0,0,'Y',TO_DATE('2020-07-31 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3fe7c306-33d7-4f64-ab26-df269ae370fe')
;

-- 31 de jul de 2020 09:51:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132419,0.0,'Discount 1 Type',1120689,'LBR_Discount1Type',1,'N','N','N','N','N','N',17,1120366,0,0,'Y',TO_DATE('2020-07-31 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:06','YYYY-MM-DD HH24:MI:SS'),100,1123175,'Y','N','LBRA','Y','N','N','Y','31063c57-fab5-4504-8611-04fbce84fb5e','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:07 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount1Type CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:07 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123176,0,0,'Y',TO_DATE('2020-07-31 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount1Value','Discount 1 Value','Discount 1 Value','LBRA','e84553f1-025e-4f05-89fb-d1b278deaf4c')
;

-- 31 de jul de 2020 09:51:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132420,0.0,'Discount 1 Value',1120689,'LBR_Discount1Value','0',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:07','YYYY-MM-DD HH24:MI:SS'),100,1123176,'Y','N','LBRA','Y','N','N','Y','03b25ae3-74d2-49b4-8a0c-5cfd3bbf58ba','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:08 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount1Value NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:08 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123177,0,0,'Y',TO_DATE('2020-07-31 09:51:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount2Date','Discount 2 Date','Discount 2 Date','LBRA','261ccc96-6472-4fe3-8b4e-56f9642e282c')
;

-- 31 de jul de 2020 09:51:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132421,0.0,'Discount 2 Date',1120689,'LBR_Discount2Date',7,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:08','YYYY-MM-DD HH24:MI:SS'),100,1123177,'Y','N','LBRA','Y','N','N','Y','48217f3b-13a1-4e73-b27b-07ac7a536f16','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:09 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount2Date DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123178,0,0,'Y',TO_DATE('2020-07-31 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount2Type','Discount 2 Type','Discount 2 Type','LBRA','3b724768-ea3c-4a53-a077-7e34c124e8ff')
;

-- 31 de jul de 2020 09:51:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132422,0.0,'Discount 2 Type',1120689,'LBR_Discount2Type',1,'N','N','N','N','N','N',17,1120366,0,0,'Y',TO_DATE('2020-07-31 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:09','YYYY-MM-DD HH24:MI:SS'),100,1123178,'Y','N','LBRA','Y','N','N','Y','f9614eaf-d611-4a82-a838-40b9f0b8e5f4','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:10 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount2Type CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123179,0,0,'Y',TO_DATE('2020-07-31 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount2Value','Discount 2 Value','Discount 2 Value','LBRA','b9d6fba9-28fe-41c9-9a50-d2abe8a24049')
;

-- 31 de jul de 2020 09:51:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132423,0.0,'Discount 2 Value',1120689,'LBR_Discount2Value','0',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:10','YYYY-MM-DD HH24:MI:SS'),100,1123179,'Y','N','LBRA','Y','N','N','Y','44fec844-e576-4188-81f6-5f7cc6b959de','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:11 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount2Value NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:11 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123180,0,0,'Y',TO_DATE('2020-07-31 09:51:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount3Date','Discount 3 Date','Discount 3 Date','LBRA','42d6c5cb-49e7-4398-af3c-2033d3731a9b')
;

-- 31 de jul de 2020 09:51:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132424,0.0,'Discount 3 Date',1120689,'LBR_Discount3Date',7,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:11','YYYY-MM-DD HH24:MI:SS'),100,1123180,'Y','N','LBRA','Y','N','N','Y','b17a2078-bcea-4ca3-bb50-c6044ee823c5','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:12 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount3Date DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123181,0,0,'Y',TO_DATE('2020-07-31 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount3Type','Discount 3 Type','Discount 3 Type','LBRA','c013d042-4599-4cd6-8f05-0b0da8053c0f')
;

-- 31 de jul de 2020 09:51:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132425,0.0,'Discount 3 Type',1120689,'LBR_Discount3Type',1,'N','N','N','N','N','N',17,1120366,0,0,'Y',TO_DATE('2020-07-31 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:12','YYYY-MM-DD HH24:MI:SS'),100,1123181,'Y','N','LBRA','Y','N','N','Y','4e449d83-366b-415f-be2a-8fd3a0735019','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:13 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount3Type CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123182,0,0,'Y',TO_DATE('2020-07-31 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Discount3Value','Discount 3 Value','Discount 3 Value','LBRA','ad4958b5-67c1-4e6c-b995-7cf75fcb8de6')
;

-- 31 de jul de 2020 09:51:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132426,0.0,'Discount 3 Value',1120689,'LBR_Discount3Value','0',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:13','YYYY-MM-DD HH24:MI:SS'),100,1123182,'Y','N','LBRA','Y','N','N','Y','898ce725-2b2f-4593-ba11-66ac2b4af111','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:14 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Discount3Value NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132427,0.0,'Interest Value',1120689,'LBR_InterestValue','0',131089,'N','N','Y','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:51:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:14','YYYY-MM-DD HH24:MI:SS'),100,1123098,'Y','N','LBRA','Y','N','N','Y','1a3edc4c-3060-4cc2-bcff-4bcebba28548','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:14 BRT
ALTER TABLE LBR_BankSlip ADD LBR_InterestValue NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132428,0.0,'Interest Type',1120689,'LBR_InterestType',1,'N','N','N','N','N','N',17,1120355,0,0,'Y',TO_DATE('2020-07-31 09:51:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:14','YYYY-MM-DD HH24:MI:SS'),100,1123100,'Y','N','LBRA','Y','N','N','Y','da710910-dc37-44da-ad34-392ecc09d067','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:15 BRT
ALTER TABLE LBR_BankSlip ADD LBR_InterestType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:15 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123183,0,0,'Y',TO_DATE('2020-07-31 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_InterestDate','Interest Date','Interest Date','LBRA','044a2b9d-7105-4532-ac00-2c5afac101a0')
;

-- 31 de jul de 2020 09:51:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132429,0.0,'Interest Date',1120689,'LBR_InterestDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:15','YYYY-MM-DD HH24:MI:SS'),100,1123183,'Y','N','LBRA','Y','N','N','Y','545d25c8-b977-4329-88bf-b2dd501743ed','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:16 BRT
ALTER TABLE LBR_BankSlip ADD LBR_InterestDate DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132430,0.0,'Penalty Value',1120689,'LBR_PenaltyValue',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2020-07-31 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,1123104,'Y','N','LBRA','Y','N','N','Y','26fabef4-583b-488d-8895-a62fa1cd9e27','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:16 BRT
ALTER TABLE LBR_BankSlip ADD LBR_PenaltyValue NUMBER DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123184,0,0,'Y',TO_DATE('2020-07-31 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PenaltyDate','Penalty Date','Penalty Date','LBRA','42088b8d-f2cc-4b92-bc5b-053641b2052f')
;

-- 31 de jul de 2020 09:51:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132431,0.0,'Penalty Date',1120689,'LBR_PenaltyDate',7,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,1123184,'Y','N','LBRA','Y','N','N','Y','0e41cfcf-4326-4836-885a-4fe6ffc94558','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:17 BRT
ALTER TABLE LBR_BankSlip ADD LBR_PenaltyDate DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132432,0.0,'Penalty Type',1120689,'LBR_PenaltyType',1,'N','N','N','N','N','N',17,1120356,0,0,'Y',TO_DATE('2020-07-31 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:17','YYYY-MM-DD HH24:MI:SS'),100,1123107,'Y','N','LBRA','Y','N','N','Y','1258fc53-8330-402f-9fa2-b2331a87e87f','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:18 BRT
ALTER TABLE LBR_BankSlip ADD LBR_PenaltyType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132433,0.0,'Protest Type',1120689,'LBR_ProtestType',1,'N','N','N','N','N','N',17,1120357,0,0,'Y',TO_DATE('2020-07-31 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,1123108,'Y','N','LBRA','Y','N','N','Y','bbe3137f-3a11-4ab7-ac4b-63ee830582d6','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:18 BRT
ALTER TABLE LBR_BankSlip ADD LBR_ProtestType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:19 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123185,0,0,'Y',TO_DATE('2020-07-31 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:18','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProtestDate','Protest Date','Protest Date','LBRA','4bcc692e-7d5f-4ac1-876e-4b3d943ca69a')
;

-- 31 de jul de 2020 09:51:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132434,0.0,'Protest Date',1120689,'LBR_ProtestDate',10,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2020-07-31 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,1123185,'Y','N','LBRA','Y','N','N','Y','2aead84e-eda2-4943-bebd-8abf28dde8b9','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:51:19 BRT
ALTER TABLE LBR_BankSlip ADD LBR_ProtestDate DATE DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132435,0,'Issue Type',1120689,'LBR_IssueType',1,'N','N','Y','N','N',0,'N',17,1120359,0,0,'Y',TO_DATE('2020-07-31 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:19','YYYY-MM-DD HH24:MI:SS'),100,1123116,'Y','N','LBRA','Y','N','N','Y','5cb00597-700b-422f-b101-697664178fdd','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:20 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IssueType CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:51:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132436,0,'Accepted',1120689,'LBR_IsAccepted',1,'N','N','Y','N','N',0,'N',17,1120353,0,0,'Y',TO_DATE('2020-07-31 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,1123095,'Y','N','LBRA','Y','N','N','Y','c30cd79d-71b1-4aa3-b8d7-cb0977712b4c','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:20 BRT
ALTER TABLE LBR_BankSlip ADD LBR_IsAccepted CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:51:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132437,0,'Bank Slip Layout',1120689,'LBR_BankSlipLayout_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2020-07-31 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:20','YYYY-MM-DD HH24:MI:SS'),100,1123115,'N','N','LBRA','Y','N','N','Y','9df98bb5-e762-4ce8-adc6-b624d0f2d174','Y',0,'N','N','LBRBankSlipLayout_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:51:21 BRT
ALTER TABLE LBR_BankSlip ADD LBR_BankSlipLayout_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132438,0,'Return Action',1120689,'LBR_ReturnAction',1,'N','N','Y','N','N',0,'N',17,1120354,0,0,'Y',TO_DATE('2020-07-31 09:51:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:21','YYYY-MM-DD HH24:MI:SS'),100,1123096,'Y','N','LBRA','Y','N','N','Y','fc6b029f-60c6-4834-a44c-45b681b0f8a6','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:21 BRT
ALTER TABLE LBR_BankSlip ADD LBR_ReturnAction CHAR(1) NOT NULL
;

-- 31 de jul de 2020 09:51:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132439,0,'Return Days',1120689,'LBR_ReturnDays','0',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_DATE('2020-07-31 09:51:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:21','YYYY-MM-DD HH24:MI:SS'),100,1123097,'Y','N','LBRA','Y','N','N','Y','37cd27ad-fe54-4567-aeae-a709b85a9550','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:22 BRT
ALTER TABLE LBR_BankSlip ADD LBR_ReturnDays NUMBER(10) DEFAULT 0
;

-- 31 de jul de 2020 09:51:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132440,0,'Interest Days',1120689,'LBR_InterestDays','0',10,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2020-07-31 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,1123101,'Y','N','LBRA','Y','N','N','Y','e6756d5a-9e8d-47f4-b9f5-4723c8ebff92','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:22 BRT
ALTER TABLE LBR_BankSlip ADD LBR_InterestDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132441,0,'Penalty Days',1120689,'LBR_PenaltyDays','0',131089,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2020-07-31 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:22','YYYY-MM-DD HH24:MI:SS'),100,1123106,'Y','N','LBRA','Y','N','N','Y','162e3a16-7323-4de2-878b-f2bb48ae7bc2','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:23 BRT
ALTER TABLE LBR_BankSlip ADD LBR_PenaltyDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132442,0,'Protest Days',1120689,'LBR_ProtestDays','0',131089,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2020-07-31 09:51:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:23','YYYY-MM-DD HH24:MI:SS'),100,1123109,'Y','N','LBRA','Y','N','N','Y','e01e38a0-548d-4039-83f1-fd7bd4f10e06','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:24 BRT
ALTER TABLE LBR_BankSlip ADD LBR_ProtestDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:51:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132443,0,'Recipient',1120689,'LBR_Recipient_ID',10,'N','N','N','N','N',0,'N',30,138,0,0,'Y',TO_DATE('2020-07-31 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,1123156,'Y','N','LBRA','Y','N','@LBR_RecipientType@=2','N','Y','5c5a2b28-0582-4156-9876-029aae2b6949','Y',0,'N','N','LBRRecipient_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:51:24 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Recipient_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,MandatoryLogic,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132444,0,'Recipient Location',1120689,1120182,'LBR_Recipient_Location_ID',10,'N','N','N','N','N',0,'N',18,159,0,0,'Y',TO_DATE('2020-07-31 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,1123157,'Y','N','LBRA','Y','N','@LBR_RecipientType@=2','N','Y','d7df2e06-4245-437c-afa7-1b665c5cabc3','Y',0,'N','N','LBRRecipientLocation_LBRBankSl','N','N')
;

-- 31 de jul de 2020 09:51:25 BRT
ALTER TABLE LBR_BankSlip ADD LBR_Recipient_Location_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132445,0,'Recipient Type',1120689,'LBR_RecipientType','1',1,'N','N','Y','N','N',0,'N',17,1120362,0,0,'Y',TO_DATE('2020-07-31 09:51:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:25','YYYY-MM-DD HH24:MI:SS'),100,1123155,'Y','N','LBRA','Y','N','N','Y','7ccc3d31-48c4-4c27-ae8c-b761a4acaeed','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:51:25 BRT
ALTER TABLE LBR_BankSlip ADD LBR_RecipientType CHAR(1) DEFAULT '1' NOT NULL
;

-- 31 de jul de 2020 09:51:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132446,0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120689,1120030,'LBR_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2020-07-31 09:51:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:25','YYYY-MM-DD HH24:MI:SS'),100,1000177,'Y','N','LBRA','Y','N','N','Y','920ef5b5-2045-4463-b2f7-f38a43318f3e','Y',0,'N','N','LBRNotaFiscal_LBRBankSlip','N','N')
;

-- 31 de jul de 2020 09:51:26 BRT
ALTER TABLE LBR_BankSlip ADD LBR_NotaFiscal_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:26 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120165,'Bank Slip Config',0,0,'Y',TO_DATE('2020-07-31 09:51:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:26','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','f9c77f43-31d4-40b0-b3d8-0885940c262c')
;

-- 31 de jul de 2020 09:51:27 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120083,0,0,'Y',TO_DATE('2020-07-31 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,'Interest','LBRA','C','N','80ea1c99-d6a2-4f04-907f-ea7f486803ac')
;

-- 31 de jul de 2020 09:51:28 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120084,0,0,'Y',TO_DATE('2020-07-31 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:27','YYYY-MM-DD HH24:MI:SS'),100,'Penalty','LBRA','C','N','a086697a-a58f-473f-b9c2-e02c449399ad')
;

-- 31 de jul de 2020 09:51:28 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120085,0,0,'Y',TO_DATE('2020-07-31 09:51:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:28','YYYY-MM-DD HH24:MI:SS'),100,'Protest','LBRA','C','N','7af0aa26-2f58-48dc-8dc7-11071945e006')
;

-- 31 de jul de 2020 09:51:28 BRT
UPDATE AD_Menu SET Name='Bank, Bank Slip and CNAB', Description='Bank, Bank Slip and CNAB Configuration', AD_Workflow_ID=NULL, AD_Task_ID=NULL, AD_Process_ID=NULL, AD_Form_ID=NULL, AD_InfoWindow_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000002
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_TREENODEMM SET Parent_ID = 1000001 , SeqNo = 1 WHERE AD_Tree_ID = 10 AND Node_ID = 1000002
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_Window SET Name='Bank, Bank Slip and CNAB', Description='Bank, Bank Slip and CNAB Configuration', AD_Color_ID=NULL, AD_Image_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000000
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_Table SET AD_Val_Rule_ID=NULL, PO_Window_ID=NULL, Processing='N',Updated=TO_DATE('2020-07-31 09:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000003
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Bank_ID', IsIdentifier='N', AD_Reference_Value_ID=NULL, IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000119
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000120
;

-- 31 de jul de 2020 09:51:29 BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000121
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsActive', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000122
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Created', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000123
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000124
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Updated', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000125
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='UpdatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000126
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='RoutingNo', IsIdentifier='Y', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=20, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000127
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Name', IsIdentifier='Y', SeqNo=1, AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=10, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000128
;

-- 31 de jul de 2020 09:51:30 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Description', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=30, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000129
;

-- 31 de jul de 2020 09:51:31 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_jBoletoNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000130
;

-- 31 de jul de 2020 09:51:31 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_PaymentLocation1', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000251
;

-- 31 de jul de 2020 09:51:31 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_PaymentLocation2', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000252
;

-- 31 de jul de 2020 09:51:31 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Bank_UU', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, IsAllowCopy='N', PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129828
;

-- 31 de jul de 2020 09:51:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132447,0,'Logo',1000003,'Logo_ID',10,'N','N','N','N','N',0,'N',32,0,0,'Y',TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:31','YYYY-MM-DD HH24:MI:SS'),100,53909,'Y','N','LBRA','Y','N','N','Y','49f79d8a-6d0b-4f55-9d92-ad2fa6cd7e77','Y',0,'N','N','Logo_LBRBank','N','N')
;

-- 31 de jul de 2020 09:51:31 BRT
ALTER TABLE LBR_Bank ADD Logo_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET SeqNo=0, AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000021
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsDisplayedGrid='N', SeqNoGrid=0, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000022
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsDisplayedGrid='N', SeqNoGrid=0, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000025
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, SeqNoGrid=20, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000024
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, SeqNoGrid=10, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000026
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsDisplayedGrid='N', SeqNoGrid=0, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000027
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsDisplayedGrid='N', SeqNoGrid=0, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000023
;

-- 31 de jul de 2020 09:51:32 BRT
UPDATE AD_Field SET SeqNo=70, AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, SeqNoGrid=30, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000075
;

-- 31 de jul de 2020 09:51:33 BRT
UPDATE AD_Field SET SeqNo=80, AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, SeqNoGrid=40, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000076
;

-- 31 de jul de 2020 09:51:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129628,'Logo',1000000,1132447,'Y',10,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e0b9bf5-8555-4efc-b03b-066b4d902430','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:34 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120389,'Kind',1000000,50,'Y',1120682,0,0,'Y',TO_DATE('2020-07-31 09:51:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:33','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','166cd5bb-9186-437e-9307-c101fc2f0571','B')
;

-- 31 de jul de 2020 09:51:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129629,'Bank Slip Kind',1120389,1132199,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b263ac5f-603e-4f9c-95e2-41c8f4ad4b57','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129630,'LBR_BankSlipKind_UU',1120389,1132200,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e9b7c43f-386d-4775-8fb3-afb5c9c5e820','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129631,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120389,1132201,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d255057d-3ced-4040-8535-744f0e9229d6','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129632,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120389,1132202,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e436aaf7-fc47-4d60-b83e-d07dc93818a6','Y','N',4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129633,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120389,1132208,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78d76d95-9c8d-43df-8d10-f17e7532d51b','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129634,'Value','Numeric Value',1120389,1132209,'Y',60,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e9a318f5-0d0e-4e0f-8a2c-fd40c531fa80','Y',30,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129635,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120389,1132210,'Y',60,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d38da197-b198-4441-8817-3c2ff2165bbd','Y',20,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129636,'Description','Optional short description of the record','A description is limited to 255 characters.',1120389,1132211,'Y',255,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4675cb54-4967-49d6-a71f-ae4d53533532','N',0,1,5,5,'N','N','N')
;

-- 31 de jul de 2020 09:51:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129637,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120389,1132207,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a799ea2-176b-435e-a193-25ecf54fda6a','N',0,2,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:39 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120390,'CNAB Layout',1000000,11,'Y',1120684,0,0,'Y',TO_DATE('2020-07-31 09:51:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:38','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132236,'N','N',1,'N','LBRA','Y','N','e524f857-10cb-4a02-894a-a64408a09e7b','B')
;

-- 31 de jul de 2020 09:51:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129638,'Bank Slip Layout',1120390,1132227,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fe9eb07b-e36a-449d-aa0a-6d89d1487f7c','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129639,'LBR_BankSlipLayout_UU',1120390,1132228,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','57523cbc-72b0-4552-b028-e7e5e0f69a41','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129640,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120390,1132229,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','95c4e385-14a2-4539-967b-b693e1287fb0','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129641,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120390,1132230,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d5e13f08-657b-47f7-90e8-cc539937f3e5','Y','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129642,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120390,1132239,'Y',2,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','129a770e-494c-4a84-aebb-a394b9096350','Y',30,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129643,'Version','Version of the table definition','The Version indicates the version of this table definition.',1120390,1132240,'Y',5,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','795dbfa6-83c4-4c48-a80e-8c32d44ed2d6','Y',40,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129644,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120390,1132237,'Y',60,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c9951b0f-3383-4354-9d8b-f97879ad63be','Y',20,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129645,'Description','Optional short description of the record','A description is limited to 255 characters.',1120390,1132238,'Y',255,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f859082e-3222-40c9-8b5c-14128fa02558','N',0,1,5,5,'N','N','N')
;

-- 31 de jul de 2020 09:51:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129646,'Bank','Primary Key table LBR_Bank','Primary Key table LBR_Bank',1120390,1132236,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a00d1568-e659-4d01-b7a1-bb1b5711f66f','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129647,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120390,1132235,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dc4aebae-952a-4f59-98f0-7c3dda6bd23b','Y',50,5,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:43 BRT
UPDATE AD_Table SET AD_Val_Rule_ID=NULL, PO_Window_ID=NULL, Processing='N',Updated=TO_DATE('2020-07-31 09:51:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000008
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BankInfo_ID', AD_Reference_Value_ID=NULL, IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000226
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000227
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000228
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsActive', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000229
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Created', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000230
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000231
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Updated', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000232
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='UpdatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000233
;

-- 31 de jul de 2020 09:51:44 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Bank_ID', IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000234
;

-- 31 de jul de 2020 09:51:45 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_OccurType', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000235
;

-- 31 de jul de 2020 09:51:45 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Description', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=10, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000236
;

-- 31 de jul de 2020 09:51:45 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_OccurNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000237
;

-- 31 de jul de 2020 09:51:45 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BankInfo_UU', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, IsAllowCopy='N', PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129829
;

-- 31 de jul de 2020 09:51:45 BRT
UPDATE AD_Tab SET SeqNo=99, IsActive='N', AD_Column_ID=NULL, AD_Process_ID=NULL, AD_Image_ID=NULL, TabLevel=0, AD_ColumnSortYesNo_ID=NULL, AD_ColumnSortOrder_ID=NULL, Included_Tab_ID=NULL, DisplayLogic=NULL, Parent_Column_ID=NULL, AD_CtxHelp_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000003
;

-- 31 de jul de 2020 09:51:46 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120391,'CNAB Fold',1000000,30,'Y',1120683,0,0,'Y',TO_DATE('2020-07-31 09:51:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:46','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132221,'N','N',2,'N','LBRA','Y','N','4188fac9-f259-4b72-b2d0-1a69fc534c86','B')
;

-- 31 de jul de 2020 09:51:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129648,'LBR_BankSlipFold_UU',1120391,1132213,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','76532100-54bc-4e66-ab68-759fd0494290','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129649,'Fold',1120391,1132212,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','20adbe44-2bec-4d73-9fc4-63ea991faf08','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129650,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120391,1132214,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','86f78555-f156-4c22-bf10-f6b9c8e75867','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129651,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120391,1132215,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','417213db-12da-4ede-8c21-ac61778a0a32','Y','N',4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129652,'Bank Slip Layout',1120391,1132221,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e410928a-b915-4270-ae3b-317fe4cc72aa','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129653,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120391,1132220,'Y',1,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b88a209-167c-49a3-a26d-29f23041e19b','N',0,5,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129654,'Fold Code','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120391,1132222,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:49','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','c5655fd7-af31-4888-bef1-135d2d74f694','Y',20,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129655,'Numeric Code','Numeric Value',1120391,1132223,'Y',10,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:49','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','85935e4f-1b22-49f2-be48-bb456f2297f8','Y',30,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129656,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120391,1132224,'Y',60,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','66cb1f8c-969b-45ac-971f-bf4135da8d27','Y',10,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129657,'Issue Type',1120391,1132226,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1cb07dd-bb79-44d8-bc88-1d70638bb1f1','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129658,'Description','Optional short description of the record','A description is limited to 255 characters.',1120391,1132225,'Y',255,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e2712d29-706f-4860-8c47-5377dfa91b57','N',0,1,5,5,'N','N','N')
;

-- 31 de jul de 2020 09:51:52 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120392,'Occurrences',1000000,40,'Y',1120686,0,0,'Y',TO_DATE('2020-07-31 09:51:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:51','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132312,'N','N',2,'N','LBRA','Y','N','c46ccb7f-47a1-40bf-b01b-d64ddc8fe475','B')
;

-- 31 de jul de 2020 09:51:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129659,'LBR_BankSlipOccur_UU',1120392,1132303,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1c0ac88-32fc-4234-9b45-476760447898','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129660,'Bank Slip Occurrence',1120392,1132302,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e4a891e-0723-48da-a942-c62837873436','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129661,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120392,1132304,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dba94070-3c72-4ed3-8ee9-39ab97984ac3','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129662,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120392,1132305,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','63a439d6-644e-434a-a697-953dccb3c2bb','Y','N',4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129663,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120392,1132313,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2093a786-7fbc-442c-b849-df02ae441cc3','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129664,'Bank Slip Layout',1120392,1132312,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ea9f35e5-b6ed-477e-9cf2-bc2ad9e1cd45','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129665,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120392,1132314,'Y',60,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d7794df1-22c2-4598-bd32-881f66e5dc4b','Y',20,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129666,'Description','Optional short description of the record','A description is limited to 255 characters.',1120392,1132315,'Y',255,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7fd8308e-116a-467a-b318-01514263b7ff','N',0,1,5,5,'N','N','N')
;

-- 31 de jul de 2020 09:51:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129667,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120392,1132316,'Y',2,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5ffc2fc9-3ab6-4262-a70c-6cbbe25c8d7a','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129668,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120392,1132311,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','40854fd3-6c3d-4449-bfe5-ac64729d5925','Y',30,4,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129669,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120392,1132310,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:51:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:51:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7f9e332c-14c8-4b45-806d-df14f718bf37','N',0,5,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:51:57 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Bank_ID', Callout=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000131
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_BillFold', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000000
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_AgencyNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000001
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_ClientCode', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000002
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_IsBillPrinted', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000003
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='AD_Sequence_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000134
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_BillKind', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000135
;

-- 31 de jul de 2020 09:51:58 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_DocSequence_ID', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000902
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsRegistered', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000910
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=60, AD_FieldGroup_ID=NULL, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000000
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=180, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000006
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=190, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000005
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=200, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000003
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=210, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000030
;

-- 31 de jul de 2020 09:51:59 BRT
UPDATE AD_Field SET SeqNo=220, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000884
;

-- 31 de jul de 2020 09:52:00 BRT
UPDATE AD_Field SET SeqNo=230, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000029
;

-- 31 de jul de 2020 09:52:00 BRT
UPDATE AD_Field SET SeqNo=240, AD_FieldGroup_ID=200015, AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Included_Tab_ID=NULL, IsToolbarButton=NULL, AD_LabelStyle_ID=NULL, AD_FieldStyle_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000870
;

-- 31 de jul de 2020 09:52:00 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Charset', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128953
;

-- 31 de jul de 2020 09:52:00 BRT
UPDATE AD_Table SET AD_Val_Rule_ID=NULL, PO_Window_ID=NULL, Processing='N',Updated=TO_DATE('2020-07-31 09:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120557
;

-- 31 de jul de 2020 09:52:00 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSSetupLine_ID', AD_Reference_Value_ID=NULL, IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128967
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128968
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='AD_Org_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128969
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsActive', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128970
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Created', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128971
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128972
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Updated', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128973
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='UpdatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128974
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSSetup_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128975
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='MinAmt', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128976
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='MaxAmt', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128977
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Text', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128978
;

-- 31 de jul de 2020 09:52:01 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Description', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=10, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128979
;

-- 31 de jul de 2020 09:52:02 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatePayment', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128981
;

-- 31 de jul de 2020 09:52:02 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_BPartner_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128982
;

-- 31 de jul de 2020 09:52:02 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_Charge_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128983
;

-- 31 de jul de 2020 09:52:02 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSSetupLine_UU', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, IsAllowCopy='N', PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129827
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Table SET AD_Val_Rule_ID=NULL, PO_Window_ID=NULL, Processing='N',Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120556
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSSetup_ID', AD_Reference_Value_ID=NULL, IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128954
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128955
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='AD_Org_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128956
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsActive', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128957
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Created', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128958
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128959
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Updated', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128960
;

-- 31 de jul de 2020 09:52:03 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='UpdatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128961
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSMatcherType', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128962
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Period_OpenHistory', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128963
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Period_OpenFuture', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128964
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='PriceMatchDifference', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128965
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_BankAccount_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128966
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Description', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=10, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128980
;

-- 31 de jul de 2020 09:52:04 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsOverUnderPayment', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128985
;

-- 31 de jul de 2020 09:52:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_BSSetup_UU', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, IsAllowCopy='N', PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:52:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129826
;

-- 31 de jul de 2020 09:52:06 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120393,'Bank Contract',158,25,'Y',1120687,0,0,'Y',TO_DATE('2020-07-31 09:52:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:05','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1132326,'N','N',2,'N','LBRA','Y','N','ddb4deb3-32a8-4e90-8481-b6eb6167a131','B')
;

-- 31 de jul de 2020 09:52:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129670,'Bank Slip Contract',1120393,1132317,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3795898a-7903-4e23-a49b-acd812145f73','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129671,'LBR_BankSlipContract_UU',1120393,1132318,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cfba2664-92c9-45b4-8523-456469cd7ebe','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129672,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120393,1132319,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cdccefe5-63ba-4ddc-b97f-7cc30e3a42c6','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129673,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120393,1132320,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dcb4c21c-8457-4ed5-88f7-6b0a2ea24263','Y','Y',10,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129674,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120393,1132327,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','32a81ad1-03df-482a-99ba-b5681bfc9937','Y',20,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129675,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120393,1132326,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b2f53bc5-efa7-4e53-a9aa-1206e7bb6ac8','Y',40,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129676,'Description','Optional short description of the record','A description is limited to 255 characters.',1120393,1132328,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','85e7913d-c68c-43d8-bf89-f4b9a96eaa59','Y',30,1,5,4,'N','N','N')
;

-- 31 de jul de 2020 09:52:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129677,'Accord',1120393,1132339,'Y',20,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c44ff797-ae0c-49c3-a34c-e7952c5fdb72','Y',160,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129678,'Recipient Type',1120393,1132340,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','351acc88-f0e3-4ad0-8b9a-1b14fa8bff3c','Y',170,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129679,'Recipient',1120393,1132341,'Y','@LBR_RecipientType@=2',10,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','442b0463-1f84-4d9c-82e7-6f83058edd2e','Y',180,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129680,'Recipient Location',1120393,1132342,'Y','@LBR_RecipientType@=2',10,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4902ae32-f1eb-49ce-9296-f0590466834c','Y',190,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129681,'Bank Slip Layout',1120393,1132329,'Y',10,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','df96ad80-f10d-4b45-b2ea-0307bec41319','Y',50,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129682,'Fold',1120393,1132330,'Y',10,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9f118952-00a5-4c4a-8926-b2cd3f658859','Y',60,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129683,'Bank Slip Kind',1120393,1132331,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78c2412f-0aff-48d8-9ccc-7900778fd455','Y',70,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129684,'NIB Sequence',1120393,1132332,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7db2b162-41ac-4d73-9d1b-ca274459d676','Y',80,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129685,'CNAB File Sequence',1120393,1132333,'Y',10,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','12aee739-ad0e-4721-9d5b-20da784338c6','Y',90,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129686,'CNAB Lot Sequence',1120393,1132334,'Y',10,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','accb2e28-604e-45e6-957d-148ee432ff8f','Y',100,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129687,'Bank Slip Config',1120393,1132335,'Y',10,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60729863-3e08-4de0-8af5-b365ef5e7a49','Y',110,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129688,'Register Type',1120393,1132336,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','44da9dd6-d2c6-4c25-805a-41007f853cb8','Y',120,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129689,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120393,1132325,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a0eaa771-444b-4906-996b-d7839dd8b54b','Y',130,2,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129690,'Parameter 1',1120393,1132337,'Y',20,190,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ec023847-5950-4e06-a73e-cbb98b036570','Y',140,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129691,'Parameter 2',1120393,1132338,'Y',20,200,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a12ab621-858b-4838-858d-312afacaa32c','Y',150,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:17 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120394,'Movement Out',1000022,30,'Y',1120688,0,0,'Y',TO_DATE('2020-07-31 09:52:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:16','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',1132353,'LBR_BankSlipMov.IsSOTrx=''Y''','N','N',1,'N','LBRA','N','N','1bd26d45-9ada-4fa1-9f76-b3894a09f52e','B')
;

-- 31 de jul de 2020 09:52:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129692,'Bank Slip Mov',1120394,1132343,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a943457c-827f-483a-a9dc-cbdec279eaa3','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129693,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120394,1132351,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e65821c6-27ab-4c8f-90e0-2ea59f4645f4','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129694,'LBR_BankSlipMov_UU',1120394,1132344,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf24d09b-26b3-4b44-b067-40e0d7799a24','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129695,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120394,1132345,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','16930f7d-5cc7-4851-a91d-ba8bfe728062','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129696,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120394,1132346,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f470f154-7656-4385-a82c-00597ebf7410','Y','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129697,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120394,1132355,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','236f9c5a-b7f9-42d2-8c15-86e686662b7c','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129698,'Bank Slip',1120394,1132353,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96c1ab5a-0b68-4918-9b77-7f08f1c4c59e','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129699,'Description','Optional short description of the record','A description is limited to 255 characters.',1120394,1132356,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4070cb29-d0a9-4ac0-bab4-e2c736528162','N',0,1,2,2,'N','N','N')
;

-- 31 de jul de 2020 09:52:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129700,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120394,1132352,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7734647e-dcfa-4c54-af0f-83231d63afae','N',0,5,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129701,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120394,1132357,'Y',2,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13447cc2-52b5-4e69-bb92-a03d7b55ed47','Y',20,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129702,'Bank Slip Occurrence',1120394,1132354,'Y',10,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c2e37d19-bcae-4ab3-9a9e-973baa7b8a46','Y',30,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129703,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120394,1132358,'Y',29,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','07170001-5c6d-417d-b7b9-ab1af0cb30d4','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129704,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120394,1132359,'Y',29,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','711f9f96-6c47-4c3c-8879-6ced82caaa00','Y',50,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129705,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120394,1132364,'Y',29,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dd929de9-f389-47c9-a4aa-4b2dd8680e9d','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129706,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120394,1132365,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','474ff567-c8e9-4c6f-9273-1742eee66326','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129707,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120394,1132360,'Y',131089,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','e5adc98f-9714-4e93-961d-24da091f330e','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129708,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120394,1132361,'Y',131089,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1de8b73e-9542-4f91-8cb9-be70bd4dd067','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129709,'Interest Value',1120394,1132362,'Y',131089,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c86dc2d0-866f-4d92-becf-75532675a87e','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129710,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120394,1132363,'Y',131089,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e62bb50c-407c-4764-bf6b-320ece7c1433','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:26 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120395,'Bank Slip Info',1000022,40,'Y',1120685,0,0,'Y',TO_DATE('2020-07-31 09:52:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',1132241,'N','N',1,'N','LBRA','N','N','9e9b0a29-fae0-4a51-a2e7-897c9008f7e1','B')
;

-- 31 de jul de 2020 09:52:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129711,'LBR_BankSlipInfo_UU',1120395,1132242,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bc7a470a-5442-4f7f-b205-fc62b20775f6','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129712,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120395,1132249,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d06091b4-47b0-40b0-8ad5-126166d039f4','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129713,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120395,1132243,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6deda68e-162a-4c4a-8ad1-8e2f604edb2b','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129714,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120395,1132244,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1ad3f856-f6f0-4ea2-b522-c5d731a15a84','Y','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129715,'Bank Slip',1120395,1132241,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8a8ef4fb-8133-4163-bd2e-46666b9c0116','Y',10,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129716,'Routing No','Bank Routing Number','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.',1120395,1132250,'Y',20,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1b80db0f-267f-4a4b-bba5-b007f98ad607','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129717,'Account No','Account Number','The Account Number indicates the Number assigned to this bank account. ',1120395,1132251,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9f3d2279-b9e8-4f76-9f52-a9dbfaad2f21','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129718,'Account Digit',1120395,1132252,'Y',3,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','84590b52-61e4-4475-bc1a-65f4a012c226','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129719,'Agency Number','Agency Number','Agency Number',1120395,1132253,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2a6c069a-0d6b-412a-b035-861f0826ed83','Y',30,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129720,'Agency Digit',1120395,1132254,'Y',3,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','06c74d01-81df-4501-8943-28a6f74fa9b2','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129721,'Bank Slip Value',1120395,1132255,'Y',10,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bfcdfaaa-2704-4871-9473-7b98abc7cb15','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129722,'Bank Slip Code',1120395,1132256,'Y',10,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6694da15-7318-4864-a8a9-96fb5c9a550e','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129723,'Bank Slip Kind Value',1120395,1132257,'Y',10,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7ef8826f-a8ea-4835-8a39-08a76c52495b','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129724,'Bank Slip Kind Code',1120395,1132258,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','444828f2-a542-47df-be9f-760df080d71d','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129725,'Accord',1120395,1132299,'Y',20,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf76e02c-2480-40ec-a57b-4c47ac00a74e','Y',20,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129726,'NFe ID','Identification of NFe',1120395,1132301,'Y',44,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7ab31675-05e2-4fe9-be20-67807bca746a','Y',90,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129727,'Manual Input',1120395,1132259,'Y',54,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','95d66d96-0c4a-4ea3-adbc-8831da7dda4a','Y',70,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129728,'Barcode',1120395,1132260,'Y',44,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','47849954-a181-475e-a772-5b75d509b345','Y',60,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129729,'Payment Location 1','Identifies the Payment Location 1','Identifies the Payment Location 1',1120395,1132261,'Y',60,170,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',113,'LBRA','fb50c1c0-5761-4246-a781-1a2a687dc205','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129730,'Instruction to BP',1120395,1132262,'Y',60,180,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c389740b-6672-467a-8f68-bebc946c3a75','N',0,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129731,'Instruction 1','Identifies the Instrucion 1','Identifies the Instrucion 1',1120395,1132263,'Y',60,190,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','35700517-5cc1-40bd-bf0c-d7976728f1ca','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129732,'Instruction 2','Identifies the Instrucion 2','Identifies the Instrucion 2',1120395,1132264,'Y',60,200,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f7393d88-e392-4067-bf7b-a5b0a3256e96','N',0,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129733,'Instruction 3','Identifies the Instrucion 3','Identifies the Instrucion 3',1120395,1132265,'Y',60,210,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','12292984-ae51-4789-8d12-e4f4781054ce','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129734,'Instruction 4',1120395,1132266,'Y',60,220,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dc862db2-3546-4edc-9c74-e5877c276a68','N',0,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129735,'Instruction 5',1120395,1132267,'Y',60,230,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1f669e69-3eef-476a-ad59-31cf4acb2a13','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129736,'Instruction 6',1120395,1132268,'Y',60,240,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','93a1bcdb-d6ae-4883-ac13-a699581ae97f','N',0,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129737,'Instruction 7',1120395,1132269,'Y',60,250,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6f57b66e-d841-40f0-a722-cfe8d4d5451f','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:39 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120086,0,0,'Y',TO_DATE('2020-07-31 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,'Payer','LBRA','C','N','670fdf79-060d-4456-9b17-e4448054971d')
;

-- 31 de jul de 2020 09:52:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129738,'BP Name',1120395,1132280,'Y',60,260,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120086,'LBRA','36fec5c1-13b6-45f4-8fc5-c6e57cd005ea','Y',50,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129739,'Brazilian BP Type','Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','Used to identify if the Business partner is a legal entity or an individual',1120395,1132281,'Y',1,270,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','45716a90-a9a2-4bd9-a7e0-3ad356c68931','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129740,'BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',1120395,1132282,'Y',18,280,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4d9b429e-7cec-4ed5-95b2-42ba63ed9f28','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129741,'BP Address 1','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132283,'Y',60,290,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1960c694-b207-4d38-9ed4-196b49a9ee22','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129742,'BP Address 2','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132284,'Y',60,300,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','548146be-e584-4fcc-920c-d153559f385c','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129743,'BP Address 3','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132285,'Y',60,310,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d0d08cb3-dd9e-4cfa-ad4a-dcd51fc4c3da','N',0,9,3,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129744,'BP City','BP City - Copied from the BP Location into Brazilan Legal and Tax Books','BP City - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132287,'Y',60,320,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9c86dd49-689a-4f70-a76c-ae5e4ea1662d','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129745,'BP Region','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132288,'Y',2,330,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e425c6d6-f1ba-459a-ae60-afbe83b2b0a0','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129746,'BP Address 4','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132286,'Y',60,340,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','59e55894-190f-4a5b-b70a-b3df3a22ec40','N',0,9,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129747,'BP Postal','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books',1120395,1132289,'Y',10,350,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c9cb2077-9193-4f1b-b02d-c1a87b831b1b','N',0,11,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:45 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120087,0,0,'Y',TO_DATE('2020-07-31 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,'Guarantor','LBRA','C','N','2b8d4e49-0503-40cd-bc9c-cb2d252edfd2')
;

-- 31 de jul de 2020 09:52:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129748,'Guarantor Name',1120395,1132290,'Y',60,360,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120087,'LBRA','16e03ab8-d07d-423f-8a16-27260c32fc2f','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129749,'Guarantor Type',1120395,1132300,'Y',1,370,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d55e6497-2915-40fc-9746-98e677147e9b','Y',80,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129750,'Guarantor CNPJ',1120395,1132291,'Y',18,380,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3a7728d-3369-42a0-9399-be5272122bd0','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129751,'Address 1',1120395,1132292,'Y',60,390,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','10c191f9-95e8-45ef-8327-ddcd81f1241a','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129752,'Address 2',1120395,1132293,'Y',60,400,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a324f029-81f4-4bbb-8a8d-9e69b80ec083','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129753,'Address 3',1120395,1132294,'Y',60,410,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d84f4e7c-2895-4489-95f6-e517d8977b6c','N',0,9,3,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129754,'Guarantor City',1120395,1132296,'Y',60,420,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','794d4612-7bba-4b06-ac97-f76e326401a2','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129755,'Guarantor Region',1120395,1132297,'Y',2,430,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4953739e-adde-4b07-8473-795ed4846cc7','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129756,'Address 4',1120395,1132295,'Y',60,440,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','92604bac-df98-44e2-a958-5150ad3a3220','N',0,9,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129757,'Guarantor Postal',1120395,1132298,'Y',10,450,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','77892383-847b-4a0b-8e06-f5803e788a1f','N',0,11,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:50 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120088,0,0,'Y',TO_DATE('2020-07-31 09:52:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:50','YYYY-MM-DD HH24:MI:SS'),100,'Recipient','LBRA','C','N','f1a885d1-7ceb-4def-aee4-aaafbb091d46')
;

-- 31 de jul de 2020 09:52:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129758,'Organization Name','The Name of the Organization','The Name of the Organization',1120395,1132270,'Y',60,460,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120088,'LBRA','4fa5086e-d757-4171-a71b-6ec1babb6fe9','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129759,'Org Type',1120395,1132271,'Y',1,470,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','31ebb3af-8dd5-47d7-9ad9-595637326e1c','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129760,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120395,1132272,'Y',18,480,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9ef9c516-0247-470d-a876-aba07c67edf8','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129761,'Organization Address 1','The issuer organization address 1','The issuer organization address 1',1120395,1132273,'Y',60,490,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','04d86551-971d-4e97-b928-4321f6b025d7','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129762,'Organization Address 2','The issuer organization address 2','The issuer organization address 2',1120395,1132274,'Y',60,500,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','be05ad20-6915-4b0b-8a15-f39f29cd59d3','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129763,'Organization Address 3','The issuer organization address 3','The issuer organization address 3',1120395,1132275,'Y',60,510,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','36f976ce-1c86-452f-a23f-8b710a8a6e2c','N',0,9,3,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129764,'Organization City','The City of the Organization','The City of the Organization',1120395,1132277,'Y',60,520,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','21b2e8a2-cdb6-4d17-9da1-8c5f5757f488','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129765,'Organization Region','The Region of the Organization','The Region of the Organization',1120395,1132278,'Y',2,530,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2f712d3e-89bb-4dc2-8728-c967d4c20e6c','N',0,7,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129766,'Organization Address 4','The issuer organization address 4','The issuer organization address 4',1120395,1132276,'Y',60,540,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','46566d10-f578-4d90-b06e-0041fe92e118','N',0,9,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129767,'Organization Postal Code','The Postal Code of the Organization','The Postal Code of the Organization',1120395,1132279,'Y',10,550,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e384e6db-9a4f-4314-923f-a7aa816d8cd4','N',0,11,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:55 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120396,'Movement In',1000022,20,'Y',1120688,0,0,'Y',TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',1132353,'LBR_BankSlipMov.IsSOTrx=''N''','N','N',1,'N','LBRA','N','N','e0ed2b17-a2ab-4eb9-9539-c4cc11b98e86','B')
;

-- 31 de jul de 2020 09:52:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129768,'Bank Slip Mov',1120396,1132343,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8b7b9c41-7b57-4a6f-b061-fae76a260741','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129769,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120396,1132351,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7278b9bc-db17-4766-90d8-e2be274e7f81','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129770,'LBR_BankSlipMov_UU',1120396,1132344,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','69d92154-b333-4c32-9dae-5b2af55d0d9d','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129771,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120396,1132345,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e70dee9a-5510-4db2-9bb9-934d8764bfc6','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129772,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120396,1132346,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','64006dbc-fbbc-4f2f-a3c3-8a258adbeed0','Y','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129773,'Search Key','Search key for the record in the format required - must be unique','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120396,1132355,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0846f6e1-5ea6-4dff-beae-b59ba17ea29a','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129774,'Bank Slip',1120396,1132353,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','980b4a0e-321d-49b6-911a-51643f0d2763','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:52:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129775,'Description','Optional short description of the record','A description is limited to 255 characters.',1120396,1132356,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','025d0e8f-bd54-4ef2-b00b-f4d0b95fd002','N',0,1,2,2,'N','N','N')
;

-- 31 de jul de 2020 09:53:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129776,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120396,1132352,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:52:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:52:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3a02b3a-ed1f-4d75-93c9-28b7a76e4d43','N',0,5,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129777,'Type','Type of Validation (SQL, Java Script, Java Language)','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.',1120396,1132357,'Y',2,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','93d8b32c-adaa-4c94-b7c3-50e4ef47a67d','Y',20,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129778,'Bank Slip Occurrence',1120396,1132354,'Y',10,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b42756d-311b-40b0-a0b8-9214e0895279','Y',30,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129779,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120396,1132358,'Y',29,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','51bc2ec9-01a9-4df3-88d8-a04569ecd4fe','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129780,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120396,1132359,'Y',29,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eddcef27-9f64-432f-a39d-804ac28acb3d','Y',50,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129781,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120396,1132364,'Y',29,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','106992af-1030-4311-9af3-75dcc4fce243','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129782,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120396,1132365,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2245637a-a529-42fb-9e7b-01fb3bef6ace','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129783,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120396,1132360,'Y',131089,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','fac9a16e-d6bc-4364-95ad-183a735c86e4','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129784,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120396,1132361,'Y',131089,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1fd88993-45e9-4c61-80a3-3622b74c024d','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129785,'Interest Value',1120396,1132362,'Y',131089,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f89c7bc8-645d-4f4e-91a9-684ff80375d5','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129786,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120396,1132363,'Y',131089,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7561685a-2475-47c9-a8e8-7193cf62ce4a','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Table SET AD_Val_Rule_ID=NULL, PO_Window_ID=NULL, Processing='N',Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000001
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Boleto_ID', AD_Reference_Value_ID=NULL, IsUpdateable='N', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000030
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET ColumnName='AD_Org_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000031
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET ColumnName='AD_Client_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000032
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsActive', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000033
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Created', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000034
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='CreatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000035
;

-- 31 de jul de 2020 09:53:05 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Updated', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000036
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='UpdatedBy', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000037
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_Invoice_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000038
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Address1', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000039
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Address2', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000040
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Address3', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000041
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Address4', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000042
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='City', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000043
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='RegionName', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=10, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000044
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Postal', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000045
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='AccountNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000046
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DocumentNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=20, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000047
;

-- 31 de jul de 2020 09:53:06 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='RoutingNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000048
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DateDoc', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000049
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_Cessionary', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000050
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_ReceiverName', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=30, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000051
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_BPTypeBR', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000052
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_BillKind', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000053
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_AgencyNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000054
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_BillFold', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000055
;

-- 31 de jul de 2020 09:53:07 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_ClientCode', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000056
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_PaymentLocation1', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000057
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_PaymentLocation2', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000058
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_Instruction1', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000059
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_Instruction2', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000060
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_Instruction3', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000061
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsCancelled', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000062
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_BPartner_ID', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, SeqNoSelection=40, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000132
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_PayScheduleNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000136
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='GrandTotal', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000255
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DiscountAmt', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000256
;

-- 31 de jul de 2020 09:53:08 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DueDate', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000257
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DiscountDate', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000258
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_jBoletoNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000259
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_Interest', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000735
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_HasSue', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000736
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_SueDays', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000737
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_Payment_ID', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000895
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='IsPaid', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000896
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='lbr_OccurNo', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000897
;

-- 31 de jul de 2020 09:53:09 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='DocStatus', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000898
;

-- 31 de jul de 2020 09:53:10 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='C_BankAccount_ID', AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000923
;

-- 31 de jul de 2020 09:53:10 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='Comments', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000998
;

-- 31 de jul de 2020 09:53:10 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_Boleto_UU', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, IsAllowCopy='N', PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129830
;

-- 31 de jul de 2020 09:53:10 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=NULL, ColumnName='LBR_EMailSent', AD_Reference_Value_ID=NULL, AD_Process_ID=NULL, IsSyncDatabase='Y', AD_Chart_ID=NULL, PA_DashboardContent_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130426
;

-- 31 de jul de 2020 09:53:10 BRT
UPDATE AD_Tab SET Name='Boleto (old)', SeqNo=90, AD_Column_ID=NULL, AD_Process_ID=NULL, AD_Image_ID=NULL, AD_ColumnSortYesNo_ID=NULL, AD_ColumnSortOrder_ID=NULL, Included_Tab_ID=NULL, Parent_Column_ID=NULL, AD_CtxHelp_ID=NULL,Updated=TO_DATE('2020-07-31 09:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000034
;

-- 31 de jul de 2020 09:53:13 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120089,0,0,'Y',TO_DATE('2020-07-31 09:53:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:12','YYYY-MM-DD HH24:MI:SS'),100,'Discount','LBRA','C','N','a31cdee1-5f05-4db0-bfd2-cdb1e2e15880')
;

-- 31 de jul de 2020 09:53:13 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120250,0,0,'Y',TO_DATE('2020-07-31 09:53:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:13','YYYY-MM-DD HH24:MI:SS'),100,'Print BankSlip','Y','Print BankSlip','N','org.kenos.idempiere.lbr.bankslip.process.Print','3','LBRA',20,86,'N','N','Y','N','699cea90-3357-4493-8975-2ef515cacc6b','P')
;

-- 31 de jul de 2020 09:53:14 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120690,'Bank Slip Config',1120165,'LBR_BankSlipConfig',0,'3',0,0,'Y',TO_DATE('2020-07-31 09:53:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','c048456a-7f74-4dbb-93eb-01110de872d2','N','N','N','N')
;

-- 31 de jul de 2020 09:53:14 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_BankSlipConfig',1000000,'N','N','Table LBR_BankSlipConfig','Y','Y',0,0,TO_DATE('2020-07-31 09:53:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:14','YYYY-MM-DD HH24:MI:SS'),100,1153936,'Y',1000000,1,200000,'75aba831-a6ab-4e21-8a9e-d73224c389b6')
;

-- 31 de jul de 2020 09:53:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132448,0.0,'Bank Slip Config',1120690,'LBR_BankSlipConfig_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2020-07-31 09:53:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:14','YYYY-MM-DD HH24:MI:SS'),100,1123093,'N','N','LBRA','Y','N','N','Y','8d228700-12b6-4e64-ac18-c004fe5f1eda','N','N','N','N','N')
;

-- 31 de jul de 2020 09:53:14 BRT
CREATE TABLE LBR_BankSlipConfig (LBR_BankSlipConfig_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_BankSlipConfig_Key PRIMARY KEY (LBR_BankSlipConfig_ID))
;

-- 31 de jul de 2020 09:53:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132449,0.0,'LBR_BankSlipConfig_UU',1120690,'LBR_BankSlipConfig_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:53:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:15','YYYY-MM-DD HH24:MI:SS'),100,1123094,'N','N','LBRA','Y','N','N','Y','77b6a0d1-9e83-4ba8-a30e-a34b34bf8483','N','N','N','N','N')
;

-- 31 de jul de 2020 09:53:15 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_BankSlipConfig_UU VARCHAR2(36) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:15 BRT
ALTER TABLE LBR_BankSlipConfig ADD CONSTRAINT LBR_BankSlipConfig_UU_idx UNIQUE (LBR_BankSlipConfig_UU)
;

-- 31 de jul de 2020 09:53:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132450,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120690,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:53:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:15','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','Y','N','N','Y','763c6398-1378-4556-a836-101bd8e374ad','N','N','N','D','N')
;

-- 31 de jul de 2020 09:53:16 BRT
ALTER TABLE LBR_BankSlipConfig ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132451,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120690,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2020-07-31 09:53:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:16','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','Y','N','N','Y','6f35cac3-edc8-4db6-ae95-349f3e072d7d','N','N','N','D','N')
;

-- 31 de jul de 2020 09:53:16 BRT
ALTER TABLE LBR_BankSlipConfig ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132452,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120690,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:53:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:16','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','Y','N','N','Y','240fa7f8-3086-4d8b-8f8d-7f0f1f8d54cd','N','N','N','N','N')
;

-- 31 de jul de 2020 09:53:17 BRT
ALTER TABLE LBR_BankSlipConfig ADD Created DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:53:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132453,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120690,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:17','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','Y','N','N','Y','464012e2-7f72-4246-b497-c1d3e647fa8f','N','N','N','D','N')
;

-- 31 de jul de 2020 09:53:17 BRT
ALTER TABLE LBR_BankSlipConfig ADD CreatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132454,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120690,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2020-07-31 09:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:17','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','Y','N','N','Y','465d28ac-a024-4489-bafb-5b73bf3d01e2','N','N','N','N','N')
;

-- 31 de jul de 2020 09:53:18 BRT
ALTER TABLE LBR_BankSlipConfig ADD Updated DATE DEFAULT SYSDATE NOT NULL
;

-- 31 de jul de 2020 09:53:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132455,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120690,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2020-07-31 09:53:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:18','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','Y','N','N','Y','a9cffd83-fffb-4d0f-a192-3b177298d885','N','N','N','D','N')
;

-- 31 de jul de 2020 09:53:18 BRT
ALTER TABLE LBR_BankSlipConfig ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132456,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120690,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2020-07-31 09:53:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:18','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','Y','N','N','Y','0ae78231-bdcc-44c1-8f72-afedee93e021','N','N','N','N','N')
;

-- 31 de jul de 2020 09:53:19 BRT
ALTER TABLE LBR_BankSlipConfig ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 31 de jul de 2020 09:53:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132457,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120690,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2020-07-31 09:53:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:19','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','Y','N','N','Y','013dcacd-17bf-4c52-aa6b-ed9c6137c111','Y',10,'N','N','N','N')
;

-- 31 de jul de 2020 09:53:19 BRT
ALTER TABLE LBR_BankSlipConfig ADD Name VARCHAR2(60) NOT NULL
;

-- 31 de jul de 2020 09:53:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132458,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120690,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:53:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:19','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','Y','N','N','Y','17f28e79-d180-454d-9bdf-ed452ca46742','Y',20,'N','N','N','N')
;

-- 31 de jul de 2020 09:53:20 BRT
ALTER TABLE LBR_BankSlipConfig ADD Description VARCHAR2(255) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132459,0.0,'Accepted',1120690,'LBR_IsAccepted',1,'N','N','N','N','N','N',17,1120353,0,0,'Y',TO_DATE('2020-07-31 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,1123095,'Y','N','LBRA','Y','N','N','Y','aa94e500-2ad9-4478-a6ab-837f46876de8','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:20 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_IsAccepted CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132460,0.0,'Return Action',1120690,'LBR_ReturnAction',1,'N','N','N','N','N','N',17,1120354,0,0,'Y',TO_DATE('2020-07-31 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,1123096,'Y','N','LBRA','Y','N','N','Y','89adb24e-0cd4-40b9-b59d-129d06edca41','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:21 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_ReturnAction CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132461,0.0,'Return Days',1120690,'LBR_ReturnDays','0',131089,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:53:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:21','YYYY-MM-DD HH24:MI:SS'),100,1123097,'Y','N','LBRA','Y','N','N','Y','71c6adc9-12bb-4ee6-9fdf-fbd878bb6a58','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:21 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_ReturnDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:53:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132462,0.0,'Interest Value',1120690,'LBR_InterestValue','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:53:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:22','YYYY-MM-DD HH24:MI:SS'),100,1123098,'Y','N','LBRA','Y','N','N','Y','70dc30b5-e40c-43d1-8bee-a9b56b21eb61','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:22 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_InterestValue NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:53:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintName,FKConstraintType,IsHtml) VALUES (1132463,0.0,'Interest Charge',1120690,'LBR_InterestCharge_ID',10,'N','N','N','N','N','N',18,200,0,0,'Y',TO_DATE('2020-07-31 09:53:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:22','YYYY-MM-DD HH24:MI:SS'),100,1123099,'Y','N','LBRA','Y','N','N','Y','c2ebb487-158b-4bee-beea-96476d8ad3f0','Y','N','N','LBRInterestCharge_LBRBankSlipC','N','N')
;

-- 31 de jul de 2020 09:53:23 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_InterestCharge_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132464,0.0,'Interest Type',1120690,'LBR_InterestType',1,'N','N','N','N','N','N',17,1120355,0,0,'Y',TO_DATE('2020-07-31 09:53:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:23','YYYY-MM-DD HH24:MI:SS'),100,1123100,'Y','N','LBRA','Y','N','N','Y','7e95ae04-7db8-4291-b584-ff1f243caa20','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:23 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_InterestType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132465,0.0,'Interest Days',1120690,'LBR_InterestDays',10,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:53:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:23','YYYY-MM-DD HH24:MI:SS'),100,1123101,'Y','N','LBRA','Y','N','N','Y','d9157dd0-84c4-4ea8-8d71-cacbf37404c0','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:24 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_InterestDays NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132466,0.0,'Message 1',1120690,'LBR_Message1',40,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,1123102,'Y','N','LBRA','Y','N','N','Y','73f22305-cb48-46ed-a4b8-3c65505c1a50','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:24 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_Message1 VARCHAR2(40) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132467,0.0,'Message 2',1120690,'LBR_Message2',40,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-07-31 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,1123103,'Y','N','LBRA','Y','N','N','Y','50d96c80-c9e9-409c-8d44-ca88d2dcbc5d','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:25 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_Message2 VARCHAR2(40) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132468,0.0,'Penalty Value',1120690,'LBR_PenaltyValue','0',131089,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2020-07-31 09:53:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:25','YYYY-MM-DD HH24:MI:SS'),100,1123104,'Y','N','LBRA','Y','N','N','Y','3f42a41d-844e-41a7-9d89-05f6c85d751c','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:25 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_PenaltyValue NUMBER DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:53:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132469,0.0,'Penalty Charge',1120690,'LBR_PenaltyCharge_ID',10,'N','N','N','N','N','N',18,200,0,0,'Y',TO_DATE('2020-07-31 09:53:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:25','YYYY-MM-DD HH24:MI:SS'),100,1123105,'Y','N','LBRA','Y','N','N','Y','ce30a059-a24b-45e1-b441-8dc24b10c082','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:26 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_PenaltyCharge_ID NUMBER(10) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132470,0.0,'Penalty Days',1120690,'LBR_PenaltyDays',131089,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:53:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:26','YYYY-MM-DD HH24:MI:SS'),100,1123106,'Y','N','LBRA','Y','N','N','Y','02a0952e-b8e9-4472-a03f-0546f92d41fa','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:26 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_PenaltyDays NUMBER(10) NOT NULL
;

-- 31 de jul de 2020 09:53:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132471,0.0,'Penalty Type',1120690,'LBR_PenaltyType',1,'N','N','N','N','N','N',17,1120356,0,0,'Y',TO_DATE('2020-07-31 09:53:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:26','YYYY-MM-DD HH24:MI:SS'),100,1123107,'Y','N','LBRA','Y','N','N','Y','0fa66a6a-6928-4938-bab2-0ca1277c6f7e','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:27 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_PenaltyType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132472,0.0,'Protest Type',1120690,'LBR_ProtestType',1,'N','N','N','N','N','N',17,1120357,0,0,'Y',TO_DATE('2020-07-31 09:53:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:27','YYYY-MM-DD HH24:MI:SS'),100,1123108,'Y','N','LBRA','Y','N','N','Y','f1a7747a-1cad-4c76-8c67-d70abfe731d5','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:27 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_ProtestType CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132473,0.0,'Protest Days',1120690,'LBR_ProtestDays','0',131089,'N','N','Y','N','N','N',11,0,0,'Y',TO_DATE('2020-07-31 09:53:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:27','YYYY-MM-DD HH24:MI:SS'),100,1123109,'Y','N','LBRA','Y','N','N','Y','7ee1df64-329b-4030-985a-78c81eac63f8','Y','N','N','N','N')
;

-- 31 de jul de 2020 09:53:28 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_ProtestDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 31 de jul de 2020 09:53:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132474,0,'Distributed Via',1120690,'LBR_DistributedVia',1,'N','N','N','N','N',0,'N',17,1120358,0,0,'Y',TO_DATE('2020-07-31 09:53:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:28','YYYY-MM-DD HH24:MI:SS'),100,1123110,'Y','N','LBRA','Y','N','N','Y','c46d418e-79d9-4608-a31e-f9631eb3ed9e','Y',0,'N','N','N','N')
;

-- 31 de jul de 2020 09:53:28 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_DistributedVia CHAR(1) DEFAULT NULL 
;

-- 31 de jul de 2020 09:53:29 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120126,'Y',TO_DATE('2020-07-31 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120127,'LBRA',100,1120078,'N','0f6cd454-1c2e-4385-842f-4e5bbf74da1a')
;

-- 31 de jul de 2020 09:53:29 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120397,'Bank Slip Config',1120165,10,'Y',1120690,0,0,'Y',TO_DATE('2020-07-31 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','f81bbce1-9607-4279-9695-21d4bba501b1','B')
;

-- 31 de jul de 2020 09:53:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129787,'Bank Slip Config',1120397,1132448,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b9470eb-97ce-47ae-b835-b1c81b1d732e','Y',40,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129788,'LBR_BankSlipConfig_UU',1120397,1132449,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','88fef90d-6c47-4190-a8c9-406dcbecda61','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129789,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120397,1132450,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','33eeee19-c4bf-48c4-bec4-dacb978da2f0','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129790,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120397,1132451,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ff71a3bc-6aa2-4e3d-b905-31bb1332c3d5','Y','Y',10,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129791,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120397,1132457,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','de0b0a1e-ce0e-4734-ab85-d9f13885c80a','Y',20,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129792,'Description','Optional short description of the record','A description is limited to 255 characters.',1120397,1132458,'Y',255,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6686a979-7405-4bcb-b90a-ffe115dc405f','Y',30,1,5,4,'N','N','N')
;

-- 31 de jul de 2020 09:53:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129793,'Distributed Via',1120397,1132474,'Y',1,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2f093506-fd2c-4d01-bb1f-6ac08b71be6f','Y',220,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129794,'Accepted',1120397,1132459,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bbe49269-ee33-4065-98f8-9ead81fca5ac','Y',50,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129795,'Return Action',1120397,1132460,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e47c76ae-8bea-4bed-9d1f-28bd59d51114','Y',70,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129796,'Return Days',1120397,1132461,'Y',131089,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','24d22d96-1ae7-4ee6-9c9b-9654ff24392f','Y',80,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129797,'Interest Type',1120397,1132464,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120083,'LBRA','e3d89c56-0b38-460f-8436-afa6ada7755f','Y',110,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129798,'Interest Days',1120397,1132465,'Y',10,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d5575859-aa42-40b3-a4c1-4cf904f7a758','Y',120,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129799,'Interest Value',1120397,1132462,'Y',131089,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d3f5cc94-375c-44b0-a446-b894ff185ae9','Y',90,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129800,'Interest Charge',1120397,1132463,'Y',10,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a6a4401c-5b01-4b91-a5f4-69bfa01339df','Y',100,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129801,'Penalty Type',1120397,1132471,'Y',1,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120084,'LBRA','0ba9010a-9f3e-4756-b2e5-01984b695dd7','Y',180,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129802,'Penalty Days',1120397,1132470,'Y',131089,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c8766c20-1223-4831-ab08-66cc5bf8c75d','Y',170,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129803,'Penalty Value',1120397,1132468,'Y',131089,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55233171-be5f-4771-a569-3d828161198e','Y',150,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129804,'Penalty Charge',1120397,1132469,'Y',10,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7567aef1-33ef-457d-8dcc-e3e3e5c320de','Y',160,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129805,'Protest Type',1120397,1132472,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120085,'LBRA','e04400a2-ef2c-42e0-b7e7-6ac98b63578b','Y',190,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129806,'Protest Days',1120397,1132473,'Y',131089,180,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dedff11b-a925-4b10-afbf-30a5689a7fac','Y',200,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129807,'Message 1',1120397,1132466,'Y',40,190,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',125,'LBRA','0b64b5da-3086-4c56-9acf-b77e20500986','Y',130,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129808,'Message 2',1120397,1132467,'Y',40,200,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7ab77664-e924-4c6f-a185-426b749d1e24','Y',140,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129809,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120397,1132456,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c1c08362-f0dc-4d38-98f2-c7315f4e49fb','Y',210,2,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:41 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Process_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120398,'Bank Slip',1000022,10,'Y',1120689,0,0,'Y',TO_DATE('2020-07-31 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1120250,'N','N',0,'N','LBRA','Y','N','828d4c13-bce4-4cd7-86b4-d78ba2aba5d8','B')
;

-- 31 de jul de 2020 09:53:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129810,'LBR_BankSlip_UU',1120398,1132367,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','76c799cf-8431-4369-a98d-f71fb8670ab9','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129811,'Bank Slip',1120398,1132366,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3360ad19-07a2-4dbc-af3d-12adf946426b','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129812,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120398,1132413,'N',131089,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f1e7a94a-0fc3-499d-a6df-1eea8864546e','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129813,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120398,1132374,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bb9949a5-ada5-41fb-99a3-672c548654c2','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129814,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120398,1132368,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','b1e6d523-5469-4044-aa56-e3118be3e55e','N',1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129815,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120398,1132369,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e9724cd-597b-41f3-bc70-aaed3d51e6d1','Y','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129816,'Paid','The document is paid',1120398,1132393,'Y',1,30,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','35149baa-0644-499b-bc57-e3003dc31dec','Y',110,8,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129817,'Protested',1120398,1132404,'Y',1,40,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:45','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','96b32df0-0c14-4b64-9625-7deeac1f52ee','Y',170,9,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129818,'Halted',1120398,1132402,'Y',1,50,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:45','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c0183345-828c-456d-aa84-e2dfc64f38d2','Y',160,10,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129819,'Cancelled','The transaction was cancelled',1120398,1132394,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','e7c6f776-b266-4084-a45c-972a7c8064e7','Y',120,11,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129820,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120398,1132381,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','88e59e19-1619-4fe8-9e89-8e919688dc16','Y',50,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129821,'Written Off',1120398,1132406,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','e49b3b12-a221-4846-b5ff-56d985eae1d6','Y',190,8,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129822,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1120398,1132416,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','7175bfad-e72a-413b-9866-c04594175a4b','N',0,9,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129823,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120398,1132412,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','54e256cb-3492-4723-b387-c5e1f89d0ec7','N',0,10,1,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129824,'Partial Payment',1120398,1132403,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','e82dc61c-ced9-48bc-9212-47b7cb58dfba','N',0,11,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129825,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120398,1132390,'Y',30,120,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','34b55f02-0be2-4313-80cb-d9a870ac9f04','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129826,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120398,1132385,'Y',29,130,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c365ebf5-c07d-44e4-abd7-0e1dd7c6fd88','Y',80,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129827,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120398,1132411,'Y','@DocStatus@=CO | @DocStatus@=CL',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5c944900-e53a-41ac-aa39-b74b9dd3f735','N',0,8,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129828,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120398,1132388,'Y',2,150,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a61651bb-7f6c-45ee-812a-6f3d12e3f356','N',0,11,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129829,'Description','Optional short description of the record','A description is limited to 255 characters.',1120398,1132386,'Y',255,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','14bbc149-3890-4f75-ab5d-b997e6960151','N',0,1,5,2,'N','N','N')
;

-- 31 de jul de 2020 09:53:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129830,'Recipient Type',1120398,1132445,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','280f5143-5fc6-4e4a-acba-2e6c4fca502b','Y',250,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129831,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120398,1132389,'Y',2,180,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d4b83f81-a756-4b49-a618-98a73fd6bf85','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129832,'Recipient',1120398,1132443,'Y',10,190,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8aaacaab-0626-43e4-b0dd-c6406b731441','Y',230,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129833,'Recipient Location',1120398,1132444,'Y',10,200,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e625a6f1-6916-4c9f-870c-e5f4890d0555','Y',240,7,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129834,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120398,1132384,'Y',29,210,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',113,'LBRA','6fac4a6f-2a47-46c6-a075-5587b3dcc468','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129835,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120398,1132391,'Y',29,220,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dded832c-282c-4810-be6f-45e0cb5c3628','Y',90,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129836,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120398,1132387,'Y',10,230,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:54','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','79aafbae-f9a0-437e-a9f1-874f3c0e84f0','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129837,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120398,1132392,'Y',131089,240,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cb533df9-9b14-4059-b783-2cd72c2187af','Y',100,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129838,'Bank','Bank','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.',1120398,1132375,'Y',10,250,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d6f20542-7d68-4387-8a86-c7a6d7770a0f','Y',10,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129839,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120398,1132376,'Y',10,260,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6ffb51f4-0642-4685-9b4f-85b1f17c0239','Y',20,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129840,'IOF Amount',1120398,1132401,'Y',131089,270,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1e7157f4-2cf9-4cbe-8329-bf9171bb4873','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129841,'Write-off Amount','Amount to write-off','The Write Off Amount indicates the amount to be written off as uncollectible.',1120398,1132415,'Y',131089,280,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','135b5ac6-0d71-49ed-9243-aabdcf57f869','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129842,'Bank Slip Contract',1120398,1132395,'Y',10,290,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c709e04a-d34e-438a-a90e-24320d6a8ca3','Y',130,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129843,'Issued By',1120398,1132405,'Y',1,300,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5d89e789-06cb-4a5e-96ab-8a79e96bf7b5','Y',180,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129844,'Bank Slip Layout',1120398,1132437,'Y',10,310,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8f12c46b-e505-4384-9ccf-8b0bf5be3e54','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129845,'Distributed Via',1120398,1132400,'Y',1,320,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8093e4cd-be8f-43f6-ac25-25fa5f0a32f2','Y',150,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:53:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129846,'Accepted',1120398,1132436,'Y',1,330,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9f16c6a6-a0de-4a60-837b-f332e2721f88','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129847,'Issue Type',1120398,1132435,'Y',1,340,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:53:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:53:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3fac1c0e-9093-4ca3-ae6b-044c8efdfb8c','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129848,'Number In Bank',1120398,1132408,'Y',20,350,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','662a4ddc-e1a4-4cd0-aa9e-03e13da320a3','Y',200,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129849,'Number in the Org',1120398,1132409,'Y',25,360,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9efda1b0-c6dc-4b76-a756-d9c38ce77ac8','Y',210,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129850,'Invoice','Invoice Identifier','The Invoice Document.',1120398,1132382,'Y',10,370,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','95f70d8c-1f81-4224-aabb-abd72a8f48ca','Y',60,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129851,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',1120398,1132383,'Y',10,380,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3223836f-56b9-4d9c-815a-77b029c9822e','Y',70,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129852,'PaySchedule Number','Defines the PaySchedule Number','Defines the PaySchedule Number',1120398,1132417,'Y',2,390,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ce56b4b9-bca9-4f74-99d4-7b05f8e22ade','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129853,'Loan Contract No',1120398,1132407,'Y',10,400,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','381c3bba-8d06-4ac1-b4c1-24e242f276d8','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129854,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120398,1132377,'Y',10,410,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','99b0a768-9875-4739-bfe1-031df90482d5','Y',30,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129855,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120398,1132378,'Y',10,420,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fbed3f9d-a8a5-40e9-bbc6-776d5f2338de','Y',40,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129856,'Guarantor',1120398,1132379,'Y',10,430,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eb720c47-ee8e-44df-a449-7dd9f6ce3e6d','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129857,'Guarantor Location',1120398,1132380,'Y',10,440,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2cdcaf65-5b7a-40b2-8725-214ca14086d0','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129858,'Bank Slip Currency',1120398,1132396,'Y',2,450,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bdd8325a-6bb4-4b09-b7e6-5358bd4ae3ec','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129859,'Fold',1120398,1132397,'Y',10,460,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','33a05075-4625-41d9-a673-de9b4f7714ef','Y',140,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129860,'Bank Slip Kind',1120398,1132398,'Y',10,470,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9153fd30-429c-4259-9adb-bcfa9fc4ebe8','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129861,'Register Type',1120398,1132410,'Y',1,480,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4dd88c74-4885-463d-9027-3c4d4151cf54','Y',220,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129862,'Process Now',1120398,1132414,'Y',1,490,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','39327a98-932e-4600-abe7-aa02cc98eb31','N',0,2,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129863,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120398,1132446,'Y',10,500,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','151e589b-45d6-48ec-957f-2d301c8d5340','Y',260,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129864,'Return Action',1120398,1132438,'Y',1,510,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1390bd99-490f-4932-88ec-49e74c4d9250','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129865,'Return Days',1120398,1132439,'Y',10,520,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7ae25891-f087-4ac3-af3e-2eb2948ef360','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129866,'Direct Debit Notice',1120398,1132399,'Y',1,530,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d5985e4d-abc1-4ea5-b1e5-ee09cfa1850c','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129867,'Discount 1 Type',1120398,1132419,'Y',1,540,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120089,'LBRA','91a525f5-c972-4d82-b633-9f91aac74f66','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129868,'Discount 1 Value',1120398,1132420,'Y','@LBR_Discount1Type@!''''',131089,550,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5fdac870-98e9-4959-994f-d5f0492257b6','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129869,'Discount 1 Date',1120398,1132418,'Y','@LBR_Discount1Type@!''''',29,560,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','048072c1-4aa1-4353-b356-7a24940d8419','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129870,'Discount 2 Type',1120398,1132422,'Y','@LBR_Discount1Type@!''''',1,570,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2b54f68f-5e39-4f8a-bddb-1f161cb94d8b','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129871,'Discount 2 Value',1120398,1132423,'Y','@LBR_Discount2Type@!''''',131089,580,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6ec58951-464d-49df-8d2d-502d309648d6','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129872,'Discount 2 Date',1120398,1132421,'Y','@LBR_Discount2Type@!''''',7,590,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f68e90c2-c0d8-4f16-904d-fb6f3836a8c6','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129873,'Discount 3 Type',1120398,1132425,'Y','@LBR_Discount2Type@!''''',1,600,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9e52e2b6-a94d-4f4b-9b55-2fcfc04e842b','N',0,1,5,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129874,'Discount 3 Value',1120398,1132426,'Y','@LBR_Discount3Type@!''''',131089,610,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2b53cc2d-fa03-47eb-9567-f1fa5b42f381','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129875,'Discount 3 Date',1120398,1132424,'Y','@LBR_Discount3Type@!''''',7,620,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7aed545d-e3b1-4e52-a6d9-8e4647732bff','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129876,'Interest Type',1120398,1132428,'Y',1,630,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120083,'LBRA','c671b4f2-f42d-44a7-9665-0885512fcb43','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129877,'Interest Days',1120398,1132440,'Y','@LBR_InterestType@!''''',10,640,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c4651d30-b30a-4b38-a4a1-8bcd912db75a','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129878,'Interest Value',1120398,1132427,'Y','@LBR_InterestType@!''''',131089,650,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3053ff87-a3d9-4916-a953-1201554092ab','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129879,'Interest Date',1120398,1132429,'Y','@LBR_InterestType@!''''',29,660,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c87a813e-bdb5-48a8-bd28-163a16d9044f','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129880,'Penalty Type',1120398,1132432,'Y',1,670,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120084,'LBRA','542a89f8-fb95-47a8-b088-aa7562f144f3','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129881,'Penalty Days',1120398,1132441,'Y','@LBR_PenaltyType@!''''',131089,680,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','25a7f96d-c3df-43db-bdca-108cc35b1dfd','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129882,'Penalty Value',1120398,1132430,'Y','@LBR_PenaltyType@!''''',131089,690,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bcc88072-b46d-4e3a-acc6-ac9b74a1c33b','N',0,7,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129883,'Penalty Date',1120398,1132431,'Y','@LBR_PenaltyType@!''''',7,700,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1b55ebab-4e88-46ac-9201-c033a012283f','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129884,'Protest Type',1120398,1132433,'Y',1,710,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120085,'LBRA','e06f6b43-cafd-4b4b-85d6-3ea3811bb699','N',0,1,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129885,'Protest Days',1120398,1132442,'Y','@LBR_ProtestType@!''''',131089,720,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6def2c53-5bed-43e2-b0b4-b11900bc4a33','N',0,4,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129886,'Protest Date',1120398,1132434,'Y','@LBR_ProtestType@!''''',10,730,'N','N','N','N',0,0,'Y',TO_DATE('2020-07-31 09:54:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-07-31 09:54:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ab478812-c100-4032-a09b-4953a8592555','N',0,10,2,1,'N','N','N')
;

-- 31 de jul de 2020 09:54:20 BRT
ALTER TABLE LBR_BankSlipFold ADD CONSTRAINT LBRBankSlipLayout_LBRBankSlipF FOREIGN KEY (LBR_BankSlipLayout_ID) REFERENCES lbr_banksliplayout(lbr_banksliplayout_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipLayout ADD CONSTRAINT LBRBank_LBRBankSlipLayout FOREIGN KEY (LBR_Bank_ID) REFERENCES lbr_bank(lbr_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipInfo ADD CONSTRAINT LBRBankSlip_LBRBankSlipInfo FOREIGN KEY (LBR_BankSlip_ID) REFERENCES lbr_bankslip(lbr_bankslip_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipOccur ADD CONSTRAINT LBRBankSlipLayout_LBRBankSlipO FOREIGN KEY (LBR_BankSlipLayout_ID) REFERENCES lbr_banksliplayout(lbr_banksliplayout_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT CBankAccount_LBRBankSlipContra FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipLayout_LBRBankSlipC', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132329
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRBankSlipLayout_LBRBankSlipC FOREIGN KEY (LBR_BankSlipLayout_ID) REFERENCES lbr_banksliplayout(lbr_banksliplayout_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:21 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipFold_LBRBankSlipCon', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132330
;

-- 31 de jul de 2020 09:54:21 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRBankSlipFold_LBRBankSlipCon FOREIGN KEY (LBR_BankSlipFold_ID) REFERENCES lbr_bankslipfold(lbr_bankslipfold_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:22 BRT
UPDATE AD_Column SET FKConstraintName='LBRBankSlipKind_LBRBankSlipCon', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132331
;

-- 31 de jul de 2020 09:54:22 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRBankSlipKind_LBRBankSlipCon FOREIGN KEY (LBR_BankSlipKind_ID) REFERENCES lbr_bankslipkind(lbr_bankslipkind_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:22 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRNumberInBankSeq_LBRBankSlip FOREIGN KEY (LBR_NumberInBankSeq_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:22 BRT
COMMIT
;

-- 31 de jul de 2020 09:54:26 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRCNABFileSeq_LBRBankSlipCont FOREIGN KEY (LBR_CNABFileSeq_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:26 BRT
COMMIT
;

-- 31 de jul de 2020 09:54:26 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRCNABLotSeq_LBRBankSlipContr FOREIGN KEY (LBR_CNABLotSeq_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:26 BRT
COMMIT
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRBankSlipConfig_LBRBankSlipC FOREIGN KEY (LBR_BankSlipConfig_ID) REFERENCES lbr_bankslipconfig(lbr_bankslipconfig_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRRecipient_LBRBankSlipContra FOREIGN KEY (LBR_Recipient_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipContract ADD CONSTRAINT LBRRecipientLoc_LBRBankSlip FOREIGN KEY (LBR_Recipient_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipMov ADD CONSTRAINT LBRBankSlip_LBRBankSlipMov FOREIGN KEY (LBR_BankSlip_ID) REFERENCES lbr_bankslip(lbr_bankslip_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipMov ADD CONSTRAINT LBRBankSlipOccur_LBRBankSlipMo FOREIGN KEY (LBR_BankSlipOccur_ID) REFERENCES lbr_bankslipoccur(lbr_bankslipoccur_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlipMov ADD CONSTRAINT CPayment_LBRBankSlipMov FOREIGN KEY (C_Payment_ID) REFERENCES c_payment(c_payment_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT ADClient_LBRBankSlip FOREIGN KEY (AD_Client_ID) REFERENCES ad_client(ad_client_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT ADOrg_LBRBankSlip FOREIGN KEY (AD_Org_ID) REFERENCES ad_org(ad_org_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CBank_LBRBankSlip FOREIGN KEY (C_Bank_ID) REFERENCES c_bank(c_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:27 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CBankAccount_LBRBankSlip FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CBPartner_LBRBankSlip FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CBPartnerLocation_LBRBankSlip FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
UPDATE AD_Column SET FKConstraintName='GuarantorBP_LBRBankSlip', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132379
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT GuarantorBP_LBRBankSlip FOREIGN KEY (GuarantorBP_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT GuarantorBPLocation_LBRBankSli FOREIGN KEY (GuarantorBP_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CDocType_LBRBankSlip FOREIGN KEY (C_DocType_ID) REFERENCES c_doctype(c_doctype_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CInvoice_LBRBankSlip FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT CInvoicePaySchedule_LBRBankSli FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRBankSlipContract_LBRBankSli FOREIGN KEY (LBR_BankSlipContract_ID) REFERENCES lbr_bankslipcontract(lbr_bankslipcontract_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRBankSlipFold_LBRBankSlip FOREIGN KEY (LBR_BankSlipFold_ID) REFERENCES lbr_bankslipfold(lbr_bankslipfold_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRBankSlipKind_LBRBankSlip FOREIGN KEY (LBR_BankSlipKind_ID) REFERENCES lbr_bankslipkind(lbr_bankslipkind_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRBankSlipLayout_LBRBankSlip FOREIGN KEY (LBR_BankSlipLayout_ID) REFERENCES lbr_banksliplayout(lbr_banksliplayout_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:28 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRRecipient_LBRBankSlip FOREIGN KEY (LBR_Recipient_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRRecipientLocation_LBRBankSl FOREIGN KEY (LBR_Recipient_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE LBR_BankSlip ADD CONSTRAINT LBRNotaFiscal_LBRBankSlip FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE LBR_Bank ADD CONSTRAINT Logo_LBRBank FOREIGN KEY (Logo_ID) REFERENCES ad_image(ad_image_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRBank_LBRBankInfo', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000234
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE LBR_BankInfo ADD CONSTRAINT LBRBank_LBRBankInfo FOREIGN KEY (LBR_Bank_ID) REFERENCES lbr_bank(lbr_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
UPDATE AD_Column SET FKConstraintName='LBRBank_CBank', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000131
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE C_Bank ADD CONSTRAINT LBRBank_CBank FOREIGN KEY (LBR_Bank_ID) REFERENCES lbr_bank(lbr_bank_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
UPDATE AD_Column SET FKConstraintName='ADSequence_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000134
;

-- 31 de jul de 2020 09:54:29 BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT ADSequence_CBankAccount FOREIGN KEY (AD_Sequence_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:29 BRT
COMMIT
;

-- 31 de jul de 2020 09:54:30 BRT
UPDATE AD_Column SET FKConstraintName='LBRDocSequence_CBankAccount', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000902
;

-- 31 de jul de 2020 09:54:30 BRT
ALTER TABLE C_BankAccount ADD CONSTRAINT LBRDocSequence_CBankAccount FOREIGN KEY (LBR_DocSequence_ID) REFERENCES ad_sequence(ad_sequence_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:30 BRT
COMMIT
;

-- 31 de jul de 2020 09:54:30 BRT
UPDATE AD_Column SET FKConstraintName='LBRBSSetup_LBRBSSetupLine', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128975
;

-- 31 de jul de 2020 09:54:30 BRT
ALTER TABLE LBR_BSSetupLine ADD CONSTRAINT LBRBSSetup_LBRBSSetupLine FOREIGN KEY (LBR_BSSetup_ID) REFERENCES lbr_bssetup(lbr_bssetup_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:30 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRBSSetupLine', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128982
;

-- 31 de jul de 2020 09:54:30 BRT
ALTER TABLE LBR_BSSetupLine ADD CONSTRAINT CBPartner_LBRBSSetupLine FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:30 BRT
UPDATE AD_Column SET FKConstraintName='CCharge_LBRBSSetupLine', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128983
;

-- 31 de jul de 2020 09:54:30 BRT
ALTER TABLE LBR_BSSetupLine ADD CONSTRAINT CCharge_LBRBSSetupLine FOREIGN KEY (C_Charge_ID) REFERENCES c_charge(c_charge_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:30 BRT
UPDATE AD_Column SET FKConstraintName='CBankAccount_LBRBSSetup', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128966
;

-- 31 de jul de 2020 09:54:30 BRT
ALTER TABLE LBR_BSSetup ADD CONSTRAINT CBankAccount_LBRBSSetup FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:31 BRT
UPDATE AD_Column SET FKConstraintName='CInvoice_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000038
;

-- 31 de jul de 2020 09:54:31 BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CInvoice_LBRBoleto FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:31 BRT
UPDATE AD_Column SET FKConstraintName='CBPartner_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000132
;

-- 31 de jul de 2020 09:54:31 BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBPartner_LBRBoleto FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:31 BRT
UPDATE AD_Column SET FKConstraintName='CPayment_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000895
;

-- 31 de jul de 2020 09:54:31 BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CPayment_LBRBoleto FOREIGN KEY (C_Payment_ID) REFERENCES c_payment(c_payment_id) DEFERRABLE INITIALLY DEFERRED
;

-- 31 de jul de 2020 09:54:31 BRT
UPDATE AD_Column SET FKConstraintName='CBankAccount_LBRBoleto', FKConstraintType='N',Updated=TO_DATE('2020-07-31 09:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000923
;

-- 31 de jul de 2020 09:54:31 BRT
ALTER TABLE LBR_Boleto ADD CONSTRAINT CBankAccount_LBRBoleto FOREIGN KEY (C_BankAccount_ID) REFERENCES c_bankaccount(c_bankaccount_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT Register_Migration_Script ('202007311011_BankSlip.sql') FROM DUAL
;
