-- 19 de fev de 2020 12:17:29 BRT
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @LBR_IndIEDest@!''2'' & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-02-19 12:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 22 de nov de 2019 10:40:48 BRT
SELECT Register_Migration_Script ('202002191200_IEBPartnerFix.sql') FROM DUAL
;