-- 30 de jun de 2021 14:44:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122964,'Movement Out Transfer',1000043,'MMST-',0,0,'Y',TO_TIMESTAMP('2021-06-30 14:44:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 14:44:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','26485604-0ed7-44f5-9013-0497e52ee35e')
;

-- 30 de jun de 2021 14:45:06 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122965,'Movement In Transfer',1000043,'MMET+',0,0,'Y',TO_TIMESTAMP('2021-06-30 14:45:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 14:45:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2192cd55-54cf-4536-99b0-d2264a742ba1')
;

-- 30 de jun de 2021 14:45:30 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122966,'Movement Out Storage in 3rd Party',1000043,'MMSA-',0,0,'Y',TO_TIMESTAMP('2021-06-30 14:45:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 14:45:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0d4621c5-d91b-4a70-95f1-b8b4cb8524e7')
;

-- 30 de jun de 2021 14:45:57 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122967,'Movement In Storage in 3rd Party',1000043,'MMEA+',0,0,'Y',TO_TIMESTAMP('2021-06-30 14:45:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 14:45:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ed5853bf-244c-4229-b10a-a4006e604808')
;

-- 30 de jun de 2021 14:45:57 BRT
SELECT Register_Migration_Script ('202106301448_NewBaseDocType.sql') FROM DUAL
;

