SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de abr de 2021 22:09:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133727,0,'Account Digit',1000003,'LBR_BankAccountVD','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-04-19 22:09:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-19 22:09:07','YYYY-MM-DD HH24:MI:SS'),100,1123120,'Y','N','LBRA','N','N','N','Y','0f536557-6997-48b5-80ee-43a680030abe','Y',0,'N','N','N','N')
;

-- 19 de abr de 2021 22:09:13 BRT
ALTER TABLE LBR_Bank ADD LBR_BankAccountVD CHAR(1) DEFAULT 'Y' CHECK (LBR_BankAccountVD IN ('Y','N')) NOT NULL
;

-- 19 de abr de 2021 22:09:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133728,0,'Agency Digit',1000003,'LBR_BankAgencyVD','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-04-19 22:09:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-19 22:09:38','YYYY-MM-DD HH24:MI:SS'),100,1123121,'Y','N','LBRA','N','N','N','Y','c915e9e1-e031-47b9-a748-b1dd91e260ad','Y',0,'N','N','N','N')
;

-- 19 de abr de 2021 22:09:40 BRT
ALTER TABLE LBR_Bank ADD LBR_BankAgencyVD CHAR(1) DEFAULT 'Y' CHECK (LBR_BankAgencyVD IN ('Y','N')) NOT NULL
;

-- 19 de abr de 2021 22:10:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131546,'Account Digit',1000000,1133727,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2021-04-19 22:10:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-19 22:10:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6c95a9e7-84af-464a-843d-78ae448fab6c','Y',50,2,2)
;

-- 19 de abr de 2021 22:10:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131547,'Agency Digit',1000000,1133728,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2021-04-19 22:10:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-19 22:10:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','03b2869d-ec34-4a0a-b1d2-29850cb6811e','Y',60,2,2)
;

-- 19 de abr de 2021 22:11:00 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-04-19 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131547
;

-- 19 de abr de 2021 22:11:00 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-04-19 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131546
;

-- 19 de abr de 2021 22:11:00 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-04-19 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000075
;

-- 19 de abr de 2021 22:11:00 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-04-19 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000076
;

-- 19 de abr de 2021 22:11:00 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-04-19 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129628
;

-- 19 de abr de 2021 22:11:00 BRT
SELECT Register_Migration_Script ('202104192240_OptionalVDBankAcct.sql') FROM DUAL
;

