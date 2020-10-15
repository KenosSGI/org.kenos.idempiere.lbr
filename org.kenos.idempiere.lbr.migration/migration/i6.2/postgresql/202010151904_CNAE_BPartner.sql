-- 15 de out de 2020 18:59:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132673,0,'CNAE','Classificação Nacional de Atividades Econômicas',291,'lbr_CNAE',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-10-15 18:59:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 18:59:26','YYYY-MM-DD HH24:MI:SS'),100,1100020,'Y','N',NULL,'LBRA','N','N','N','Y','5873accb-2094-4d11-9db3-a3d82415bc0b','Y',0,'N','N','N','N')
;

-- 15 de out de 2020 18:59:29 BRT
ALTER TABLE C_BPartner ADD COLUMN lbr_CNAE VARCHAR(10) DEFAULT NULL 
;

-- 15 de out de 2020 18:59:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130016,'CNAE','Classificação Nacional de Atividades Econômicas',220,1132673,'Y',10,20450,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-10-15 18:59:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-10-15 18:59:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a950c6f3-32c6-48dd-9880-9cd64a3a97f9','Y',282,2)
;

-- 15 de out de 2020 19:00:33 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-10-15 19:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130016
;

-- 15 de out de 2020 19:00:33 BRT
SELECT Register_Migration_Script ('202010151904_CNAE_BPartner.sql') FROM DUAL
;

