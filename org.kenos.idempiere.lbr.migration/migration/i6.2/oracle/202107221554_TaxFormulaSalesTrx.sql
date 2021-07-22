SET SQLBLANKLINES ON
SET DEFINE OFF

-- 22 de jul de 2021 15:50:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133735,0,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1000026,'IsSOTrx',1,'N','N','N','N','N',0,'N',17,319,0,0,'Y',TO_DATE('2021-07-22 15:50:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-07-22 15:50:01','YYYY-MM-DD HH24:MI:SS'),100,1106,'Y','N','LBRA','N','N','N','Y','97e9ad8c-ffea-417d-82b6-fc3e864d93e9','Y',0,'N','N','N')
;

-- 22 de jul de 2021 15:50:10 BRT
ALTER TABLE LBR_TaxFormula ADD IsSOTrx CHAR(1) DEFAULT NULL 
;

-- 22 de jul de 2021 15:50:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131616,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1000019,1133735,'Y',1,130,'N','N','N','N',0,0,'Y',TO_DATE('2021-07-22 15:50:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-07-22 15:50:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9e20d114-7b3f-4a9a-8079-68f6291ecc70','Y',130,2)
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131616
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000273
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120260
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120258
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120259
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120262
;

-- 22 de jul de 2021 15:50:43 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120263
;

-- 22 de jul de 2021 15:50:44 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106006
;

-- 22 de jul de 2021 15:50:44 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126951
;

-- 22 de jul de 2021 15:50:44 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-07-22 15:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000271
;

-- 22 de jul de 2021 15:50:44 BRT
SELECT Register_Migration_Script ('202107221554_TaxFormulaSalesTrx.sql') FROM DUAL
;