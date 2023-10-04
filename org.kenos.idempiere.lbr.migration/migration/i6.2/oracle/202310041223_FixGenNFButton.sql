SET SQLBLANKLINES ON
SET DEFINE OFF

-- 4 de out de 2023 12:22:04 BRT
UPDATE AD_ToolBarButton SET DisplayLogic='@DocStatus@=CO',Updated=TO_DATE('2023-10-04 12:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID IN (1120010,1120011)
;

-- 4 de out de 2023 12:22:04 BRT
SELECT Register_Migration_Script ('202310041223_FixGenNFButton.sql') FROM DUAL
;

