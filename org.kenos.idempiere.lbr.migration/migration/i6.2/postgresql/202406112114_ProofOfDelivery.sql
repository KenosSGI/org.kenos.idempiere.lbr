-- 10 de jun de 2024 14:43:38 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123031,'Comprovante de Entrega da NF-e',1120220,'110130',0,0,'Y',TO_TIMESTAMP('2024-06-10 14:43:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-10 14:43:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b0cfa376-abbd-462e-bb5b-d6f2611b9b4b')
;

-- 10 de jun de 2024 14:43:59 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123032,'Cancelamento do Comprovante de Entrega da NF-e',1120220,'110131',0,0,'Y',TO_TIMESTAMP('2024-06-10 14:43:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-10 14:43:58','YYYY-MM-DD HH24:MI:SS'),100,'U','96580dff-7b00-4a16-8ce6-270001226ff8')
;

-- 10 de jun de 2024 14:44:32 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123033,'Comprovante de Entrega do CT-e',1120220,'610130',0,0,'Y',TO_TIMESTAMP('2024-06-10 14:44:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-10 14:44:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c0985d55-450c-412a-a648-4e1ffa71dc15')
;

-- 10 de jun de 2024 14:44:56 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123034,'Cancelamento do Comprovante de Entrega do CT-e',1120220,'610131',0,0,'Y',TO_TIMESTAMP('2024-06-10 14:44:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-10 14:44:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','889e499d-d448-4e1d-9764-2f0ca86c8bc6')
;

-- 10 de jun de 2024 14:45:08 BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2024-06-10 14:45:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123032
;

-- 11 de jun de 2024 16:30:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133923,0,'Delivered',1000027,'IsDelivered','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:30:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:30:44','YYYY-MM-DD HH24:MI:SS'),100,367,'N','N','LBRA','N','N','N','Y','7e1de01e-6485-4d38-9225-e633e79ec232','Y',0,'N','N','N')
;

-- 11 de jun de 2024 16:30:48 BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN IsDelivered CHAR(1) DEFAULT 'N' CHECK (IsDelivered IN ('Y','N')) NOT NULL
;

-- 11 de jun de 2024 16:31:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131901,'Delivered',1000028,1133923,'Y',1,1290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:31:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:31:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ea93e2db-9f53-4510-a391-52511029108a','Y',837,2,2)
;

-- 11 de jun de 2024 16:31:20 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:31:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131901
;

-- 11 de jun de 2024 16:31:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131902,'Delivered',1000020,1133923,'Y',1,1370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:31:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:31:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7f5fd3e4-551e-4082-8302-ab998e063f90','Y',1515,2,2)
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=11, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131902
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131690
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131691
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131692
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000329
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124869
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124939
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000302
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000303
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000304
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000305
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000331
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000332
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000307
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124941
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000308
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000330
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128186
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000313
;

-- 11 de jun de 2024 16:41:36 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000316
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128187
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128188
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000309
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000310
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000311
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000312
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000317
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000318
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000314
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124942
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=780, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000315
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=790, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129391
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=800, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001093
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=810, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000660
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=820, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001092
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=830, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124850
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=840, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000356
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=850, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000376
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=860, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000380
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=870, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000381
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=880, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123448
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=890, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000882
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=900, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125484
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=910, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125485
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=920, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125483
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=930, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125781
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=940, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125782
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=950, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000625
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=960, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000659
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=970, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=980, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125777
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=990, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125779
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125778
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1010, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125780
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1020, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125783
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1030, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000373
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1040, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000378
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1050, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000496
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1060, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120081
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1070, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122767
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1080, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127040
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125373
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100048
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100051
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100049
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128181
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000370
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129917
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001079
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001087
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127500
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001080
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001081
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001082
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001083
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001090
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001085
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124943
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127367
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127495
;

-- 11 de jun de 2024 16:41:37 BRT
UPDATE AD_Field SET SeqNo=1320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001084
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001088
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100077
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125803
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131633
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET SeqNo=1390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 11 de jun de 2024 16:41:38 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:41:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 11 de jun de 2024 16:42:34 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120764,'LBR_ProofOfDelivery','LBR_ProofOfDelivery',0,'3',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:42:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:42:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','026c1bbf-9a21-4996-9c8a-6d3221e20280','N','N','N','N')
;

-- 11 de jun de 2024 16:42:34 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ProofOfDelivery',1000000,'N','N','Table LBR_ProofOfDelivery','Y','Y',0,0,TO_TIMESTAMP('2024-06-11 16:42:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:42:34','YYYY-MM-DD HH24:MI:SS'),100,1154038,'Y',1000000,1,200000,'c3e98539-5546-4741-9f85-8f990335c9f8')
;

-- 11 de jun de 2024 16:52:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123410,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProofOfDelivery_ID','LBR_ProofOfDelivery','LBR_ProofOfDelivery','LBRA','f28bfc03-76ba-4961-88dc-064f19acccdb')
;

-- 11 de jun de 2024 16:52:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133924,0.0,'LBR_ProofOfDelivery',1120764,'LBR_ProofOfDelivery_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:30','YYYY-MM-DD HH24:MI:SS'),100,1123410,'N','N','LBRA','N','79afd855-4b08-4992-83fa-cc47e0d20201','N')
;

-- 11 de jun de 2024 16:52:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123411,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProofOfDelivery_UU','LBR_ProofOfDelivery_UU','LBR_ProofOfDelivery_UU','LBRA','d964e7f8-fdc5-4e1d-b2ba-103fdc363753')
;

