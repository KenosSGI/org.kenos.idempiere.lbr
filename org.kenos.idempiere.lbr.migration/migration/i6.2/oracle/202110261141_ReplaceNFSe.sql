SET SQLBLANKLINES ON
SET DEFINE OFF

-- 26 de out de 2021 10:48:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123389,0,0,'Y',TO_DATE('2021-10-26 10:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:48:32','YYYY-MM-DD HH24:MI:SS'),100,'Ref_NotaFiscal_ID','Nota Fiscal Ref.','Nota Fiscal Ref.','LBRA','2880b1e7-edea-41ec-bee6-d0eed6137e8c')
;

-- 26 de out de 2021 10:49:43 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123390,0,0,'Y',TO_DATE('2021-10-26 10:49:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:49:42','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFReplaced','NF Replaced','NF Replaced','LBRA','20f7afbe-946e-47f6-a3f3-3f7c152b24cd')
;

-- 26 de out de 2021 10:50:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133753,0,'Nota Fiscal Ref.',1000027,'Ref_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',18,1000026,0,0,'Y',TO_DATE('2021-10-26 10:50:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:50:28','YYYY-MM-DD HH24:MI:SS'),100,1123389,'Y','N','LBRA','N','N','N','Y','06791538-3b18-4c0d-afad-0001230b833d','Y',0,'N','N','N','N')
;

