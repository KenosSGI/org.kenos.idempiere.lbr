-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 02/08/2019 15h48min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1131524,0,'Packing Type','Defines the Packing Type','Defines the Packing Type',319,'lbr_PackingType',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2019-08-02 15:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-08-02 15:48:11','YYYY-MM-DD HH24:MI:SS'),100,1000287,'Y','N',NULL,'LBRA','N','N','N','Y','4b1326ae-d081-4428-95a8-cc81ee59b56e','Y',0,'N','N')
;

-- 02/08/2019 15h49min27s BRT
ALTER TABLE M_InOut ADD COLUMN lbr_PackingType VARCHAR(60) DEFAULT NULL 
;

-- 02/08/2019 15h52min7s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128202,'Packing Type','Defines the Packing Type','Defines the Packing Type',257,1131524,'Y','@DeliveryViaRule@=S',22,257,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-08-02 15:52:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-08-02 15:52:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6d5ff0c7-e782-468d-af74-63615d341c87','Y',255,4,2,1,'N','N','N')
;

SELECT Register_Migration_Script ('201908021730_AddPakingTypeInOut.sql') FROM DUAL
;