SET SQLBLANKLINES ON
SET DEFINE OFF

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE LBR_NotaFiscal DROP CONSTRAINT LBR_NotaFiscal_IsDelivered_Check';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -2443 THEN -- ORA-02443 means no such constraint exists
            RAISE;
        END IF;
END;

SELECT Register_Migration_Script ('202409061359_FixConstraint.sql') FROM DUAL
;

