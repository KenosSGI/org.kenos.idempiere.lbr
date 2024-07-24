SET SQLBLANKLINES ON
SET DEFINE OFF

-- 23 de jul de 2024 16:17:28 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120777,'CTe Report','RV_LBR_CTeReport',0,'3',0,0,'Y',TO_DATE('2024-07-23 16:17:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:17:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','44507d82-2bc6-4c8d-92f0-090e620679de','N','N','N','N')
;

-- 23 de jul de 2024 16:17:29 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_CTeReport',1000000,'N','N','Table RV_LBR_CTeReport','Y','Y',0,0,TO_DATE('2024-07-23 16:17:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:17:28','YYYY-MM-DD HH24:MI:SS'),100,1154052,'Y',1000000,1,200000,'d2f72df9-382f-43d9-be9d-fa0a8f209c08')
;

-- 23 de jul de 2024 16:17:51 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120032,'908253ab-37ca-4cbd-8b7b-395e04822c12',TO_DATE('2024-07-23 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_CTeReport',TO_DATE('2024-07-23 16:17:50','YYYY-MM-DD HH24:MI:SS'),100,1120777,10,'FROM RV_LBR_CTeReport')
;

-- 23 de jul de 2024 16:18:11 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte',Updated=TO_DATE('2024-07-23 16:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120032
;

-- 23 de jul de 2024 16:18:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120757,'44596838-6534-4cb8-ae21-98e83fef7072',TO_DATE('2024-07-23 16:18:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:18:51','YYYY-MM-DD HH24:MI:SS'),100,1120032,'AD_Client_ID','cte.AD_Client_ID',10)
;

-- 23 de jul de 2024 16:19:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120758,'e1bf0f2f-22a2-4544-afe6-d9b45b8f4db7',TO_DATE('2024-07-23 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:19:03','YYYY-MM-DD HH24:MI:SS'),100,1120032,'AD_Org_ID','cte.AD_Org_ID',20)
;

-- 23 de jul de 2024 16:19:16 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120759,'ca7f9bbb-2dcb-4fa6-864e-04fd70d2b8f8',TO_DATE('2024-07-23 16:19:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:19:16','YYYY-MM-DD HH24:MI:SS'),100,1120032,'Created','cte.Created',30)
;

-- 23 de jul de 2024 16:19:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120760,'b7325a86-e7a7-4587-a379-9607088e52af',TO_DATE('2024-07-23 16:19:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:19:28','YYYY-MM-DD HH24:MI:SS'),100,1120032,'CreatedBy','cte.CreatedBy',40)
;

-- 23 de jul de 2024 16:19:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120761,'0aa45307-e703-42f7-ac88-397a73db1efa',TO_DATE('2024-07-23 16:19:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:19:38','YYYY-MM-DD HH24:MI:SS'),100,1120032,'Updated','cte.Updated',50)
;

-- 23 de jul de 2024 16:19:46 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120762,'15704d1e-a4e4-45ae-9676-8b6a188f9a58',TO_DATE('2024-07-23 16:19:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:19:46','YYYY-MM-DD HH24:MI:SS'),100,1120032,'UpdatedBy','cte.UpdatedBy',60)
;

-- 23 de jul de 2024 16:20:06 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120763,'c6178836-3e02-4978-9c67-d681436f3804',TO_DATE('2024-07-23 16:20:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:20:06','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTe_ID','cte.LBR_CTe_ID',70)
;

-- 23 de jul de 2024 16:20:20 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120764,'c0c86cb2-033e-488c-9697-6a99f14a28fc',TO_DATE('2024-07-23 16:20:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:20:20','YYYY-MM-DD HH24:MI:SS'),100,1120032,'DocumentNo','cte.DocumentNo',80)
;

-- 23 de jul de 2024 16:20:50 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120765,'fa5e576c-8eb7-4522-84e7-adcabf9d16a0',TO_DATE('2024-07-23 16:20:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:20:49','YYYY-MM-DD HH24:MI:SS'),100,1120032,'lbr_NFSerie','cte.lbr_NFSerie',90)
;

-- 23 de jul de 2024 16:21:20 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120766,'ad5811a2-95cb-4581-a672-ec71337b8a65',TO_DATE('2024-07-23 16:21:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:21:19','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTeServiceType','cte.LBR_CTeServiceType',100)
;

-- 23 de jul de 2024 16:21:56 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120767,'646e9a03-4e47-4de6-b4fb-c4d00583c3c0',TO_DATE('2024-07-23 16:21:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:21:55','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTeConsignee','cte.LBR_CTeConsignee',110)
;

-- 23 de jul de 2024 16:22:09 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120768,'641a7760-0334-4115-af6d-bacb28700ea0',TO_DATE('2024-07-23 16:22:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:22:09','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTeConsignor','cte.LBR_CTeConsignor',120)
;

-- 23 de jul de 2024 16:22:23 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120769,'3bd453b0-298c-4953-9fa8-64429da84f71',TO_DATE('2024-07-23 16:22:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:22:23','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CFOP_ID','cte.LBR_CFOP_ID',130)
;

-- 23 de jul de 2024 16:22:41 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120770,'c321b922-a70c-416f-95ef-f4ee3dc91242',TO_DATE('2024-07-23 16:22:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:22:41','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTeStatus','cte.LBR_CTeStatus',140)
;

