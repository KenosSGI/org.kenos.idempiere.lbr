SET SQLBLANKLINES ON
SET DEFINE OFF

-- 13 de mar de 2021 17:52:59 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,ColumnSQL,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133209,0,'Value Column','Fully qualified data value column','The Value Column contains the value data for the chart',1106002,'ValueColumn',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-03-13 17:52:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-13 17:52:58','YYYY-MM-DD HH24:MI:SS'),100,54270,'N','N','LBRA','N','N','(LBR_TaxStatus.Name || ''_'' || LBR_TaxStatus.Description || COALESCE ('' / '' || LBR_TaxStatus.PO_Name || ''_'' || LBR_TaxStatus.PO_Description, ''''))','N','Y','09fef613-0bc7-4905-a602-7a690f6ed9ce','N',0,'N','N','N')
;

-- 13 de mar de 2021 18:04:20 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120388,'LBR_TaxStatus - Table','T',0,0,'Y',TO_DATE('2021-03-13 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-13 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','4321f17d-7b95-4f02-970d-4ba44e31179e')
;

-- 13 de mar de 2021 18:05:04 BRT
INSERT INTO AD_Ref_Table (AD_Reference_ID,AD_Table_ID,AD_Key,AD_Display,OrderByClause,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsValueDisplayed,EntityType,AD_Ref_Table_UU) VALUES (1120388,1106002,1106050,1133209,'LENGTH (Name), Name',0,0,'Y',TO_DATE('2021-03-13 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-13 18:05:04','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA','be3a86da-3a0b-4bfa-917b-cb3676ce28ec')
;

-- 13 de mar de 2021 18:05:26 BRT
UPDATE AD_Field SET AD_Reference_ID=18, AD_Reference_Value_ID=1120388, AD_Val_Rule_ID=1120135,Updated=TO_DATE('2021-03-13 18:05:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127211
;

-- 13 de mar de 2021 18:15:32 BRT
UPDATE AD_Tab SET OrderByClause='LENGTH (LBR_TaxStatus.Name), LBR_TaxStatus.Name',Updated=TO_DATE('2021-03-13 18:15:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1106003
;

-- 13 de mar de 2021 18:28:50 BRT
UPDATE AD_Table SET AD_Window_ID=NULL,Updated=TO_DATE('2021-03-13 18:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120302
;

-- 13 de mar de 2021 18:15:32 BRT
SELECT Register_Migration_Script ('202103131756_TaxStatusOrderBy.sql') FROM DUAL
;

