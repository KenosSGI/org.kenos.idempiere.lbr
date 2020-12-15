SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 14 de dez de 2020 10:31:39 BRT
UPDATE AD_Field SET DisplayLogic='@ErrorMsg@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-12-14 10:31:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127176
;

-- 14 de dez de 2020 10:34:03 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_MsgIntSEFAZ@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-12-14 10:34:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128185
;

-- 14 de dez de 2020 10:34:56 BRT
UPDATE AD_Field SET DisplayLogic='@ErrorMsg@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-12-14 10:34:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127177
;

-- 14 de dez de 2020 10:34:56 BRT
SELECT Register_Migration_Script ('202012141038_ShowErrorMsgNF.sql') FROM DUAL
;

