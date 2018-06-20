-- Desmarcar a flag Copiar Registro do campo Instância de Atributo Alvo
-- 28/05/2018 14h15min20s BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2018-05-28 14:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=14006
;

SELECT Register_Migration_Script ('201805281417_SetInstanceToCopying.sql') FROM DUAL
;