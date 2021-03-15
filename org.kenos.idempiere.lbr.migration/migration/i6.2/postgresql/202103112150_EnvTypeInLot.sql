-- 11 de mar de 2021 21:47:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133138,0,'NFe Environment',1100001,'lbr_NFeEnv','1',1,'N','N','Y','N','N',0,'N',17,1100001,0,0,'Y',TO_TIMESTAMP('2021-03-11 21:47:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-11 21:47:17','YYYY-MM-DD HH24:MI:SS'),100,1100011,'Y','N','LBRA','N','N','N','Y','df3c8ea8-21bf-483a-b206-e7eb0f21e9bd','Y',0,'N','N','N')
;

-- 11 de mar de 2021 21:47:28 BRT
ALTER TABLE LBR_NFeLot ADD COLUMN lbr_NFeEnv CHAR(1) DEFAULT '1' NOT NULL
;

-- 11 de mar de 2021 21:47:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130581,'NFe Environment',1100001,1133138,'Y',1,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-11 21:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-11 21:47:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2120c41-e369-47d8-9729-a05667a84d5e','Y',200,2)
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130581
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124992
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124991
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100034
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100032
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100033
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100040
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100041
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100043
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100038
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100039
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100031
;

-- 11 de mar de 2021 21:48:02 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 21:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100027
;

-- 11 de mar de 2021 21:56:34 BRT
UPDATE AD_Column SET DefaultValue='@SQL=SELECT lbr_NFeEnv FROM LBR_NFConfig WHERE lbr_NFModel=''@lbr_NFModel@'' AND AD_Org_ID=@AD_Org_ID@',Updated=TO_TIMESTAMP('2021-03-11 21:56:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133138
;

-- 11 de mar de 2021 21:56:34 BRT
UPDATE LBR_NFeLot SET LBR_NFeEnv='2' WHERE EXISTS (SELECT 1 FROM LBR_NotaFiscal nf WHERE nf.LBR_NFeLot_ID=LBR_NFeLot.LBR_NFeLot_ID AND nf.LBR_NFeEnv='2')
;

-- 11 de mar de 2021 22:30:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133139,0,'NFe Environment',1120247,'lbr_NFeEnv','1',1,'N','N','Y','N','N',0,'N',17,1100001,0,0,'Y',TO_TIMESTAMP('2021-03-11 22:30:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-11 22:30:12','YYYY-MM-DD HH24:MI:SS'),100,1100011,'Y','N','LBRA','N','N','N','Y','ef591d9d-3ad2-43be-aa1c-2498ccccdb77','Y',0,'N','N','N')
;

-- 11 de mar de 2021 22:30:23 BRT
ALTER TABLE LBR_NFeEvent ADD COLUMN lbr_NFeEnv CHAR(1) DEFAULT '1' NOT NULL
;

-- 11 de mar de 2021 22:30:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130582,'NFe Environment',1120049,1133139,'Y',1,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-11 22:30:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-11 22:30:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0a0ace07-f6ba-43e6-91b8-6846955f8444','Y',200,2)
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121206
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127368
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130582
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125562
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127369
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121200
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121198
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=160,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121208
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121201
;

-- 11 de mar de 2021 22:32:06 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121202
;

-- 11 de mar de 2021 22:32:07 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121193
;

-- 11 de mar de 2021 22:32:07 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121194
;

-- 11 de mar de 2021 22:32:07 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121207
;

-- 11 de mar de 2021 22:32:07 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121205
;

-- 11 de mar de 2021 22:32:07 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-11 22:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121195
;

-- 11 de mar de 2021 22:34:02 BRT
UPDATE AD_Column SET DefaultValue='@SQL=SELECT lbr_NFeEnv FROM LBR_NFConfig WHERE lbr_NFModel=''@lbr_NFModel@'' AND AD_Org_ID=@AD_Org_ID@',Updated=TO_TIMESTAMP('2021-03-11 22:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133139
;

-- 11 de mar de 2021 15:41:14 BRT
SELECT Register_Migration_Script ('202103112150_EnvTypeInLot.sql') FROM DUAL
;