-- 23 de jul de 2024 16:23:00 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120771,'88066016-5dee-40d9-999f-f6f7c04f2e11',TO_DATE('2024-07-23 16:23:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:23:00','YYYY-MM-DD HH24:MI:SS'),100,1120032,'LBR_CTeType','cte.LBR_CTeType',150)
;

-- 23 de jul de 2024 16:23:20 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120772,'f0951989-a846-431e-9318-5ee41013c599',TO_DATE('2024-07-23 16:23:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:23:20','YYYY-MM-DD HH24:MI:SS'),100,1120032,'lbr_CNPJ','cte.lbr_CNPJ',160)
;

-- 23 de jul de 2024 16:23:39 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120773,'1e6b4125-32b3-40a9-a93b-1b3fe454a736',TO_DATE('2024-07-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:23:38','YYYY-MM-DD HH24:MI:SS'),100,1120032,'DocStatus','cte.DocStatus',170)
;

-- 23 de jul de 2024 16:23:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120774,'382610c1-0226-4824-92e4-a9b877327564',TO_DATE('2024-07-23 16:23:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:23:51','YYYY-MM-DD HH24:MI:SS'),100,1120032,'GrandTotal','cte.GrandTotal',180)
;

-- 23 de jul de 2024 16:27:58 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, lbr_NFSerie, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS lbr_NFSerie, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal FROM LBR_CTe cte
;

-- 23 de jul de 2024 16:28:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134170,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120777,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:28:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:04','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','291f11b8-6ed6-45e0-a1fc-dbbdcbe7652c','N','D')
;

-- 23 de jul de 2024 16:28:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134171,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120777,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:28:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:04','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e31a6f53-e3b8-40eb-9463-d45dd577bf02','N','D')
;

-- 23 de jul de 2024 16:28:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134172,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120777,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-23 16:28:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:05','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','7ade6510-7844-4449-a9da-d1bf9081edb7','N')
;

-- 23 de jul de 2024 16:28:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134173,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120777,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-23 16:28:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:05','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','db1977f5-3bbf-473a-9907-525c0ecf6d47','N','D')
;

-- 23 de jul de 2024 16:28:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134174,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120777,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','f80cf5c4-e861-4a93-b552-0f81128865e3','N')
;

-- 23 de jul de 2024 16:28:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134175,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120777,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','e3f4e2aa-537b-4704-a863-ea5de923687c','N','D')
;

-- 23 de jul de 2024 16:28:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134176,0.0,'CT-e',1120777,'LBR_CTe_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','7f9ab928-405a-407d-a1be-37db7bbf6680','N','N')
;

-- 23 de jul de 2024 16:28:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134177,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120777,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','37e8a545-b436-455b-8bf1-c629390a6e1c',10,'N')
;

-- 23 de jul de 2024 16:28:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134178,0.0,'NF Serie',1120777,'lbr_NFSerie',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:07','YYYY-MM-DD HH24:MI:SS'),100,1100010,'N','N','LBRA','N','5018d659-c510-4aab-a998-2c61789c8a26','N')
;

-- 23 de jul de 2024 16:28:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134179,0.0,'Service Type',1120777,'LBR_CTeServiceType',1,'N','N','N','N','N','N',17,1120411,0,0,'Y',TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,1123431,'N','N','LBRA','N','fbfb41a9-8a9c-487c-b0f5-71c85794d4c6','N','N')
;

-- 23 de jul de 2024 16:28:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134180,0.0,'Consignee',1120777,'LBR_CTeConsignee',100,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,1123432,'N','N','LBRA','N','78b47864-bb7d-4511-afb2-0055569088ca','N','N')
;

-- 23 de jul de 2024 16:28:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134181,0.0,'Consignor',1120777,'LBR_CTeConsignor',1,'N','N','N','N','N','N',17,1120414,0,0,'Y',TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:08','YYYY-MM-DD HH24:MI:SS'),100,1123447,'N','N','LBRA','N','fbead7b8-de5a-41f9-a2c7-01bf87e760ee','N','N')
;

-- 23 de jul de 2024 16:28:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134182,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120777,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_DATE('2024-07-23 16:28:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:09','YYYY-MM-DD HH24:MI:SS'),100,1000137,'N','N','LBRA','N','14de4034-8c9c-4939-aeaa-d6565febae25','N','N')
;

-- 23 de jul de 2024 16:28:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134183,0.0,'CTe Status',1120777,'LBR_CTeStatus',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:28:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:09','YYYY-MM-DD HH24:MI:SS'),100,1123450,'N','N','LBRA','N','cdb014a0-36b3-4d23-becf-af1167488459','N','N')
;

-- 23 de jul de 2024 16:28:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134184,0.0,'CT-e Type',1120777,'LBR_CTeType',1,'N','N','N','N','N','N',17,1120412,0,0,'Y',TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,1123430,'N','N','LBRA','N','fa2ede2a-cf7e-486f-94a8-9f48b0d40d6f','N','N')
;

-- 23 de jul de 2024 16:28:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134185,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120777,'lbr_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,1000009,'N','N','LBRA','N','2bcec21a-b504-40fa-a925-b5e9de09c4a7','N')
;

-- 23 de jul de 2024 16:28:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134186,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120777,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:10','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','e366a352-8ec1-4f4e-94a2-32bda5b86ce9','N')
;

