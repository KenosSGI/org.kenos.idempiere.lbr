SET SQLBLANKLINES ON
SET DEFINE OFF

-- 27 de nov de 2023 14:09:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133893,0,'Reconciled','Payment is reconciled with bank statement',1120461,'IsReconciled','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2023-11-27 14:09:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:09:19','YYYY-MM-DD HH24:MI:SS'),100,1105,'N','N','LBRA','N','N','N','Y','4483a7ad-7993-41f5-80e6-208bbf986a1e','Y',0,'N','N','N')
;

-- 27 de nov de 2023 14:09:23 BRT
ALTER TABLE LBR_PartnerDFe ADD IsReconciled CHAR(1) DEFAULT 'N' CHECK (IsReconciled IN ('Y','N')) NOT NULL
;

-- 27 de nov de 2023 14:10:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131813,'Manifest Tries',1120197,1133729,'Y',1,250,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','48845655-0471-4559-9834-97a57772c872','Y',240,2)
;

-- 27 de nov de 2023 14:10:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131814,'Valid','Element is valid','The element passed the validation check',1120197,1133732,'Y',1,260,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1466eafb-8b06-4f40-9085-95b504f250a3','Y',250,2,2)
;

-- 27 de nov de 2023 14:10:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131815,'Reconciled','Payment is reconciled with bank statement',1120197,1133893,'Y',1,270,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','86208762-848a-415f-99e5-5c0427a60d3a','Y',260,2,2)
;

-- 27 de nov de 2023 14:10:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131816,'Cancelled','The transaction was cancelled',1120198,1129814,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9bfbce1a-654a-4738-8bf3-8373b205bfc4','Y',150,2,2)
;

-- 27 de nov de 2023 14:10:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131817,'NFe Status','Status of NFe',1120198,1130473,'Y',3,180,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3a4ce817-e894-4942-aeca-76ffc340e0c3','Y',160,2)
;

-- 27 de nov de 2023 14:10:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131818,'NFe Environment',1120198,1133510,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','50a69c9c-16ee-4a52-8148-ca816ad638ef','Y',170,2)
;

-- 27 de nov de 2023 14:10:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131819,'Manifest Tries',1120198,1133729,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5b9576af-04bf-4ec7-953c-af0e73b5d361','Y',180,2)
;

-- 27 de nov de 2023 14:10:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131820,'Valid','Element is valid','The element passed the validation check',1120198,1133732,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','adb1a18a-b055-4671-8413-2956cacb17ef','Y',190,2,2)
;

-- 27 de nov de 2023 14:10:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131821,'Reconciled','Payment is reconciled with bank statement',1120198,1133893,'Y',1,220,'N','N','N','N',0,0,'Y',TO_DATE('2023-11-27 14:10:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2023-11-27 14:10:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','14ff7019-0b0c-449a-b33f-1215e1574b23','Y',200,2,2)
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125536
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131821
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131816
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128206
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125582
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125581
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125540
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125583
;

-- 27 de nov de 2023 14:11:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125577
;

-- 27 de nov de 2023 14:12:04 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131819
;

-- 27 de nov de 2023 14:12:04 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131820
;

-- 27 de nov de 2023 14:12:24 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131817
;

-- 27 de nov de 2023 14:12:25 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131818
;

-- 27 de nov de 2023 14:15:50 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ReadOnlyLogic='@IsReconciled@=Y', IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:15:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131821
;

-- 27 de nov de 2023 14:17:19 BRT
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125517
;

-- 27 de nov de 2023 14:17:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131815
;

-- 27 de nov de 2023 14:17:19 BRT
UPDATE AD_Field SET SeqNo=190,Updated=TO_DATE('2023-11-27 14:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127507
;

-- 27 de nov de 2023 14:17:19 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125578
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125579
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125576
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131248
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131247
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128205
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131813
;

-- 27 de nov de 2023 14:17:20 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2023-11-27 14:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131814
;

-- 27 de nov de 2023 14:17:28 BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131814
;

-- Update events (unless, operation not done)
UPDATE LBR_PartnerDFe 
SET IsReconciled='Y'
WHERE DocumentType='1'
AND LBR_EventType<>'210240'
;

-- Update nf
UPDATE LBR_PartnerDFe 
SET IsReconciled='Y'
WHERE DocumentType='0'
AND EXISTS (SELECT 1 FROM LBR_NotaFiscal nf 
WHERE nf.AD_Org_ID=LBR_PartnerDFe.AD_Org_ID 
AND nf.IsSOTrx='N'
AND nf.LBR_NFeID=LBR_PartnerDFe.LBR_NFeID
AND nf.DocStatus IN ('CL','CO'))
;

-- 27 de nov de 2023 14:17:28 BRT
SELECT Register_Migration_Script ('202311271432_DFeReconFlag.sql') FROM DUAL
;

