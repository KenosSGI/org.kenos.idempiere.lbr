-- Atualização no nome das Cidades
-- 21/09/2018 17h59min7s BRT
UPDATE C_City SET Name='Mogi das Cruzes',Updated=TO_TIMESTAMP('2018-09-21 17:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_City_ID=1005069
;

-- 21/09/2018 17h59min13s BRT
UPDATE C_City SET Name='Mogi-Mirim',Updated=TO_TIMESTAMP('2018-09-21 17:59:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_City_ID=1005070
;

SELECT Register_Migration_Script ('201809211800_ChangeCityName.sql') FROM DUAL
;