-- 26 de out de 2021 10:50:36 BRT
UPDATE AD_Column SET FKConstraintName='RefNotaFiscal_LBRNotaFiscal', FKConstraintType='N',Updated=TO_DATE('2021-10-26 10:50:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133753
;

-- 26 de out de 2021 10:50:36 BRT
ALTER TABLE LBR_NotaFiscal ADD Ref_NotaFiscal_ID NUMBER(10) DEFAULT NULL 
;

-- 26 de out de 2021 10:50:36 BRT
ALTER TABLE LBR_NotaFiscal ADD CONSTRAINT RefNotaFiscal_LBRNotaFiscal FOREIGN KEY (Ref_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 26 de out de 2021 10:51:12 BRT
UPDATE AD_Element SET ColumnName='LBR_NFReplacedNo',Updated=TO_DATE('2021-10-26 10:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123390
;

-- 26 de out de 2021 10:51:12 BRT
UPDATE AD_Column SET ColumnName='LBR_NFReplacedNo', Name='NF Replaced', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123390
;

-- 26 de out de 2021 10:51:12 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFReplacedNo', Name='NF Replaced', Description=NULL, Help=NULL, AD_Element_ID=1123390 WHERE UPPER(ColumnName)='LBR_NFREPLACEDNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26 de out de 2021 10:51:12 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NFReplacedNo', Name='NF Replaced', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123390 AND IsCentrallyMaintained='Y'
;

-- 26 de out de 2021 10:51:12 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NFReplacedNo', Name='NF Replaced', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123390 AND IsCentrallyMaintained='Y'
;

-- 26 de out de 2021 10:51:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123391,0,0,'Y',TO_DATE('2021-10-26 10:51:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:51:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFReplacedSeries','NF Replaced Series','NF Replaced Series','LBRA','5a282074-d6eb-4a30-b0c4-7a02cc6b8f90')
;

-- 26 de out de 2021 10:52:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133754,0,'NF Replaced',1000027,'LBR_NFReplacedNo',9,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-10-26 10:52:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:52:05','YYYY-MM-DD HH24:MI:SS'),100,1123390,'Y','N','LBRA','N','N','N','Y','12e8254e-7122-444e-9aa0-da13a211e3fb','Y',0,'N','N','N','N')
;

-- 26 de out de 2021 10:52:10 BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFReplacedNo VARCHAR2(9) DEFAULT NULL 
;

-- 26 de out de 2021 10:52:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133755,0,'NF Replaced Series',1000027,'LBR_NFReplacedSeries',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-10-26 10:52:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:52:24','YYYY-MM-DD HH24:MI:SS'),100,1123391,'Y','N','LBRA','N','N','N','Y','7c760b32-9422-42fe-be2d-620d4d245776','Y',0,'N','N','N','N')
;

-- 26 de out de 2021 10:52:29 BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_NFReplacedSeries VARCHAR2(3) DEFAULT NULL 
;

-- 26 de out de 2021 10:53:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131687,'Nota Fiscal Ref.',1000028,1133753,'Y',10,1260,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:53:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b86be35f-8e7e-4a83-99ad-914c57b80c00','Y',807,2)
;

-- 26 de out de 2021 10:53:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131688,'NF Replaced',1000028,1133754,'Y',9,1270,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:53:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cc6bcec5-6a2d-41ae-90aa-0be2127beadd','Y',817,2)
;

-- 26 de out de 2021 10:53:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131689,'NF Replaced Series',1000028,1133755,'Y',3,1280,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:53:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:53:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ceb00c93-d37d-446f-9e6b-ed9ed7f3d0c6','Y',827,2)
;

-- 26 de out de 2021 10:53:53 BRT
UPDATE AD_Field SET Name='Nota Fiscal Replaced', IsCentrallyMaintained='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131687
;

-- 26 de out de 2021 10:54:07 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:54:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131687
;

-- 26 de out de 2021 10:54:14 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:54:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131688
;

-- 26 de out de 2021 10:54:17 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:54:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131689
;

-- 26 de out de 2021 10:54:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131690,'Nota Fiscal Ref.',1000020,1133753,'Y',10,1370,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bb8860f0-1539-4acc-91e2-2f3cf430f35c','Y',1485,2)
;

-- 26 de out de 2021 10:54:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131691,'NF Replaced',1000020,1133754,'Y',9,1380,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','11bd49b0-5d4c-4052-a7ae-ba5a8129ebbb','Y',1495,2)
;

-- 26 de out de 2021 10:54:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131692,'NF Replaced Series',1000020,1133755,'Y',3,1390,'N','N','N','N',0,0,'Y',TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 10:54:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','536a4ed5-0fc6-4259-b66b-c8e91b911558','Y',1505,2)
;

-- 26 de out de 2021 10:55:12 BRT
UPDATE AD_Field SET Name='Nota Fiscal Replaced', IsCentrallyMaintained='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131690
;

-- 26 de out de 2021 10:56:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=1380, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131691
;

-- 26 de out de 2021 10:56:41 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=1390, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131692
;

-- 26 de out de 2021 10:58:04 BRT
UPDATE AD_Field SET SeqNo=485, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131690
;

-- 26 de out de 2021 10:58:11 BRT
UPDATE AD_Field SET SeqNo=486, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:58:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131691
;

-- 26 de out de 2021 10:58:16 BRT
UPDATE AD_Field SET SeqNo=487, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 10:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131692
;

-- 26 de out de 2021 11:00:23 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=S1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 11:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131690
;

-- 26 de out de 2021 11:00:27 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=S1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 11:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131691
;

-- 26 de out de 2021 11:00:31 BRT
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=S1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-10-26 11:00:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131692
;

-- 26 de out de 2021 12:06:26 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120208,'LBR_NotaFiscal (RPS, with NF-eNo, of Org)','S','LBR_NotaFiscal.lbr_NFModel=''S1'' AND LBR_NotaFiscal.LBR_NFENo IS NOT NULL AND LBR_NotaFiscal.AD_Org_ID=@AD_Org_ID@',0,0,'Y',TO_DATE('2021-10-26 12:06:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-10-26 12:06:25','YYYY-MM-DD HH24:MI:SS'),100,'U','7833de6a-4f0e-43c8-92cb-707710eeb745')
;

-- 26 de out de 2021 12:06:37 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120208, AD_Reference_ID=30,Updated=TO_DATE('2021-10-26 12:06:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133753
;

-- 26 de out de 2021 12:06:37 BRT
SELECT Register_Migration_Script ('202110261141_ReplaceNFSe.sql') FROM DUAL
;