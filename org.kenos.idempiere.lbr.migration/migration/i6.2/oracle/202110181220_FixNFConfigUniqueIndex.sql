SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 18 de out de 2021 11:36:47 BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120025,'cd52cda7-e576-46a9-a5cf-16881bb927b7',TO_DATE('2021-10-18 11:36:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-10-18 11:36:47','YYYY-MM-DD HH24:MI:SS'),100,1133127,1120009,3)
;

-- 18 de out de 2021 11:37:20 BRT
ALTER TABLE LBR_ProductConfig DROP CONSTRAINT LBR_ProductConfig_AD_Org_Unq CASCADE
;

-- 18 de out de 2021 11:37:20 BRT
ALTER TABLE LBR_ProductConfig ADD CONSTRAINT LBR_ProductConfig_AD_Org_Unq UNIQUE (AD_Client_ID,AD_Org_ID,M_Product_ID)
;

-- 5 de out de 2021 10:19:12 BRT
SELECT Register_Migration_Script ('202110181220_FixNFConfigUniqueIndex.sql') FROM DUAL
;