-- 23 de jul de 2024 16:28:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134187,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120777,'GrandTotal',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-07-23 16:28:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:28:11','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','2ebfac2b-7358-4cba-bbf1-36761c013c07','N')
;

-- 23 de jul de 2024 16:28:51 BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_CTeSeries',Updated=TO_DATE('2024-07-23 16:28:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120765
;

-- 23 de jul de 2024 16:29:15 BRT
DROP VIEW RV_LBR_CTeReport
;

-- 23 de jul de 2024 16:29:23 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, LBR_CTeSeries, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS LBR_CTeSeries, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal FROM LBR_CTe cte
;

-- 23 de jul de 2024 16:29:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123451,0,0,'Y',TO_DATE('2024-07-23 16:29:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:29:29','YYYY-MM-DD HH24:MI:SS'),100,'lbr_cteseries','lbr_cteseries','lbr_cteseries','LBRA','bd4d6ee8-ce3a-4ea9-ad38-cc16b38556b2')
;

-- 23 de jul de 2024 16:29:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134188,0.0,'lbr_cteseries',1120777,'lbr_cteseries',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:29:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:29:29','YYYY-MM-DD HH24:MI:SS'),100,1123451,'N','N','LBRA','N','c27136b7-3bf3-46be-bcb5-c6f67c548521','N')
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_Element SET ColumnName='LBR_CTeSeries', Name='CTe Series', PrintName='CTe Series',Updated=TO_DATE('2024-07-23 16:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123451
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_Column SET ColumnName='LBR_CTeSeries', Name='CTe Series', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123451
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeSeries', Name='CTe Series', Description=NULL, Help=NULL, AD_Element_ID=1123451 WHERE UPPER(ColumnName)='LBR_CTESERIES' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeSeries', Name='CTe Series', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123451 AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTeSeries', Name='CTe Series', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123451 AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_Field SET Name='CTe Series', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123451) AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:29:52 BRT
UPDATE AD_PrintFormatItem SET PrintName='CTe Series', Name='CTe Series' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123451)
;

-- 23 de jul de 2024 16:31:11 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120778,'CTe Detail Report','RV_LBR_CTeDetailReport',0,'3',0,0,'Y',TO_DATE('2024-07-23 16:31:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:31:10','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','c414ece1-a2ae-4165-bfb1-1533aa21dd14','N','N','N','N')
;

-- 23 de jul de 2024 16:31:11 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_CTeDetailReport',1000000,'N','N','Table RV_LBR_CTeDetailReport','Y','Y',0,0,TO_DATE('2024-07-23 16:31:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:31:11','YYYY-MM-DD HH24:MI:SS'),100,1154053,'Y',1000000,1,200000,'f6f46f79-3285-4da5-83df-118e8c4f9df7')
;

-- 23 de jul de 2024 16:32:20 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120033,'cedd1f09-c439-40fb-8b06-fb7d079d328f',TO_DATE('2024-07-23 16:32:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_CTeDetailReport',TO_DATE('2024-07-23 16:32:20','YYYY-MM-DD HH24:MI:SS'),100,1120778,10,'FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)')
;

-- 23 de jul de 2024 16:33:27 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120775,'d10ffc25-cf78-4300-8f6f-c160c47ab402',TO_DATE('2024-07-23 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,1120033,'AD_Client_ID','cte.AD_Client_ID',10)
;

-- 23 de jul de 2024 16:33:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120776,'f073fba4-8613-4e04-b0e1-a525ec165617',TO_DATE('2024-07-23 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,1120033,'AD_Org_ID','cte.AD_Org_ID',20)
;

-- 23 de jul de 2024 16:33:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120777,'c072ed9a-62bc-4f04-9129-4c40b708ec39',TO_DATE('2024-07-23 16:33:28','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:28','YYYY-MM-DD HH24:MI:SS'),100,1120033,'Created','cte.Created',30)
;

-- 23 de jul de 2024 16:33:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120778,'f234c3fe-405b-4e9d-96bd-01d66fefc8ab',TO_DATE('2024-07-23 16:33:28','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:28','YYYY-MM-DD HH24:MI:SS'),100,1120033,'CreatedBy','cte.CreatedBy',40)
;

-- 23 de jul de 2024 16:33:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120779,'fae6125b-85c9-4b90-a18c-90497553c4b9',TO_DATE('2024-07-23 16:33:29','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:29','YYYY-MM-DD HH24:MI:SS'),100,1120033,'Updated','cte.Updated',50)
;

-- 23 de jul de 2024 16:33:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120780,'e1a56d9d-133f-43a0-9540-e2d81cfbd183',TO_DATE('2024-07-23 16:33:29','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:29','YYYY-MM-DD HH24:MI:SS'),100,1120033,'UpdatedBy','cte.UpdatedBy',60)
;

-- 23 de jul de 2024 16:33:30 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120781,'2a3a1394-2804-4a32-adcf-904221739813',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTe_ID','cte.LBR_CTe_ID',70)
;

-- 23 de jul de 2024 16:33:30 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120782,'a2f14584-5086-4c4e-bcf0-297143ba89d1',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,1120033,'DocumentNo','cte.DocumentNo',80)
;

-- 23 de jul de 2024 16:33:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120783,'1aa8b78b-eb01-4583-bd85-0d32d9eadd40',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:30','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeSeries','cte.lbr_NFSerie',90)
;

