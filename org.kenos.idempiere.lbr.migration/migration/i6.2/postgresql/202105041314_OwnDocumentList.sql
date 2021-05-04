-- 4 de mai de 2021 11:30:12 BRT
UPDATE AD_Element SET Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', PrintName='Doc Issued By',Updated=TO_TIMESTAMP('2021-05-04 11:30:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000256
;

-- 4 de mai de 2021 11:30:12 BRT
UPDATE AD_Column SET ColumnName='lbr_IsOwnDocument', Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', Placeholder=NULL WHERE AD_Element_ID=1000256
;

-- 4 de mai de 2021 11:30:12 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_IsOwnDocument', Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', AD_Element_ID=1000256 WHERE UPPER(ColumnName)='LBR_ISOWNDOCUMENT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 4 de mai de 2021 11:30:12 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_IsOwnDocument', Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', Placeholder=NULL WHERE AD_Element_ID=1000256 AND IsCentrallyMaintained='Y'
;

-- 4 de mai de 2021 11:30:13 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_IsOwnDocument', Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', Placeholder=NULL WHERE AD_Element_ID=1000256 AND IsCentrallyMaintained='Y'
;

-- 4 de mai de 2021 11:30:13 BRT
UPDATE AD_Field SET Name='Doc Issued By', Description='Identifies this is issued by the company or by 3rd party ', Help='Identifies this is issued by the company or by 3rd party ', Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000256) AND IsCentrallyMaintained='Y'
;

-- 4 de mai de 2021 11:30:13 BRT
UPDATE AD_PrintFormatItem SET PrintName='Doc Issued By', Name='Doc Issued By' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000256)
;

-- 4 de mai de 2021 11:34:19 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120397,'LBR_IsOwnDocument - Doc Issued By','L',0,0,'Y',TO_TIMESTAMP('2021-05-04 11:34:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-05-04 11:34:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','b5bd42c4-7930-4fbd-8b6d-42c989c02d91')
;

-- 4 de mai de 2021 11:35:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122962,'Issued by us (own document)',1120397,'Y',0,0,'Y',TO_TIMESTAMP('2021-05-04 11:35:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-05-04 11:35:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e469a4c2-e2ec-4b14-92f2-3cda30fc675d')
;

-- 4 de mai de 2021 11:36:11 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122963,'Issued by 3rd party',1120397,'N',0,0,'Y',TO_TIMESTAMP('2021-05-04 11:36:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-05-04 11:36:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','78aeb4fa-2c0d-4163-99d4-46d3cc486440')
;

-- 4 de mai de 2021 11:38:22 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:38:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000659
;

-- 4 de mai de 2021 11:51:23 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:51:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100019
;

-- 4 de mai de 2021 11:51:47 BRT
UPDATE AD_Column SET FieldLength=1, AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126999
;

-- 4 de mai de 2021 11:52:12 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:52:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129221
;

-- 4 de mai de 2021 11:52:30 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129406
;

-- 4 de mai de 2021 11:52:56 BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:52:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120234
;

-- 4 de mai de 2021 11:53:11 BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:53:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120244
;

-- 4 de mai de 2021 11:53:27 BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:53:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120298
;

-- 4 de mai de 2021 11:53:48 BRT
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=1120397,Updated=TO_TIMESTAMP('2021-05-04 11:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120549
;

-- 4 de mai de 2021 11:54:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=11, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-05-04 11:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000504
;

-- 4 de mai de 2021 11:54:35 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-05-04 11:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125007
;

-- 4 de mai de 2021 11:54:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=11, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-05-04 11:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000344
;

-- 4 de mai de 2021 11:54:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-05-04 11:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124948
;

-- 4 de mai de 2021 11:54:56 BRT
SELECT Register_Migration_Script ('202105041314_OwnDocumentList.sql') FROM DUAL
;

