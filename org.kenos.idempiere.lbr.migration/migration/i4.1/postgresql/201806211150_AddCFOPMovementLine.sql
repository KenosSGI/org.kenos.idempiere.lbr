-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/06/2018 11h19min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130358,0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',324,'LBR_CFOP_ID',10,'N','N','N','N','N',0,'N',30,1000016,0,0,'Y',TO_TIMESTAMP('2018-06-21 11:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-21 11:19:29','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','N','N','Y','b0b4c29b-46a4-491c-a149-8a6ecb5a3f00','Y',0,'N','N','N')
;

-- 21/06/2018 11h19min48s BRT
UPDATE AD_Column SET FKConstraintName='LBRCFOP_MMovementLine', FKConstraintType='N',Updated=TO_TIMESTAMP('2018-06-21 11:19:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130358
;

-- 21/06/2018 11h19min48s BRT
ALTER TABLE M_MovementLine ADD COLUMN LBR_CFOP_ID NUMERIC(10) DEFAULT NULL 
;

-- 21/06/2018 11h19min49s BRT
ALTER TABLE M_MovementLine ADD CONSTRAINT LBRCFOP_MMovementLine FOREIGN KEY (LBR_CFOP_ID) REFERENCES lbr_cfop(lbr_cfop_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21/06/2018 11h20min47s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127481,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',260,1130358,'Y',10,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-06-21 11:20:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-21 11:20:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9e94d9dc-cf3b-473f-bd58-6d60324fa617','Y',170,2)
;

-- 21/06/2018 10h18min37s BRT
SELECT Register_Migration_Script ('201806211150_AddCFOPMovementLine.sql') FROM DUAL
;