SET SQLBLANKLINES ON
SET DEFINE OFF

-- 23 de abr de 2024 17:48:51 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123408,0,0,'Y',TO_DATE('2024-04-23 17:46:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-04-23 17:46:34','YYYY-MM-DD HH24:MI:SS'),100,'LBR_MinDueDays','Minimum Due Days','Minimum number of days due to bank slip generation','Specifies the minimum number of days before the invoice''s due date required to generate a bank slip. If the remaining days until an invoice is due are fewer than this minimum, the bank slip generation will be skipped to avoid sending slips too close to the payment deadline.','Minimum Due Days','LBRA','99c2b1ae-d125-4447-82b9-57055aa9b3f5')
;

-- 23 de abr de 2024 17:49:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133921,0,'Minimum Due Days','Minimum number of days due to bank slip generation','Specifies the minimum number of days before the invoice''s due date required to generate a bank slip. If the remaining days until an invoice is due are fewer than this minimum, the bank slip generation will be skipped to avoid sending slips too close to the payment deadline.',1120690,'LBR_MinDueDays','0',14,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2024-04-23 17:49:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-04-23 17:49:18','YYYY-MM-DD HH24:MI:SS'),100,1123408,'Y','N','LBRA','N','N','N','Y','0dad7e09-763b-444a-a74e-7abf7a6deaf8','Y',0,'N','N','N','N')
;

-- 23 de abr de 2024 17:50:58 BRT
ALTER TABLE LBR_BankSlipConfig ADD LBR_MinDueDays NUMBER(10) DEFAULT 0 NOT NULL
;

-- 23 de abr de 2024 17:51:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131899,'Minimum Due Days','Minimum number of days due to bank slip generation','Specifies the minimum number of days before the invoice''s due date required to generate a bank slip. If the remaining days until an invoice is due are fewer than this minimum, the bank slip generation will be skipped to avoid sending slips too close to the payment deadline.',1120397,1133921,'Y',14,230,'N','N','N','N',0,0,'Y',TO_DATE('2024-04-23 17:51:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-04-23 17:51:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e63794c8-1dec-4622-a48e-5bdf43535bec','Y',240,2)
;

-- 23 de abr de 2024 17:51:29 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131899
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129797
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129798
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129799
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129800
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129801
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129802
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129803
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129804
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129805
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129806
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129807
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129808
;

-- 23 de abr de 2024 17:51:30 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-04-23 17:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129809
;

-- 23 de abr de 2024 17:51:30 BRT
SELECT Register_Migration_Script ('202404231821_MinDueDaysBS.sql') FROM DUAL
;

