SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 4 de ago de 2020 17:01:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122407,'PKCS#11 (Remote)',1100000,'R11',0,0,'Y',TO_DATE('2020-08-04 17:01:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-08-04 17:01:50','YYYY-MM-DD HH24:MI:SS'),100,'U','2d1678c3-5a4d-4f88-8f5c-73a5a086cbd6')
;

-- 4 de ago de 2020 17:02:18 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2020-08-04 17:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122407
;

SELECT Register_Migration_Script ('202008041800_RemotePKCS11.sql') FROM DUAL
;