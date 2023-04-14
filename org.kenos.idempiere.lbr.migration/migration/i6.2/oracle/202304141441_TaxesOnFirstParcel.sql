SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14 de abr de 2023 14:30:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133800,0,'Min Amount','Minimum Amount in invoice currency','The Minimum amount indicates the minimum amount as stated in the currency of the invoice.',113,'MinAmt','0',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2023-04-14 14:30:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-04-14 14:30:29','YYYY-MM-DD HH24:MI:SS'),100,938,'Y','N','LBRA','N','N','N','Y','6d31fc00-3f47-4e75-b73e-bc98df002784','Y',0,'N','N','N')
;

-- 14 de abr de 2023 14:30:31 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2023-04-14 14:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133800
;

-- 14 de abr de 2023 14:30:33 BRT
ALTER TABLE C_PaymentTerm ADD MinAmt NUMBER DEFAULT 0 NOT NULL
;

-- 14 de abr de 2023 14:30:58 BRT
ALTER TABLE C_PaymentTerm MODIFY MinAmt NUMBER DEFAULT 0
;

-- 14 de abr de 2023 14:30:58 BRT
UPDATE C_PaymentTerm SET MinAmt=0 WHERE MinAmt IS NULL
;

-- 14 de abr de 2023 14:32:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123399,0,0,'Y',TO_DATE('2023-04-14 14:31:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-04-14 14:31:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_TaxesFirstParcel','Taxes on First Parcel','Include taxes on first parcel','If checked, then taxes that are included in price should be included in the first parcel (e.g. IPI, ICMS ST, DIFAL, etc.)','Taxes on First Parcel','LBRA','bd89ab9b-e2f1-4b13-a289-d444b8896774')
;

-- 14 de abr de 2023 14:32:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133801,0,'Taxes on First Parcel','Include taxes on first parcel','If checked, then taxes that are included in price should be included in the first parcel (e.g. IPI, ICMS ST, DIFAL, etc.)',113,'LBR_TaxesFirstParcel','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-04-14 14:32:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-04-14 14:32:36','YYYY-MM-DD HH24:MI:SS'),100,1123399,'Y','N','LBRA','N','N','N','Y','0bbf60a2-30be-4d36-ad45-4180754fb97c','Y',0,'N','N','N','N')
;

-- 14 de abr de 2023 14:32:38 BRT
ALTER TABLE C_PaymentTerm ADD LBR_TaxesFirstParcel CHAR(1) DEFAULT 'N' CHECK (LBR_TaxesFirstParcel IN ('Y','N')) NOT NULL
;

-- 14 de abr de 2023 14:32:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131756,'Min Amount','Minimum Amount in invoice currency','The Minimum amount indicates the minimum amount as stated in the currency of the invoice.',184,1133800,'Y',10,20270,'N','N','N','N',0,0,'Y',TO_DATE('2023-04-14 14:32:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-04-14 14:32:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','88842128-9104-43f6-ab9f-4e5be0226cb1','Y',270,2)
;

-- 14 de abr de 2023 14:32:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131757,'Taxes on First Parcel','Include taxes on first parcel','If checked, then taxes that are included in price should be included in the first parcel (e.g. IPI, ICMS ST, DIFAL, etc.)',184,1133801,'Y',1,20280,'N','N','N','N',0,0,'Y',TO_DATE('2023-04-14 14:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-04-14 14:32:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','38141466-ef7f-4d32-8b2e-0b209455d575','Y',280,2,2)
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8662
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6553
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_FieldGroup_ID=1000000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131757
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131756
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000734
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000735
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000736
;

-- 14 de abr de 2023 14:33:35 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-04-14 14:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204775
;

SELECT Register_Migration_Script ('202304141441_TaxesOnFirstParcel.sql') FROM DUAL
;

