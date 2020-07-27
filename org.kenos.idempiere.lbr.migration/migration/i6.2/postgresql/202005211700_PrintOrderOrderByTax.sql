-- 22 de mai de 2020 16:13:45 BRT
UPDATE AD_PrintFormatItem SET SortNo=20,IsOrderBy='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_PrintFormatItem_ID=1896
;

SELECT Register_Migration_Script ('202005211700_PrintOrderOrderByTax.sql') FROM DUAL
;
