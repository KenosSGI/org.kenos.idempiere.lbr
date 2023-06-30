UPDATE AD_Column SET AD_Column_UU='c68a6950-9c33-4b62-b0fd-552b3f2ea965' WHERE AD_Column_ID=1133769 AND ColumnName='LBR_IndIEDest'
;
UPDATE AD_Column SET AD_Column_UU='ebfcfe4b-a982-46ff-a3a3-5956a58f5e1c' WHERE AD_Column_ID=1131527 AND ColumnName='LBR_NSU'
;
SELECT Register_Migration_Script ('202306301201_FillMissingUUID.sql') FROM DUAL
;
