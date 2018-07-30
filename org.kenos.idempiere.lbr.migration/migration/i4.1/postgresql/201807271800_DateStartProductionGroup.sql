-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/07/2018 17h42min43s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130425,0.0,'Date Start','Date Start for this Order',1120582,'DateStart',29,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2018-07-27 17:42:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-27 17:42:42','YYYY-MM-DD HH24:MI:SS'),100,53280,'N','N','LBRA','N','N','N','Y','ef9364ce-fdd8-4de0-bf08-ded9995f629c','Y','N','N')
;

-- 27/07/2018 17h42min54s BRT
ALTER TABLE LBR_ProductionGroup ADD COLUMN DateStart TIMESTAMP DEFAULT NULL 
;

-- 27/07/2018 17h45min53s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127485,'Date Start','Date Start for this Order',1120281,1130425,'Y',0,165,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-07-27 17:45:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-27 17:45:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ad54f9d5-cc93-4872-b468-1181f3fb4a88','Y',165,1,1,1,'N','N','N')
;

-- 27/07/2018 17h46min23s BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-07-27 17:46:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127485
;

SELECT Register_Migration_Script ('201807271800_DateStartProductionGroup.sql') FROM DUAL
;