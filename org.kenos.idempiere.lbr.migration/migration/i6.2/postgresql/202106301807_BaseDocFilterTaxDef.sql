-- 30 de jun de 2021 16:47:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133733,0,'Product Category','Category of a Product','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',1106001,'M_Product_Category_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2021-06-30 16:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 16:47:53','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','N','LBRA','N','N','N','Y','624564ba-17f9-4935-8bbd-e158f232f0bf','Y',0,'N','N','N')
;

-- 30 de jun de 2021 16:47:58 BRT
UPDATE AD_Column SET FKConstraintName='MProductCategory_LBRTaxDefinit', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-06-30 16:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133733
;

-- 30 de jun de 2021 16:47:58 BRT
ALTER TABLE LBR_TaxDefinition ADD COLUMN M_Product_Category_ID NUMERIC(10) DEFAULT NULL 
;

-- 30 de jun de 2021 16:47:58 BRT
ALTER TABLE LBR_TaxDefinition ADD CONSTRAINT MProductCategory_LBRTaxDefinit FOREIGN KEY (M_Product_Category_ID) REFERENCES m_product_category(m_product_category_id) DEFERRABLE INITIALLY DEFERRED
;

-- 30 de jun de 2021 16:48:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133734,0,'LBR DocBaseType','Localization Brasil Document Base Type','Localization Brasil Document Base Type',1106001,'lbr_DocBaseType',5,'N','N','N','N','N',0,'N',17,1000043,0,0,'Y',TO_TIMESTAMP('2021-06-30 16:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 16:48:37','YYYY-MM-DD HH24:MI:SS'),100,1000345,'Y','N','LBRA','N','N','N','Y','6f151d9d-35e2-42af-85dd-412f3191bff2','Y',0,'N','N','N')
;

-- 30 de jun de 2021 16:48:41 BRT
ALTER TABLE LBR_TaxDefinition ADD COLUMN lbr_DocBaseType VARCHAR(5) DEFAULT NULL 
;

-- 30 de jun de 2021 16:51:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131614,'Product Category','Category of a Product','Identifies the category which this product belongs to.  Product categories are used for pricing and selection.',1106002,1133733,'Y',22,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-06-30 16:51:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 16:51:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9580e427-54c5-486f-93ca-e91c7dbfe1f6','Y',90,2)
;

-- 30 de jun de 2021 16:51:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131615,'LBR DocBaseType','Localization Brasil Document Base Type','Localization Brasil Document Base Type',1106002,1133734,'Y',5,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-06-30 16:51:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-06-30 16:51:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','63a802bc-5875-422b-8bfb-68d9c8826478','Y',100,2)
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131615
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131614
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106049
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106032
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125717
;

-- 30 de jun de 2021 16:52:10 BRT
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-06-30 16:52:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125690
;

-- 30 de jun de 2021 16:52:10 BRT
SELECT Register_Migration_Script ('202106301807_BaseDocFilterTaxDef.sql') FROM DUAL
;

