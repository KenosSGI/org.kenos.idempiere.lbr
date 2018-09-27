-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 13/09/2018 16h15min28s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,IsChangeLog,ReplicationType,PO_Window_ID,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120603,'Nota Fiscal Payment Schedule','Nota Fiscal Payment Schedule',1000015,'LBR_NFPaySchedule',145,'1',0,0,'Y',TO_TIMESTAMP('2018-09-13 16:15:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:15:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','Y','L',1000019,'Y','531d0d57-5dee-4ebe-b781-18396cab0f83','N','N')
;

-- 13/09/2018 16h15min29s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NFPaySchedule',1000000,'N','N','Table LBR_NFPaySchedule','Y','Y',0,0,TO_TIMESTAMP('2018-09-13 16:15:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:15:29','YYYY-MM-DD HH24:MI:SS'),100,1153603,'Y',1000000,1,200000,'93ea5f59-b263-4e65-84fe-fc0bb7cf9b7d')
;

-- 13/09/2018 16h18min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130431,1,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120603,129,'AD_Client_ID','@AD_Client_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:08','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','N','N','Y','940264ae-8783-44b5-a7f3-f4fe66467151','N','N','N','D')
;

-- 13/09/2018 16h18min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130432,1,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120603,104,'AD_Org_ID','@AD_Org_ID@',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:09','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y','926b06c7-7726-4f26-b4ee-52bd076d8dc9','N','N','N','D')
;

-- 13/09/2018 16h18min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130433,1,'Invoice','Invoice Identifier','The Invoice Document.',1120603,'C_Invoice_ID',22,'N','Y','Y','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:09','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','N','N','Y','0ab37a4f-ddf2-4719-9498-19325c6b36bc','Y','N','N','C')
;

-- 13/09/2018 16h18min10s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122520,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFPaySchedule_ID','Nota Fiscal Payment Schedule','Nota Fiscal Payment Schedule','LBRA','64fc023d-a282-47f5-97a8-875c78328374')
;

-- 13/09/2018 16h18min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130434,1,'Nota Fiscal Payment Schedule',1120603,'LBR_NFPaySchedule_ID',22,'Y','N','Y','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,1122520,'N','N','LBRA','N','N','N','N','928bf9c9-00b9-4dbd-b170-21430a059fd1','N','N','N')
;

-- 13/09/2018 16h18min11s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122521,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFPaySchedule_UU','LBR_NFPaySchedule_UU','LBR_NFPaySchedule_UU','LBRA','674a22df-98b5-44de-8806-ae39a14088f0')
;

-- 13/09/2018 16h18min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130435,1.00,'LBR_NFPaySchedule_UU',1120603,'LBR_NFPaySchedule_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:10','YYYY-MM-DD HH24:MI:SS'),100,1122521,'Y','N','LBRA','N','N','N','Y','65c997b3-ba44-46eb-a45d-d17d1be9f45b','N','N','N')
;

-- 13/09/2018 16h18min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130436,1,'Payment Schedule','Payment Schedule Template','Information when parts of the payment are due',1120603,'C_PaySchedule_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:11','YYYY-MM-DD HH24:MI:SS'),100,1996,'N','N','LBRA','N','N','N','Y','a19a0dfa-b649-4709-8e9a-1f8e60761cef','Y','N','N','N')
;

-- 13/09/2018 16h18min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130437,1,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120603,'Created','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:11','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y','660bb761-ee12-40a1-bcda-b7dd30f79670','N','N','N')
;

-- 13/09/2018 16h18min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130438,1,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120603,'CreatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y','61f06a0d-8d41-4a2d-90c4-c8a20a15742e','N','N','N','D')
;

-- 13/09/2018 16h18min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130439,1,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120603,'DiscountAmt',22,'N','N','Y','N','N',0,'N',12,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,1395,'Y','N','LBRA','N','N','N','Y','d581b942-9d08-4f34-8d37-d16937786bd3','Y','N','N')
;

-- 13/09/2018 16h18min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130440,1,'Discount Date','Last Date for payments with discount','Last Date where a deduction of the payment discount is allowed',1120603,'DiscountDate',7,'N','N','Y','N','Y',1,'N',15,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:12','YYYY-MM-DD HH24:MI:SS'),100,1998,'Y','N','LBRA','N','N','N','Y','4895be02-7ef5-4f4c-a22c-d92b57744593','Y','N','N')
;

