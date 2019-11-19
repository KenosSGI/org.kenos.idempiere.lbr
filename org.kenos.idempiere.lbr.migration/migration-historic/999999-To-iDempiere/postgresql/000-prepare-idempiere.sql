-- Requisito para o iDempiere
CREATE EXTENSION IF NOT EXISTS "uuid-ossp"
;

BEGIN
;

-- Correção do ID da coluna errada na M_Product
UPDATE AD_Column SET AD_Column_ID=1129673 WHERE AD_Column_ID=59231
;
UPDATE AD_Column_Trl SET AD_Column_ID=1129673 WHERE AD_Column_ID=59231
;
UPDATE AD_Field SET AD_Column_ID=1129673 WHERE AD_Column_ID=59231
;

-- Remover os campos C_BPartner_ID, DocumentNo e DatePromised da janela de produção que foi adicionado no iDempiere
DELETE FROM AD_Field WHERE AD_Column_ID=1000953
;
DELETE FROM AD_Column WHERE AD_Column_ID=1000953
;
DELETE FROM AD_Field WHERE AD_Column_ID=1126690
;
DELETE FROM AD_Column WHERE AD_Column_ID=1126690
;
DELETE FROM AD_Column_Access WHERE AD_Column_ID=1126690
;
DELETE FROM AD_Field WHERE AD_Column_ID=1126692
;
DELETE FROM AD_Column WHERE AD_Column_ID=1126692
;

-- Remover campos da aba transportadora na janela de parceiro
UPDATE AD_Column SET AD_Reference_Value_ID=NULL WHERE AD_Reference_Value_ID=1120249
;
DELETE FROM AD_Reference WHERE AD_Reference_ID=1120249
;
DELETE FROM AD_Field WHERE AD_Field_ID=1125572
;
DELETE FROM AD_Field WHERE AD_Field_ID=1125571
;
DELETE FROM AD_Field WHERE AD_Field_ID=1125575
;

-- Remover o campos da janela de pn
DELETE FROM AD_Field WHERE AD_Field_ID=1000470
;
DELETE FROM AD_Field WHERE AD_Field_ID=1000472
;
DELETE FROM AD_Field WHERE AD_Field_ID=1000453
;

-- Remover callouts que já estão no padrão do iDempiere
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutOrder.recalculateTaxes', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutOrder%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutOrder.getSISCOMEX', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutOrder%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutOrder.PaymentRule', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutOrder%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutOrder.NFDescription', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutOrder%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutBPartner.changeBPType','') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutBPartner%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, ';;', ';') WHERE Callout LIKE '%;;%'
;
UPDATE AD_Column SET Callout=REPLACE(Callout, ';;', ';') WHERE Callout LIKE '%;;%'
;
UPDATE AD_Column SET Callout=NULL WHERE Callout=';'
;
UPDATE AD_Column SET Callout=NULL WHERE Callout=''
;

--	Desabilitar Regras de NFSe que serão registradas via OSGi
UPDATE AD_Rule SET IsActive='N' WHERE AD_Rule_ID IN (1120003,1120006)
;

--	Desabilitar
UPDATE AD_Language SET IsSystemLanguage='N' WHERE AD_Language='en_US'
;

-- Formas de pagto
UPDATE AD_Ref_List SET Name=Name || ' (old)' WHERE AD_Reference_ID=1000035 AND IsActive='N'
;

-- Adicionado novamente no iDempiere com outro ID
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120002
;

-- Script do iDempiere apaga as colunas, apagar os campos primeiramente
DELETE FROM AD_Field WHERE AD_Column_ID=1001022
;

--	Corrigir CESTs
UPDATE LBR_CEST 
SET Value=REGEXP_REPLACE (Value, '^(\d{2})(\d{3})(\d{2})$', '\1.\2.\3', '') 
WHERE Value~'^(\d{2})(\d{3})(\d{2})$'
;

--	Apagar sequencias da M_Production para GardenWorld e System
DELETE FROM AD_Sequence WHERE Name='DocumentNo_M_Production' AND AD_Client_ID IN (0,11)
;

-- O script 832_IDEMPIERE-215 apaga o processo "RV_Product_Costing", porém não apaga a PInstance
DELETE FROM AD_PInstance WHERE AD_Process_ID=183
;

COMMIT
;