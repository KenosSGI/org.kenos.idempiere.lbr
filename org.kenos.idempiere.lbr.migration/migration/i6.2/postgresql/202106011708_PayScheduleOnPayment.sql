-- 1 de jun de 2021 16:58:24 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120203,'C_InvoicePaySchedule of C_Invoice','S','C_InvoicePaySchedule.C_Invoice_ID=@C_Invoice_ID@',0,0,'Y',TO_TIMESTAMP('2021-06-01 16:58:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-01 16:58:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9279dead-ce3a-4f31-8076-06c09fd3f6ff')
;

-- 1 de jun de 2021 17:00:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133730,0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',335,1120203,'C_InvoicePaySchedule_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-06-01 17:00:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-01 17:00:09','YYYY-MM-DD HH24:MI:SS'),100,1995,'Y','N','LBRA','N','N','N','Y','0c93c00d-e4ea-49e2-93db-2ea8aa072b08','Y',0,'N','N','N')
;

-- 1 de jun de 2021 17:00:16 BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_CPayment', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-06-01 17:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133730
;

-- 1 de jun de 2021 17:00:16 BRT
ALTER TABLE C_Payment ADD COLUMN C_InvoicePaySchedule_ID NUMERIC(10) DEFAULT NULL 
;

-- 1 de jun de 2021 17:00:16 BRT
ALTER TABLE C_Payment ADD CONSTRAINT CInvoicePaySchedule_CPayment FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) DEFERRABLE INITIALLY DEFERRED
;

-- 1 de jun de 2021 17:00:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131549,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',330,1133730,'Y',22,10245,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-06-01 17:00:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-01 17:00:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6d3b7b96-e203-44c6-857d-a8ba2ef50382','Y',110,2)
;

-- 1 de jun de 2021 17:01:34 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131549
;

-- 1 de jun de 2021 17:01:34 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6551
;

-- 1 de jun de 2021 17:01:34 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=11013
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7807
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7808
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7806
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7810
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4133
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4129
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8651
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125384
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5117
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5736
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5737
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4056
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200472
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4363
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4054
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4027
;

-- 1 de jun de 2021 17:01:35 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204358
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204357
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4032
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=370, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4041
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4036
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4057
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=400, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4035
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=410, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4037
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=420, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4033
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=430, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4034
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4023
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4025
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4019
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4026
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4024
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6299
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4021
;

-- 1 de jun de 2021 17:01:36 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4022
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4020
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4055
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4043
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4058
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4042
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4258
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4039
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4053
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4052
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200631
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200630
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4051
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4047
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4049
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4048
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200627
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200625
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200626
;

-- 1 de jun de 2021 17:01:37 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200624
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4362
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4361
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6552
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4044
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4266
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4040
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125383
;

-- 1 de jun de 2021 17:01:38 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4131
;

-- 1 de jun de 2021 17:04:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133731,0,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',390,'C_InvoicePaySchedule_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-06-01 17:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-01 17:04:26','YYYY-MM-DD HH24:MI:SS'),100,1995,'N','N','LBRA','N','N','N','Y','513be066-5df7-4c0a-ba30-fe5eb3a04092','Y',0,'N','N','N')
;

-- 1 de jun de 2021 17:04:50 BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2021-06-01 17:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133731
;

-- 1 de jun de 2021 17:04:57 BRT
UPDATE AD_Column SET FKConstraintName='CInvoicePaySchedule_CAllocatio', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-06-01 17:04:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133731
;

-- 1 de jun de 2021 17:04:57 BRT
ALTER TABLE C_AllocationLine ADD COLUMN C_InvoicePaySchedule_ID NUMERIC(10) DEFAULT NULL 
;

-- 1 de jun de 2021 17:04:57 BRT
ALTER TABLE C_AllocationLine ADD CONSTRAINT CInvoicePaySchedule_CAllocatio FOREIGN KEY (C_InvoicePaySchedule_ID) REFERENCES c_invoicepayschedule(c_invoicepayschedule_id) DEFERRABLE INITIALLY DEFERRED
;

-- 1 de jun de 2021 17:05:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131550,'Invoice Payment Schedule','Invoice Payment Schedule','The Invoice Payment Schedule determines when partial payments are due.',349,1133731,'Y',22,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-06-01 17:05:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-01 17:05:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6db653f8-9bf2-454a-aeee-1451071e1ded','Y',140,2)
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4370
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4374
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4372
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131550
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204668
;

-- 1 de jun de 2021 17:05:47 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-01 17:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4371
;

-- 1 de jun de 2021 17:25:22 BRT
UPDATE AD_Column SET IsIdentifier='N', SeqNo=0,Updated=TO_TIMESTAMP('2021-06-01 17:25:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=8310
;

-- 1 de jun de 2021 17:25:28 BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2021-06-01 17:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=8306
;

-- 1 de jun de 2021 17:25:28 BRT
SELECT Register_Migration_Script ('202106011708_PayScheduleOnPayment.sql') FROM DUAL
;