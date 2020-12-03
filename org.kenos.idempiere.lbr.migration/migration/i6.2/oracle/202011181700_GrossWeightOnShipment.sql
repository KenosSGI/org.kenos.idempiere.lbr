SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 18 de nov de 2020 14:37:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1132769,0,'Gross Weight','Defines the Gross Weight','Defines the Gross Weight',319,'lbr_GrossWeight',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2020-11-18 14:37:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-11-18 14:37:16','YYYY-MM-DD HH24:MI:SS'),100,1000221,'Y','N',NULL,'LBRA','N','N','N','Y','19d15639-4d0b-4c11-8c5a-b1176cb9696c','Y','N','N','N')
;

-- 18 de nov de 2020 14:37:29 BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2020-11-18 14:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132769
;

-- 18 de nov de 2020 14:37:34 BRT
ALTER TABLE M_InOut ADD lbr_GrossWeight NUMBER DEFAULT 0
;

-- 18 de nov de 2020 14:39:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1130097,'Gross Weight','Defines the Gross Weight','Defines the Gross Weight',257,1132769,'Y','@DeliveryViaRule@=S',22,258,'N','N','N','N',0,0,'Y',TO_DATE('2020-11-18 14:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-11-18 14:39:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','765e771e-7d03-48e5-9cd1-b7ad95d32a99','Y',120,1,2,1,'N','N','N')
;

SELECT Register_Migration_Script ('202011181700_GrossWeightOnShipment.sql') FROM DUAL
;