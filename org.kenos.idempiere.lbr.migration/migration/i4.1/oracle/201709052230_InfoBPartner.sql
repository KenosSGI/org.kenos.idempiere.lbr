SET SQLBLANKLINES ON
SET DEFINE OFF

-- 05/09/2017 22h23min51s BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,QueryFunction,IsIdentifier,SeqNoSelection,IsMandatory,IsKey) VALUES (1120000,0,0,'Y',TO_DATE('2017-09-05 22:23:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2017-09-05 22:23:47','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ/CPF/ID','Tax Identification','The Tax ID field identifies the legal Identification number of this Entity.',200001,'LBRA','COALESCE(bp.LBR_CNPJ, bp.LBR_CPF, bp.TaxID)',26,'Y','N',590,10,'84ee73da-d3a3-4b64-870f-1cd585b94895','N','TaxID','Like','Upper','Y',0,'N','N')
;

-- 05/09/2017 22h24min55s BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,QueryFunction,IsIdentifier,SeqNoSelection,IsMandatory,IsKey) VALUES (1120001,0,0,'Y',TO_DATE('2017-09-05 22:24:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2017-09-05 22:24:54','YYYY-MM-DD HH24:MI:SS'),100,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',200001,'LBRA','bp.lbr_CPF',190,'N','Y',1000010,10,'8b051e8a-a97a-4c67-a72a-5810751ff45c','Y','lbr_CPF','Like',NULL,'N',0,'N','N')
;

-- 05/09/2017 22h25min15s BRT
INSERT INTO AD_InfoColumn (AD_InfoColumn_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_InfoWindow_ID,EntityType,SelectClause,SeqNo,IsDisplayed,IsQueryCriteria,AD_Element_ID,AD_Reference_ID,AD_InfoColumn_UU,IsCentrallyMaintained,ColumnName,QueryOperator,QueryFunction,IsIdentifier,SeqNoSelection,IsMandatory,IsKey) VALUES (1120002,0,0,'Y',TO_DATE('2017-09-05 22:25:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2017-09-05 22:25:15','YYYY-MM-DD HH24:MI:SS'),100,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',200001,'LBRA','bp.lbr_CNPJ',200,'N','Y',1000009,10,'fab48b3a-fe72-4639-8bd6-4b78d43149c8','Y','lbr_CNPJ','Like',NULL,'N',0,'N','N')
;

-- 06/09/2017 10h29min58s BRT
UPDATE AD_InfoColumn SET IsActive='N',Updated=TO_DATE('2017-09-06 10:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200038
;

-- 06/09/2017 10h36min48s BRT
UPDATE AD_InfoColumn SET IsActive='N',Updated=TO_DATE('2017-09-06 10:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200025
;

-- 06/09/2017 10h36min50s BRT
UPDATE AD_InfoColumn SET IsActive='N',Updated=TO_DATE('2017-09-06 10:36:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200114
;

-- 06/09/2017 10h36min58s BRT
UPDATE AD_InfoColumn SET IsActive='N',Updated=TO_DATE('2017-09-06 10:36:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoColumn_ID=200028
;

-- 06/09/2017 10h37min50s BRT
UPDATE AD_InfoWindow SET Help='Contact removed: LEFT OUTER JOIN AD_User c ON (bp.C_BPartner_ID=c.C_BPartner_ID AND (c.C_BPartner_Location_ID IS NULL OR c.C_BPartner_Location_ID=l.C_BPartner_Location_ID) AND c.IsActive=''Y'')', FromClause='C_BPartner bp
LEFT OUTER JOIN C_BPartner_Location l ON (bp.C_BPartner_ID=l.C_BPartner_ID AND l.IsActive=''Y'')
LEFT OUTER JOIN C_Location a ON (l.C_Location_ID=a.C_Location_ID)', IsValid='Y',Updated=TO_DATE('2017-09-06 10:37:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=200001
;

-- 06/09/2017 11h22min17s BRT
UPDATE AD_InfoWindow SET WhereClause='(CASE WHEN ''@#LBR_SHOW_EMPLOYEE_BP_INFO@''=''N'' THEN bp.IsEmployee=''N'' ELSE 1=1 END)', IsValid='Y',Updated=TO_DATE('2017-09-06 11:22:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_InfoWindow_ID=200001
;

-- 06/09/2017 11h22min17s BRT
SELECT Register_Migration_Script ('201709052230_InfoBPartner.sql') FROM DUAL
;
