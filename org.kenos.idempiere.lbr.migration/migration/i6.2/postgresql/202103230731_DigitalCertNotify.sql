-- 22 de mar de 2021 18:12:36 BRT
UPDATE AD_Column SET IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-03-22 18:12:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128992
;

-- 22 de mar de 2021 18:15:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133511,0,'Role','Responsibility Role','The Role determines security and access a user who has this Role will have in the System.',1100000,'AD_Role_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-03-22 18:15:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-22 18:15:37','YYYY-MM-DD HH24:MI:SS'),100,123,'Y','N','LBRA','N','N','N','Y','644753ec-8943-4aa4-94d6-13b8abc2fb05','Y',0,'N','N','C','N')
;

-- 22 de mar de 2021 18:15:44 BRT
UPDATE AD_Column SET FKConstraintName='ADRole_LBRDigitalCertificate', FKConstraintType='C',Updated=TO_TIMESTAMP('2021-03-22 18:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133511
;

-- 22 de mar de 2021 18:15:44 BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN AD_Role_ID NUMERIC(10) DEFAULT NULL 
;

-- 22 de mar de 2021 18:15:44 BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT ADRole_LBRDigitalCertificate FOREIGN KEY (AD_Role_ID) REFERENCES ad_role(ad_role_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
;

-- 22 de mar de 2021 18:16:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133512,0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1100000,200052,'AD_User_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-03-22 18:16:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-22 18:16:24','YYYY-MM-DD HH24:MI:SS'),100,138,'Y','N','LBRA','N','N','N','Y','0e01e8b9-e420-4aaf-bbb8-cd5812a2b0b8','Y',0,'N','N','N')
;

-- 22 de mar de 2021 18:16:28 BRT
UPDATE AD_Column SET FKConstraintName='ADUser_LBRDigitalCertificate', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-03-22 18:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133512
;

-- 22 de mar de 2021 18:16:28 BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN AD_User_ID NUMERIC(10) DEFAULT NULL 
;

-- 22 de mar de 2021 18:16:28 BRT
ALTER TABLE LBR_DigitalCertificate ADD CONSTRAINT ADUser_LBRDigitalCertificate FOREIGN KEY (AD_User_ID) REFERENCES ad_user(ad_user_id) DEFERRABLE INITIALLY DEFERRED
;

-- 22 de mar de 2021 18:16:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131249,'Role','Responsibility Role','The Role determines security and access a user who has this Role will have in the System.',1100000,1133511,'Y',22,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-22 18:16:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-22 18:16:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0c4f07b9-686a-4ea0-999d-7c5df2ed32cf','Y',150,2)
;

-- 22 de mar de 2021 18:16:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131250,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1100000,1133512,'Y',22,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-22 18:16:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-22 18:16:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b9c14654-95f7-4cc8-b8c2-76f301698079','Y',160,2)
;

-- 22 de mar de 2021 18:17:56 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100005
;

-- 22 de mar de 2021 18:17:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126172
;

-- 22 de mar de 2021 18:17:56 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100007
;

-- 22 de mar de 2021 18:17:56 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100011
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100009
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129949
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100006
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100013
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100014
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100015
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126171
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127024
;

-- 22 de mar de 2021 18:17:57 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131250
;

-- 22 de mar de 2021 18:18:21 BRT
INSERT INTO AD_FieldGroup (AD_FieldGroup_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,EntityType,FieldGroupType,IsCollapsedByDefault,AD_FieldGroup_UU) VALUES (1120095,0,0,'Y',TO_TIMESTAMP('2021-03-22 18:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-22 18:18:21','YYYY-MM-DD HH24:MI:SS'),100,'Notification','LBRA','C','N','2af9f80e-885a-4e62-a39e-b2de59d32cfd')
;

-- 22 de mar de 2021 18:18:47 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120095, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:18:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131249
;

-- 22 de mar de 2021 18:18:54 BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1120095, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-22 18:18:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131250
;

-- 22 de mar de 2021 18:18:54 BRT
SELECT Register_Migration_Script ('202103230731_DigitalCertNotify.sql') FROM DUAL
;