-- 11 de jun de 2024 16:52:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133925,0.0,'LBR_ProofOfDelivery_UU',1120764,'LBR_ProofOfDelivery_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:31','YYYY-MM-DD HH24:MI:SS'),100,1123411,'N','N','LBRA','N','acf73b6f-5024-440d-92b7-2f1f09e5ccac','N')
;

-- 11 de jun de 2024 16:52:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133926,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120764,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:32','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','2e5afb56-cd6a-4fec-8ade-ebe3d4abf18e','N','D')
;

-- 11 de jun de 2024 16:52:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133927,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120764,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:33','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','881d2a96-d91d-4624-ae9a-8490d5796cd8','N','D')
;

-- 11 de jun de 2024 16:52:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133928,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120764,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:33','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','2b42fe8a-d03b-437a-87c5-39b0b6d7d12b','N')
;

-- 11 de jun de 2024 16:52:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133929,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120764,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:34','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','dac76327-00dd-4b7e-a352-b071076afe40','N')
;

-- 11 de jun de 2024 16:52:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133930,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120764,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:34','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','d80dbd6d-70aa-4665-bb10-20e9c9989f0b','N','D')
;

-- 11 de jun de 2024 16:52:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133931,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120764,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','7641fd60-1a49-4ca3-8eae-b03891075e1e','N')
;

-- 11 de jun de 2024 16:52:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133932,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120764,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','2821c57b-ebcf-4dec-b938-d1f32d3920af','N','D')
;

-- 11 de jun de 2024 16:52:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133933,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120764,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,1000177,'Y','N','LBRA','N','fb59adc0-9904-4691-be6c-815b1b461dbb','N','N')
;

-- 11 de jun de 2024 16:52:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133934,0.0,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120764,'DateTrx',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:36','YYYY-MM-DD HH24:MI:SS'),100,1297,'N','N','LBRA','N','4413119c-725d-4436-ae79-7744e920a421','N')
;

-- 11 de jun de 2024 16:52:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133935,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120764,'Name',255,'N','N','N','N','Y','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:36','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','ec1550b9-b38a-496c-8db0-b72ba8ac1d8a',10,'N')
;

-- 11 de jun de 2024 16:52:37 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123412,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:37','YYYY-MM-DD HH24:MI:SS'),100,'lbr_latitude','lbr_latitude','lbr_latitude','LBRA','093c49a7-85d6-491d-8a0f-6693a4cdd057')
;

-- 11 de jun de 2024 16:52:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133936,0.0,'lbr_latitude',1120764,'lbr_latitude',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:37','YYYY-MM-DD HH24:MI:SS'),100,1123412,'Y','N','LBRA','N','b91f2135-8b1a-459b-b9ac-5d06318b8e98','N')
;

-- 11 de jun de 2024 16:52:38 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123413,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,'lbr_longitude','lbr_longitude','lbr_longitude','LBRA','cd765d3f-0db3-4691-8504-bab3f73d14ce')
;

-- 11 de jun de 2024 16:52:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133937,0.0,'lbr_longitude',1120764,'lbr_longitude',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:38','YYYY-MM-DD HH24:MI:SS'),100,1123413,'Y','N','LBRA','N','37a09567-75f3-4770-9217-db49827c552e','N')
;

-- 11 de jun de 2024 16:52:39 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123414,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,'lbr_hash','lbr_hash','lbr_hash','LBRA','a0acd81c-5eba-4bda-9686-4bf6f3756245')
;

-- 11 de jun de 2024 16:52:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133938,0.0,'lbr_hash',1120764,'lbr_hash',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,1123414,'Y','N','LBRA','N','10121b6c-806e-4253-90dd-1fa8166f5ce6','N')
;

-- 11 de jun de 2024 16:52:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133939,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120764,'Processed',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:52:39','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','10c65e9b-cb9d-42ba-9587-8259ba494bbb','N')
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_Element SET Name='Hash', PrintName='Hash',Updated=TO_TIMESTAMP('2024-06-11 16:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123414
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_Column SET ColumnName='lbr_hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_hash', Name='Hash', Description=NULL, Help=NULL, AD_Element_ID=1123414 WHERE UPPER(ColumnName)='LBR_HASH' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_Field SET Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123414) AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:08 BRT
UPDATE AD_PrintFormatItem SET PrintName='Hash', Name='Hash' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123414)
;

-- 11 de jun de 2024 16:53:15 BRT
UPDATE AD_Element SET Name='Latitude', PrintName='Latitude',Updated=TO_TIMESTAMP('2024-06-11 16:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123412
;

-- 11 de jun de 2024 16:53:15 BRT
UPDATE AD_Column SET ColumnName='lbr_latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412
;

-- 11 de jun de 2024 16:53:15 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_latitude', Name='Latitude', Description=NULL, Help=NULL, AD_Element_ID=1123412 WHERE UPPER(ColumnName)='LBR_LATITUDE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:15 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:16 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:16 BRT
UPDATE AD_Field SET Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123412) AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:16 BRT
UPDATE AD_PrintFormatItem SET PrintName='Latitude', Name='Latitude' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123412)
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_Element SET Name='Longitude', PrintName='Longitude',Updated=TO_TIMESTAMP('2024-06-11 16:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123413
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_Column SET ColumnName='lbr_longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_longitude', Name='Longitude', Description=NULL, Help=NULL, AD_Element_ID=1123413 WHERE UPPER(ColumnName)='LBR_LONGITUDE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_Field SET Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123413) AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:24 BRT
UPDATE AD_PrintFormatItem SET PrintName='Longitude', Name='Longitude' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123413)
;