-- 13/09/2018 16h18min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130441,1,'Amount due','Amount of the payment due','Full amount of the payment due',1120603,'DueAmt',22,'N','N','Y','N','Y',2,'N',12,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,1999,'Y','N','LBRA','N','N','N','Y','7f6f9928-686b-4745-afee-0702107a9468','Y','N','N')
;

-- 13/09/2018 16h18min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130442,1,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120603,'DueDate',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,2000,'Y','N','LBRA','N','N','N','Y','95810050-80c1-446e-a4b9-39ed99384b06','Y','N','N')
;

-- 13/09/2018 16h18min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130443,1,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120603,'IsActive','Y',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:13','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y','8bf763b4-e935-4ab6-a773-b611efc6f8fb','N','N','N')
;

-- 13/09/2018 16h18min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130444,1,'Valid','Element is valid','The element passed the validation check',1120603,'IsValid',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:14','YYYY-MM-DD HH24:MI:SS'),100,2002,'Y','N','LBRA','N','N','N','Y','e048a1bd-5f59-4a76-9291-43b16e614d7c','Y','N','N')
;

-- 13/09/2018 16h18min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130445,0,'Boleto Comments','Define the Boleto Comments','Define the Boleto Comments',1120603,'lbr_BoletoComments',70,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:14','YYYY-MM-DD HH24:MI:SS'),100,1000337,'Y','N','LBRA','N','Y','N','Y','2335a941-c6c4-42e2-be3e-6f040d965ebe','Y','N','N')
;

-- 13/09/2018 16h18min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130446,1,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120603,'Processed',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:15','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','N','N','N','ec60436f-6389-4146-b500-b426f7ff22cb','Y','N','N')
;

-- 13/09/2018 16h18min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,AD_Process_ID,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130447,1,'Process Now',1120603,'Processing',1,'N','N','N','N','N',0,'N',28,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:15','YYYY-MM-DD HH24:MI:SS'),100,524,'Y',242,'N','LBRA','N','N','N','Y','0d71be5d-803a-4c94-be04-4f92aa8c97a7','N','N','N')
;

-- 13/09/2018 16h18min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1130448,1,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120603,'Updated','SYSDATE',7,'N','N','Y','N','N',0,'N',16,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y','64ec6f0e-db88-4922-8536-8c97cb17ac1f','N','N','N')
;

-- 13/09/2018 16h18min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1130449,1,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120603,'UpdatedBy',22,'N','N','Y','N','N',0,'N',18,110,0,0,'Y',TO_TIMESTAMP('2018-09-13 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-13 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y','b16c0be0-c470-4097-adf1-59a6f988365a','N','N','N','D')
;

