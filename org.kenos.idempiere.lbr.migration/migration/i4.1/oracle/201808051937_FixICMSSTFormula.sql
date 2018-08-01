SET SQLBLANKLINES ON
SET DEFINE OFF

-- Correção na fórmula LBR14 para não ajustar o MVA caso o ICMS seja zero
-- 18/07/2018 19h35min47s BRT
UPDATE LBR_Formula SET lbr_Formula='(1+IPI)*((1+MVA)*((1-ICMSPROD*FIXMVA)/(1-ICMSST*FIXMVA)))',Updated=TO_DATE('2018-07-18 19:35:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1000015
;

-- 18/07/2018 19h35min47s BRT
SELECT Register_Migration_Script ('201808051937_FixICMSSTFormula.sql') FROM DUAL
;