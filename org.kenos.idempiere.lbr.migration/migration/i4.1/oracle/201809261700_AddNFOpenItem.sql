SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/09/2018 15h32min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,ColumnSQL,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130472,0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',413,'LBR_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-09-26 15:32:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-26 15:32:16','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','@IsManual@!Y','LBRA','N','N','(SELECT MAX(LBR_NotaFiscal.LBR_NotaFiscal_ID) FROM LBR_NotaFiscal WHERE LBR_NotaFiscal.C_Invoice_ID = RV_OpenItem.C_Invoice_ID)','N','Y','f5dfe566-828a-4fb3-8839-55eee4046b48','N',0,'N','N') ON CONFLICT DO NOTHING
;
