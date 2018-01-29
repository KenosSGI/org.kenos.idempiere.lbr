SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/01/2018 11h38min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130202,0,'Inventory Move','Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.',1000027,'M_Movement_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-01-19 11:38:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-19 11:38:11','YYYY-MM-DD HH24:MI:SS'),100,1030,'N','N','LBRA','N','N','N','Y','a3e344a8-81c8-495d-ae66-cb22b25fba59','Y',0,'N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/01/2018 13h58min48s BRST
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120141,'M_Movement By Org and Complete','Completed, Closed and by Organization','S','M_Movement.DocStatus IN (''CO'', ''CL'') AND M_Movement.AD_Org_ID = @AD_Org_ID@',0,0,'Y',TO_DATE('2018-01-19 13:58:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-19 13:58:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5c132017-e201-4d2a-bba1-b56aa00a016c')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/01/2018 14h25min40s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2018-01-19 14:25:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130202
;

-- 19/01/2018 14h25min48s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=1120141,Updated=TO_DATE('2018-01-19 14:25:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130202
;

-- 19/01/2018 14h26min42s BRST
UPDATE AD_Column SET IsSelectionColumn='Y', ReadOnlyLogic='@IsManual@!Y',Updated=TO_DATE('2018-01-19 14:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130202
;

-- 19/01/2018 14h27min3s BRST
UPDATE AD_Column SET FKConstraintName='MMovement_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2018-01-19 14:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130202
;

-- 19/01/2018 14h27min3s BRST
ALTER TABLE LBR_NotaFiscal ADD M_Movement_ID NUMBER(10) DEFAULT NULL 
;

-- 19/01/2018 14h27min3s BRST
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT MMovement_LBRNotaFiscal FOREIGN KEY (M_Movement_ID) REFERENCES m_movement(m_movement_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19/01/2018 14h28min27s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127294,'Inventory Move','Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.',1000020,1130202,'Y','@M_Movement_ID@>0',22,116,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-19 14:28:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-19 14:28:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eaaa043b-5bdf-4dc5-ba8f-63c932b3051b','Y',116,1,2,1,'N','N','N')
;

-- 19/01/2018 14h29min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127295,'Inventory Move','Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.',1000028,1130202,'Y','@M_Movement_ID@>0',22,116,'N','N','N','N',0,0,'Y',TO_DATE('2018-01-19 14:29:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-19 14:29:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d2415a75-4289-4ad2-97f2-e6c4614eb32b','Y',116,1,2,1,'N','N','N')
;

SELECT Register_Migration_Script ('201801291500_ImproveNFByMovAndPG.sql') FROM DUAL
;