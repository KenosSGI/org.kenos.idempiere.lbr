-- 17 de ago de 2021 23:45:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133740,0,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1120727,'lbr_ServiceCode',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2021-08-17 23:45:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-17 23:45:46','YYYY-MM-DD HH24:MI:SS'),100,1100059,'Y','N','LBRA','N','N','N','Y','936f7043-292e-49cd-a87a-23ba339aedfd','Y',0,'N','N','N','N')
;

-- 17 de ago de 2021 23:45:50 BRT
ALTER TABLE LBR_ProductConfig ADD COLUMN lbr_ServiceCode VARCHAR(20) DEFAULT NULL 
;

-- 17 de ago de 2021 23:46:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131636,'Service Code','Service Code used for Nota Fiscal de Servicos Eletronica','Service Code used for Nota Fiscal de Servicos Eletronica',1120441,1133740,'Y',20,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-08-17 23:46:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-17 23:46:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1d8272e9-0a7a-401e-b255-445217af841d','Y',60,2)
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130561
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130562
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130563
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130570
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130571
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130567
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130568
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130569
;

-- 17 de ago de 2021 23:46:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-08-17 23:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131636
;

-- 17 de ago de 2021 23:46:28 BRT
SELECT Register_Migration_Script ('202108172355_ServiceCodePerOrg.sql') FROM DUAL
;