-- 11 de jun de 2024 16:53:33 BRT
UPDATE AD_Element SET ColumnName='LBR_Hash',Updated=TO_TIMESTAMP('2024-06-11 16:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123414
;

-- 11 de jun de 2024 16:53:33 BRT
UPDATE AD_Column SET ColumnName='LBR_Hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414
;

-- 11 de jun de 2024 16:53:33 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Hash', Name='Hash', Description=NULL, Help=NULL, AD_Element_ID=1123414 WHERE UPPER(ColumnName)='LBR_HASH' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:33 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:33 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Hash', Name='Hash', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123414 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:40 BRT
UPDATE AD_Element SET ColumnName='LBR_Latitude',Updated=TO_TIMESTAMP('2024-06-11 16:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123412
;

-- 11 de jun de 2024 16:53:40 BRT
UPDATE AD_Column SET ColumnName='LBR_Latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412
;

-- 11 de jun de 2024 16:53:40 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Latitude', Name='Latitude', Description=NULL, Help=NULL, AD_Element_ID=1123412 WHERE UPPER(ColumnName)='LBR_LATITUDE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:40 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:40 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Latitude', Name='Latitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123412 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:48 BRT
UPDATE AD_Element SET ColumnName='LBR_Longitude',Updated=TO_TIMESTAMP('2024-06-11 16:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123413
;

-- 11 de jun de 2024 16:53:48 BRT
UPDATE AD_Column SET ColumnName='LBR_Longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413
;

-- 11 de jun de 2024 16:53:48 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Longitude', Name='Longitude', Description=NULL, Help=NULL, AD_Element_ID=1123413 WHERE UPPER(ColumnName)='LBR_LONGITUDE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11 de jun de 2024 16:53:48 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:53:48 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_Longitude', Name='Longitude', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123413 AND IsCentrallyMaintained='Y'
;

-- 11 de jun de 2024 16:54:24 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120183,'Proof of Delivery',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:54:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:54:23','YYYY-MM-DD HH24:MI:SS'),100,'T','N','U','Y','N',0,0,'N','37ff30ed-3c5b-418f-90fe-086a1674d381')
;

-- 11 de jun de 2024 16:54:28 BRT
UPDATE AD_Window SET EntityType='LBRA',Updated=TO_TIMESTAMP('2024-06-11 16:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120183
;

-- 11 de jun de 2024 16:54:58 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120520,'Proof of Delivery',1120183,10,'N',1120764,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:54:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:54:57','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','d4da06d0-7e5a-4ea5-aaf7-c9879354b3e2','B')
;

-- 11 de jun de 2024 16:55:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131903,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120520,1133926,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','33a998f9-7b1d-492e-be78-76761dff3df8','N',2)
;

-- 11 de jun de 2024 16:55:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131904,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120520,1133927,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f16145fe-33f0-42ed-9b10-d45a3831ae0e','Y','Y',10,4,2)
;

-- 11 de jun de 2024 16:55:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131905,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120520,1133935,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1536410e-67bb-4505-bd8f-caf2f8813cec','Y',20,5)
;

-- 11 de jun de 2024 16:55:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131906,'LBR_ProofOfDelivery',1120520,1133924,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','246bc4ba-ea60-4181-a18a-8aa2a21b3b83','N',2)
;

-- 11 de jun de 2024 16:55:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131907,'LBR_ProofOfDelivery_UU',1120520,1133925,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7532c495-ebba-46c2-b966-1fca01626138','N',2)
;

-- 11 de jun de 2024 16:55:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131908,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120520,1133933,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4f80dd58-37bd-40f7-9803-791ad9b3327d','Y',30,2)
;

-- 11 de jun de 2024 16:55:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131909,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120520,1133934,'Y',29,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','27f5734a-1d0c-4fe2-9993-8bfff69455f9','Y',40,2)
;

-- 11 de jun de 2024 16:55:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131910,'Latitude',1120520,1133936,'Y',131089,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3e31e7c7-92a6-4ba1-a96b-546abd162077','Y',50,5)
;

-- 11 de jun de 2024 16:55:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131911,'Longitude',1120520,1133937,'Y',131089,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d7742e06-8330-4c12-bc79-d7ec16db24fb','Y',60,5)
;

-- 11 de jun de 2024 16:55:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131912,'Hash',1120520,1133938,'Y',60,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','14eaccb0-6932-4a7d-8007-889eaae9cc67','Y',70,5)
;

-- 11 de jun de 2024 16:55:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131913,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120520,1133939,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4c9130eb-0825-459c-9c80-9803fe383aa3','Y',80,2,2)
;

-- 11 de jun de 2024 16:55:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131914,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120520,1133928,'Y',1,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 16:55:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:55:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b5761845-3987-4432-8c96-4f8a8eb9074a','Y',90,2,2)
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131914
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131906
;

-- 11 de jun de 2024 16:57:07 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131907
;

-- 11 de jun de 2024 16:57:29 BRT
UPDATE AD_Column SET Name='Date Delivered', Description='Date when the product was delivered', Help=NULL, ColumnName='DateDelivered', AD_Reference_ID=16, AD_Element_ID=264, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:57:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133934
;

-- 11 de jun de 2024 16:58:08 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2024-06-11 16:58:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133934
;

-- 11 de jun de 2024 16:58:20 BRT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2024-06-11 16:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133938
;

-- 11 de jun de 2024 16:59:02 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 16:59:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 11 de jun de 2024 16:59:39 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120428,'Proof Of Delivery','W',1120183,0,0,'Y',TO_TIMESTAMP('2024-06-11 16:59:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 16:59:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','07d40d51-568c-4eef-8b88-8d1269a857c5')
;

-- 11 de jun de 2024 16:59:39 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120428, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120428)
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120403
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120294
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120348
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 11 de jun de 2024 16:59:55 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120428
;

-- 11 de jun de 2024 17:11:53 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120765,'RV_LBR_NFeEvent','RV_LBR_NFeEvent',0,'3',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:11:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:11:52','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','9ef1266a-f590-45b8-97b8-7e36c1a32b09','N','N','N','N')
;

-- 11 de jun de 2024 17:11:53 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_NFeEvent',1000000,'N','N','Table RV_LBR_NFeEvent','Y','Y',0,0,TO_TIMESTAMP('2024-06-11 17:11:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:11:53','YYYY-MM-DD HH24:MI:SS'),100,1154039,'Y',1000000,1,200000,'12bf251c-2820-4872-926f-02209f09df18')
;

-- 11 de jun de 2024 17:12:09 BRT
UPDATE AD_Table SET AD_Window_ID=1000015, PO_Window_ID=1000019,Updated=TO_TIMESTAMP('2024-06-11 17:12:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120765
;

-- 11 de jun de 2024 17:12:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133940,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120765,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:18','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','45dfde6c-80ea-46b1-9bad-e73fba324a63','N','D')
;

-- 11 de jun de 2024 17:12:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133941,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120765,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:18','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e0458a28-bb36-4d69-86b7-0e50abfad8dc','N','D')
;

-- 11 de jun de 2024 17:12:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133942,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120765,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:19','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','1598b2bd-5286-46cb-b188-43605381b177','N')
;

-- 11 de jun de 2024 17:12:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133943,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120765,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:19','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','22d561b6-d5e2-44c0-9801-43a65ea27266','N','D')
;

-- 11 de jun de 2024 17:12:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133944,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120765,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:20','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','1594d7f9-03c3-4547-a5e1-4cd2d15c09e6','N')
;

-- 11 de jun de 2024 17:12:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133945,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120765,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:20','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','d9a6d08f-7442-475b-a87c-72678673417e','N','D')
;

-- 11 de jun de 2024 17:12:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133946,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120765,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:21','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','b0e1c3e5-387a-4fcb-b54e-7a2e013ff8b3','N')
;

-- 11 de jun de 2024 17:12:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133947,0.0,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120765,'DateTrx',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:21','YYYY-MM-DD HH24:MI:SS'),100,1297,'N','N','LBRA','N','143edaff-1f3d-4323-a821-b8bdfc55999a','N')
;

-- 11 de jun de 2024 17:12:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133948,0.0,'Event Type',1120765,'LBR_EventType',6,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,1121791,'N','N','LBRA','N','d82da67e-ee43-42f9-8259-8b741fb9d5b1','N')
;

-- 11 de jun de 2024 17:12:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133949,0.0,'NFe Protocol',1120765,'lbr_NFeProt',60,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,1100027,'N','N','LBRA','N','2c8d96ad-98f6-440d-be9f-314580027467','N')
;

-- 11 de jun de 2024 17:12:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133950,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120765,'Description',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:22','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','a88d1f6e-f3d4-4b75-a7d2-1ce2f9cc7c93',10,'N')
;

-- 11 de jun de 2024 17:12:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133951,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120765,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:23','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','LBRA','N','809cab34-3d70-4a02-b474-a0505f01cb8e','N','N')
;

-- 11 de jun de 2024 17:12:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133952,0.0,'Doc Issued By','Identifies this is issued by the company or by 3rd party ','Identifies this is issued by the company or by 3rd party ',1120765,'lbr_IsOwnDocument',2147483647,'N','N','N','N','N','N',17,1120397,0,0,'Y',TO_TIMESTAMP('2024-06-11 17:12:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:12:23','YYYY-MM-DD HH24:MI:SS'),100,1000256,'N','N','LBRA','N','a1b67c4c-8f50-4801-adf0-5467ac61fabd','N')
;

-- 11 de jun de 2024 17:15:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131595
;

-- 11 de jun de 2024 17:15:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131595
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131596
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131596
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131597
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131597
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131598
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131598
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131599
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131599
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131600
;

-- 11 de jun de 2024 17:15:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131600
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131601
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131601
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131602
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131602
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131603
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131603
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131604
;

-- 11 de jun de 2024 17:16:00 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131604
;

-- 11 de jun de 2024 17:16:08 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131605
;

-- 11 de jun de 2024 17:16:08 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131605
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131606
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131606
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131607
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131607
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131608
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131608
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131609
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131609
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131610
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131610
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131611
;

-- 11 de jun de 2024 17:16:09 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131611
;

-- 11 de jun de 2024 17:16:10 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131612
;

-- 11 de jun de 2024 17:16:10 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131612
;

-- 11 de jun de 2024 17:16:21 BRT
UPDATE AD_Tab SET AD_Table_ID=1120765, AD_Column_ID=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:16:26 BRT
UPDATE AD_Tab SET IsSingleRow='N',Updated=TO_TIMESTAMP('2024-06-11 17:16:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:16:44 BRT
UPDATE AD_Tab SET AD_Column_ID=1133951, Parent_Column_ID=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:16:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:16:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131915,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120508,1133940,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','454d8daa-e2d9-4d83-9c86-db7515dbd1bf','N',2)
;

-- 11 de jun de 2024 17:16:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131916,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120508,1133941,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','51efb0f4-2ef6-4bac-9497-d27ddf3cc35e','Y','Y',10,4,2)
;

-- 11 de jun de 2024 17:16:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131917,'Description','Optional short description of the record','A description is limited to 255 characters.',1120508,1133950,'Y',2147483647,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:16:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:16:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','07729f5a-a7bb-4322-bb5f-d3ea24b89f8e','Y',20,5)
;

-- 11 de jun de 2024 17:17:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131918,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120508,1133947,'Y',29,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:16:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:16:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7654121e-000d-47a8-8ad9-4bd8f1951119','Y',30,2)
;

-- 11 de jun de 2024 17:17:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131919,'Event Type',1120508,1133948,'Y',6,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','53c64f88-b64d-4ced-b245-afa0eeb01db7','Y',40,2)
;

-- 11 de jun de 2024 17:17:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131920,'NFe Protocol',1120508,1133949,'Y',60,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9d8b672f-1177-4c53-9514-a5309ccb5ce1','Y',50,5)
;

-- 11 de jun de 2024 17:17:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131921,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120508,1133951,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:17:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','31eedfdc-05ae-42d6-9c82-049706c2d625','Y',60,2)
;

-- 11 de jun de 2024 17:17:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131922,'Doc Issued By','Identifies this is issued by the company or by 3rd party ','Identifies this is issued by the company or by 3rd party ',1120508,1133952,'Y',2147483647,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:17:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:17:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','73262ab0-8f91-4452-8c63-74b37043f7aa','Y',70,5)
;

-- 11 de jun de 2024 17:17:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131923,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120508,1133946,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:17:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:17:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b7cad46-a371-41e4-86cb-de3574891262','Y',80,2,2)
;

-- 11 de jun de 2024 17:17:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:17:28 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:17:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:17:28 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131921
;

-- 11 de jun de 2024 17:17:28 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131923
;

-- 11 de jun de 2024 17:17:36 BRT
UPDATE AD_Tab SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2024-06-11 17:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:18:04 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131923
;

-- 11 de jun de 2024 17:18:04 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131921
;

-- 11 de jun de 2024 17:18:04 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131916
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131915
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131918
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131917
;

-- 11 de jun de 2024 17:18:05 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:18:25 BRT
UPDATE AD_Tab SET OrderByClause='RV_LBR_NFeEvent.DateTrx',Updated=TO_TIMESTAMP('2024-06-11 17:18:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:18:31 BRT
UPDATE AD_Tab SET Name='Events',Updated=TO_TIMESTAMP('2024-06-11 17:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 11 de jun de 2024 17:19:01 BRT
UPDATE AD_Column SET FieldLength=1,Updated=TO_TIMESTAMP('2024-06-11 17:19:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133952
;

-- 11 de jun de 2024 17:21:12 BRT
UPDATE AD_Table SET AD_Window_ID=1120183,Updated=TO_TIMESTAMP('2024-06-11 17:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120764
;

-- 11 de jun de 2024 17:21:50 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131557
;

-- 11 de jun de 2024 17:21:50 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131557
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131558
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131558
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131559
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131559
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131560
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131560
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131561
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131561
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131562
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131562
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131563
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131563
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131564
;

-- 11 de jun de 2024 17:21:51 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131564
;

-- 11 de jun de 2024 17:21:52 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131565
;

-- 11 de jun de 2024 17:21:52 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131565
;

-- 11 de jun de 2024 17:21:52 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131566
;

-- 11 de jun de 2024 17:21:52 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131566
;

-- 11 de jun de 2024 17:21:57 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131567
;

-- 11 de jun de 2024 17:21:57 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131567
;

-- 11 de jun de 2024 17:21:57 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131568
;

-- 11 de jun de 2024 17:21:57 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131568
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131569
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131569
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131570
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131570
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131579
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131579
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131571
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131571
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131577
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131577
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131581
;

-- 11 de jun de 2024 17:21:58 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131581
;

-- 11 de jun de 2024 17:22:08 BRT
UPDATE AD_Tab SET AD_Table_ID=1120765, AD_Column_ID=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120507
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131574
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131572
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131551
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131580
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131552
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131553
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131576
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131573
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131556
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131578
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131575
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131554
;

-- 11 de jun de 2024 17:22:34 BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131555
;

-- 11 de jun de 2024 17:22:40 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131574
;

-- 11 de jun de 2024 17:22:40 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131574
;

-- 11 de jun de 2024 17:22:40 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131572
;

-- 11 de jun de 2024 17:22:40 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131572
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131551
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131551
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131580
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131580
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131552
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131552
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131553
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131553
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131576
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131576
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131573
;

-- 11 de jun de 2024 17:22:41 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131573
;

-- 11 de jun de 2024 17:22:42 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131556
;

-- 11 de jun de 2024 17:22:42 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131556
;

-- 11 de jun de 2024 17:22:42 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131578
;

-- 11 de jun de 2024 17:22:42 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131578
;

-- 11 de jun de 2024 17:22:48 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131575
;

-- 11 de jun de 2024 17:22:48 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131575
;

-- 11 de jun de 2024 17:22:49 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131554
;

-- 11 de jun de 2024 17:22:49 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131554
;

-- 11 de jun de 2024 17:22:49 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131555
;

-- 11 de jun de 2024 17:22:49 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131555
;

-- 11 de jun de 2024 17:22:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131924,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120507,1133940,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7b9aab49-82b0-4a72-b45a-92bc0f343f89','N',2)
;

-- 11 de jun de 2024 17:22:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131925,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120507,1133941,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3704075f-8036-4063-898e-85c6fcf9c981','Y','Y',10,4,2)
;

-- 11 de jun de 2024 17:22:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131926,'Description','Optional short description of the record','A description is limited to 255 characters.',1120507,1133950,'Y',2147483647,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dfe2a7d6-c013-4146-b712-cf1af582cc19','Y',20,5)
;

-- 11 de jun de 2024 17:22:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131927,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120507,1133947,'Y',29,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7b590077-c00e-4783-91df-b289cc9c55e1','Y',30,2)
;

-- 11 de jun de 2024 17:22:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131928,'Event Type',1120507,1133948,'Y',6,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','faea51f4-887f-4c81-b87f-e5f3bfafd86f','Y',40,2)
;

-- 11 de jun de 2024 17:22:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131929,'NFe Protocol',1120507,1133949,'Y',60,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','69277536-c2c2-49c1-9fe3-da54cc4e2a40','Y',50,5)
;

-- 11 de jun de 2024 17:22:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131930,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120507,1133951,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e11ccafe-a09f-4e3c-a938-26e962da6b78','Y',60,2)
;

-- 11 de jun de 2024 17:23:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131931,'Doc Issued By','Identifies this is issued by the company or by 3rd party ','Identifies this is issued by the company or by 3rd party ',1120507,1133952,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:22:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','25ce9e11-e986-44e0-a05c-5036fb9a8ea6','Y',70,2)
;

-- 11 de jun de 2024 17:23:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131932,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120507,1133946,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:23:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:23:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','be01d3df-677d-41bd-81a3-9ecc28db0d0b','Y',80,2,2)
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131928
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131927
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131931
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131932
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131930
;

-- 11 de jun de 2024 17:23:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:23:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131929
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131930
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131932
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131924
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131925
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131927
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131928
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131931
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131926
;

-- 11 de jun de 2024 17:24:26 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131929
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131923
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131586
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131915
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131585
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131582
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131590
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131587
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131593
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131591
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131584
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131921
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131916
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131583
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131589
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131588
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131592
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131594
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131918
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131917
;

-- 11 de jun de 2024 17:24:46 BRT
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:25:18 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131923
;

-- 11 de jun de 2024 17:25:18 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131923
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131586
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131586
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131915
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131915
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131585
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131585
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131582
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131582
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131590
;

-- 11 de jun de 2024 17:25:19 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131590
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131587
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131587
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131593
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131593
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131591
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131591
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131584
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131584
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131921
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131921
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131916
;

-- 11 de jun de 2024 17:25:20 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131916
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131583
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131583
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131589
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131589
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131588
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131588
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131592
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131592
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1131594
;

-- 11 de jun de 2024 17:25:21 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1131594
;

-- 11 de jun de 2024 17:25:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131933,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120508,1133940,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:25:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:25:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','82df422b-d54e-4b51-a98a-14b5176e2b83','N',2)
;

-- 11 de jun de 2024 17:25:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131934,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120508,1133941,'Y',10,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:25:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:25:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','86669aab-146a-4ed3-af75-c55c6c987baa','Y','Y',80,4,2)
;

-- 11 de jun de 2024 17:25:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131935,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120508,1133951,'Y',10,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fc224490-5cf3-4d70-b0b1-bfe583eb26ef','Y',90,2)
;

-- 11 de jun de 2024 17:25:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131936,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120508,1133946,'Y',1,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 17:25:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','239b918c-914a-4d93-87a8-8fd3f2be9e84','Y',100,2,2)
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131933
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131934
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131918
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131935
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131917
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:26:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 17:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131936
;

-- 11 de jun de 2024 17:26:17 BRT
UPDATE AD_Tab SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2024-06-11 17:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120507
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131930
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131925
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131932
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131924
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131927
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131928
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131931
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131926
;

-- 11 de jun de 2024 17:40:17 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131929
;

-- 11 de jun de 2024 17:40:26 BRT
UPDATE AD_Tab SET AD_Column_ID=1133951,Updated=TO_TIMESTAMP('2024-06-11 17:40:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120507
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131933
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131935
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131934
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131936
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131918
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131917
;

-- 11 de jun de 2024 17:40:32 BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:40:40 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131933
;

-- 11 de jun de 2024 17:40:40 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131935
;

-- 11 de jun de 2024 17:40:40 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131934
;

-- 11 de jun de 2024 17:40:40 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131936
;

-- 11 de jun de 2024 17:40:41 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131918
;

-- 11 de jun de 2024 17:40:41 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131919
;

-- 11 de jun de 2024 17:40:41 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131922
;

-- 11 de jun de 2024 17:40:41 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131917
;

-- 11 de jun de 2024 17:40:41 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=statement_timestamp(), UpdatedBy=100 WHERE AD_Field_ID=1131920
;

-- 11 de jun de 2024 17:40:48 BRT
UPDATE AD_Tab SET OrderByClause='RV_LBR_NFeEvent.DateTrx',Updated=TO_TIMESTAMP('2024-06-11 17:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120507
;

-- 11 de jun de 2024 17:41:27 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120220,Updated=TO_TIMESTAMP('2024-06-11 17:41:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133948
;

CREATE OR REPLACE VIEW RV_LBR_NFeEvent AS
WITH nfe AS (SELECT nf.LBR_NFeID, nf.AD_Org_ID, nf.LBR_NotaFiscal_ID FROM LBR_NotaFiscal nf WHERE nf.Processed='Y')
SELECT nfe.AD_Client_ID, nfe.AD_Org_ID, nfe.Created, nfe.CreatedBy, nfe.Updated, nfe.UpdatedBy, nfe.IsActive,  
nfe.DateTrx, nfe.LBR_EventType, nfe.LBR_NFeProt, nfe.Description, nfe.LBR_NotaFiscal_ID, 'Y' AS LBR_IsOwnDocument 
FROM LBR_NFeEvent nfe
UNION
SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, dfe.Created, dfe.CreatedBy, dfe.Updated, dfe.UpdatedBy, dfe.IsActive,  
dfe.DateTrx, dfe.LBR_EventType, dfe.LBR_NFeProt, dfe.Description, nfe.LBR_NotaFiscal_ID, 'N' AS LBR_IsOwnDocument 
FROM LBR_PartnerDFe dfe, nfe
WHERE dfe.LBR_NFeID=nfe.LBR_NFeID
AND dfe.AD_Org_ID=nfe.AD_Org_ID
AND dfe.DocumentType='1'
;

CREATE TABLE LBR_ProofOfDelivery
( 
    LBR_ProofOfDelivery_ID         NUMERIC (10,0) NOT NULL,
    LBR_ProofOfDelivery_UU         VARCHAR (36) NULL DEFAULT NULL,
    AD_Client_ID                   NUMERIC (10,0) NOT NULL,
    AD_Org_ID                      NUMERIC (10,0) NOT NULL,
    IsActive                       CHAR (1) NOT NULL DEFAULT 'Y'::BPCHAR,
    Created                        TIMESTAMP NOT NULL DEFAULT NOW (),
    CreatedBy                      NUMERIC (10,0) NOT NULL,
    Updated                        TIMESTAMP NOT NULL DEFAULT NOW (),
    UpdatedBy                      NUMERIC (10,0) NOT NULL,
    LBR_NotaFiscal_ID              NUMERIC (10,0) NULL DEFAULT NULL,
    DateDelivered                  TIMESTAMP NULL DEFAULT NULL,
    Name                           VARCHAR (255) NULL DEFAULT NULL,
    LBR_Latitude                   NUMERIC NULL DEFAULT NULL,
    LBR_Longitude                  NUMERIC NULL DEFAULT NULL,
    LBR_Hash                       VARCHAR (60) NULL DEFAULT NULL,
    Processed                      CHAR (1) NOT NULL DEFAULT 'N'::BPCHAR,
                                   PRIMARY KEY (LBR_ProofOfDelivery_ID)
)        
;

-- 11 de jun de 2024 21:35:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133953,0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120764,'DocumentNo',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 21:35:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 21:35:34','YYYY-MM-DD HH24:MI:SS'),100,290,'Y','Y','LBRA','N','N','N','Y','ee582848-01c7-4264-8e8b-1f1e60fec714','Y',20,'N','N','N')
;

-- 11 de jun de 2024 21:35:38 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN DocumentNo VARCHAR(30) DEFAULT NULL 
;

-- 11 de jun de 2024 21:36:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133954,0,'NF Serie',1120764,'lbr_NFSerie',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2024-06-11 21:36:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 21:36:01','YYYY-MM-DD HH24:MI:SS'),100,1100010,'Y','N','LBRA','N','N','N','Y','99f7196d-3d88-42a6-861b-2c0c9b76761e','Y',0,'N','N','N')
;

-- 11 de jun de 2024 21:36:03 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN lbr_NFSerie VARCHAR(3) DEFAULT NULL 
;

-- 11 de jun de 2024 21:36:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131937,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120520,1133953,'Y',30,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 21:36:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 21:36:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ad246865-9747-49e7-8082-becd6ae22a27','Y',100,2)
;

-- 11 de jun de 2024 21:36:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131938,'NF Serie',1120520,1133954,'Y',3,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-11 21:36:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-11 21:36:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d5616aa0-8259-44fb-b583-4810be5dfe93','Y',110,2)
;

-- 11 de jun de 2024 21:38:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 21:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 11 de jun de 2024 21:38:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 21:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 11 de jun de 2024 21:38:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 21:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 11 de jun de 2024 21:38:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 21:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 13:37:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133955,0,'Valid','Element is valid','The element passed the validation check',1120764,'IsValid','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2024-06-12 13:37:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 13:37:52','YYYY-MM-DD HH24:MI:SS'),100,2002,'Y','N','LBRA','N','N','N','Y','b4d79e8e-1fad-4ca4-a543-ffbb523e536d','Y',0,'N','N','N')
;

-- 12 de jun de 2024 13:37:56 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN IsValid CHAR(1) DEFAULT 'N' CHECK (IsValid IN ('Y','N')) NOT NULL
;

-- 12 de jun de 2024 13:38:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133956,0,'Error Msg',1120764,'ErrorMsg',2000,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2024-06-12 13:38:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 13:38:06','YYYY-MM-DD HH24:MI:SS'),100,1021,'Y','N','LBRA','N','N','N','Y','1a3a5249-36aa-4291-8a1f-f95b3ca1546c','Y',0,'N','N','N')
;

-- 12 de jun de 2024 13:38:10 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN ErrorMsg VARCHAR(2000) DEFAULT NULL 
;

-- 12 de jun de 2024 13:38:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131939,'Valid','Element is valid','The element passed the validation check',1120520,1133955,'Y',1,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 13:38:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 13:38:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','15ecc468-c610-43f3-abe7-f60eba90df06','Y',120,2,2)
;

-- 12 de jun de 2024 13:38:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131940,'Error Msg',1120520,1133956,'Y',2000,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 13:38:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 13:38:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7cc6e473-46e3-4974-a5f9-5a5dc1e8d0ec','Y',130,5)
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, NumLines=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131940
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=6, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 13:39:00 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 13:39:15 BRT
UPDATE AD_Field SET DisplayLogic='@ErrorMsg@!''''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131940
;

-- 12 de jun de 2024 13:39:23 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 13:39:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131940
;

-- 11 de jun de 2024 21:38:05 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_FieldGroup_ID=104, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-11 21:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:28:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133957,0,'Image','Image or Icon','Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)',1120764,'AD_Image_ID',22,'N','N','N','N','N',0,'N',32,0,0,'Y',TO_TIMESTAMP('2024-06-12 15:28:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 15:28:48','YYYY-MM-DD HH24:MI:SS'),100,1639,'Y','N','LBRA','N','N','N','Y','de380114-aa90-4657-84d5-ef16d4c0ce3f','Y',0,'N','N','N','N')
;

-- 12 de jun de 2024 15:28:52 BRT
UPDATE AD_Column SET FKConstraintName='ADImage_LBRProofOfDelivery', FKConstraintType='N',Updated=TO_TIMESTAMP('2024-06-12 15:28:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133957
;

-- 12 de jun de 2024 15:28:53 BRT
ALTER TABLE LBR_ProofOfDelivery ADD COLUMN AD_Image_ID NUMERIC(10) DEFAULT NULL 
;

-- 12 de jun de 2024 15:28:53 BRT
ALTER TABLE LBR_ProofOfDelivery ADD CONSTRAINT ADImage_LBRProofOfDelivery FOREIGN KEY (AD_Image_ID) REFERENCES ad_image(ad_image_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12 de jun de 2024 15:29:26 BRT
UPDATE AD_Column SET DefaultValue='.',Updated=TO_TIMESTAMP('2024-06-12 15:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133953
;

-- 12 de jun de 2024 15:29:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131941,'Image','Image or Icon','Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)',1120520,1133957,'Y',22,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-12 15:29:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 15:29:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8508ad4a-8d1e-4c7e-90cf-18f24ec41b22','Y',140,2)
;

-- 12 de jun de 2024 15:30:07 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:30:07 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:30:07 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 15:30:08 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:30:19 BRT
UPDATE AD_Field SET IsFieldOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:32:23 BRT
INSERT INTO AD_Style (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,AD_Style_ID,AD_Style_UU,Name) VALUES (0,0,TO_TIMESTAMP('2024-06-12 15:32:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2024-06-12 15:32:22','YYYY-MM-DD HH24:MI:SS'),100,1120010,'3ebbb01d-66f7-400b-8978-e8ca7b77ab27','Proof of Delivery Photo')
;

-- 12 de jun de 2024 15:32:43 BRT
INSERT INTO AD_StyleLine (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,AD_Style_ID,AD_StyleLine_ID,AD_StyleLine_UU,InlineStyle,DisplayLogic,Line) VALUES (0,0,TO_TIMESTAMP('2024-06-12 15:32:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2024-06-12 15:32:42','YYYY-MM-DD HH24:MI:SS'),100,1120010,1120029,'cc34096c-9aaa-42bf-9321-fd38a0bf17de','width: 320px; height: 320px; position: absolute; right: 0;','@_Editor_IsGridView@=N',10)
;

-- 12 de jun de 2024 15:32:50 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL, AD_FieldStyle_ID=1120010,Updated=TO_TIMESTAMP('2024-06-12 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:35:00 BRT
UPDATE AD_Val_Rule SET Name='LBR_NotaFiscal (Drafted, of Org)',Updated=TO_TIMESTAMP('2024-06-12 15:35:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120212
;

-- 12 de jun de 2024 15:36:08 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120213,'LBR_NotaFiscal (Processed, Issued by Us, of Org)','S','LBR_NotaFiscal.LBR_IsOwnDocument=''Y'' AND LBR_NotaFiscal.AD_Org_ID=@AD_Org_ID@ AND LBR_NotaFiscal.DocStatus IN (''CL'', ''CO'')',0,0,'Y',TO_TIMESTAMP('2024-06-12 15:36:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 15:36:08','YYYY-MM-DD HH24:MI:SS'),100,'U','38ba2d3b-5b48-41b4-bde9-9b436f45a242')
;

-- 12 de jun de 2024 15:36:19 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120213, AD_Reference_Value_ID=1000026,Updated=TO_TIMESTAMP('2024-06-12 15:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133933
;

-- 12 de jun de 2024 15:40:17 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120099,0,0,'Y',TO_TIMESTAMP('2024-06-12 15:40:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-12 15:40:16','YYYY-MM-DD HH24:MI:SS'),100,'Proof','LBRA','C','N','0814eb0e-5f82-46d4-b57f-38cee7d380b0')
;

-- 12 de jun de 2024 15:40:49 BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=1120099, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:40:49 BRT
UPDATE AD_Field SET SeqNo=50, AD_FieldGroup_ID=104, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:43:16 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 15:43:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:43:17 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:43:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=1120099, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 15:46:24 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:46:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_FieldGroup_ID=1120099, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:47:59 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=40, AD_FieldGroup_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=6, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 15:49:31 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:51:38 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131905
;

-- 12 de jun de 2024 15:51:38 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131941
;

-- 12 de jun de 2024 15:51:38 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131937
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131938
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131910
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131911
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131912
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131909
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131908
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131913
;

-- 12 de jun de 2024 15:51:39 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2024-06-12 15:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131939
;

-- 12 de jun de 2024 17:08:33 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=1120220,Updated=TO_TIMESTAMP('2024-06-12 17:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125543
;

-- 11 de jun de 2024 17:41:27 BRT
SELECT Register_Migration_Script ('202406112114_ProofOfDelivery.sql') FROM DUAL
;

