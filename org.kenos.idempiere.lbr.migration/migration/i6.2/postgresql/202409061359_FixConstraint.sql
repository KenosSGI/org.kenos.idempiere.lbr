ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT IF EXISTS LBR_NotaFiscal_IsDelivered_Check
;

SELECT Register_Migration_Script ('202409061359_FixConstraint.sql') FROM DUAL
;

