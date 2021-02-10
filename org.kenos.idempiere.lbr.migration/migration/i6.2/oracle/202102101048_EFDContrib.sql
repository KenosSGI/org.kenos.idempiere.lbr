SET SQLBLANKLINES ON
SET DEFINE OFF

-- 10 de fev de 2021 10:23:55 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120718,'EFD Contributions','Escrituração Fiscal Digital (EFD-Contribuições) pelo contribuinte de PIS e/ou COFINS, pessoa física ou jurídica','Escrituração Fiscal Digital (EFD-ICMS/IPI) pelo contribuinte do ICMS e/ou IPI, pessoa física ou jurídica','LBR_EFDContrib',0,'3',0,0,'Y',TO_DATE('2021-02-10 10:23:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:23:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','9c00e53c-7c55-41aa-981d-9b4444c2c33a','N','N')
;

-- 10 de fev de 2021 10:24:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132940,1.000000000000,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120718,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_DATE('2021-02-10 10:24:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:11','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','ded77394-81f2-4401-8b39-4b7236bcd1a3','N','N','N','D','N')
;

-- 10 de fev de 2021 10:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132941,1.000000000000,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120718,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','Y','N','Y',1,'N',18,322,0,0,'Y',TO_DATE('2021-02-10 10:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:13','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','162649bc-3501-47b4-a93e-8fcef43509e7','N','N','N','D','N')
;

-- 10 de fev de 2021 10:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132942,0,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120718,199,'C_Period_ID',10,'N','N','Y','N','Y',2,'N',18,275,0,0,'Y',TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,206,'Y','N','LBRA','N','N','N','Y','f57c3496-25db-4726-b12c-e03aaf2499b7','Y','N','N','N','N')
;

-- 10 de fev de 2021 10:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132943,0,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120718,'C_Year_ID',22,'N','N','Y','N','N',0,'N',18,1120381,0,0,'Y',TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,223,'Y','N','LBRA','N','N','N','Y','72783653-b733-4673-b13b-aa231727875b','Y','N','N','N','N')
;

-- 10 de fev de 2021 10:24:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132944,1.000000000000,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120718,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:14','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','9f818762-55ea-4497-b291-51b2f45cde69','N','N','N','N','N')
;

-- 10 de fev de 2021 10:24:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132945,1.000000000000,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120718,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','55212fb0-f332-413a-908c-791387f689da','N','N','N','D','N')
;

-- 10 de fev de 2021 10:24:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132946,0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120718,'DateDoc',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','N','N','Y','aeb6fe10-7e72-40aa-9cd4-d184e732dc36','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132947,0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120718,'Description',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','N','N','Y','f2b52a23-c82a-45f0-9cbd-1dacc81334a2','Y',10,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132948,0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120718,'DocAction','CO',2,'N','N','N','N','N',0,'N',28,135,0,0,'Y',TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,287,'Y',1120260,'N','LBRA','N','N','N','Y','df705951-8a22-4ef4-a79b-a3472578c3ab','Y',0,'Y','N','N','N')
;

-- 10 de fev de 2021 10:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132949,0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120718,'DocStatus','DR',2,'N','N','N','N','N',0,'N',17,131,0,0,'Y',TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:15','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','N','N','Y','40bf6a73-7642-4add-baca-56f28d60faa6','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132950,1.000000000000,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120718,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','58317936-0789-4a6a-810a-c9b8e86ce9e0','N','N','N','N','N')
;

