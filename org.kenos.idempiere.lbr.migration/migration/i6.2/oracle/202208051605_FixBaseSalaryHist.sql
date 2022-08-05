SET SQLBLANKLINES ON
SET DEFINE OFF

-- 5 de ago de 2022 16:03:35 BRT
ALTER TABLE LBR_EmployeeHistory MODIFY LBR_BaseSalary NUMBER
;

SELECT Register_Migration_Script ('202208051605_FixBaseSalaryHist.sql') FROM DUAL
;