-- 23 de jul de 2024 16:33:31 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120784,'fec26224-3854-42fd-9a86-0186fa874d73',TO_DATE('2024-07-23 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeServiceType','cte.LBR_CTeServiceType',100)
;

-- 23 de jul de 2024 16:33:32 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120785,'e73b2a42-4591-4791-8603-e72eaa5ec71b',TO_DATE('2024-07-23 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeConsignee','cte.LBR_CTeConsignee',110)
;

-- 23 de jul de 2024 16:33:32 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120786,'9b35f803-562d-41ca-a933-fe59d0bead2c',TO_DATE('2024-07-23 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeConsignor','cte.LBR_CTeConsignor',120)
;

-- 23 de jul de 2024 16:33:33 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120787,'0530a210-735b-4f18-af4a-44976d817035',TO_DATE('2024-07-23 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CFOP_ID','cte.LBR_CFOP_ID',130)
;

-- 23 de jul de 2024 16:33:33 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120788,'3c4c5cde-8176-4089-84cc-e1215fc30f9f',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeStatus','cte.LBR_CTeStatus',140)
;

-- 23 de jul de 2024 16:33:33 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120789,'9179eaa5-dd08-48f0-a4e0-089f12369b7b',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_CTeType','cte.LBR_CTeType',150)
;

-- 23 de jul de 2024 16:33:34 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120790,'b723e4a1-0708-4c8d-814b-9f13bdeeab6e',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:33','YYYY-MM-DD HH24:MI:SS'),100,1120033,'lbr_CNPJ','cte.lbr_CNPJ',160)
;

-- 23 de jul de 2024 16:33:34 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120791,'4079bad7-2f0d-479e-b0ff-ef19454457cd',TO_DATE('2024-07-23 16:33:34','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:34','YYYY-MM-DD HH24:MI:SS'),100,1120033,'DocStatus','cte.DocStatus',170)
;

-- 23 de jul de 2024 16:33:35 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120792,'ca7f558c-7507-415d-ba87-df81f49a167b',TO_DATE('2024-07-23 16:33:34','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2024-07-23 16:33:34','YYYY-MM-DD HH24:MI:SS'),100,1120033,'GrandTotal','cte.GrandTotal',180)
;

-- 23 de jul de 2024 16:34:08 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)',Updated=TO_DATE('2024-07-23 16:34:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120033
;

-- 23 de jul de 2024 16:34:36 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120793,'cb0b6bc9-9e83-4156-bcbc-7ea0ac0527fc',TO_DATE('2024-07-23 16:34:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:34:36','YYYY-MM-DD HH24:MI:SS'),100,1120033,'lbr_NFeNo','COALESCE(nfe.lbr_NFeNo, nfe.DocumentNo)',190)
;

-- 23 de jul de 2024 16:35:03 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120794,'4d1b4669-5886-4ff4-a54e-aa8bd020bdbb',TO_DATE('2024-07-23 16:35:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:35:02','YYYY-MM-DD HH24:MI:SS'),100,1120033,'lbr_NFSerie','nfe.lbr_NFSerie',200)
;

-- 23 de jul de 2024 16:35:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120795,'ad04bb13-afe6-4ca6-b09e-7a5affef9ba4',TO_DATE('2024-07-23 16:35:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:35:13','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_NFeID','nfe.LBR_NFeID',210)
;

-- 23 de jul de 2024 16:36:26 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120796,'c29007b2-f806-4ea1-8606-59bc2f99f41f',TO_DATE('2024-07-23 16:36:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:36:25','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_GrandTotalNF','nfe.GrandTotal',220)
;

-- 23 de jul de 2024 16:41:26 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID',Updated=TO_DATE('2024-07-23 16:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120033
;

-- 23 de jul de 2024 16:42:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120797,'363ca849-d3ba-45fb-9fed-70ed0d51c81c',TO_DATE('2024-07-23 16:42:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:42:27','YYYY-MM-DD HH24:MI:SS'),100,1120033,'NumLines','TotalNFPerCTE.NumLines',230)
;

-- 23 de jul de 2024 16:44:15 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120798,'ca55bada-cbfd-432c-9016-c736a60caa06',TO_DATE('2024-07-23 16:44:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:44:14','YYYY-MM-DD HH24:MI:SS'),100,1120033,'PercentTotal','ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF),4)',240)
;

-- 23 de jul de 2024 16:45:15 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120799,'4b5be4c8-7873-4ed9-8545-71df74434eee',TO_DATE('2024-07-23 16:45:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:45:15','YYYY-MM-DD HH24:MI:SS'),100,1120033,'RatioTotal','ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF) * cte.GrandTotal,2)',250)
;

-- 23 de jul de 2024 16:45:57 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120800,'ebfa30b5-7ca6-49de-831a-b08c6d4be59d',TO_DATE('2024-07-23 16:45:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:45:57','YYYY-MM-DD HH24:MI:SS'),100,1120033,'BPValue','nfe.BPValue',260)
;

-- 23 de jul de 2024 16:46:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120801,'74698a67-8984-46c6-9631-ca98c59be833',TO_DATE('2024-07-23 16:46:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:46:14','YYYY-MM-DD HH24:MI:SS'),100,1120033,'BPName','nfe.BPName',270)
;