-- 10 de fev de 2021 10:24:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132951,0,'IsFixedAsset',1120718,'IsFixedAsset','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,200176,'Y','N','LBRA','N','N','N','Y','4c3a00c2-4822-485e-9cce-989ff3e4dc75','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132952,0,'Accountant',1120718,'LBR_BP_Accountant_ID',10,'N','N','N','N','N',0,'N',30,138,0,0,'Y',TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:16','YYYY-MM-DD HH24:MI:SS'),100,1121796,'Y','N','LBRA','N','N','N','Y','a06c206a-c297-4986-bdfd-e68d3db6cb30','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132953,0,'Finalidade do Arquivo','Finalidade do Arquivo SPED','Finalidade do Arquivo SPED
0 = Original
1 = Retificado',1120718,'LBR_COD_FIN','0',1,'N','N','Y','N','N',0,'N',17,1120374,0,0,'Y',TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,1123234,'Y','N','LBRA','N','N','N','Y','fe770ee9-50c4-45b8-86f1-d2c8f2fcd5d3','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132954,0,'Versão do arquivo','Código da versão do leiaute do Arquivo SPED','Código da versão do leiaute do Arquivo SPED',1120718,'LBR_COD_VER',3,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,1123233,'Y','N','LBRA','N','N','N','Y','a872eb34-7771-483b-bff9-27a6e4801eae','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123278,0,0,'Y',TO_DATE('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-12-15 10:48:53','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EFDContrib_ID','EFD Contribution','EFD Contribution','LBRA','00d6aa2c-55f8-4615-a673-d3611ba440a3')
;

-- 10 de fev de 2021 11:31:40 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123279,0,0,'Y',TO_TIMESTAMP('2021-02-10 11:31:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-02-10 11:31:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EFDContrib_UU','LBR_EFDContrib_UU','LBR_EFDContrib_UU','LBRA','901402c6-aa3c-4ffb-8a8a-07d8122f3949')
;

-- 10 de fev de 2021 10:24:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132955,1.000000000000,'EFD Contributions',1120718,'LBR_EFDContrib_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,1123278,'N','N','LBRA','N','N','N','N','b15a015a-e6f4-4164-936f-ba8f43cd5c9a','N','N','N','N','N')
;

-- 10 de fev de 2021 10:24:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132956,1.0,'LBR_EFDContrib_UU',1120718,'LBR_EFDContrib_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:17','YYYY-MM-DD HH24:MI:SS'),100,1123279,'Y','N','LBRA','N','N','N','Y','94a20b4c-30f0-4706-ae87-076d7c265919','N','N','N','N','N')
;

-- 10 de fev de 2021 10:24:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132957,0,'Block E',1120718,'LBR_IncludeE','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,1123275,'Y','N','LBRA','N','N','N','Y','7f29795c-fbd6-4261-b0e0-41c62e5bbfc1','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132958,0,'Block H',1120718,'LBR_IncludeH','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,1123276,'Y','N','LBRA','N','N','N','Y','6b8da202-9448-465b-8c6a-6302a6b40b69','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132959,0,'Block K',1120718,'LBR_IncludeK','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:18','YYYY-MM-DD HH24:MI:SS'),100,1123277,'Y','N','LBRA','N','N','N','Y','ae75a0dc-bda3-405d-873c-bdd30a98be8a','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132960,0,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',1120718,'LBR_IndPerfil',1,'N','N','N','N','N',0,'N',17,1120336,0,0,'Y',TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,1122995,'Y','N','LBRA','N','N','N','Y','52336614-32bf-43b3-9577-9809fbb70085','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132961,0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120718,'Processed',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','Y','0e87e320-6221-424b-bc22-a75bf8c2bb69','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:24:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132962,0,'Process Now',1120718,'Processing',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,524,'Y',1120114,'N','LBRA','N','N','N','Y','1ce2b68b-b91b-4ecc-9418-203960492dc7','N','B','N','N','N')
;

-- 10 de fev de 2021 10:24:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132963,1.000000000000,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120718,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:19','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','946cd3ac-7b4a-4525-aef2-8d9e038eb145','N','N','N','N','N')
;

-- 10 de fev de 2021 10:24:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132964,1.000000000000,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120718,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2021-02-10 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','c81cfeac-7ad9-41c7-83f3-1b5194635d49','N','N','N','D','N')
;

