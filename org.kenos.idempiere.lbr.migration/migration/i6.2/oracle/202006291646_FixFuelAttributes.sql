SET SQLBLANKLINES ON
SET DEFINE OFF

-- 29 de jun de 2020 15:06:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1131948,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120598,1000003,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_DATE('2020-06-29 15:06:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-29 15:06:09','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','N','N','Y','0683e20c-6edd-4b3e-8b10-a5f206c81511','Y',0,'N','N','N','N')
;

-- 29 de jun de 2020 15:06:19 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRNFLineMA', FKConstraintType='N',Updated=TO_DATE('2020-06-29 15:06:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131948
;

-- 29 de jun de 2020 15:06:19 BRT
ALTER TABLE LBR_NFLineMA ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- 29 de jun de 2020 15:06:19 BRT
ALTER TABLE LBR_NFLineMA ADD CONSTRAINT CRegion_LBRNFLineMA FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

UPDATE LBR_NFLineMA SET C_Region_ID=LBR_UFCons::int4 WHERE LBR_UFCons IS NOT NULL
;
ALTER TABLE LBR_NFLineMA DROP COLUMN LBR_UFCons
;

-- 29 de jun de 2020 15:06:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129390,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120287,1131948,'Y',10,440,'N','N','N','N',0,0,'Y',TO_DATE('2020-06-29 15:06:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-06-29 15:06:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e450858c-02d0-4908-925e-a180a4cc202f','Y',440,2)
;

-- 29 de jun de 2020 15:08:05 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''', SeqNo=147, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=147, IsToolbarButton=NULL,Updated=TO_DATE('2020-06-29 15:08:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129390
;

-- 29 de jun de 2020 15:08:27 BRT
UPDATE AD_Field SET SeqNo=148, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=148, XPosition=3, IsToolbarButton=NULL,Updated=TO_DATE('2020-06-29 15:08:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128229
;

-- 29 de jun de 2020 15:08:42 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2020-06-29 15:08:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128229
;

-- 29 de jun de 2020 15:08:46 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsDisplayedGrid='N', IsToolbarButton=NULL,Updated=TO_DATE('2020-06-29 15:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129390
;

-- 29 de jun de 2020 15:09:27 BRT
UPDATE AD_Column SET FieldLength=2, AD_Reference_ID=10,Updated=TO_DATE('2020-06-29 15:09:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131555
;

-- 29 de jun de 2020 15:10:48 BRT
ALTER TABLE LBR_NFLineMA ADD LBR_UFCons VARCHAR2(2) DEFAULT NULL 
;

SELECT Register_Migration_Script ('202006291646_FixFuelAttributes.sql') FROM DUAL
;
