-- 19 de mar de 2021 09:32:00 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133508,0,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1120692,'C_InvoiceLine_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-03-19 09:31:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-19 09:31:59','YYYY-MM-DD HH24:MI:SS'),100,1076,'N','N','LBRA','N','N','N','Y','6f700983-81b5-493f-bc4c-b06021468a1e','Y',0,'N','N','N','N')
;

-- 19 de mar de 2021 09:32:06 BRT
UPDATE AD_Column SET FKConstraintName='CInvoiceLine_LBRTaxHold', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-03-19 09:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133508
;

-- 19 de mar de 2021 09:32:06 BRT
ALTER TABLE LBR_TaxHold ADD COLUMN C_InvoiceLine_ID NUMERIC(10) DEFAULT NULL 
;

-- 19 de mar de 2021 09:32:06 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT CInvoiceLine_LBRTaxHold FOREIGN KEY (C_InvoiceLine_ID) REFERENCES c_invoiceline(c_invoiceline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de mar de 2021 09:32:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133509,0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120692,'LBR_NotaFiscalLine_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2021-03-19 09:32:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-19 09:32:29','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','LBRA','N','N','N','Y','be3775b9-dcbe-424e-b732-3999c89387a1','Y',0,'N','N','N','N')
;

-- 19 de mar de 2021 09:32:31 BRT
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscalLine_LBRTaxHold', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-03-19 09:32:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133509
;

-- 19 de mar de 2021 09:32:31 BRT
ALTER TABLE LBR_TaxHold ADD COLUMN LBR_NotaFiscalLine_ID NUMERIC(10) DEFAULT NULL 
;

-- 19 de mar de 2021 09:32:31 BRT
ALTER TABLE LBR_TaxHold ADD CONSTRAINT LBRNotaFiscalLine_LBRTaxHold FOREIGN KEY (LBR_NotaFiscalLine_ID) REFERENCES lbr_notafiscalline(lbr_notafiscalline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de mar de 2021 09:33:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131245,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1120399,1133508,'Y',22,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-19 09:33:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-19 09:33:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','77edf635-53a5-424b-b111-9fd934baf5d5','Y',230,2)
;

-- 19 de mar de 2021 09:33:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131246,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120399,1133509,'Y',10,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-03-19 09:33:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-03-19 09:33:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f479b753-9425-4128-9dac-1cc194acb4e2','Y',240,2)
;

-- 19 de mar de 2021 09:33:37 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-19 09:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131245
;

-- 19 de mar de 2021 09:33:37 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-19 09:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131246
;

-- 19 de mar de 2021 09:33:37 BRT
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-19 09:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130986
;

-- 19 de mar de 2021 09:33:53 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-19 09:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131245
;

-- 19 de mar de 2021 09:33:57 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-03-19 09:33:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131246
;

-- 19 de mar de 2021 09:34:54 BRT
UPDATE AD_Tab SET OrderByClause='LBR_TaxHold.IsActive DESC, LBR_TaxHold.ValidFrom DESC',Updated=TO_TIMESTAMP('2021-03-19 09:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120399
;

-- 19 de mar de 2021 09:44:36 BRT
UPDATE AD_Tab SET IsReadOnly='N', IsInsertRecord='Y',Updated=TO_TIMESTAMP('2021-03-19 09:44:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120399
;

-- 19 de mar de 2021 09:49:53 BRT
UPDATE AD_Ref_Table SET OrderByClause='LENGTH (LBR_TaxStatus.Name), LBR_TaxStatus.Name',Updated=TO_TIMESTAMP('2021-03-19 09:49:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120388
;

-- 19 de mar de 2021 09:49:53 BRT
SELECT Register_Migration_Script ('202103190949_FixOrderByTaxHold.sql') FROM DUAL
;

