-- 26/03/2018 20h16min55s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122451,0,0,'Y',TO_TIMESTAMP('2018-03-26 20:16:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 20:16:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LandedCostAmt','Landed Cost Amt','Landed Cost Amt','LBRA','69ab9143-5cff-43ac-af19-e214bc7214dc')
;

-- Landed Costs
-- 26/03/2018 20h20min44s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122452,0,0,'Y',TO_TIMESTAMP('2018-03-26 20:20:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 20:20:43','YYYY-MM-DD HH24:MI:SS'),100,'LBR_LandedCostQty','Landed Cost Qty','Landed Cost Qty','LBRA','aa365149-fa51-4f85-ab0d-9fb201b62c20')
;

-- 26/03/2018 20h25min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130239,0,'Landed Cost Amt',1120020,'LBR_LandedCostAmt',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2018-03-26 20:25:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 20:25:27','YYYY-MM-DD HH24:MI:SS'),100,1122451,'Y','N','LBRA','N','N','N','Y','12497a10-a287-487d-80f8-ee32f8ede9f2','Y',0,'N','N')
;

-- 26/03/2018 20h25min41s BRT
ALTER TABLE LBR_AverageCostLine ADD COLUMN LBR_LandedCostAmt NUMERIC DEFAULT NULL 
;

-- Landed Costs 2
-- 26/03/2018 20h27min58s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130240,0,'Landed Cost Qty',1120020,'LBR_LandedCostQty',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2018-03-26 20:27:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 20:27:58','YYYY-MM-DD HH24:MI:SS'),100,1122452,'Y','N','LBRA','N','N','N','Y','45692d49-ddd2-41b0-a4b0-7a0c5603ae73','Y',0,'N','N','N')
;

-- 26/03/2018 20h28min2s BRT
ALTER TABLE LBR_AverageCostLine ADD COLUMN LBR_LandedCostQty NUMERIC DEFAULT NULL 
;

-- 26/03/2018 22h44min26s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127343,'Landed Cost Amt',1120016,1130239,'Y',0,130,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-03-26 22:44:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 22:44:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fe94372c-c372-49b5-a243-b1999f546370','Y',130,1,1,1,'N','N','N')
;

-- Landed Costs Field
-- 26/03/2018 22h46min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127344,'Landed Cost Qty',1120016,1130240,'Y',0,140,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-03-26 22:46:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-03-26 22:46:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','479e8a46-1f4f-4926-8798-6b3293c78b4e','Y',140,1,1,1,'N','N','N')
;

-- 26/03/2018 22h47min25s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-03-26 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127343
;

-- 26/03/2018 22h47min25s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-03-26 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127344
;

-- 26/03/2018 22h47min25s BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-03-26 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120230
;

-- 26/03/2018 22h47min25s BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-03-26 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120224
;

-- 26/03/2018 22h47min25s BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-03-26 22:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120223
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/03/2018 23h3min43s BRT
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_TIMESTAMP('2018-03-26 23:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130239
;

-- 26/03/2018 23h3min47s BRT
INSERT INTO t_alter_column values('lbr_averagecostline','LBR_LandedCostAmt','NUMERIC',null,'0')
;

-- 26/03/2018 23h3min47s BRT
UPDATE LBR_AverageCostLine SET LBR_LandedCostAmt=0 WHERE LBR_LandedCostAmt IS NULL
;

-- 26/03/2018 23h3min48s BRT
INSERT INTO t_alter_column values('lbr_averagecostline','LBR_LandedCostAmt',null,'NOT NULL',null)
;

-- 26/03/2018 23h4min6s BRT
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_TIMESTAMP('2018-03-26 23:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130240
;

-- 26/03/2018 23h4min8s BRT
INSERT INTO t_alter_column values('lbr_averagecostline','LBR_LandedCostQty','NUMERIC',null,'0')
;

-- 26/03/2018 23h4min8s BRT
UPDATE LBR_AverageCostLine SET LBR_LandedCostQty=0 WHERE LBR_LandedCostQty IS NULL
;

-- 26/03/2018 23h4min8s BRT
INSERT INTO t_alter_column values('lbr_averagecostline','LBR_LandedCostQty',null,'NOT NULL',null)
;

SELECT Register_Migration_Script ('201803262339_LandedCostsBR.sql') FROM DUAL
;