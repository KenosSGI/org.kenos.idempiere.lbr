-- 7 de dez de 2021 16:20:42 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133756,0,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',660,'LBR_OtherChargesAmt','0',13,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2021-12-07 16:20:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-12-07 16:20:41','YYYY-MM-DD HH24:MI:SS'),100,1120955,'Y','N','LBRA','N','N','N','Y','91e7d9f5-875a-455a-a0a4-135f35b61355','Y',0,'N','N','N')
;

-- 7 de dez de 2021 16:20:47 BRT
ALTER TABLE M_RMALine ADD COLUMN LBR_OtherChargesAmt NUMERIC DEFAULT '0' NOT NULL
;

-- 7 de dez de 2021 16:21:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131693,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',629,1133756,'Y',13,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-12-07 16:21:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-12-07 16:21:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c9b64466-8852-4ec4-9f4a-594c6778230e','Y',70,2)
;

-- 7 de dez de 2021 16:21:23 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-12-07 16:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131693
;

-- 7 de dez de 2021 16:21:23 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-12-07 16:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=52004
;

-- 7 de dez de 2021 16:21:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131694,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',53281,1133756,'Y',13,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-12-07 16:21:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-12-07 16:21:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c8945df6-4e4e-4639-a44c-ccba69c452ca','Y',70,2)
;

-- 7 de dez de 2021 16:21:58 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-12-07 16:21:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131694
;

-- 7 de dez de 2021 16:21:58 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-12-07 16:21:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57980
;

-- 7 de dez de 2021 16:21:58 BRT
SELECT Register_Migration_Script ('202112071513_OtherChargesRMA.sql') FROM DUAL
;