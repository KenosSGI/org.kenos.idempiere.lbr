-- 15 de dez de 2020 17:22:56 BRT
UPDATE LBR_CFOP SET LBR_IsShowIBPT='Y' 
WHERE EXISTS (SELECT 1 FROM LBR_CFOP c2 WHERE LBR_CFOP.Value=c2.Value AND c2.LBR_IsShowIBPT='Y') 
AND LBR_IsShowIBPT='N' AND Created=Updated
;

-- 15 de dez de 2020 17:22:56 BRT
SELECT Register_Migration_Script ('202012151722_FixShownTax.sql') FROM DUAL
;
