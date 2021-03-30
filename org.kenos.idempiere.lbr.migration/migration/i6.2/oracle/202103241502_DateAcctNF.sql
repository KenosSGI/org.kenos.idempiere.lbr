SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de mar de 2021 14:42:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133513,0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1000027,'DateAcct',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2021-03-24 14:42:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-24 14:42:50','YYYY-MM-DD HH24:MI:SS'),100,263,'N','N','LBRA','N','N','N','Y','75d9b0a7-7280-4058-83c7-3c0afd78d626','Y',0,'N','N','N')
;

-- 24 de mar de 2021 14:43:21 BRT
ALTER TABLE LBR_NotaFiscal ADD DateAcct DATE DEFAULT NULL 
;

-- 24 de mar de 2021 14:43:21 BRT
UPDATE LBR_NotaFiscal SET DateAcct=NVL(DateDoc,Created) WHERE DateAcct IS NULL AND DateDoc IS NOT NULL
;

-- 24 de mar de 2021 14:43:30 BRT
UPDATE AD_Column SET DefaultValue='@#Date@', IsMandatory='Y',Updated=TO_DATE('2021-03-24 14:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133513
;

-- 24 de mar de 2021 14:43:32 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2021-03-24 14:43:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133513
;

-- 24 de mar de 2021 14:43:34 BRT
ALTER TABLE LBR_NotaFiscal MODIFY DateAcct DATE
;

-- 24 de mar de 2021 14:43:34 BRT
ALTER TABLE LBR_NotaFiscal MODIFY DateAcct NOT NULL
;

-- 24 de mar de 2021 14:44:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131251,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1000020,1133513,'Y',7,1300,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-24 14:44:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-24 14:44:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e2d2b50-fc44-4f37-a8d1-ffe9d43d54db','Y',1085,2)
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000301
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124949
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124948
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000357
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125370
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124952
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124950
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000344
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000371
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131251
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000384
;

-- 24 de mar de 2021 14:47:09 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000375
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000346
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124951
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100050
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100047
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124946
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124947
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127176
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000343
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000351
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000306
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000637
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124845
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124925
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001075
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000345
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000350
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000348
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000355
;

-- 24 de mar de 2021 14:47:10 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127057
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127294
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125605
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000319
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127501
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127371
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125806
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100146
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120264
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001078
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125405
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125797
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000329
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124869
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124939
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000302
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000303
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000304
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000305
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000331
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000332
;

-- 24 de mar de 2021 14:47:11 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000307
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124941
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000308
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000330
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128186
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000313
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000316
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128187
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128188
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000309
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000310
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000311
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000312
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000317
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000318
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000314
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124942
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000315
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129391
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001093
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000660
;

-- 24 de mar de 2021 14:47:12 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001092
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124850
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000356
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000376
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=780, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000380
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=790, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000381
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=800, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123448
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=810, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000882
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=820, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125484
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=830, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125485
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=840, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125483
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=850, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125781
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=860, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125782
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=870, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000625
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=880, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000659
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=890, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=900, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125777
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=910, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125779
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=920, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125778
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=930, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125780
;

-- 24 de mar de 2021 14:47:13 BRT
UPDATE AD_Field SET SeqNo=940, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125783
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=950, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000373
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=960, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000378
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=970, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000496
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=980, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120081
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=990, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122767
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127040
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1010, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125373
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1020, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100048
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1030, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100051
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1040, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1050, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100049
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1060, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128181
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1070, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000370
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1080, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129917
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001079
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001087
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127500
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001080
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001081
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001082
;

-- 24 de mar de 2021 14:47:14 BRT
UPDATE AD_Field SET SeqNo=1160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001083
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001090
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001085
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124943
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127367
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127495
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001084
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001088
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100077
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125803
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 24 de mar de 2021 14:47:15 BRT
UPDATE AD_Field SET SeqNo=1300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 24 de mar de 2021 14:47:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131252,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1000028,1133513,'Y',7,1240,'N','N','N','N',0,0,'Y',TO_DATE('2021-03-24 14:47:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-24 14:47:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60412a54-aa84-4d77-b267-757642d04399','Y',777,2)
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000503
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125008
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125007
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000506
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125372
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000516
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125019
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125015
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000504
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000517
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131252
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000556
;

-- 24 de mar de 2021 14:48:52 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000557
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000508
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125016
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125014
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125011
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125004
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125005
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127177
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000521
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000522
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000524
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000636
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124846
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124926
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001099
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000510
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000511
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000513
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000512
;

-- 24 de mar de 2021 14:48:53 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127056
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127295
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125607
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000525
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127503
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127487
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125805
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100147
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125017
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001102
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125407
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127486
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000523
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124870
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124995
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000531
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000532
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000533
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000534
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000528
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000527
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000526
;

-- 24 de mar de 2021 14:48:54 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124998
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000530
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000529
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128189
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000535
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000536
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128190
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128191
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000541
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000542
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000543
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000544
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000539
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000538
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000537
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124997
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000540
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001118
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000658
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001117
;

-- 24 de mar de 2021 14:48:55 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125001
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000558
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000573
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120082
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=780, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000574
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=790, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000569
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=800, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123452
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=810, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000880
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=820, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000559
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=830, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000560
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=840, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000624
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=850, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000657
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=860, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124868
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=870, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000567
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=880, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000563
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=890, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000561
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=900, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000562
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=910, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000564
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=920, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000571
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=930, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000572
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=940, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000620
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=950, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122769
;

-- 24 de mar de 2021 14:48:56 BRT
UPDATE AD_Field SET SeqNo=960, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125374
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=970, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125012
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=980, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125018
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=990, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125002
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125013
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1010, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128182
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1020, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000500
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1030, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000499
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1040, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001112
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1050, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001103
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1060, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001111
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1070, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127502
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1080, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001104
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1090, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001105
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001106
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001107
;

-- 24 de mar de 2021 14:48:57 BRT
UPDATE AD_Field SET SeqNo=1120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001113
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001114
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001109
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001110
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124999
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127496
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127498
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001108
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125009
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125801
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125802
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120324
;

-- 24 de mar de 2021 14:48:58 BRT
UPDATE AD_Field SET SeqNo=1240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-03-24 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120325
;

-- 24 de mar de 2021 14:50:45 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120628,'9bbee969-971f-4cff-995e-b6750e7374c6',TO_DATE('2021-03-24 14:50:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-03-24 14:50:45','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DateAcct','nf.DateAcct',1490)
;

-- 24 de mar de 2021 14:50:51 BRT
DROP VIEW RV_LBR_NotaFiscal
;

-- 24 de mar de 2021 14:50:51 BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal(LBR_NotaFiscal_ID, AD_Org_ID, AD_Client_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Bill_Location_ID, BPName, C_BPartner_ID, C_BPartner_Location_ID, C_DocType_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_Order_ID, C_PaymentTerm_ID, DateDoc, DateTrx, DeliveryViaRule, Description, DiscountAmt, DocStatus, DocumentNo, FreightAmt, FreightCostRule, GrandTotal, IsCancelled, IsPrinted, IsSOTrx, LBR_BillNote, LBR_BPAddress1, LBR_BPAddress2, LBR_BPAddress3, LBR_BPAddress4, LBR_BPCity, LBR_BPCityCode, LBR_BPCNPJ, LBR_BPCountry, LBR_BPCountryCode, LBR_BPDeliveryAddress1, LBR_BPDeliveryAddress2, LBR_BPDeliveryAddress3, LBR_BPDeliveryAddress4, LBR_BPDeliveryCity, LBR_BPDeliveryCityCode, LBR_BPDeliveryCNPJ, LBR_BPDeliveryCountry, LBR_BPDeliveryIE, LBR_BPDeliveryPostal, LBR_BPDeliveryRegion, LBR_BPIE, LBR_BPInvoiceAddress1, LBR_BPInvoiceAddress2, LBR_BPInvoiceAddress3, LBR_BPInvoiceAddress4, LBR_BPInvoiceCity, LBR_BPInvoiceCNPJ, LBR_BPInvoiceCountry, LBR_BPInvoiceIE, LBR_BPInvoicePostal, LBR_BPInvoiceRegion, LBR_BPPhone, LBR_BPPostal, LBR_BPRegion, LBR_BPShipperAddress, LBR_BPShipperAddress1, LBR_BPShipperAddress2, LBR_BPShipperAddress3, LBR_BPShipperAddress4, LBR_BPShipperCity, LBR_BPShipperCNPJ, LBR_BPShipperCountry, LBR_BPShipperIE, LBR_BPShipperLicensePlate, LBR_BPShipperName, LBR_BPShipperPostal, LBR_BPShipperRegion, LBR_BPSuframa, LBR_BPTypeBR, LBR_Brand, LBR_CFOPNote, LBR_CNPJ, LBR_DateInOut, LBR_DE_ID, LBR_Delivery_Location_ID, LBR_FinNFe, LBR_FiscalOBS, LBR_FreightCostRule, LBR_GrossWeight, LBR_IE, LBR_IndIEDest, LBR_IndPres, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_MotivoCancel, LBR_NetWeight, LBR_NFeDesc, LBR_NFeEnv, LBR_NFeID, LBR_NFeLot_ID, LBR_NFENo, LBR_NFeStatus, LBR_NFModel, LBR_NFSerie, LBR_NFType, LBR_OrgAddress1, LBR_OrgAddress2, LBR_OrgAddress3, LBR_OrgAddress4, LBR_OrgCCM, LBR_OrgCity, LBR_OrgCountry, LBR_OrgName, LBR_OrgPhone, LBR_OrgPostal, LBR_OrgRegion, LBR_OtherChargesAmt, LBR_PackingType, LBR_ServiceTotalAmt, LBR_Ship_Location_ID, LBR_ShipNote, LBR_TimeInOut, LBR_TotalCIF, LBR_TotalSISCOMEX, LBR_TPEmis, LBR_TransactionType, M_InOut_ID, M_Shipper_ID, NoPackages, Org_Location_ID, TotalLines, ICMS_TaxAmt, ICMS_TaxBaseAmt, PIS_TaxAmt, PIS_TaxBaseAmt, COFINS_TaxAmt, COFINS_TaxBaseAmt, IPI_TaxAmt, IPI_TaxBaseAmt, ICMSST_TaxAmt, ICMSST_TaxBaseAmt , DIFAL_TaxAmt, DIFAL_TaxBaseAmt, DIFALO_TaxAmt, DIFALO_TaxBaseAmt, FCP_TaxAmt, FCP_TaxBaseAmt, DateAcct) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Org_ID AS AD_Org_ID, nf.AD_Client_ID AS AD_Client_ID, nf.IsActive AS IsActive, nf.Created AS Created, nf.CreatedBy AS CreatedBy, nf.Updated AS Updated, nf.UpdatedBy AS UpdatedBy, nf.Bill_Location_ID AS Bill_Location_ID, nf.BPName AS BPName, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_BPartner_Location_ID AS C_BPartner_Location_ID, nf.C_DocType_ID AS C_DocType_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nf.C_Order_ID AS C_Order_ID, nf.C_PaymentTerm_ID AS C_PaymentTerm_ID, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nf.DeliveryViaRule AS DeliveryViaRule, nf.Description AS Description, nf.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, nf.DocumentNo AS DocumentNo, nf.FreightAmt AS FreightAmt, nf.FreightCostRule AS FreightCostRule, nf.GrandTotal AS GrandTotal, nf.IsCancelled AS IsCancelled, nf.IsPrinted AS IsPrinted, nf.IsSOTrx AS IsSOTrx, nf.LBR_BillNote AS LBR_BillNote, nf.LBR_BPAddress1 AS LBR_BPAddress1, nf.LBR_BPAddress2 AS LBR_BPAddress2, nf.LBR_BPAddress3 AS LBR_BPAddress3, nf.LBR_BPAddress4 AS LBR_BPAddress4, nf.LBR_BPCity AS LBR_BPCity, nf.LBR_BPCityCode AS LBR_BPCityCode, nf.LBR_BPCNPJ AS LBR_BPCNPJ, nf.LBR_BPCountry AS LBR_BPCountry, nf.LBR_BPCountryCode AS LBR_BPCountryCode, nf.LBR_BPDeliveryAddress1 AS LBR_BPDeliveryAddress1, nf.LBR_BPDeliveryAddress2 AS LBR_BPDeliveryAddress2, nf.LBR_BPDeliveryAddress3 AS LBR_BPDeliveryAddress3, nf.LBR_BPDeliveryAddress4 AS LBR_BPDeliveryAddress4, nf.LBR_BPDeliveryCity AS LBR_BPDeliveryCity, nf.LBR_BPDeliveryCityCode AS LBR_BPDeliveryCityCode, nf.LBR_BPDeliveryCNPJ AS LBR_BPDeliveryCNPJ, nf.LBR_BPDeliveryCountry AS LBR_BPDeliveryCountry, nf.LBR_BPDeliveryIE AS LBR_BPDeliveryIE, nf.LBR_BPDeliveryPostal AS LBR_BPDeliveryPostal, nf.LBR_BPDeliveryRegion AS LBR_BPDeliveryRegion, nf.LBR_BPIE AS LBR_BPIE, nf.LBR_BPInvoiceAddress1 AS LBR_BPInvoiceAddress1, nf.LBR_BPInvoiceAddress2 AS LBR_BPInvoiceAddress2, nf.LBR_BPInvoiceAddress3 AS LBR_BPInvoiceAddress3, nf.LBR_BPInvoiceAddress4 AS LBR_BPInvoiceAddress4, nf.LBR_BPInvoiceCity AS LBR_BPInvoiceCity, nf.LBR_BPInvoiceCNPJ AS LBR_BPInvoiceCNPJ, nf.LBR_BPInvoiceCountry AS LBR_BPInvoiceCountry, nf.LBR_BPInvoiceIE AS LBR_BPInvoiceIE, nf.LBR_BPInvoicePostal AS LBR_BPInvoicePostal, nf.LBR_BPInvoiceRegion AS LBR_BPInvoiceRegion, nf.LBR_BPPhone AS LBR_BPPhone, nf.LBR_BPPostal AS LBR_BPPostal, nf.LBR_BPRegion AS LBR_BPRegion, nf.LBR_BPShipperAddress AS LBR_BPShipperAddress, nf.LBR_BPShipperAddress1 AS LBR_BPShipperAddress1, nf.LBR_BPShipperAddress2 AS LBR_BPShipperAddress2, nf.LBR_BPShipperAddress3 AS LBR_BPShipperAddress3, nf.LBR_BPShipperAddress4 AS LBR_BPShipperAddress4, nf.LBR_BPShipperCity AS LBR_BPShipperCity, nf.LBR_BPShipperCNPJ AS LBR_BPShipperCNPJ, nf.LBR_BPShipperCountry AS LBR_BPShipperCountry, nf.LBR_BPShipperIE AS LBR_BPShipperIE, nf.LBR_BPShipperLicensePlate AS LBR_BPShipperLicensePlate, nf.LBR_BPShipperName AS LBR_BPShipperName, nf.LBR_BPShipperPostal AS LBR_BPShipperPostal, nf.LBR_BPShipperRegion AS LBR_BPShipperRegion, nf.LBR_BPSuframa AS LBR_BPSuframa, nf.LBR_BPTypeBR AS LBR_BPTypeBR, nf.LBR_Brand AS LBR_Brand, nf.LBR_CFOPNote AS LBR_CFOPNote, nf.LBR_CNPJ AS LBR_CNPJ, nf.LBR_DateInOut AS LBR_DateInOut, nf.LBR_DE_ID AS LBR_DE_ID, nf.LBR_Delivery_Location_ID AS LBR_Delivery_Location_ID, nf.LBR_FinNFe AS LBR_FinNFe, nf.LBR_FiscalOBS AS LBR_FiscalOBS, nf.LBR_FreightCostRule AS LBR_FreightCostRule, nf.LBR_GrossWeight AS LBR_GrossWeight, nf.LBR_IE AS LBR_IE, nf.LBR_IndIEDest AS LBR_IndIEDest, nf.LBR_IndPres AS LBR_IndPres, nf.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nf.LBR_MotivoCancel AS LBR_MotivoCancel, nf.LBR_NetWeight AS LBR_NetWeight, nf.LBR_NFeDesc AS LBR_NFeDesc, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeLot_ID AS LBR_NFeLot_ID, CAST(COALESCE(nf.lbr_nfeno, nf.documentno) AS varchar(30)) AS LBR_NFENo, nf.LBR_NFeStatus AS LBR_NFeStatus, nf.LBR_NFModel AS LBR_NFModel, nf.LBR_NFSerie AS LBR_NFSerie, nf.LBR_NFType AS LBR_NFType, nf.LBR_OrgAddress1 AS LBR_OrgAddress1, nf.LBR_OrgAddress2 AS LBR_OrgAddress2, nf.LBR_OrgAddress3 AS LBR_OrgAddress3, nf.LBR_OrgAddress4 AS LBR_OrgAddress4, nf.LBR_OrgCCM AS LBR_OrgCCM, nf.LBR_OrgCity AS LBR_OrgCity, nf.LBR_OrgCountry AS LBR_OrgCountry, nf.LBR_OrgName AS LBR_OrgName, nf.LBR_OrgPhone AS LBR_OrgPhone, nf.LBR_OrgPostal AS LBR_OrgPostal, nf.LBR_OrgRegion AS LBR_OrgRegion, nf.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nf.LBR_PackingType AS LBR_PackingType, nf.LBR_ServiceTotalAmt AS LBR_ServiceTotalAmt, nf.LBR_Ship_Location_ID AS LBR_Ship_Location_ID, nf.LBR_ShipNote AS LBR_ShipNote, nf.LBR_TimeInOut AS LBR_TimeInOut, nf.LBR_TotalCIF AS LBR_TotalCIF, nf.LBR_TotalSISCOMEX AS LBR_TotalSISCOMEX, nf.LBR_TPEmis AS LBR_TPEmis, nf.LBR_TransactionType AS LBR_TransactionType, nf.M_InOut_ID AS M_InOut_ID, nf.M_Shipper_ID AS M_Shipper_ID, nf.NoPackages AS NoPackages, nf.Org_Location_ID AS Org_Location_ID, nf.TotalLines AS TotalLines, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBaseAmt  AS ICMSST_TaxBaseAmt , difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt, nf.DateAcct AS DateAcct FROM LBR_NotaFiscal nf 
LEFT JOIN LBR_NFTax_v icms ON (nf.LBR_NotaFiscal_ID=icms.LBR_NotaFiscal_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFTax_v pis ON (nf.LBR_NotaFiscal_ID=pis.LBR_NotaFiscal_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFTax_v cofins ON (nf.LBR_NotaFiscal_ID=cofins.LBR_NotaFiscal_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFTax_v ipi ON (nf.LBR_NotaFiscal_ID=ipi.LBR_NotaFiscal_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFTax_v icmsst ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFTax_v difal ON (nf.LBR_NotaFiscal_ID=difal.LBR_NotaFiscal_ID AND difal.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFTax_v difalo ON (nf.LBR_NotaFiscal_ID=difalo.LBR_NotaFiscal_ID AND difalo.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFTax_v fcp ON (nf.LBR_NotaFiscal_ID=fcp.LBR_NotaFiscal_ID AND fcp.TaxIndicator='FCP')
;

-- 24 de mar de 2021 14:51:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120629,'ee5abe3f-9047-4900-9ef3-6b5f5c66543d',TO_DATE('2021-03-24 14:51:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2021-03-24 14:51:13','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DateAcct','nf.DateAcct',1040)
;

-- 24 de mar de 2021 14:51:19 BRT
DROP VIEW RV_LBR_NotaFiscal_Details
;

-- 24 de mar de 2021 14:51:19 BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal_Details(LBR_NotaFiscal_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, C_BPartner_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_InvoiceLine_ID, C_Order_ID, C_UOM_ID, COFINS_TaxAmt, COFINS_TaxBase, COFINS_TaxBaseAmt, COFINS_TaxRate, LBR_CSTCOFINS, LBR_CSTICMS, LBR_CSTIPI, LBR_CSTPIS, DateDoc, DateTrx, Description, Discount, DiscountAmt, DocStatus, FCP_TaxAmt, FCP_TaxBase, FCP_TaxBaseAmt, FCP_TaxRate, FCP_TaxStatus, FreightAmt, GrossRAmt, ICMS_TaxAmt, ICMS_TaxBase, ICMS_TaxBaseAmt, ICMS_TaxRate, DIFAL_TaxAmt, DIFAL_TaxBase, DIFAL_TaxBaseAmt, DIFAL_TaxRate, DIFAL_TaxStatus, DIFALO_TaxAmt, DIFALO_TaxBase, DIFALO_TaxBaseAmt, DIFALO_TaxRate, DIFALO_TaxStatus, ICMSST_TaxAmt, ICMSST_TaxBase, ICMSST_TaxBaseAmt, ICMSST_TaxRate, ICMSST_TaxStatus, IPI_TaxAmt, IPI_TaxBase, IPI_TaxBaseAmt, IPI_TaxRate, IsCancelled, LBR_CEST_ID, LBR_CFOP_ID, LBR_CFOPNote, LBR_FCIValue, LBR_FinNFe, LBR_IndTot, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_IsService, LBR_LineTotalCIF, LBR_LineTotalSISCOMEX, LBR_NCM_ID, LBR_NFDI_ID, LBR_NFeEnv, LBR_NFeID, LBR_NFeStatus, LBR_NotaFiscalLine_ID, LBR_NumAdicao, LBR_NumSeqItem, LBR_OtherChargesAmt, LBR_ProductSource, LBR_ServiceTaxes, LBR_TaxStatus, LBR_TaxStatusIPI, LBR_TransactionType, LBR_UOMName, Line, LineTotalAmt, M_InOut_ID , M_Product_ID, Manufacturer, PIS_TaxAmt, PIS_TaxBase, PIS_TaxBaseAmt, PIS_TaxRate, Price, PriceListAmt, ProductName, ProductValue, Qty, VendorProductNo, lbr_BPDeliveryRegion, lbr_NFENo, DateAcct) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Client_ID AS AD_Client_ID, nf.AD_Org_ID AS AD_Org_ID, nfl.IsActive AS IsActive, nfl.Created AS Created, nfl.CreatedBy AS CreatedBy, nfl.Updated AS Updated, nfl.UpdatedBy AS UpdatedBy, nf.DocumentNo AS DocumentNo, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nfl.C_InvoiceLine_ID AS C_InvoiceLine_ID, nf.C_Order_ID AS C_Order_ID, nfl.C_UOM_ID AS C_UOM_ID, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBase AS COFINS_TaxBase, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, cofins.LBR_TaxRate AS COFINS_TaxRate, cofins.CST AS LBR_CSTCOFINS, icms.CST AS LBR_CSTICMS, ipi.CST AS LBR_CSTIPI, pis.CST AS LBR_CSTPIS, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nfl.Description AS Description, nfl.Discount AS Discount, nfl.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBase AS FCP_TaxBase, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt, fcp.LBR_TaxRate AS FCP_TaxRate, fcp.CST AS FCP_TaxStatus, nfl.FreightAmt AS FreightAmt, ROUND(((nfl.LineTotalAmt+COALESCE(icmsst.LBR_TaxAmt,0))+COALESCE(ipi.LBR_TaxAmt,0)),2) AS GrossRAmt, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBase AS ICMS_TaxBase, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, icms.LBR_TaxRate AS ICMS_TaxRate, difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBase AS DIFAL_TaxBase, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difal.LBR_TaxRate AS DIFAL_TaxRate, difal.CST AS DIFAL_TaxStatus, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBase AS DIFALO_TaxBase, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, difalo.LBR_TaxRate AS DIFALO_TaxRate, difalo.CST AS DIFALO_TaxStatus, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBase AS ICMSST_TaxBase, icmsst.LBR_TaxBaseAmt AS ICMSST_TaxBaseAmt, icmsst.LBR_TaxRate AS ICMSST_TaxRate, icmsst.CST AS ICMSST_TaxStatus, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBase AS IPI_TaxBase, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, ipi.LBR_TaxRate AS IPI_TaxRate, nf.IsCancelled AS IsCancelled, nfl.LBR_CEST_ID AS LBR_CEST_ID, nfl.LBR_CFOP_ID AS LBR_CFOP_ID, nf.LBR_CFOPNote AS LBR_CFOPNote, nfl.LBR_FCIValue AS LBR_FCIValue, nf.LBR_FinNFe AS LBR_FinNFe, nfl.LBR_IndTot AS LBR_IndTot, nfl.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nfl.LBR_IsService AS LBR_IsService, nfl.LBR_LineTotalCIF AS LBR_LineTotalCIF, nfl.LBR_LineTotalSISCOMEX AS LBR_LineTotalSISCOMEX, nfl.LBR_NCM_ID AS LBR_NCM_ID, nfl.LBR_NFDI_ID AS LBR_NFDI_ID, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeStatus AS LBR_NFeStatus, nfl.LBR_NotaFiscalLine_ID AS LBR_NotaFiscalLine_ID, nfl.LBR_NumAdicao AS LBR_NumAdicao, nfl.LBR_NumSeqItem AS LBR_NumSeqItem, nfl.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nfl.LBR_ProductSource AS LBR_ProductSource, nfl.LBR_ServiceTaxes AS LBR_ServiceTaxes, nfl.LBR_TaxStatus AS LBR_TaxStatus, nfl.LBR_TaxStatusIPI AS LBR_TaxStatusIPI, nf.LBR_TransactionType AS LBR_TransactionType, nfl.LBR_UOMName AS LBR_UOMName, nfl.Line AS Line, nfl.LineTotalAmt AS LineTotalAmt, nf.M_InOut_ID  AS M_InOut_ID , nfl.M_Product_ID AS M_Product_ID, nfl.Manufacturer AS Manufacturer, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBase AS PIS_TaxBase, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, pis.LBR_TaxRate AS PIS_TaxRate, nfl.Price AS Price, nfl.PriceListAmt AS PriceListAmt, nfl.ProductName AS ProductName, nfl.ProductValue AS ProductValue, nfl.Qty AS Qty, nfl.VendorProductNo AS VendorProductNo, nf.lbr_BPDeliveryRegion AS lbr_BPDeliveryRegion, CAST(COALESCE(nf.lbr_nfeno, nf.documentno) AS varchar(30)) AS lbr_NFENo, nf.DateAcct AS DateAcct FROM LBR_NotaFiscalline nfl
LEFT JOIN LBR_NotaFiscal nf ON (nfl.LBR_NotaFiscal_ID=nf.LBR_NotaFiscal_ID)
LEFT JOIN LBR_NFLineTax_V icms ON (nfl.LBR_NotaFiscalLine_ID=icms.LBR_NotaFiscalLine_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFLineTax_V pis ON (nfl.LBR_NotaFiscalLine_ID=pis.LBR_NotaFiscalLine_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFLineTax_V cofins ON (nfl.LBR_NotaFiscalLine_ID=cofins.LBR_NotaFiscalLine_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFLineTax_V ipi ON (nfl.LBR_NotaFiscalLine_ID=ipi.LBR_NotaFiscalLine_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFLineTax_V icmsst ON (nfl.LBR_NotaFiscalLine_ID=icmsst.LBR_NotaFiscalLine_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFLineTax_V difal ON (nfl.LBR_NotaFiscalLine_ID=difal.LBR_NotaFiscalLine_ID AND difal.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFLineTax_V difalo ON (nfl.LBR_NotaFiscalLine_ID=difalo.LBR_NotaFiscalLine_ID AND difalo.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFLineTax_V fcp ON (nfl.LBR_NotaFiscalLine_ID=fcp.LBR_NotaFiscalLine_ID AND fcp.TaxIndicator='FCP')
;

-- 24 de mar de 2021 14:51:51 BRT
UPDATE AD_Process_Para SET Name='Account Date', Description='Accounting Date', Help='The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', ColumnName='DateAcct', AD_Element_ID=263,Updated=TO_DATE('2021-03-24 14:51:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120297
;

-- 24 de mar de 2021 14:52:15 BRT
UPDATE AD_Process_Para SET Name='Account Date', Description='Accounting Date', Help='The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.', ColumnName='DateAcct', AD_Element_ID=263,Updated=TO_DATE('2021-03-24 14:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120242
;

-- 24 de mar de 2021 14:52:15 BRT
SELECT Register_Migration_Script ('202103241502_DateAcctNF.sql') FROM DUAL
;

