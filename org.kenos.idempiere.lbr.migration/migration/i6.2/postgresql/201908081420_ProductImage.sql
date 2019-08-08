-- Image field on Product
-- 8 de ago de 2019 14:19:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (213898,0,'Image','Image or Icon','Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)',208,'AD_Image_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2019-08-08 14:19:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-08-08 14:19:10','YYYY-MM-DD HH24:MI:SS'),100,1639,'Y','N','LBRA','N','N','N','Y','3108e84a-f72f-45dc-81e4-06745ccdd207','Y',0,'N','N','N','N')
;

-- 8 de ago de 2019 14:19:20 BRT
UPDATE AD_Column SET FKConstraintName='ADImage_MProduct', FKConstraintType='N',Updated=TO_TIMESTAMP('2019-08-08 14:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213898
;

-- 8 de ago de 2019 14:19:20 BRT
ALTER TABLE M_Product ADD COLUMN AD_Image_ID NUMERIC(10) DEFAULT NULL 
;

-- 8 de ago de 2019 14:19:20 BRT
ALTER TABLE M_Product ADD CONSTRAINT ADImage_MProduct FOREIGN KEY (AD_Image_ID) REFERENCES ad_image(ad_image_id) DEFERRABLE INITIALLY DEFERRED
;

-- 8 de ago de 2019 14:20:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (206035,'Image','Image or Icon','Images and Icon can be used to display supported graphic formats (gif, jpg, png).
You can either load the image (in the database) or point to a graphic via a URI (i.e. it can point to a resource, http address)',180,213898,'Y',22,20670,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2019-08-08 14:20:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-08-08 14:20:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ae8ff513-47ed-421f-b518-273b9835fd0e','Y',150,2)
;

-- 8 de ago de 2019 14:21:04 BRT
UPDATE AD_Column SET AD_Reference_ID=32,Updated=TO_TIMESTAMP('2019-08-08 14:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213898
;

-- 8 de ago de 2019 14:21:04 BRT
SELECT Register_Migration_Script ('201908081420_ProductImage.sql') FROM DUAL
;

