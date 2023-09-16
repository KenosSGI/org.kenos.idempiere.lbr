-- 16 de set de 2023 06:40:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123401,0,0,'Y',TO_TIMESTAMP('2023-09-16 06:39:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:39:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DFeAutoRetrieve','DF-e Auto Retrieve',NULL,NULL,'DF-e Auto Retrieve','LBRA','f4f57145-87c4-45bb-9a96-b7f556e12437')
;

-- 16 de set de 2023 06:40:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133846,0,'DF-e Auto Retrieve',1120547,'LBR_DFeAutoRetrieve','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2023-09-16 06:40:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:40:30','YYYY-MM-DD HH24:MI:SS'),100,1123401,'Y','N','LBRA','N','N','N','Y','6623593e-2583-4859-8bab-88d1f534a84c','Y',0,'N','N','N','N')
;

-- 16 de set de 2023 06:40:34 BRT
ALTER TABLE LBR_NFConfig ADD COLUMN LBR_DFeAutoRetrieve CHAR(1) DEFAULT 'N' CHECK (LBR_DFeAutoRetrieve IN ('Y','N')) NOT NULL
;

-- 16 de set de 2023 06:42:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133847,0,'Event Type',1120547,'LBR_EventType',6,'N','N','N','N','N',0,'N',17,1120226,0,0,'Y',TO_TIMESTAMP('2023-09-16 06:42:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:42:31','YYYY-MM-DD HH24:MI:SS'),100,1121791,'Y','N','LBRA','N','N','N','Y','73b2fc21-9e74-43be-8a97-bfee75b5c05f','Y',0,'N','N','N')
;

-- 16 de set de 2023 06:42:35 BRT
ALTER TABLE LBR_NFConfig ADD COLUMN LBR_EventType VARCHAR(6) DEFAULT NULL 
;

-- 16 de set de 2023 06:43:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131765,'DF-e Auto Retrieve',1120216,1133846,'Y',1,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2023-09-16 06:43:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:43:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f3cf2940-88ca-4b02-8682-43ba26888047','Y',241,2,2)
;

-- 16 de set de 2023 06:43:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131766,'Event Type',1120216,1133847,'Y',6,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2023-09-16 06:43:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:43:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9e27b040-83cb-4bac-a897-b21920936300','Y',251,2)
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131765
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131766
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131699
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131700
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131701
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131703
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131702
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128192
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128172
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128171
;

-- 16 de set de 2023 06:45:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 16 de set de 2023 06:45:44 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120055, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 16 de set de 2023 06:46:45 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120097,0,0,'Y',TO_TIMESTAMP('2023-09-16 06:46:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:46:44','YYYY-MM-DD HH24:MI:SS'),100,'IBPT','LBRA','C','Y','f9880179-06c3-470d-ba29-365941061192')
;

-- 16 de set de 2023 06:46:49 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120097, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:46:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 16 de set de 2023 06:47:52 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120098,0,0,'Y',TO_TIMESTAMP('2023-09-16 06:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2023-09-16 06:47:52','YYYY-MM-DD HH24:MI:SS'),100,'Retrieve DF-e','LBRA','C','N','98885846-03a0-4780-8245-2ba7de7b22e8')
;

-- 16 de set de 2023 06:48:17 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120098, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131765
;

-- 16 de set de 2023 06:49:36 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''65''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:49:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131765
;

-- 16 de set de 2023 06:49:55 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_DFeAutoRetrieve@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2023-09-16 06:49:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131766
;

-- 16 de set de 2023 06:49:55 BRT
SELECT Register_Migration_Script ('202309160754_NFConfigDFe.sql') FROM DUAL
;

