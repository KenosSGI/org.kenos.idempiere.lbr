SET SQLBLANKLINES ON
SET DEFINE OFF

-- 22/02/2018 16h43min5s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1001052
;

-- 22/02/2018 16h43min5s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1001052
;

-- 22/02/2018 16h43min5s BRT
DELETE FROM AD_PrintFormatItem WHERE AD_Column_ID=1001022
;

-- 22/02/2018 16h43min54s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1001022
;

-- 22/02/2018 16h45min7s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1001022
;

-- 22/02/2018 16h45min14s BRT
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000344
;

-- 22/02/2018 16h45min14s BRT
DELETE FROM AD_Element WHERE AD_Element_ID=1000344
;

-- 22/02/2018 16h51min48s BRT
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000042
;

-- 22/02/2018 16h51min48s BRT
DELETE FROM AD_Reference WHERE AD_Reference_ID=1000042
;

-- 22/02/2018 16h51min48s BRT
ALTER TABLE C_OrderLine DROP COLUMN LBR_Ref_C_InvoiceLine_ID
;

SELECT Register_Migration_Script ('201802221800_FixRefInvoice.sql') FROM DUAL
;