-- 10 de fev de 2021 10:24:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132965,0,'Tipo de atividade','Tipo de atividade','Informar “0 - Industrial ou equiparado a industrial”, se o contribuinte é industrial ou equiparado a industrial, conforme legislação do Imposto sobre Produtos Industrializados (IPI). Se o estabelecimento não se enquadrar no disposto nos art. 8o, 9o., 10o e 11o e cujas operações não se enquadrem dentro do campo de incidência do IPI, conforme parágrafo único do art. 2o, todos do Decreto no 4.544/2002, ainda que seja uma indústria, deve informar a opção "1 - Outras"',1120718,'lbr_IndAtividade',1,'N','N','N','N','N',0,'N',17,1120223,0,0,'Y',TO_DATE('2021-02-10 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,1121794,'Y','N','LBRA','N','N','N','Y','00d8a699-fa1f-471b-97c9-55dec0a276cf','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:25:23 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120177,'EFD Contributions','Generate SPED Fiscal EFD Contributions',0,0,'Y',TO_DATE('2021-02-10 10:25:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:25:22','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','d53ccea4-429d-414e-931f-c7aeb467b25f')
;

-- 10 de fev de 2021 10:26:15 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120422,'EFD Contributions',1120177,10,'Y',1120718,0,0,'Y',TO_DATE('2021-02-10 10:26:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:14','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','3ade3e07-aa54-4c5e-bb55-34de7515fabb','B')
;

-- 10 de fev de 2021 10:26:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130283,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120422,1132940,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e4aa5d22-25b3-4d96-b28b-1dcf30d2de7e','N',2)
;

-- 10 de fev de 2021 10:26:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130284,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120422,1132941,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4d2b0158-3aad-4c70-8633-f3ae52b47294','Y','Y',10,4,2)
;

-- 10 de fev de 2021 10:26:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130285,'Description','Optional short description of the record','A description is limited to 255 characters.',1120422,1132947,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3aa2941a-7a60-4b6a-90a0-07548d62e4ee','Y',20,5)
;

-- 10 de fev de 2021 10:26:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130286,'Period','Period of the Calendar','The Period indicates an exclusive range of dates for a calendar.',1120422,1132942,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5d782927-ebdf-48bb-8186-f91b0ce2d109','Y',30,2)
;

-- 10 de fev de 2021 10:26:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130287,'Year','Calendar Year','The Year uniquely identifies an accounting year for a calendar.',1120422,1132943,'Y',22,50,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f286eeea-b071-4812-82a8-6c80f0401503','Y',40,2)
;

-- 10 de fev de 2021 10:26:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130288,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120422,1132946,'Y',7,60,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','878850da-a030-43d7-98ef-9f69c2ec8b1b','Y',50,2)
;

-- 10 de fev de 2021 10:26:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130289,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120422,1132948,'Y',2,70,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c4158c99-7c9b-488e-a422-777d893f8029','Y',60,2,2)
;

-- 10 de fev de 2021 10:26:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130290,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120422,1132949,'Y',2,80,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','28ea2149-6ff5-4278-9901-42a30d947341','Y',70,2)
;

-- 10 de fev de 2021 10:26:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130291,'IsFixedAsset',1120422,1132951,'Y',1,90,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d326a095-4d33-494a-9233-3fc8eba8c77c','Y',80,2,2)
;

-- 10 de fev de 2021 10:26:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130292,'Accountant',1120422,1132952,'Y',10,100,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c314c17b-f9c0-44c4-8a0f-37aaecd8a086','Y',90,2)
;

-- 10 de fev de 2021 10:26:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130293,'Finalidade do Arquivo','Finalidade do Arquivo SPED','Finalidade do Arquivo SPED
0 = Original
1 = Retificado',1120422,1132953,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','855af7c8-673c-4627-9d90-78a4bf0f22ef','Y',100,2)
;

-- 10 de fev de 2021 10:26:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130294,'Versão do arquivo','Código da versão do leiaute do Arquivo SPED','Código da versão do leiaute do Arquivo SPED',1120422,1132954,'Y',3,120,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a5caff7c-0dd3-4200-96bb-13f985b2b808','Y',110,2)
;

-- 10 de fev de 2021 10:26:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130295,'EFD Contributions',1120422,1132955,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ae4344a4-c7ff-45a4-9037-108a1da43768','N',2)
;

-- 10 de fev de 2021 10:26:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1130296,'LBR_EFDContrib_UU',1120422,1132956,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','58c918f7-c3cc-4225-9092-69f1687fcf16','N',2)
;

-- 10 de fev de 2021 10:26:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130297,'Block E',1120422,1132957,'Y',1,130,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2a541cdf-50e3-4cab-a90d-cc38f17a35d8','Y',120,2,2)
;

