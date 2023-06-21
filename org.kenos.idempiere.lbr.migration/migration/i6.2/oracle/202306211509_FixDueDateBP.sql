SET SQLBLANKLINES ON
SET DEFINE OFF

-- 21 de jun de 2023 13:50:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133808,0,'Fix month day','Day of the month of the due date','The Fix Month Day indicates the day of the month that invoices are due.  This field only displays if the fixed due date checkbox is selected.',291,'FixMonthDay',81,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2023-06-21 13:50:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-21 13:50:56','YYYY-MM-DD HH24:MI:SS'),100,892,'Y','N','LBRA','N','N','N','Y','69fe56b3-bbe6-4a99-9422-15cf6820e079','Y',0,'N','N','N')
;

-- 21 de jun de 2023 13:51:00 BRT
ALTER TABLE C_BPartner ADD FixMonthDay VARCHAR2(81) DEFAULT NULL 
;

-- 21 de jun de 2023 13:51:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131764,'Fix month day','Day of the month of the due date','The Fix Month Day indicates the day of the month that invoices are due.  This field only displays if the fixed due date checkbox is selected.',220,1133808,'Y',81,850,'N','N','N','N',0,0,'Y',TO_DATE('2023-06-21 13:51:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-06-21 13:51:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9a79908-1ecd-49af-8b4d-18dad2892740','Y',312,5)
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131764
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=450, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54556
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=460, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9619
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=470, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=200622
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=480, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120079
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=490, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000473
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=500, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9610
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=510, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9603
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=520, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9621
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=530, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9608
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=540, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201866
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=550, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9609
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=560, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2124
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=570, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3261
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=580, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9604
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=590, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9618
;

-- 21 de jun de 2023 13:53:41 BRT
UPDATE AD_Field SET SeqNo=600, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9625
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=610, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9613
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=620, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2154
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=630, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2132
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=640, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2144
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=650, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2127
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=660, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2146
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=670, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2153
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=680, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2148
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=690, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2128
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=700, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2135
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=710, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127182
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=720, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125609
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=730, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000007
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=740, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000008
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=750, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000011
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=760, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000014
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=770, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000010
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=780, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000009
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=790, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=800, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=810, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000015
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=820, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000871
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=830, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000426
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=840, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125716
;

-- 21 de jun de 2023 13:53:42 BRT
UPDATE AD_Field SET SeqNo=850, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130016
;

-- 21 de jun de 2023 13:54:37 BRT
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-06-21 13:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131764
;

-- 21 de jun de 2023 13:54:37 BRT
SELECT Register_Migration_Script ('202306211509_FixDueDateBP.sql') FROM DUAL
;

