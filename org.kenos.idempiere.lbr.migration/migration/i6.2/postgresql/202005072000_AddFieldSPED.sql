-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 7 de mai de 2020 23:47:46 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120336,'LBR_IndPerfil - AD_Org','L',0,0,'Y',TO_TIMESTAMP('2020-05-07 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','c587f79e-652e-405b-a604-a248b60f78ee')
;

-- 7 de mai de 2020 23:49:09 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122320,'Perfil A',1120336,'A',0,0,'Y',TO_TIMESTAMP('2020-05-07 23:49:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:49:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','3efa2938-9491-490d-a9e8-a0e572a512c6')
;

-- 7 de mai de 2020 23:49:22 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122321,'Perfil B',1120336,'B',0,0,'Y',TO_TIMESTAMP('2020-05-07 23:49:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:49:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','820201e0-bc15-4847-a579-04edb6e76515')
;

-- 7 de mai de 2020 23:49:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1122322,'Perfil C',1120336,'C',0,0,'Y',TO_TIMESTAMP('2020-05-07 23:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:49:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','08f4b220-a44b-4cd0-93fb-c1d1868aeeba')
;

-- 7 de mai de 2020 23:51:13 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1122995,0,0,'Y',TO_TIMESTAMP('2020-05-07 23:51:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:51:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndPerfil','Perfil de Apresentacao','Perfil de Apresentacao do arquivo fiscal','Perfil de Apresentacao do arquivo fiscal','LBRA','88c83818-1163-41a8-b8eb-486c6a91396e')
;

-- 7 de mai de 2020 23:51:32 BRT
UPDATE AD_Element SET Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', PrintName='Perfil de Apresentação do arquivo fiscal',Updated=TO_TIMESTAMP('2020-05-07 23:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122995
;

-- 7 de mai de 2020 23:51:32 BRT
UPDATE AD_Column SET ColumnName='LBR_IndPerfil', Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122995
;

-- 7 de mai de 2020 23:51:32 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IndPerfil', Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', Help=NULL, AD_Element_ID=1122995 WHERE UPPER(ColumnName)='LBR_INDPERFIL' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 7 de mai de 2020 23:51:33 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IndPerfil', Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122995 AND IsCentrallyMaintained='Y'
;

-- 7 de mai de 2020 23:51:33 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_IndPerfil', Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1122995 AND IsCentrallyMaintained='Y'
;

-- 7 de mai de 2020 23:51:33 BRT
UPDATE AD_Field SET Name='Perfil de Apresentação', Description='Perfil de Apresentação do arquivo fiscal', Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122995) AND IsCentrallyMaintained='Y'
;

-- 7 de mai de 2020 23:51:33 BRT
UPDATE AD_PrintFormatItem SET PrintName='Perfil de Apresentação do arquivo fiscal', Name='Perfil de Apresentação' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122995)
;

-- 7 de mai de 2020 23:52:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1131895,0,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',228,'LBR_IndPerfil',NULL,1,'N','N','N','N','N',0,'N',17,1120336,0,0,'Y',TO_TIMESTAMP('2020-05-07 23:52:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:52:41','YYYY-MM-DD HH24:MI:SS'),100,1122995,'Y','N','LBRA','N','N','N','Y','fbd491de-a573-44f2-b139-b6a4635ab9ba','Y',0,'N','N','N','N')
;

-- 7 de mai de 2020 23:52:53 BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_IndPerfil CHAR(1) DEFAULT NULL 
;

-- 7 de mai de 2020 23:53:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129366,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',170,1131895,'Y',0,20400,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-05-07 23:53:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-05-07 23:53:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','23c2a70f-1638-423a-9def-f6087dbe9c5b','Y',370,1,1,1,'N','N','N')
;

-- 7 de mai de 2020 23:53:41 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-05-07 23:53:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129366
;

-- 7 de mai de 2020 23:57:09 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-05-07 23:57:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129366
;

SELECT Register_Migration_Script ('202005072000_AddFieldSPED.sql') FROM DUAL
;