-- 10 de fev de 2021 10:26:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130298,'Block H',1120422,1132958,'Y',1,140,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e47b35c2-c30d-4914-8605-634f52f3cf0d','Y',130,2,2)
;

-- 10 de fev de 2021 10:26:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130299,'Block K',1120422,1132959,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6fb5aae6-3eb4-4342-8fc3-37ba90b4dc99','Y',140,2,2)
;

-- 10 de fev de 2021 10:26:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130300,'Perfil de Apresentação','Perfil de Apresentação do arquivo fiscal',1120422,1132960,'Y',1,160,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','97f37aff-9906-4acb-b5cf-32856b4cb8c5','Y',150,2)
;

-- 10 de fev de 2021 10:26:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130301,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120422,1132961,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3391d4ea-c7cf-4498-9898-d15b0b744e0b','Y',160,2,2)
;

-- 10 de fev de 2021 10:26:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130302,'Process Now',1120422,1132962,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e6ea492-e1d7-4134-ad87-6f795c19d4a6','Y',170,2,2)
;

-- 10 de fev de 2021 10:26:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1130303,'Tipo de atividade','Tipo de atividade','Informar “0 - Industrial ou equiparado a industrial”, se o contribuinte é industrial ou equiparado a industrial, conforme legislação do Imposto sobre Produtos Industrializados (IPI). Se o estabelecimento não se enquadrar no disposto nos art. 8o, 9o., 10o e 11o e cujas operações não se enquadrem dentro do campo de incidência do IPI, conforme parágrafo único do art. 2o, todos do Decreto no 4.544/2002, ainda que seja uma indústria, deve informar a opção "1 - Outras"',1120422,1132965,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b5f1ebf4-b8f0-4a18-a1ff-ebd357866c82','Y',180,2)
;

-- 10 de fev de 2021 10:26:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1130304,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120422,1132950,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2021-02-10 10:26:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:26:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','44e36c6c-510e-4d10-8a09-f16d4e86d083','Y',190,2,2)
;

-- 10 de fev de 2021 10:27:55 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1130291
;

-- 10 de fev de 2021 10:27:55 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130291
;

-- 10 de fev de 2021 10:27:55 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1130297
;

-- 10 de fev de 2021 10:27:55 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130297
;

-- 10 de fev de 2021 10:27:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1130298
;

-- 10 de fev de 2021 10:27:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130298
;

-- 10 de fev de 2021 10:27:57 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1130299
;

-- 10 de fev de 2021 10:27:57 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1130299
;

-- 10 de fev de 2021 10:28:22 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132951
;

-- 10 de fev de 2021 10:28:22 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132951
;

-- 10 de fev de 2021 10:28:23 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132957
;

-- 10 de fev de 2021 10:28:23 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132957
;

-- 10 de fev de 2021 10:28:24 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132958
;

-- 10 de fev de 2021 10:28:24 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132958
;

-- 10 de fev de 2021 10:28:25 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1132959
;

-- 10 de fev de 2021 10:28:25 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1132959
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130287
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130286
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130290
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130302
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130288
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130301
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130285
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130289
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130292
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130293
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130294
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130300
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130303
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130304
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130295
;

-- 10 de fev de 2021 10:29:13 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130296
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130288
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130290
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130301
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130285
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130289
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET SeqNo=100, AD_FieldGroup_ID=1120091, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130294
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130293
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130300
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130303
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130292
;

-- 10 de fev de 2021 10:30:14 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130304
;

-- 10 de fev de 2021 10:30:15 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 10:30:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130302
;

-- 10 de fev de 2021 10:31:21 BRT
INSERT INTO AD_Workflow (Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AccessLevel,EntityType,Author,WorkingTime,Duration,Version,Cost,DurationUnit,WaitingTime,PublishStatus,IsDefault,AD_Table_ID,Value,WorkflowType,IsValid,DocumentNo,QtyBatchSize,IsBetaFunctionality,Yield,AD_Workflow_UU) VALUES ('Process_LBR_EFDContrib','(Standard Process Order)',1120037,0,0,'Y',TO_DATE('2021-02-10 10:31:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:31:20','YYYY-MM-DD HH24:MI:SS'),100,'1','LBRA','iDempiere, Inc.',0,1,0,0,'D',0,'R','N',1120718,'Process_LBR_EFDContrib','P','N','10000000',1,'N',100,'04a937d7-b8cc-4b23-acc2-05f40956fee1')
;

