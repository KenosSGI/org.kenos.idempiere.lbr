SET SQLBLANKLINES ON
SET DEFINE OFF

-- Alteração na Definição de Busca da Nota Fiscal
-- 13/09/2018 14h6min47s BRT
UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_DATE('2018-09-13 14:06:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000473
;

-- 13/09/2018 14h7min25s BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_DATE('2018-09-13 14:07:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000491
;

-- 13/09/2018 14h7min40s BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_DATE('2018-09-13 14:07:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000565
;

-- 13/09/2018 14h7min59s BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=3,Updated=TO_DATE('2018-09-13 14:07:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000500
;

SELECT Register_Migration_Script ('201809131455_DefinitionSearchNF.sql') FROM DUAL
;