-- 23 de jul de 2024 16:47:10 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120802,'b298082a-1ef0-47a6-a577-cd40354aa4fe',TO_DATE('2024-07-23 16:47:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:47:09','YYYY-MM-DD HH24:MI:SS'),100,1120033,'lbr_BPCNPJ','nfe.lbr_BPCNPJ',280)
;

-- 23 de jul de 2024 16:47:43 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bp.Name',Updated=TO_DATE('2024-07-23 16:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120801
;

-- 23 de jul de 2024 16:47:49 BRT
UPDATE AD_ViewColumn SET ColumnSQL='bp.Value',Updated=TO_DATE('2024-07-23 16:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120800
;

-- 23 de jul de 2024 16:48:21 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID',Updated=TO_DATE('2024-07-23 16:48:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120033
;

-- 23 de jul de 2024 16:48:35 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON (cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID)',Updated=TO_DATE('2024-07-23 16:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120033
;

-- 23 de jul de 2024 16:49:15 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeDetailReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, LBR_CTeSeries, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal, lbr_NFeNo, lbr_NFSerie, LBR_NFeID, LBR_GrandTotalNF, NumLines, PercentTotal, RatioTotal, BPValue, BPName, lbr_BPCNPJ) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS LBR_CTeSeries, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal, COALESCE(nfe.lbr_NFeNo, nfe.DocumentNo) AS lbr_NFeNo, nfe.lbr_NFSerie AS lbr_NFSerie, nfe.LBR_NFeID AS LBR_NFeID, nfe.GrandTotal AS LBR_GrandTotalNF, TotalNFPerCTE.NumLines AS NumLines, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF),4) AS PercentTotal, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF) * cte.GrandTotal,2) AS RatioTotal, bp.Value AS BPValue, bp.Name AS BPName, nfe.lbr_BPCNPJ AS lbr_BPCNPJ FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON (cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID)
;

-- 23 de jul de 2024 16:49:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134189,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120778,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:49:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:23','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','7ccf12c8-1803-40fb-90dd-cae2d0c35e15','N','D')
;

-- 23 de jul de 2024 16:49:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134190,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120778,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','2dc9cfb5-bd37-43dc-8a05-cd1efb7db8f6','N','D')
;

-- 23 de jul de 2024 16:49:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134191,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120778,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','c0594368-2d4e-425b-83cd-b9f2acc6344a','N')
;

-- 23 de jul de 2024 16:49:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134192,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120778,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','1fa0fa98-c536-4f3b-90f9-a41cd11a9837','N','D')
;

-- 23 de jul de 2024 16:49:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134193,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120778,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-07-23 16:49:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:25','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','67decda3-2b15-4901-959e-e743283b5a0b','N')
;

-- 23 de jul de 2024 16:49:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134194,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120778,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-23 16:49:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:25','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','f625f966-515f-43f1-b47b-e91d871207af','N','D')
;

-- 23 de jul de 2024 16:49:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134195,0.0,'CT-e',1120778,'LBR_CTe_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','57eb6586-3a95-4a7e-bee4-5cc4733f4a74','N','N')
;

-- 23 de jul de 2024 16:49:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134196,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120778,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','5095b1da-faab-43b4-930e-5bcc1e1946d4',10,'N')
;

-- 23 de jul de 2024 16:49:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134197,0.0,'CTe Series',1120778,'LBR_CTeSeries',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:26','YYYY-MM-DD HH24:MI:SS'),100,1123451,'N','N','LBRA','N','bb7f9cc9-e9fe-4e39-9a01-ea91ca34562d','N','N')
;

-- 23 de jul de 2024 16:49:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134198,0.0,'Service Type',1120778,'LBR_CTeServiceType',1,'N','N','N','N','N','N',17,1120411,0,0,'Y',TO_DATE('2024-07-23 16:49:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:27','YYYY-MM-DD HH24:MI:SS'),100,1123431,'N','N','LBRA','N','92db88d9-de97-44f6-b129-3d2935c5f16d','N','N')
;

-- 23 de jul de 2024 16:49:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134199,0.0,'Consignee',1120778,'LBR_CTeConsignee',100,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:27','YYYY-MM-DD HH24:MI:SS'),100,1123432,'N','N','LBRA','N','7f9ed7ea-3cb4-4a63-94b0-ab09e1520710','N','N')
;

-- 23 de jul de 2024 16:49:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134200,0.0,'Consignor',1120778,'LBR_CTeConsignor',1,'N','N','N','N','N','N',17,1120414,0,0,'Y',TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,1123447,'N','N','LBRA','N','c756de5b-9271-4cdd-880d-4431813048a2','N','N')
;

-- 23 de jul de 2024 16:49:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134201,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120778,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,1000137,'N','N','LBRA','N','1e58c00b-b7d9-4094-a821-0e4171c1a4fa','N','N')
;

-- 23 de jul de 2024 16:49:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134202,0.0,'CTe Status',1120778,'LBR_CTeStatus',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:28','YYYY-MM-DD HH24:MI:SS'),100,1123450,'N','N','LBRA','N','f5e0261a-c8db-46fb-b2a1-ea602948af06','N','N')
;

-- 23 de jul de 2024 16:49:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134203,0.0,'CT-e Type',1120778,'LBR_CTeType',1,'N','N','N','N','N','N',17,1120412,0,0,'Y',TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,1123430,'N','N','LBRA','N','63b3e0b5-8688-422d-ba77-f033a36204a1','N','N')
;

