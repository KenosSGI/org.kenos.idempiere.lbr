-- 17 de abr de 2020 18:12:45 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''N'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocType_ID AND C_DocType.LBR_IsSalesPurchaseOperation = ''N'')',Updated=TO_TIMESTAMP('2020-04-17 18:12:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120371
;

-- 17 de abr de 2020 18:13:11 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''Y'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocType_ID AND C_DocType.LBR_IsSalesPurchaseOperation = ''N'')',Updated=TO_TIMESTAMP('2020-04-17 18:13:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120365
;

-- 17 de abr de 2020 18:13:37 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''N'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocType_ID AND C_DocType.LBR_IsSalesPurchaseOperation = ''Y'')',Updated=TO_TIMESTAMP('2020-04-17 18:13:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=294
;

-- 17 de abr de 2020 18:14:45 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''Y'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocType_ID AND C_DocType.LBR_IsSalesPurchaseOperation = ''Y'')',Updated=TO_TIMESTAMP('2020-04-17 18:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=186
;

SELECT Register_Migration_Script ('202007031715_FixPerformanceWhereClause.sql') FROM DUAL
;