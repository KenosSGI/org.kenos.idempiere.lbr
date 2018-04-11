SET SQLBLANKLINES ON
SET DEFINE OFF

-- 27/02/2018 18h45min42s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2018-02-27 18:45:42','YYYY-MM-DD HH24:MI:SS'),100,'Generate NF','Y',1120002,'Generate NF',TO_DATE('2018-02-27 18:45:42','YYYY-MM-DD HH24:MI:SS'),100,'N','0e9c3823-9fed-4b42-8a10-663bf83a2612','W',259,1120199,10)
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/02/2018 18h56min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130238,0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',326,'LBR_CFOP_ID',10,'N','N','N','N','N',0,'N',30,1000016,0,0,'Y',TO_DATE('2018-02-27 18:56:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-27 18:56:46','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','N','N','Y','0d3cde2f-1513-4402-8d79-f9019c094094','Y',0,'N','N','N')
;

-- 27/02/2018 18h57min22s BRT
UPDATE AD_Column SET FKConstraintName='LBRCFOP_MProductionLine', FKConstraintType='N',Updated=TO_DATE('2018-02-27 18:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130238
;

-- 27/02/2018 18h57min22s BRT
ALTER TABLE M_ProductionLine ADD LBR_CFOP_ID NUMBER(10) DEFAULT NULL 
;

-- 27/02/2018 18h57min23s BRT
ALTER TABLE M_ProductionLine ADD CONSTRAINT LBRCFOP_MProductionLine FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- 27/02/2018 18h58min25s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127340,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120283,1130238,'Y',0,150,0,'N','N','N','N',0,0,'Y',TO_DATE('2018-02-27 18:58:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-02-27 18:58:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1bac07fc-1e07-4b7d-95b1-e3ca9f633e61','Y',150,1,1,1,'N','N','N')
;

-- 27/02/2018 19h0min26s BRT
UPDATE AD_Field SET SeqNo=51, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2018-02-27 19:00:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127340
;

SELECT Register_Migration_Script ('201802271800_ImprovProdutionProcess.sql') FROM DUAL
;