-- 10 de fev de 2021 10:32:06 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,Description,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120144,'(DocAuto)','(Standard Node)',1120037,0,0,'Y',TO_DATE('2021-02-10 10:32:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:32:05','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocAuto)',0,'N','N',0,0,100,'a419f06d-b4ba-434b-bde9-ac24a496bfcb',200000)
;

-- 10 de fev de 2021 10:32:33 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120145,'(DocComplete)',1120037,0,0,'Y',TO_DATE('2021-02-10 10:32:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:32:32','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'--','(DocComplete)',0,'N','N',0,0,100,'f6b7ddf2-4bbe-44f5-8cce-df5086d85998',200000)
;

-- 10 de fev de 2021 10:33:01 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120146,'(DocPrepare)',1120037,0,0,'Y',TO_DATE('2021-02-10 10:33:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:33:01','YYYY-MM-DD HH24:MI:SS'),100,'D','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'PR','(DocPrepare)',0,'N','N',0,0,100,'7b08b390-d8f9-479d-894d-6b491116f7b0',200000)
;

-- 10 de fev de 2021 10:33:37 BRT
INSERT INTO AD_WF_Node (AD_WF_Node_ID,Name,AD_Workflow_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Action,IsCentrallyMaintained,YPosition,EntityType,XPosition,Limit,Duration,Cost,WaitingTime,WorkingTime,Priority,JoinElement,SplitElement,WaitTime,DocAction,Value,DynPriorityChange,IsMilestone,IsSubcontracting,UnitsCycles,OverlapUnits,Yield,AD_WF_Node_UU,AD_InfoWindow_ID) VALUES (1120147,'(Start)',1120037,0,0,'Y',TO_DATE('2021-02-10 10:33:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:33:36','YYYY-MM-DD HH24:MI:SS'),100,'Z','Y',0,'LBRA',0,0,0,0,0,0,0,'X','X',0,'CO','(Start)',0,'N','N',0,0,100,'ada13424-8550-405b-b777-314fbad62d5a',200000)
;

-- 10 de fev de 2021 10:33:55 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120147,'Y',TO_DATE('2021-02-10 10:33:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:33:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120144,'LBRA',10,1120091,'N','aa0c3d8f-517b-454a-adea-763132ed3ebb')
;

-- 10 de fev de 2021 10:34:04 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120147,'Y',TO_DATE('2021-02-10 10:34:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:34:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120146,'LBRA',999,1120092,'N','987fb0ad-6863-4463-9e72-d74a48d323ab')
;

-- 10 de fev de 2021 10:34:22 BRT
INSERT INTO AD_WF_NodeNext (AD_WF_Node_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,EntityType,SeqNo,AD_WF_NodeNext_ID,IsStdUserWorkflow,AD_WF_NodeNext_UU) VALUES (1120146,'Y',TO_DATE('2021-02-10 10:34:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:34:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,1120145,'LBRA',10,1120093,'N','b60998c2-ae04-4624-9ebd-ac97d2bdee02')
;

-- 10 de fev de 2021 10:35:03 BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120147, IsValid='Y',Updated=TO_DATE('2021-02-10 10:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120037
;

-- 10 de fev de 2021 10:35:15 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,AD_Workflow_ID,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120268,0,0,'Y',TO_DATE('2021-02-10 10:35:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:35:14','YYYY-MM-DD HH24:MI:SS'),100,'Process LBR_EFDContrib','N','LBR_EFDContrib Process','N','3','LBRA',0,0,1120037,'N','N','Y','N','d63bd510-2882-4da0-bbd2-1559d7ab716a','P')
;

-- 10 de fev de 2021 10:35:25 BRT
UPDATE AD_Column SET AD_Process_ID=1120268,Updated=TO_DATE('2021-02-10 10:35:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132948
;

-- 10 de fev de 2021 10:36:35 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120383,'EFD Contributions','W',1120177,0,0,'Y',TO_DATE('2021-02-10 10:36:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:36:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','9e707b12-c0f1-4578-a643-b1dbe1858125')
;

-- 10 de fev de 2021 10:36:35 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120383, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120383)
;

-- 10 de fev de 2021 10:36:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120375
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120383
;

-- 10 de fev de 2021 10:36:48 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120365
;

-- 10 de fev de 2021 10:36:55 BRT
UPDATE AD_Menu SET IsActive='N',Updated=TO_DATE('2021-02-10 10:36:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120365
;

-- 10 de fev de 2021 10:38:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132966,0,'EFD Contributions',1120466,'LBR_EFDContrib_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2021-02-10 10:38:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-02-10 10:38:45','YYYY-MM-DD HH24:MI:SS'),100,1123278,'N','N','LBRA','N','N','N','Y','42980bd0-dae2-46f5-a41b-fbc4059ded64','Y',0,'N','N','N','N')
;

-- 10 de fev de 2021 10:38:50 BRT
ALTER TABLE LBR_FactFiscal MODIFY LBR_EFDContrib_ID NUMBER(10) DEFAULT NULL 
;

-- 10 de fev de 2021 10:43:08 BRT
UPDATE AD_Table SET AD_Window_ID=1120177,Updated=TO_DATE('2021-02-10 10:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120718
;

-- 10 de fev de 2021 11:01:05 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 11:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130283
;

-- 10 de fev de 2021 11:01:14 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 11:01:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130290
;

-- 10 de fev de 2021 11:01:17 BRT
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-02-10 11:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1130301
;

-- 10 de fev de 2021 11:01:41 BRT
UPDATE AD_Column SET FKConstraintName='CPeriod_LBREFDContrib', FKConstraintType='N',Updated=TO_DATE('2021-02-10 11:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132942
;

-- 10 de fev de 2021 11:01:41 BRT
UPDATE AD_Column SET FKConstraintName='CYear_LBREFDContrib', FKConstraintType='N',Updated=TO_DATE('2021-02-10 11:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132943
;

-- 10 de fev de 2021 11:01:41 BRT
UPDATE AD_Column SET FKConstraintName='LBRBPAccountant_LBREFDContrib', FKConstraintType='N',Updated=TO_DATE('2021-02-10 11:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132952
;

-- 10 de fev de 2021 11:01:41 BRT
CREATE TABLE LBR_EFDContrib (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Period_ID NUMBER(10) NOT NULL, C_Year_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DateDoc DATE DEFAULT NULL , Description VARCHAR2(255) DEFAULT NULL , DocAction CHAR(2) DEFAULT 'CO', DocStatus VARCHAR2(2) DEFAULT 'DR', IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_BP_Accountant_ID NUMBER(10) DEFAULT NULL , LBR_COD_FIN CHAR(1) DEFAULT '0' NOT NULL, LBR_COD_VER VARCHAR2(3) DEFAULT NULL , LBR_EFDContrib_ID NUMBER(10) NOT NULL, LBR_EFDContrib_UU VARCHAR2(36) DEFAULT NULL , LBR_IndPerfil CHAR(1) DEFAULT NULL , Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, lbr_IndAtividade CHAR(1) DEFAULT NULL , CONSTRAINT LBR_EFDContrib_Key PRIMARY KEY (LBR_EFDContrib_ID), CONSTRAINT LBR_EFDContrib_UU_idx UNIQUE (LBR_EFDContrib_UU))
;

-- 10 de fev de 2021 11:01:42 BRT
ALTER TABLE LBR_EFDContrib ADD CONSTRAINT CPeriod_LBREFDContrib FOREIGN KEY (C_Period_ID) REFERENCES c_period(c_period_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de fev de 2021 11:01:42 BRT
ALTER TABLE LBR_EFDContrib ADD CONSTRAINT CYear_LBREFDContrib FOREIGN KEY (C_Year_ID) REFERENCES c_year(c_year_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de fev de 2021 11:01:42 BRT
ALTER TABLE LBR_EFDContrib ADD CONSTRAINT LBRBPAccountant_LBREFDContrib FOREIGN KEY (LBR_BP_Accountant_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 10 de fev de 2021 10:43:08 BRT
SELECT Register_Migration_Script ('202102101048_EFDContrib.sql') FROM DUAL
;