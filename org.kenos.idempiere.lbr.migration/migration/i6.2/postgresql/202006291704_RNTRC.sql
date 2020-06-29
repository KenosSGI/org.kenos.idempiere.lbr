-- 29 de jun de 2020 17:00:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131949,0,'RNTRC','Registro Nacional dos Transportadores Rodoviários de Carga',1000027,'LBR_RNTRC',8,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-06-29 17:00:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-29 17:00:33','YYYY-MM-DD HH24:MI:SS'),100,1121473,'Y','N','LBRA','N','N','N','Y','2db5ab05-8da6-4caf-9381-0182f928680a','Y',0,'N','N','N')
;

-- 29 de jun de 2020 17:00:36 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_RNTRC VARCHAR(8) DEFAULT NULL 
;

-- 29 de jun de 2020 17:01:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129391,'RNTRC','Registro Nacional dos Transportadores Rodoviários de Carga',1000020,1131949,'Y',8,1165,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-06-29 17:00:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-29 17:00:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d1dc496f-4f47-4b4c-85c3-5f5fcb1e6f69','Y',1075,2)
;

-- 29 de jun de 2020 17:02:36 BRT
UPDATE AD_Field SET SeqNo=711, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-29 17:02:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129391
;

SELECT Register_Migration_Script ('202006291704_RNTRC.sql') FROM DUAL
;
