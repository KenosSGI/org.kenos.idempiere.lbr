-- 5 de ago de 2022 16:03:35 BRT
INSERT INTO t_alter_column values('lbr_employeehistory','LBR_BaseSalary','NUMERIC',null,null)
;

SELECT Register_Migration_Script ('202208051605_FixBaseSalaryHist.sql') FROM DUAL
;