SET SQLBLANKLINES ON
SET DEFINE OFF

-- 18 de jul de 2024 18:49:21 BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.cte.process.AuthorizationServiceCheck',Updated=TO_DATE('2024-07-18 18:49:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120334
;

-- 18 de jul de 2024 18:49:21 BRT
SELECT Register_Migration_Script ('202407181851_FixCTe.sql') FROM DUAL
;