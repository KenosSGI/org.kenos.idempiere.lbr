-- 7 de mar de 2021 13:09:17 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1128184
;

-- 7 de mar de 2021 13:09:17 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1128184
;

-- 7 de mar de 2021 13:09:38 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1128185
;

-- 7 de mar de 2021 13:09:38 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1128185
;

-- 7 de mar de 2021 13:09:45 BRT
DELETE FROM  AD_Field WHERE AD_Column_ID=1131517
;

-- 7 de mar de 2021 13:09:45 BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1131517
;

-- 7 de mar de 2021 13:09:46 BRT
DELETE FROM AD_PrintFormatItem WHERE AD_Column_ID=1131517
;

-- 7 de mar de 2021 13:09:46 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1131517
;

-- 7 de mar de 2021 13:09:51 BRT
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1120322
;

-- 7 de mar de 2021 13:09:51 BRT
DELETE FROM AD_Reference WHERE AD_Reference_ID=1120322
;

SELECT Register_Migration_Script ('202103071310_RemoveMsgSEFAZField.sql') FROM DUAL
;