-- 23 de jul de 2024 16:49:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134204,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120778,'lbr_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,1000009,'N','N','LBRA','N','49c88f1c-3afa-463c-9f91-5cd1c5ffd9d0','N')
;

-- 23 de jul de 2024 16:49:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134205,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120778,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:29','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','b6e7f066-5777-455d-8eb7-09552ffe62a3','N')
;

-- 23 de jul de 2024 16:49:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134206,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120778,'GrandTotal',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-07-23 16:49:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:30','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','f2e6f0db-3711-4db0-9e19-8d99a1cae381','N')
;

-- 23 de jul de 2024 16:49:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134207,0.0,'NFe No',1120778,'lbr_NFENo',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:30','YYYY-MM-DD HH24:MI:SS'),100,1000325,'N','N','LBRA','N','511c0577-87d9-4974-a1da-44c07ec9595c','N','N')
;

-- 23 de jul de 2024 16:49:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134208,0.0,'NF Serie',1120778,'lbr_NFSerie',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:31','YYYY-MM-DD HH24:MI:SS'),100,1100010,'N','N','LBRA','N','9510dc6b-661b-46c4-b8e3-2bd1a4f55012','N')
;

-- 23 de jul de 2024 16:49:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134209,0.0,'NFe ID','Identification of NFe',1120778,'lbr_NFeID',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:31','YYYY-MM-DD HH24:MI:SS'),100,1100017,'N','N','LBRA','N','8f543d1e-c3cf-438c-aa7e-5e5e35f48397','N','N')
;

-- 23 de jul de 2024 16:49:32 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123452,0,0,'Y',TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,'lbr_grandtotalnf','lbr_grandtotalnf','lbr_grandtotalnf','LBRA','1e3729f6-ef52-4d93-b0d3-9301f3e8b175')
;

-- 23 de jul de 2024 16:49:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134210,0.0,'lbr_grandtotalnf',1120778,'lbr_grandtotalnf',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,1123452,'N','N','LBRA','N','d09098b3-ca49-4210-907b-9224eda785b9','N')
;

-- 23 de jul de 2024 16:49:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134211,0.0,'Number of Lines','Number of lines for a field','Number of lines for a field',1120778,'NumLines','1',19,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:32','YYYY-MM-DD HH24:MI:SS'),100,200099,'N','N','LBRA','N','80ed4c53-dedf-47dd-b759-36eae3742b44','N')
;

-- 23 de jul de 2024 16:49:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134212,0.0,'Total Percent','Sum of the Percent details ',1120778,'PercentTotal',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2024-07-23 16:49:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:33','YYYY-MM-DD HH24:MI:SS'),100,2618,'N','N','LBRA','N','244062ff-1c32-429c-8cb5-78a8c77972fb','N')
;

-- 23 de jul de 2024 16:49:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134213,0.0,'Total Ratio','Total of relative weight in a distribution','The total relative weight of an distribution. If the total of all ratios is 100, it is the same as percent.',1120778,'RatioTotal',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2024-07-23 16:49:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:33','YYYY-MM-DD HH24:MI:SS'),100,2472,'N','N','LBRA','N','3a458b91-8af4-4c91-b0ee-edd6a72c2390','N')
;

-- 23 de jul de 2024 16:49:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134214,0.0,'BP Search Key','Business Partner Key Value','Search Key of Business Partner',1120778,'BPValue',40,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,1876,'N','N','LBRA','N','b1552ce0-8bef-4636-925b-3314fe399026','N')
;

-- 23 de jul de 2024 16:49:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134215,0.0,'BP Name',1120778,'BPName',120,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,2510,'N','Y','LBRA','N','99f4daf4-7317-48b9-84f5-31f448efbb57',20,'N')
;

-- 23 de jul de 2024 16:49:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134216,0.0,'BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',1120778,'lbr_BPCNPJ',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:49:34','YYYY-MM-DD HH24:MI:SS'),100,1000187,'N','N','LBRA','N','de2711ef-34d3-496e-bc6c-40165f0528d6','N','N')
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_Element SET ColumnName='LBR_GrandTotalNF', Name='Grand Total NF', PrintName='Grand Total NF',Updated=TO_DATE('2024-07-23 16:50:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123452
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_Column SET ColumnName='LBR_GrandTotalNF', Name='Grand Total NF', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123452
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_GrandTotalNF', Name='Grand Total NF', Description=NULL, Help=NULL, AD_Element_ID=1123452 WHERE UPPER(ColumnName)='LBR_GRANDTOTALNF' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_GrandTotalNF', Name='Grand Total NF', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123452 AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_GrandTotalNF', Name='Grand Total NF', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123452 AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_Field SET Name='Grand Total NF', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123452) AND IsCentrallyMaintained='Y'
;

-- 23 de jul de 2024 16:50:08 BRT
UPDATE AD_PrintFormatItem SET PrintName='Grand Total NF', Name='Grand Total NF' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123452)
;

-- 23 de jul de 2024 16:50:53 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120050,0,0,'Y',TO_DATE('2024-07-23 16:50:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:50:52','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_CTeReport',1120777,'LBRA','67456f52-6dae-4158-89f4-e48163371637')
;

-- 23 de jul de 2024 16:51:01 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120051,0,0,'Y',TO_DATE('2024-07-23 16:51:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:51:00','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_CTeDetailReport',1120778,'LBRA','bfa724bf-c869-4570-9f84-a6aa36e27d6f')
;

