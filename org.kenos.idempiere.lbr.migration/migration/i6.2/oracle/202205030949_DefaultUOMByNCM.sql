SET SQLBLANKLINES ON
SET DEFINE OFF

-- 3 de mai de 2022 09:44:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133773,0,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1000009,'C_UOM_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2022-05-03 09:44:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-05-03 09:44:48','YYYY-MM-DD HH24:MI:SS'),100,215,'N','N','LBRA','N','N','N','Y','7cfe51a6-7e50-4675-a3ac-77eada22c26e','Y',0,'N','N','N')
;

-- 3 de mai de 2022 09:44:52 BRT
UPDATE AD_Column SET FKConstraintName='CUOM_LBRNCM', FKConstraintType='N',Updated=TO_DATE('2022-05-03 09:44:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133773
;

-- 3 de mai de 2022 09:44:52 BRT
ALTER TABLE LBR_NCM ADD C_UOM_ID NUMBER(10) DEFAULT NULL 
;

-- 3 de mai de 2022 09:44:52 BRT
ALTER TABLE LBR_NCM ADD CONSTRAINT CUOM_LBRNCM FOREIGN KEY (C_UOM_ID) REFERENCES c_uom(c_uom_id) DEFERRABLE INITIALLY DEFERRED
;

-- 3 de mai de 2022 09:45:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131721,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1000004,1133773,'Y',10,80,'N','N','N','N',0,0,'Y',TO_DATE('2022-05-03 09:45:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-05-03 09:45:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','26eb0d65-42b3-47f4-8204-205831e8c617','Y',80,2)
;

-- 3 de mai de 2022 09:45:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-05-03 09:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131721
;

-- 3 de mai de 2022 09:45:24 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-05-03 09:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000067
;

-- 3 de mai de 2022 09:45:25 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-05-03 09:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000072
;

-- 3 de mai de 2022 09:45:25 BRT
SELECT Register_Migration_Script ('202205030949_DefaultUOMByNCM.sql') FROM DUAL
;