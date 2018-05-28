SET SQLBLANKLINES ON
SET DEFINE OFF

-- Nova cláusula para janela Documentos Não Lançados
-- 25/05/2018 12h29min58s BRT
UPDATE AD_Tab SET WhereClause='DocStatus <> ''DR''',Updated=TO_DATE('2018-05-25 12:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=662
;

SELECT Register_Migration_Script ('201805251408_UnPostedNewClause.sql') FROM DUAL
;