-- 23 de jul de 2024 16:51:51 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120336,0,0,'Y',TO_DATE('2024-07-23 16:51:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:51:51','YYYY-MM-DD HH24:MI:SS'),100,'CTe Report','CTe Report with summary information','Y','RV_LBR_CTeReport','N',1120050,'3','LBRA',0,0,'N','N','Y','N','089abbe1-dd7c-49f3-9add-f107acc3016c','P')
;

-- 23 de jul de 2024 16:52:23 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120803,'0e8a284c-f184-403b-a1d7-f51fd489980a',TO_DATE('2024-07-23 16:52:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:52:22','YYYY-MM-DD HH24:MI:SS'),100,1120033,'DateDoc','cte.DateDoc',290)
;

-- 23 de jul de 2024 16:52:29 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeDetailReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, LBR_CTeSeries, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal, lbr_NFeNo, lbr_NFSerie, LBR_NFeID, LBR_GrandTotalNF, NumLines, PercentTotal, RatioTotal, BPValue, BPName, lbr_BPCNPJ, DateDoc) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS LBR_CTeSeries, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal, COALESCE(nfe.lbr_NFeNo, nfe.DocumentNo) AS lbr_NFeNo, nfe.lbr_NFSerie AS lbr_NFSerie, nfe.LBR_NFeID AS LBR_NFeID, nfe.GrandTotal AS LBR_GrandTotalNF, TotalNFPerCTE.NumLines AS NumLines, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF),4) AS PercentTotal, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF) * cte.GrandTotal,2) AS RatioTotal, bp.Value AS BPValue, bp.Name AS BPName, nfe.lbr_BPCNPJ AS lbr_BPCNPJ, cte.DateDoc AS DateDoc FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON (cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID)
;

-- 23 de jul de 2024 16:52:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134217,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120778,'DateDoc','@#Date@',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2024-07-23 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:52:35','YYYY-MM-DD HH24:MI:SS'),100,265,'N','N','LBRA','N','1c2b6b97-053c-49a6-baf9-a6291c5dce5c','N')
;

-- 23 de jul de 2024 16:52:55 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120804,'2cdc627c-c052-47af-b52d-53527e985fa6',TO_DATE('2024-07-23 16:52:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:52:54','YYYY-MM-DD HH24:MI:SS'),100,1120032,'DateDoc','cte.DateDoc',190)
;

-- 23 de jul de 2024 16:52:59 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, LBR_CTeSeries, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal, DateDoc) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS LBR_CTeSeries, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal, cte.DateDoc AS DateDoc FROM LBR_CTe cte
;

-- 23 de jul de 2024 16:53:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134218,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120777,'DateDoc',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2024-07-23 16:53:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:53:05','YYYY-MM-DD HH24:MI:SS'),100,265,'N','N','LBRA','N','8d46e0fa-176e-4736-b574-105fea4261c3','N')
;

-- 23 de jul de 2024 16:53:59 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120657,0,0,'Y',TO_DATE('2024-07-23 16:53:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:53:58','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120336,10,19,322,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'37b14004-43c9-47bc-aabf-edbc49ef2adb','N')
;

-- 23 de jul de 2024 16:54:17 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120658,0,0,'Y',TO_DATE('2024-07-23 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120336,20,15,'Y',0,'Y','DateDoc','Y','LBRA',265,'092effad-8256-4073-9645-4f96205ed8e0','N')
;

-- 23 de jul de 2024 16:54:49 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120337,0,0,'Y',TO_DATE('2024-07-23 16:54:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:54:49','YYYY-MM-DD HH24:MI:SS'),100,'CTe Detail Report','CTe Detail Report with nota fiscal information','Y','RV_LBR_CTeDetailReport','N',1120051,'3','LBRA',0,0,'N','N','Y','N','6fe62463-7773-464d-bc4c-a5f0fee110d8','P')
;

-- 23 de jul de 2024 16:55:16 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120659,0,0,'Y',TO_DATE('2024-07-23 16:55:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:55:15','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120337,10,19,322,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'4aa751b5-61b6-4a5e-9e86-cd059091c82c','N')
;

-- 23 de jul de 2024 16:55:34 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120660,0,0,'Y',TO_DATE('2024-07-23 16:55:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:55:34','YYYY-MM-DD HH24:MI:SS'),100,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120337,20,15,'Y',0,'Y','DateDoc','Y','LBRA',265,'bb638b6f-6b08-4917-8c86-5c8eda47840c','N')
;

-- 23 de jul de 2024 16:55:54 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120661,0,0,'Y',TO_DATE('2024-07-23 16:55:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:55:54','YYYY-MM-DD HH24:MI:SS'),100,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120337,30,30,'N',0,'N','LBR_NotaFiscal_ID','Y','LBRA',1000177,'5fcd5a1f-3e77-4527-a5e0-33d59189db37','N')
;

-- 23 de jul de 2024 16:56:19 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120805,'67b8411e-4f91-419d-abaa-56f7797c7186',TO_DATE('2024-07-23 16:56:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2024-07-23 16:56:18','YYYY-MM-DD HH24:MI:SS'),100,1120033,'LBR_NotaFiscal_ID','nfe.LBR_NotaFiscal_ID',300)
;

