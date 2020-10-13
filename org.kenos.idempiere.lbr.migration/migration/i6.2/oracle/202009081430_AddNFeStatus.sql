SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 8 de set de 2020 14:16:45 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122409,'306-Rejeição: IE do destinatário não está ativa na UF',1100004,'306',0,0,'Y',TO_DATE('2020-09-08 14:16:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-08 14:16:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ed20af56-1a0b-4493-a1a7-b8dcb584b824')
;

-- 8 de set de 2020 14:17:12 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122410,'305-Rejeição: Destinatário bloqueado na UF',1100004,'305',0,0,'Y',TO_DATE('2020-09-08 14:17:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-09-08 14:17:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','dfe506fc-8bd2-45b9-af4b-089678c7b34d')
;

SELECT Register_Migration_Script ('202009081430_AddNFeStatus.sql') FROM DUAL
;