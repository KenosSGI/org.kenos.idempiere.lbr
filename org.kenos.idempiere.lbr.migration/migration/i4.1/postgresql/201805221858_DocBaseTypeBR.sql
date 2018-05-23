-- Tipos de Documento Base LBR
-- 22/05/2018 18h50min17s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121835,'Transfer Out Invoice',1000043,'FAET-',0,0,'Y',TO_TIMESTAMP('2018-05-22 18:50:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-22 18:50:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2bf1d06d-693c-4842-b2f1-b981f508af77')
;

-- 22/05/2018 18h50min57s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121836,'Transfer In Invoice',1000043,'FART+',0,0,'Y',TO_TIMESTAMP('2018-05-22 18:50:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-22 18:50:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ca9f66a6-1949-4112-b35b-f18f84718a15')
;

-- 22/05/2018 18h51min42s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121837,'Transfer Shipment',1000043,'EXET-',0,0,'Y',TO_TIMESTAMP('2018-05-22 18:51:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-22 18:51:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','bcd9a999-9072-4a3f-82ea-b43f2241acba')
;

-- 22/05/2018 18h51min56s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121838,'Transfer Receipt',1000043,'EXRT+',0,0,'Y',TO_TIMESTAMP('2018-05-22 18:51:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-22 18:51:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d680a020-c982-48da-999f-979db45977f2')
;

SELECT Register_Migration_Script ('201805221858_DocBaseTypeBR.sql') FROM DUAL
;