-- 13/09/2018 16h27min32s BRT
UPDATE AD_Column SET Name='Nota Fiscal', Description='Primary key table LBR_NotaFiscal', Help='Primary key table LBR_NotaFiscal', ColumnName='LBR_NotaFiscal_ID', FieldLength=131089, AD_Reference_ID=19, AD_Element_ID=1000177, IsUpdateable='N', FKConstraintType='N',Updated=TO_TIMESTAMP('2018-09-13 16:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130433
;

-- 13/09/2018 16h28min27s BRT
UPDATE AD_Column SET FKConstraintName='CPaySchedule_LBRNFPaySchedule', FKConstraintType='N',Updated=TO_TIMESTAMP('2018-09-13 16:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130436
;

-- 13/09/2018 16h28min27s BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNotaFiscal_LBRNFPaySchedule', FKConstraintType='N',Updated=TO_TIMESTAMP('2018-09-13 16:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130433
;

-- 13/09/2018 16h28min27s BRT
CREATE TABLE LBR_NFPaySchedule (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_PaySchedule_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP DEFAULT statement_timestamp() NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DiscountAmt NUMERIC NOT NULL, DiscountDate TIMESTAMP NOT NULL, DueAmt NUMERIC NOT NULL, DueDate TIMESTAMP NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, lbr_BoletoComments VARCHAR(70) DEFAULT NULL , LBR_NFPaySchedule_ID NUMERIC(10) NOT NULL, LBR_NFPaySchedule_UU VARCHAR(36) DEFAULT NULL , LBR_NotaFiscal_ID NUMERIC(10) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP DEFAULT statement_timestamp() NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_NFPaySchedule_Key PRIMARY KEY (LBR_NFPaySchedule_ID), CONSTRAINT LBR_NFPaySchedule_UU_idx UNIQUE (LBR_NFPaySchedule_UU))
;

-- 13/09/2018 16h28min28s BRT
ALTER TABLE LBR_NFPaySchedule ADD CONSTRAINT CPaySchedule_LBRNFPaySchedule FOREIGN KEY (C_PaySchedule_ID) REFERENCES c_payschedule(c_payschedule_id) DEFERRABLE INITIALLY DEFERRED
;

-- 13/09/2018 16h28min28s BRT
ALTER TABLE LBR_NFPaySchedule ADD CONSTRAINT LBRNotaFiscal_LBRNFPaySchedule FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 14/09/2018 12h3min55s BRT
UPDATE AD_Tab SET AD_Table_ID=1120603, AD_Column_ID=1130433,Updated=TO_TIMESTAMP('2018-09-14 12:03:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120196
;

-- 14/09/2018 12h7min30s BRT
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', AD_Column_ID=1130431, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125488
;

-- 14/09/2018 12h7min36s BRT
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', AD_Column_ID=1130432, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:07:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125489
;

-- 14/09/2018 12h8min4s BRT
UPDATE AD_Field SET Name='Nota Fiscal', Description='Primary key table LBR_NotaFiscal', Help='Primary key table LBR_NotaFiscal', AD_Column_ID=1130433, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125490
;

-- 14/09/2018 12h8min45s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1125490
;

-- 14/09/2018 12h8min45s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1125490
;

-- 14/09/2018 12h9min26s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127499,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120196,1130433,'Y',0,30,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-14 12:09:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-14 12:09:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','b5e7d495-bf45-4505-a58b-a3694b5823cb','N',30,1,1,1,'N','N','N')
;

-- 14/09/2018 12h9min44s BRT
UPDATE AD_Field SET Name='Payment Schedule', Description='Payment Schedule Template', Help='Information when parts of the payment are due', AD_Column_ID=1130436, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:09:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125491
;

-- 14/09/2018 12h9min53s BRT
UPDATE AD_Field SET Name='Due Date', Description='Date when the payment is due', Help='Date when the payment is due without deductions or discount', AD_Column_ID=1130442, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125493
;

-- 14/09/2018 12h9min58s BRT
UPDATE AD_Field SET Name='Amount due', Description='Amount of the payment due', Help='Full amount of the payment due', AD_Column_ID=1130441, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125494
;

-- 14/09/2018 12h10min3s BRT
UPDATE AD_Field SET Name='Discount Date', Description='Last Date for payments with discount', Help='Last Date where a deduction of the payment discount is allowed', AD_Column_ID=1130440, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125495
;

-- 14/09/2018 12h10min7s BRT
UPDATE AD_Field SET Name='Discount Amount', Description='Calculated amount of discount', Help='The Discount Amount indicates the discount amount for a document or line.', AD_Column_ID=1130439, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125496
;

-- 14/09/2018 12h10min13s BRT
UPDATE AD_Field SET Name='Valid', Description='Element is valid', Help='The element passed the validation check', AD_Column_ID=1130444, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125497
;

-- 14/09/2018 12h10min36s BRT
UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL, AD_Column_ID=1130447, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125497
;

-- 14/09/2018 12h10min42s BRT
UPDATE AD_Field SET Name='Valid', Description='Element is valid', Help='The element passed the validation check', AD_Column_ID=1130444, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125498
;

-- 14/09/2018 12h10min52s BRT
UPDATE AD_Field SET Name='Boleto Comments', Description='Define the Boleto Comments', Help='Define the Boleto Comments', AD_Column_ID=1130445, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-09-14 12:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125499
;

-- 14/09/2018 12h10min52s BRT
UPDATE AD_Field SET IsDisplayed='N' WHERE AD_Field_ID=1125497
;

SELECT Register_Migration_Script ('201809141800_AddTabNFPaySchedule.sql') FROM DUAL
;
