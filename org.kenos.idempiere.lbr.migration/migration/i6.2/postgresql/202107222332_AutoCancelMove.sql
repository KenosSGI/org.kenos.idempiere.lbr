-- 22 de jul de 2021 17:33:10 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1123387,0,0,'Y',TO_TIMESTAMP('2021-07-22 17:33:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-22 17:33:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReverseMovement','Reverse Movement','Allow to Reverse Movement related with the NF','Reverse Movement','LBRA','ff6f7db4-bb59-4107-8dc0-04cf688d20e0')
;

-- 22 de jul de 2021 17:34:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133736,0,'Reverse Movement','Allow to Reverse Movement related with the NF',1120547,'LBR_ReverseMovement','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-07-22 17:34:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-22 17:34:24','YYYY-MM-DD HH24:MI:SS'),100,1123387,'Y','N','LBRA','N','N','N','Y','432f9891-7cba-48b2-960b-091194418ec5','Y',0,'N','N','N','N')
;

-- 22 de jul de 2021 17:34:30 BRT
ALTER TABLE LBR_NFConfig ADD COLUMN LBR_ReverseMovement CHAR(1) DEFAULT 'Y' CHECK (LBR_ReverseMovement IN ('Y','N')) NOT NULL
;

-- 22 de jul de 2021 17:35:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133737,0,'Reverse Movement','Allow to Reverse Movement related with the NF',1000027,'LBR_ReverseMovement','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2021-07-22 17:35:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-22 17:35:03','YYYY-MM-DD HH24:MI:SS'),100,1123387,'Y','N','LBRA','N','N','N','Y','a0612a5c-7469-4373-badb-98c6594e572d','Y',0,'N','N','N','N')
;

-- 22 de jul de 2021 17:35:07 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_ReverseMovement CHAR(1) DEFAULT 'Y' CHECK (LBR_ReverseMovement IN ('Y','N')) NOT NULL
;

-- 22 de jul de 2021 17:35:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131633,'Reverse Movement','Allow to Reverse Movement related with the NF',1000020,1133737,'Y',1,1510,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-07-22 17:35:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-22 17:35:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0847a6a7-c9e8-41c1-9b48-d538ed52a4ea','Y',1295,2,2)
;

-- 22 de jul de 2021 17:36:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131634,'Reverse Movement','Allow to Reverse Movement related with the NF',1120216,1133736,'Y',1,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-07-22 17:36:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-22 17:36:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','baef3d15-4617-413a-93fe-17a902143887','Y',181,2,2)
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131634
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128231
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125817
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125810
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125811
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131389
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131390
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127345
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127362
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128192
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128172
;

-- 22 de jul de 2021 17:36:21 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128171
;

-- 22 de jul de 2021 17:37:32 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:37:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 22 de jul de 2021 17:37:54 BRT
UPDATE AD_Field SET SeqNo=1325, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-22 17:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131633
;

-- 22 de jul de 2021 17:37:54 BRT
SELECT Register_Migration_Script ('202107222332_AutoCancelMove.sql') FROM DUAL
;

