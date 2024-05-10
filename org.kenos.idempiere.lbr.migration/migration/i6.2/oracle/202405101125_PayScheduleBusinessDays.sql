SET SQLBLANKLINES ON
SET DEFINE OFF

-- 10 de mai de 2024 10:22:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123409,0,0,'Y',TO_DATE('2024-05-10 10:19:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:19:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PaymentDaysType','Payment Days Type','Indicates if count will be in calendar days or business days',NULL,'Payment Days Type','LBRA','df1ea8bc-6e43-425f-abd0-a09d170ec33e')
;

-- 10 de mai de 2024 10:24:31 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120407,'LBR_PaymentDaysType','L',0,0,'Y',TO_DATE('2024-05-10 10:24:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:24:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','df099259-4abb-4547-a42a-428e15d3f2ed')
;

-- 10 de mai de 2024 10:24:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123029,'Business Days',1120407,'B',0,0,'Y',TO_DATE('2024-05-10 10:24:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:24:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','45492df8-1272-4d57-9aa3-6b05f26d8df0')
;

-- 10 de mai de 2024 10:24:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123030,'Calendar Days',1120407,'C',0,0,'Y',TO_DATE('2024-05-10 10:24:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:24:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2ce2a316-30bd-4158-bb4c-8311306fc5bc')
;

-- 10 de mai de 2024 10:25:09 BRT
UPDATE AD_Ref_List SET Value='BUt',Updated=TO_DATE('2024-05-10 10:25:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123029
;

-- 10 de mai de 2024 10:25:23 BRT
UPDATE AD_Ref_List SET Value='B',Updated=TO_DATE('2024-05-10 10:25:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123029
;

-- 10 de mai de 2024 10:25:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133922,0,'Payment Days Type','Indicates if count will be in calendar days or business days',113,'LBR_PaymentDaysType',1,'N','N','N','N','N',0,'N',17,1120407,0,0,'Y',TO_DATE('2024-05-10 10:25:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:25:37','YYYY-MM-DD HH24:MI:SS'),100,1123409,'Y','N','U','N','N','N','Y','41359180-f6af-484f-bf68-5558917d5056','Y',0,'N','N','N','N')
;

-- 10 de mai de 2024 10:25:44 BRT
ALTER TABLE C_PaymentTerm ADD LBR_PaymentDaysType CHAR(1) DEFAULT NULL 
;

-- 10 de mai de 2024 10:26:09 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2024-05-10 10:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133922
;

-- 10 de mai de 2024 10:26:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131900,'Payment Days Type','Indicates if count will be in calendar days or business days',184,1133922,'Y',1,300,'N','N','N','N',0,0,'Y',TO_DATE('2024-05-10 10:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-05-10 10:26:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9c95c65c-75fb-41ba-9ea3-e08c7784bced','Y',290,2)
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131900
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2106
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2105
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2107
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1069
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7365
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1071
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1070
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2104
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2103
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4401
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3080
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=60924
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8662
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6553
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131757
;

-- 10 de mai de 2024 10:26:32 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131756
;

-- 10 de mai de 2024 10:26:33 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000734
;

-- 10 de mai de 2024 10:26:33 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000735
;

-- 10 de mai de 2024 10:26:33 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-05-10 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000736
;

-- 10 de mai de 2024 10:26:33 BRT
SELECT Register_Migration_Script ('202405101125_PayScheduleBusinessDays.sql') FROM DUAL
;

