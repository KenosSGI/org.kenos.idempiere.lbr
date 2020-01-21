SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de jan de 2020 12:25:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131556,0,'Version No','Version Number',1120547,'VersionNo',10,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-01-20 12:25:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:25:23','YYYY-MM-DD HH24:MI:SS'),100,1949,'N','N','LBRA','N','N','N','Y','6cb0a8ff-ac22-4503-96ab-60c4fd271171','Y',0,'N','N','N')
;

-- 20 de jan de 2020 12:25:41 BRT
UPDATE AD_Column SET DefaultValue='4.00', IsMandatory='Y',Updated=TO_DATE('2020-01-20 12:25:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131556
;

-- 20 de jan de 2020 12:25:42 BRT
ALTER TABLE LBR_NFConfig ADD VersionNo VARCHAR2(10) DEFAULT '4.00' NOT NULL
;

-- 20 de jan de 2020 12:25:50 BRT
UPDATE AD_Column SET DefaultValue=NULL, IsMandatory='N',Updated=TO_DATE('2020-01-20 12:25:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131556
;

-- 20 de jan de 2020 12:25:51 BRT
ALTER TABLE LBR_NFConfig MODIFY VersionNo VARCHAR2(10) DEFAULT NULL 
;

-- 20 de jan de 2020 12:25:51 BRT
ALTER TABLE LBR_NFConfig MODIFY VersionNo NULL
;

-- 20 de jan de 2020 12:27:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131557,0,'Classname','Java Classname','The Classname identifies the Java classname used by this report or process.',1120547,'Classname',120,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2020-01-20 12:27:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:27:39','YYYY-MM-DD HH24:MI:SS'),100,1299,'Y','N','LBRA','N','N','N','Y','6b85fbf7-1ec1-4c06-b1f4-43d19445ee65','Y',0,'N','N','N')
;

-- 20 de jan de 2020 12:27:40 BRT
ALTER TABLE LBR_NFConfig ADD Classname VARCHAR2(120) DEFAULT NULL 
;

-- 20 de jan de 2020 12:29:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1122894,0,0,'Y',TO_DATE('2020-01-20 12:29:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:29:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ISSQNAgreement','ISSQN Agreement','Indicates if the city has ISSQN agreement to issue NF-e combined','ISSQN Agreement','LBRA','7753d23a-ad31-453a-9f05-e083231a01c3')
;

-- 20 de jan de 2020 12:29:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1131558,0,'ISSQN Agreement','Indicates if the city has ISSQN agreement to issue NF-e combined',1120547,'LBR_ISSQNAgreement','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2020-01-20 12:29:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:29:55','YYYY-MM-DD HH24:MI:SS'),100,1122894,'Y','N','U','N','N','N','Y','84f1f3b0-7510-41e8-9b17-7d03d3916aa8','Y',0,'N','N','N','N')
;

-- 20 de jan de 2020 12:29:58 BRT
ALTER TABLE LBR_NFConfig ADD LBR_ISSQNAgreement CHAR(1) DEFAULT 'N' CHECK (LBR_ISSQNAgreement IN ('Y','N')) NOT NULL
;

-- 20 de jan de 2020 12:30:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1128230,'Version No','Version Number',1120216,1131556,'Y',10,160,'N','N','N','N',0,0,'Y',TO_DATE('2020-01-20 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5f2be9af-a628-4c74-8c0e-cea74b37d6a5','Y',131,2)
;

-- 20 de jan de 2020 12:30:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1128231,'Classname','Java Classname','The Classname identifies the Java classname used by this report or process.',1120216,1131557,'Y',120,170,'N','N','N','N',0,0,'Y',TO_DATE('2020-01-20 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:30:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e8873384-1198-43ca-ab9a-166cbd82656c','Y',141,5)
;

-- 20 de jan de 2020 12:30:41 BRT
ALTER TABLE LBR_NFConfig MODIFY LBR_ISSQNAgreement CHAR(1) DEFAULT 'N'
;

-- 20 de jan de 2020 12:30:41 BRT
UPDATE LBR_NFConfig SET LBR_ISSQNAgreement='N' WHERE LBR_ISSQNAgreement IS NULL
;

-- 20 de jan de 2020 12:30:57 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2020-01-20 12:30:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131558
;

-- 20 de jan de 2020 12:31:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1128232,'ISSQN Agreement','Indicates if the city has ISSQN agreement to issue NF-e combined',1120216,1131558,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2020-01-20 12:31:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-01-20 12:31:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','368dc4c1-6e74-4c0d-89d2-6c49aee682bd','Y',151,2,2)
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128230
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=6, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128232
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125813
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125809
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125815
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125816
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128231
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125817
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125810
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128192
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128172
;

-- 20 de jan de 2020 12:32:25 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128171
;

-- 20 de jan de 2020 12:32:57 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=55', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128232
;

-- 20 de jan de 2020 12:33:19 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=S1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2020-01-20 12:33:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128231
;

-- 20 de jan de 2020 12:33:19 BRT
SELECT Register_Migration_Script ('202001201346_NFConfigISSQN.sql') FROM DUAL
;

