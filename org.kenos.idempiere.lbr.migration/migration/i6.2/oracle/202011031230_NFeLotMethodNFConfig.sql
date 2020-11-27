SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 3 de nov de 2020 11:50:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132766,0,'Lot Method','Method of transmission of NFe Lot',1120547,'LBR_NFeLotMethod','0',1,'N','N','N','N','N',0,'N',17,1120209,0,0,'Y',TO_DATE('2020-11-03 11:50:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-11-03 11:50:02','YYYY-MM-DD HH24:MI:SS'),100,1121724,'Y','N','@DocStatus@!DR','LBRA','N','N','N','Y','84f4b8d2-8c40-4e83-8365-5f158f2ff81a','Y',0,'N','N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 3 de nov de 2020 12:37:24 BRT
UPDATE AD_Column SET DefaultValue=NULL, ReadOnlyLogic=NULL,Updated=TO_DATE('2020-11-03 12:37:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132766
;


-- 3 de nov de 2020 11:50:13 BRT
ALTER TABLE LBR_NFConfig ADD LBR_NFeLotMethod CHAR(1) DEFAULT NULL
;

-- 3 de nov de 2020 11:51:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130094,'Lot Method','Method of transmission of NFe Lot',1120216,1132766,'Y',1,75,'N','N','N','N',0,0,'Y',TO_DATE('2020-11-03 11:51:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-11-03 11:51:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','395ad3a8-14d0-49a8-a02d-1af37a83f9f5','Y',30,1,2,1,'N','N','N')
;

SELECT Register_Migration_Script ('202011031230_NFeLotMethodNFConfig.sql') FROM DUAL
;