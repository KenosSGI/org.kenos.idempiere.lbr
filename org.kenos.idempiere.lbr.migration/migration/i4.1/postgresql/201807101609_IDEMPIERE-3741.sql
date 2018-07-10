-- IDEMPIERE-3741 Guarantee Date on Inventory Import
-- 10/07/2018 15h57min23s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (213614,0,'Guarantee Date','Date when guarantee expires','Date when the normal guarantee or availability expires',572,'GuaranteeDate',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2018-07-10 15:57:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-10 15:57:22','YYYY-MM-DD HH24:MI:SS'),100,1936,'N','N','D','N','N','N','Y','54038a4a-4824-4423-b357-890779f9a33b','Y',0,'N','N')
;

-- 10/07/2018 15h57min29s BRT
ALTER TABLE I_Inventory ADD COLUMN GuaranteeDate TIMESTAMP DEFAULT NULL 
;

-- 10/07/2018 15h57min33s BRT
UPDATE AD_Column SET IsAllowLogging='N',Updated=TO_TIMESTAMP('2018-07-10 15:57:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213614
;

-- 10/07/2018 16h0min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (205653,'Guarantee Date','Date when guarantee expires','Date when the normal guarantee or availability expires',481,213614,'Y',20,215,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-07-10 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-07-10 16:00:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','eb861c47-7dac-47ca-87bd-fb772015dae4','Y',200,1,2,1,'N','N','N')
;

-- 10/07/2018 16h0min19s BRT
SELECT Register_Migration_Script ('201807101609_IDEMPIERE-3741.sql') FROM DUAL
;


