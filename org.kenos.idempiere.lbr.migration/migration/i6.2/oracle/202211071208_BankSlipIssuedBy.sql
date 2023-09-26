SET SQLBLANKLINES ON
SET DEFINE OFF

-- 7 de nov de 2022 11:57:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133780,0,'Issued By',1120687,'LBR_IssuedBy','2',1,'N','N','Y','N','N',0,'N',17,1120365,0,0,'Y',TO_DATE('2022-11-07 11:57:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-11-07 11:57:12','YYYY-MM-DD HH24:MI:SS'),100,1123169,'Y','N','U','N','N','N','Y','95bfe526-fe9d-4690-97ff-8efca8bfab4e','Y',0,'N','N','N','N')
;

-- 7 de nov de 2022 11:57:15 BRT
ALTER TABLE LBR_BankSlipContract ADD LBR_IssuedBy CHAR(1) DEFAULT '2' NOT NULL
;

-- 7 de nov de 2022 11:57:22 BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2022-11-07 11:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133780
;

-- 7 de nov de 2022 11:57:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131731,'Issued By',1120393,1133780,'Y',1,220,'N','N','N','N',0,0,'Y',TO_DATE('2022-11-07 11:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-11-07 11:57:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d4f49076-f20a-4a29-aefe-1aeefe67a684','Y',210,2)
;

-- 7 de nov de 2022 11:58:15 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131731
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129684
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129685
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129686
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129687
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129688
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129689
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131727
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129690
;

-- 7 de nov de 2022 11:58:16 BRT
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129691
;

-- 7 de nov de 2022 11:58:51 BRT
UPDATE AD_Field SET DisplayLogic='@LBR_IssuedBy@=2', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2022-11-07 11:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129684
;

-- 7 de nov de 2022 15:04:14 BRT
UPDATE AD_Window SET TitleLogic='@RoutingNo@ / @AccountNo@ / @SeqNo@',Updated=TO_DATE('2022-11-07 15:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120167
;

-- 7 de nov de 2022 11:58:51 BRT
SELECT Register_Migration_Script ('202211071208_BankSlipIssuedBy.sql') FROM DUAL
;