-- 23 de jul de 2024 16:56:22 BRT
CREATE OR REPLACE VIEW RV_LBR_CTeDetailReport(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, LBR_CTe_ID, DocumentNo, LBR_CTeSeries, LBR_CTeServiceType, LBR_CTeConsignee, LBR_CTeConsignor, LBR_CFOP_ID, LBR_CTeStatus, LBR_CTeType, lbr_CNPJ, DocStatus, GrandTotal, lbr_NFeNo, lbr_NFSerie, LBR_NFeID, LBR_GrandTotalNF, NumLines, PercentTotal, RatioTotal, BPValue, BPName, lbr_BPCNPJ, DateDoc, LBR_NotaFiscal_ID) AS SELECT cte.AD_Client_ID AS AD_Client_ID, cte.AD_Org_ID AS AD_Org_ID, cte.Created AS Created, cte.CreatedBy AS CreatedBy, cte.Updated AS Updated, cte.UpdatedBy AS UpdatedBy, cte.LBR_CTe_ID AS LBR_CTe_ID, cte.DocumentNo AS DocumentNo, cte.lbr_NFSerie AS LBR_CTeSeries, cte.LBR_CTeServiceType AS LBR_CTeServiceType, cte.LBR_CTeConsignee AS LBR_CTeConsignee, cte.LBR_CTeConsignor AS LBR_CTeConsignor, cte.LBR_CFOP_ID AS LBR_CFOP_ID, cte.LBR_CTeStatus AS LBR_CTeStatus, cte.LBR_CTeType AS LBR_CTeType, cte.lbr_CNPJ AS lbr_CNPJ, cte.DocStatus AS DocStatus, cte.GrandTotal AS GrandTotal, COALESCE(nfe.lbr_NFeNo, nfe.DocumentNo) AS lbr_NFeNo, nfe.lbr_NFSerie AS lbr_NFSerie, nfe.LBR_NFeID AS LBR_NFeID, nfe.GrandTotal AS LBR_GrandTotalNF, TotalNFPerCTE.NumLines AS NumLines, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF),4) AS PercentTotal, ROUND((nfe.GrandTotal / TotalNFPerCTE.TotalNF) * cte.GrandTotal,2) AS RatioTotal, bp.Value AS BPValue, bp.Name AS BPName, nfe.lbr_BPCNPJ AS lbr_BPCNPJ, cte.DateDoc AS DateDoc, nfe.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (doc.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON (cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID)
;

-- 23 de jul de 2024 16:56:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134219,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120778,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2024-07-23 16:56:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:56:27','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','LBRA','N','b051ae81-aff4-4a0d-b5de-5300b9b297e4','N','N')
;

-- 23 de jul de 2024 16:57:28 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120437,'RV_LBR_CTeReport','R',0,0,'Y',TO_DATE('2024-07-23 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,'N',1120336,'Y','N','LBRA','Y','4e138c29-6856-430f-9c3e-437520afc129')
;

-- 23 de jul de 2024 16:57:28 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120437, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120437)
;

-- 23 de jul de 2024 16:57:46 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120438,'RV_LBR_CTeDetailReport','R',0,0,'Y',TO_DATE('2024-07-23 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-23 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,'N',1120337,'Y','N','LBRA','Y','3203247b-a30a-434a-8ee0-28c7921f73d1')
;

-- 23 de jul de 2024 16:57:46 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120438, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120438)
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120438
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120437
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120436
;

-- 23 de jul de 2024 16:58:16 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120435
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120437
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120438
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120436
;

-- 23 de jul de 2024 16:58:20 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120435
;

-- 23 de jul de 2024 19:27:43 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1134178
;

-- 23 de jul de 2024 19:27:43 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1134178
;

-- 23 de jul de 2024 19:28:07 BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1134208
;

-- 23 de jul de 2024 19:28:07 BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1134208
;

-- 23 de jul de 2024 20:55:19 BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_DATE('2024-07-23 20:55:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134032
;

-- 23 de jul de 2024 20:56:09 BRT
UPDATE AD_ViewComponent SET FromClause='FROM LBR_CTe cte
LEFT JOIN LBR_CTeDocNFe doc ON (cte.LBR_CTe_ID=doc.LBR_CTe_ID)
LEFT JOIN LBR_NotaFiscal nfe ON (nfe.LBR_NotaFiscal_ID=doc.LBR_NotaFiscal_ID)
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID=nfe.C_BPartner_ID)
LEFT JOIN (SELECT zcte.LBR_CTe_ID, 
           SUM(znfe.GrandTotal) AS TotalNF, COUNT(zdoc.LBR_CTeDocNFe_ID) AS NumLines
    FROM LBR_CTe zcte
    JOIN LBR_CTeDocNFe zdoc ON zcte.LBR_CTe_ID = zdoc.LBR_CTe_ID
    JOIN LBR_NotaFiscal znfe ON zdoc.LBR_NotaFiscal_ID = znfe.LBR_NotaFiscal_ID
    GROUP BY zcte.LBR_CTe_ID
) TotalNFPerCTE ON (cte.LBR_CTe_ID = TotalNFPerCTE.LBR_CTe_ID)',Updated=TO_DATE('2024-07-23 20:56:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120033
;

-- 23 de jul de 2024 20:56:09 BRT
SELECT Register_Migration_Script ('202407232057_CTeReport.sql') FROM DUAL
;