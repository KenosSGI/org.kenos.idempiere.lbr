DROP INDEX lbr_nsucontrol_unq
;

ALTER TABLE lbr_nsucontrol ADD CONSTRAINT lbr_nsucontrol_unq UNIQUE (lbr_nsu,lbr_partnerdfe_id)
;

SELECT Register_Migration_Script ('202303201207_CreateConstraint.sql') FROM DUAL
;

