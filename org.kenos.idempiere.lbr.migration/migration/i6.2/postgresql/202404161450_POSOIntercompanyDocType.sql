-- 16 de abr de 2024 14:48:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123027,'Intercompany Purchase Order',1000043,'OCEE+',0,0,'Y',TO_TIMESTAMP('2024-04-16 14:48:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-16 14:48:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c501b517-4cc7-4e23-ba51-705ed62910f6')
;

-- 16 de abr de 2024 14:49:05 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123028,'Intercompany Sales Order',1000043,'OVEE-',0,0,'Y',TO_TIMESTAMP('2024-04-16 14:49:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-16 14:49:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','478c518e-1793-4b3e-bc89-9a11e9b81713')
;

-- 16 de abr de 2024 14:49:05 BRT
SELECT Register_Migration_Script ('202404161450_POSOIntercompanyDocType.sql') FROM DUAL
;