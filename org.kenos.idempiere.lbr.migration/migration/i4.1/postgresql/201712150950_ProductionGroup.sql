CREATE TABLE LBR_ProductionGroup
( 
	LBR_ProductionGroup_ID NUMERIC (10,0) NOT NULL,
	LBR_ProductionGroup_UU VARCHAR (36) NULL DEFAULT NULL::CHARACTER VARYING,
	AD_Client_ID           NUMERIC (10,0) NOT NULL,
	AD_Org_ID       	   NUMERIC (10,0) NOT NULL,
	IsActive        	   CHAR (1) NOT NULL DEFAULT 'Y'::BPCHAR,
	Created         	   TIMESTAMP NOT NULL DEFAULT NOW (),
	CreatedBy       	   NUMERIC (10,0) NOT NULL,
	Updated         	   TIMESTAMP NOT NULL DEFAULT NOW (),
	UpdatedBy       	   NUMERIC (10,0) NOT NULL,
    C_BPartner_ID          NUMERIC (10,0) NOT NULL,
    C_BPartner_Location_ID NUMERIC (10,0) NOT NULL,
	DateOrdered            TIMESTAMP NOT NULL DEFAULT NOW (),
	DatePromised           TIMESTAMP NOT NULL DEFAULT NOW (),
    M_PriceList_ID         NUMERIC (10,0) NOT NULL,
    LBR_CFOP_ID            NUMERIC (10,0) NULL DEFAULT NULL,
    C_DocTypeTarget_ID     NUMERIC (10,0) NOT NULL,
	DocumentNo             VARCHAR (30) NOT NULL,
	DocStatus              CHAR (2) NOT NULL,
	DocAction              CHAR (2) NOT NULL,
	Processed              CHAR (1) NOT NULL DEFAULT 'N'::bpchar,
	Description            VARCHAR (255) NULL,
						   PRIMARY KEY (LBR_ProductionGroup_ID)
)
;

-- 12/12/2017 16h43min37s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120582,'Production Group','Group of Production Orders to be Industrialized','LBR_ProductionGroup',0,'3',0,0,'Y',TO_TIMESTAMP('2017-12-12 16:43:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:43:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','fd859a14-42ef-4a57-93a9-cd40254cb277','N','N','N','N')
;

-- 12/12/2017 16h43min38s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_ProductionGroup',1000000,'N','N','Table LBR_ProductionGroup','Y','Y',0,0,TO_TIMESTAMP('2017-12-12 16:43:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:43:37','YYYY-MM-DD HH24:MI:SS'),100,1153585,'Y',1000000,1,200000,'43d0037f-3fc0-4252-8cf8-2c47224755b4')
;

-- 12/12/2017 16h55min37s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122423,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:36','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductionGroup_ID','Production Group','Production Group','LBRA','0279c473-e349-49ed-b44d-59a4858e7317')
;

-- 12/12/2017 16h55min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129909,0.0,'Production Group',1120582,'LBR_ProductionGroup_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:36','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','d7f6997f-0af7-4a9b-abc2-6ec717309d91','N')
;

-- 12/12/2017 16h55min39s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122424,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:38','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductionGroup_UU','LBR_ProductionGroup_UU','LBR_ProductionGroup_UU','LBRA','8ff66dc3-2b23-4df7-9500-5290571043e2')
;

-- 12/12/2017 16h55min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129910,0.0,'LBR_ProductionGroup_UU',1120582,'LBR_ProductionGroup_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:38','YYYY-MM-DD HH24:MI:SS'),100,1122424,'N','N','LBRA','N','6c36c1af-af2f-4519-8120-eadd4e04bfa3','N')
;

-- 12/12/2017 16h55min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129911,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120582,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:40','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','093227d9-7532-429b-b51d-f2443d2aefc9','N','D')
;

-- 12/12/2017 16h55min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129912,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120582,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:40','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','a65424e9-9b0e-4d67-ae3d-b9c9f81dca0c','N','D')
;

-- 12/12/2017 16h55min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129913,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120582,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:41','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','391aa467-65b0-46a8-b22f-ce6ed1927905','N')
;

-- 12/12/2017 16h55min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129914,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120582,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:41','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','0253cad9-1281-432c-b5d6-f66607efa7e2','N')
;

-- 12/12/2017 16h55min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129915,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120582,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:42','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','9b0af582-04a8-4320-a3b7-6925530a5467','N','D')
;

-- 12/12/2017 16h55min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129916,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120582,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:42','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','53eb4776-45e1-4763-a53d-85efab7c6399','N')
;

-- 12/12/2017 16h55min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129917,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120582,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-12 16:55:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 16:55:43','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','82001900-4cf4-467d-bf25-11681b1cd3f2','N','D')
;

-- 12/12/2017 17h6min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129918,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120582,'C_BPartner_ID',10,'N','N','Y','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:12','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','8b859ca9-5477-488d-ab3f-f918f3473826','N')
;

-- 12/12/2017 17h6min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129919,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120582,'C_BPartner_Location_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','2f85ead1-a77e-4d04-a538-9824173a9fc5','N')
;

-- 12/12/2017 17h6min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129920,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120582,'DateOrdered',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','c9188e7c-d0ea-4626-bf0e-582cda1f830c','N')
;

-- 12/12/2017 17h6min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129921,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120582,'DatePromised',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:14','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','212752c8-0a15-4125-a4fb-acb67224dce7','N')
;

-- 12/12/2017 17h6min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129922,0.0,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120582,'M_PriceList_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:14','YYYY-MM-DD HH24:MI:SS'),100,449,'N','N','LBRA','N','8853bf9f-2171-4e2b-8807-2e0c40ee8c89','N')
;

-- 12/12/2017 17h6min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129923,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120582,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:15','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','6fc984ba-0dd2-43d1-af06-0b6dbd440143','N')
;

-- 12/12/2017 17h6min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129924,0.0,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120582,'C_DocTypeTarget_ID',10,'N','N','Y','N','N','N',18,170,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:16','YYYY-MM-DD HH24:MI:SS'),100,197,'N','N','LBRA','N','4deee908-282a-4308-ac65-3783bc60a1c5','N')
;

-- 12/12/2017 17h6min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129925,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120582,'DocumentNo',30,'N','N','Y','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','2ee70ad2-9a98-45e6-adf1-82c2e3d098f1','N')
;

-- 12/12/2017 17h6min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129926,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120582,'DocStatus','DR',2,'N','N','Y','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','1a2e3660-f2b2-44bb-a85b-25c5dd8a9c74','N')
;

-- 12/12/2017 17h6min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU) VALUES (1129927,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120582,'DocAction','CO',2,'N','N','Y','N','N','N',28,135,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','43a96893-98ad-49d5-8892-bfde9fcd58da')
;

-- 12/12/2017 17h6min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129928,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120582,'Processed',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','8da6d0d4-e524-435f-a412-ec2710028ad5','N')
;

-- 12/12/2017 17h6min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129929,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120582,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','546f2a1a-afc6-4f55-873b-cf63fae9dc88','N')
;

-- 12/12/2017 17h8min21s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1129930,0,'Production Group',325,'LBR_ProductionGroup_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:08:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:08:21','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','N','N','Y','68df6819-9f90-4fe5-a06b-8f8f9ad945fa','Y',0,'N','N','N')
;

-- 12/12/2017 17h8min47s BRST
UPDATE AD_Column SET FKConstraintName='LBRProductionGroup_MProduction', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-12 17:08:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129930
;

-- 12/12/2017 17h8min47s BRST
ALTER TABLE M_Production ADD COLUMN LBR_ProductionGroup_ID NUMERIC(10) DEFAULT NULL 
;

-- 12/12/2017 17h8min47s BRST
ALTER TABLE M_Production ADD CONSTRAINT LBRProductionGroup_MProduction FOREIGN KEY (LBR_ProductionGroup_ID) REFERENCES lbr_productiongroup(lbr_productiongroup_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12/12/2017 17h11min23s BRST
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121823,'Production Order Group',183,'POG',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:11:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:11:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8bd59189-e733-4a9a-b68b-4fb48b0955a7')
;

-- 12/12/2017 17h15min51s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1129931,0,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',325,'PriceEntered',22,'N','N','N','N','N',0,'N',37,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:15:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:15:50','YYYY-MM-DD HH24:MI:SS'),100,2588,'N','N','LBRA','N','N','N','Y','0242ff30-0b90-4eda-af85-8b272f76937a','Y',0,'N','N')
;

-- 12/12/2017 17h15min55s BRST
ALTER TABLE M_Production ADD COLUMN PriceEntered NUMERIC DEFAULT NULL 
;

-- 12/12/2017 17h17min10s BRST
INSERT INTO AD_Window (AD_Window_ID,Name,Description,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120133,'Production Order Group','Production Order Group',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:17:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:17:09','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','48c208e1-3216-4491-aa66-a04dcc69e427')
;

-- 12/12/2017 17h18min6s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120281,'Header',1120133,10,'Y',1120582,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:06','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','03fdd13a-d182-40fe-9ff6-d1f5b8e3e2b4','B')
;

-- 12/12/2017 17h18min16s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127217,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120281,1129911,'Y',10,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e7e043e3-e06a-4ceb-8f06-0437a2353acf','N',2)
;

-- 12/12/2017 17h18min16s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127218,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120281,1129912,'Y',10,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','19f7a5e8-5be6-46c3-9def-ddaca2a84e09','Y','Y',10,4,2)
;

-- 12/12/2017 17h18min17s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127219,'Description','Optional short description of the record','A description is limited to 255 characters.',1120281,1129929,'Y',255,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5add46bf-b1cc-463f-9c75-273b26ede8f8','Y',20,5)
;

-- 12/12/2017 17h18min17s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127220,'Production Group',1120281,1129909,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b6bd6b8-d97e-4e65-9f5a-f3b88ff76e54','N',2)
;

-- 12/12/2017 17h18min18s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1127221,'LBR_ProductionGroup_UU',1120281,1129910,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','97a94fa3-3f07-4897-b4d6-c3455dedd73b','N',2)
;

-- 12/12/2017 17h18min18s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127222,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120281,1129918,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','08dc6614-aaf8-4807-b5de-4c7d198f0530','Y',30,2)
;

-- 12/12/2017 17h18min19s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127223,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120281,1129919,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fc785d59-d6b4-4707-a47f-03ccbe4c3926','Y',40,2)
;

-- 12/12/2017 17h18min19s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127224,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120281,1129920,'Y',29,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','23eb5de5-63d7-4d5a-b9a0-3ca37d3faf09','Y',50,2)
;

-- 12/12/2017 17h18min20s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127225,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120281,1129921,'Y',29,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1cc86f68-31f4-49eb-a015-00562e59af57','Y',60,2)
;

-- 12/12/2017 17h18min20s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127226,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120281,1129922,'Y',10,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','371bc426-21a6-4892-ba8a-a3f090d1d35d','Y',70,2)
;

-- 12/12/2017 17h18min21s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127227,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120281,1129923,'Y',10,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ff731f60-6697-4fbf-af99-2b5bde052bad','Y',80,2)
;

-- 12/12/2017 17h18min21s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127228,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120281,1129924,'Y',10,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','47a8082e-480a-48db-94bd-35955264d407','Y',90,2)
;

-- 12/12/2017 17h18min22s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127229,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120281,1129925,'Y',30,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b611d574-1293-4617-8e17-9486444dddda','Y',100,2)
;

-- 12/12/2017 17h18min22s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1127230,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120281,1129926,'Y',2,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e4f7ce16-78ec-4450-a8c8-77488cdb4c00','Y',110,2)
;

-- 12/12/2017 17h18min23s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127231,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120281,1129927,'Y',2,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bb6fb4f0-106e-4aca-9ef3-8277a2192b2f','Y',120,2,2)
;

-- 12/12/2017 17h18min23s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127232,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120281,1129928,'Y',1,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','aaec876d-0df0-488b-9059-4fd4acfd1414','Y',130,2,2)
;

-- 12/12/2017 17h18min24s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1127233,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120281,1129913,'Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:18:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:18:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cd055fe6-ba95-4bd5-b7de-b0e32ecdc11a','Y',140,2,2)
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127228
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127229
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127219
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127222
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127223
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127224
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127225
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127226
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127227
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127232
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127233
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127221
;

-- 12/12/2017 17h19min54s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 17:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127220
;

-- 12/12/2017 17h20min46s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120282,'Production',1120133,20,'Y',325,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:20:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:20:46','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1129930,'N','N',1,'N','LBRA','Y','N','7ed23dd9-8e24-40ec-b587-115278cd79f0','B')
;

-- 12/12/2017 17h21min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127234,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120282,59049,'N',20,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3cc14532-edb1-437e-bbcd-1ae7fcfec0ab','N',0,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127235,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120282,3596,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0e8c22f5-8a07-47a0-b1b6-70b151ecf99e','N',0,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min6s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127236,'Process Now',1120282,3610,'N',1,0,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','50c71380-ca3a-477d-8824-590eab368fec','N',0,5,2,1,'N','N','N')
;

-- 12/12/2017 17h21min6s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127237,'Complete Production','Complete Production','Indication that this is complete',1120282,61940,'N',1,0,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:06','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','b370f4b2-ebca-46b1-84b6-79e9d8e6be99','Y',130,5,2,1,'N','N','N')
;

-- 12/12/2017 17h21min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127238,'Use Production Plan',1120282,210981,'N',0,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','N','01ff3ec9-ee31-48ba-9b06-68e49d192641','N',210,1,1,1,'N','N','N')
;

-- 12/12/2017 17h21min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127239,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120282,3597,'Y',22,10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','63b1c636-d5d7-4370-b621-257182bffe1a','N',10,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min8s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127240,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120282,3598,'Y',22,20,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','654192c9-1c61-49c0-ac88-4c841cb4671f','Y','Y',20,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min8s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127241,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120282,59961,'Y',22,30,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','46e82819-e77d-4b8f-baee-2d9ad5743de5','Y',30,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127242,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120282,3604,'Y',60,40,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e624da4-9a4c-48c6-b2c5-76097df2749d','Y',40,1,5,1,'N','N','N')
;

-- 12/12/2017 17h21min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127243,'Description','Optional short description of the record','A description is limited to 255 characters.',1120282,3605,'Y',255,50,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','531f8139-2ac8-4a94-b45a-4a87182918b9','Y',50,1,5,1,'N','N','N')
;

-- 12/12/2017 17h21min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127244,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120282,59966,'Y',7,60,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','44b5ab96-d780-40c1-9fe9-88cc15ac3154','Y',70,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127245,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120282,3608,'Y',7,70,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c15c4f20-b748-40f8-8e57-a091c0348d89','Y',80,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127246,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120282,59962,'Y',22,80,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','Y','282bc8e3-c24f-4fa2-a197-d59243232f88','Y',90,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127247,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120282,59963,'Y',10,90,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','Y','bef12632-4077-4c57-be55-370af77754f9','Y',100,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127248,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120282,59964,'Y',10,100,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','38281f68-b324-420a-8339-a786319496bf','Y',110,1,1,1,'N','N','N')
;

-- 12/12/2017 17h21min12s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127249,'Create/Update Production lines','Process which will create production lines based on BOM, or recreate with an optional adjusted quantity',1120282,61943,'Y',1,110,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:11','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','30d81233-6751-4546-ae8b-779e55a03311','Y',120,2,2,1,'N','N','N')
;

-- 12/12/2017 17h21min12s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127250,'Records created',1120282,4752,'Y',1,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5d7a9c2e-b55b-49b7-93de-386c568e3982','Y',140,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min13s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127251,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120282,210983,'Y',0,130,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','686ff1b4-df02-445a-bbf4-8ea3f50e3314','Y',130,2,2,1,'N','N','N')
;

-- 12/12/2017 17h21min13s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127252,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120282,3599,'Y',1,140,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','becae6da-c7a4-4ad2-b5a3-4b138af78ba5','Y',60,5,1,1,'N','N','N')
;

-- 12/12/2017 17h21min14s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127253,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120282,61941,'Y',10,150,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',104,'LBRA','c14a5caf-9143-4acc-9215-57c204d738d1','Y',170,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min14s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127254,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120282,61942,'Y',10,160,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',104,'LBRA','2091204e-0c86-4d17-ab15-5601ce4ce18f','Y',180,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min15s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127255,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120282,9551,'Y','@$Element_PJ@=''Y''',22,170,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','a33e4e1a-8e6a-4f67-8215-2322c5c263e3','Y',160,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min15s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127256,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120282,9554,'Y','@$Element_AY@=''Y''',22,180,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','bb8110e4-36e0-485b-9431-abac1c37dcde','Y',150,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min16s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127257,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120282,9555,'Y','@$Element_MC@=Y',22,190,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','e48cbd65-5a6f-47a8-b67f-c27d425b4c1f','Y',170,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min16s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127258,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120282,9552,'Y','@$Element_OT@=Y',22,200,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','44c60248-0159-4d5e-9382-7a32b5267c06','Y',180,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min17s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127259,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120282,9556,'Y','@$Element_U1@=Y',22,210,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','f49c218e-69ab-4631-99df-e1ea1ec99bfc','Y',190,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min17s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127260,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120282,9553,'Y','@$Element_U1@=Y',22,220,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','7eebc02f-38d2-4c42-a0aa-5a8c3e727bdc','Y',200,4,2,1,'N','N','N')
;

-- 12/12/2017 17h21min17s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127261,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120282,210984,'Y',0,230,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','fd82eaf0-1024-432a-92e6-4a9711153a92','Y',220,1,2,1,'N','N','N')
;

-- 12/12/2017 17h21min18s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127262,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120282,3609,'Y',1,240,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','2d3af651-c32e-4306-a487-5c09e528d997','Y',150,2,1,1,'N','N','N')
;

-- 12/12/2017 17h21min18s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127263,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120282,6537,'Y','@Processed@=Y',1,250,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','10327e7b-0f4c-4685-a1d1-03b89c53f8d6','Y',160,5,2,1,'N','N','N')
;

-- 12/12/2017 17h21min19s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127264,'Project Phase','Phase of a Project',1120282,211817,'N',0,260,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3a859f23-112c-419e-a5f5-e9a4707c91be','Y',230,1,1,1,'N','N','N')
;

-- 12/12/2017 17h21min19s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127265,'Project Task','Actual Project Task in a Phase','A Project Task in a Project Phase represents the actual work.',1120282,211818,'N',0,270,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a1041ef3-9aa2-4c31-9741-ab75dd2cb002','Y',240,1,1,1,'N','N','N')
;

-- 12/12/2017 17h21min20s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127266,'M_Production_UU',1120282,60928,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:21:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:21:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','185a557b-4446-4989-9218-8ea158167618','N',1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min3s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120283,'Production Line',1120133,30,'Y',326,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:03','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',59960,'N','N',2,'N','LBRA','Y','N','4a865b7e-9654-47bd-a94b-3699f4d68277','B')
;

-- 12/12/2017 17h22min22s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127267,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120283,12073,'N',1,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','22978158-d7c0-48a2-a082-fc2f8d6f0bd4','N',0,2,2,1,'N','N','N')
;

-- 12/12/2017 17h22min22s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127268,'Production Plan','Plan for how a product is produced','The Production Plan identifies the items and steps in generating a product.',1120283,4753,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1cda23aa-7e47-4417-aa10-d8f7c64f2c33','N',0,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min23s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127269,'Production Line','Document Line representing a production','The Production Line indicates the production document line (if applicable) for this transaction',1120283,3611,'N',22,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','58428be5-cfd1-41e0-9339-d84777c8dcfc','N',0,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min23s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127270,'Product Type','Type of product','The type of product also determines accounting consequences.',1120283,61947,'N',1,0,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','23f0ac29-46a4-4550-9587-4729bbc9d92c','N',0,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min24s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127271,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120283,3612,'Y',22,10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4c76b765-be0a-47a2-9ef9-b7e5772fb514','N',10,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min24s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127272,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120283,3613,'Y',22,20,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ea323bd5-3f7d-4555-9f94-7c3c321df5f8','Y','Y',20,4,2,1,'N','N','N')
;

-- 12/12/2017 17h22min24s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,IsMandatory,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127273,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120283,59960,'Y',10,30,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','Y','5e8a3ec9-c293-4f90-afe3-8dbdfa0899d1','Y',30,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min25s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127274,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120283,4768,'Y',22,40,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d27941d6-d726-4337-8aa5-c9eed790bcfc','Y',40,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min25s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127275,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120283,3620,'Y',22,50,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a9d2b4d-e3e7-4100-8149-b1c6bfde63aa','Y',50,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127276,'End Product','End Product of production',1120283,61945,'Y',1,60,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13648386-b54e-4232-8ca9-725becf6c7fd','Y',60,2,2,1,'N','N','N')
;

-- 12/12/2017 17h22min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127277,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120283,8552,'Y',22,70,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fd0dfd2f-0f78-445b-9a49-e0eb21f088b4','Y',70,4,2,1,'N','N','N')
;

-- 12/12/2017 17h22min27s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127278,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120283,3614,'Y',1,80,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3f3a42ae-b7c5-4840-8898-2ac9d0cb7915','Y',80,2,2,1,'N','N','N')
;

-- 12/12/2017 17h22min27s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127279,'Planned Quantity','Planned quantity for this project','The Planned Quantity indicates the anticipated quantity for this project or project line',1120283,59967,'Y',10,90,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a7e5c7c7-2300-49aa-b02b-6f128e3f450e','Y',90,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min28s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127280,'Quantity Used',1120283,61944,'Y','@IsEndProduct@=N',10,100,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8ec769df-d48a-4bfa-847e-5a946294965d','Y',100,4,2,1,'N','N','N')
;

-- 12/12/2017 17h22min28s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127281,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120283,3622,'Y','@IsEndProduct@=Y',22,110,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bc54e07e-13e6-425d-acac-ce497fed184f','Y',110,4,2,1,'N','N','N')
;

-- 12/12/2017 17h22min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127282,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120283,3619,'Y',22,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fdc15db9-5a3d-47eb-b466-e285690f4157','Y',120,1,2,1,'N','N','N')
;

-- 12/12/2017 17h22min29s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127283,'Available Quantity','Available Quantity (On Hand - Reserved)','Quantity available to promise = On Hand minus Reserved Quantity',1120283,61946,'Y',22,130,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ece20784-d12d-4fd3-8970-7b7166af3e9f','Y',130,4,2,1,'N','N','N')
;

-- 12/12/2017 17h22min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127284,'Description','Optional short description of the record','A description is limited to 255 characters.',1120283,3623,'Y',255,140,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','db08ffc0-121b-4ac0-b978-08857e5d2c3d','Y',140,1,5,1,'N','N','N')
;

-- 12/12/2017 17h22min30s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127285,'M_ProductionLine_UU',1120283,60929,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:22:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:22:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','10dd63b1-7200-4f18-8ede-5067c070d0b2','N',1,2,1,'N','N','N')
;

-- 12/12/2017 17h47min49s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120298,'Production Order Group','W',1120133,0,0,'Y',TO_TIMESTAMP('2017-12-12 17:47:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:47:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','212f1a73-efa4-406d-a407-79ad80617e88')
;

-- 12/12/2017 17h47min49s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120298, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120298)
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000005
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000009
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 12/12/2017 17h48min21s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 12/12/2017 17h48min28s BRST
UPDATE AD_Menu SET IsActive='N',Updated=TO_TIMESTAMP('2017-12-12 17:48:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000034
;

-- 12/12/2017 17h48min37s BRST
UPDATE AD_Window SET IsActive='N',Updated=TO_TIMESTAMP('2017-12-12 17:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000023
;

-- 12/12/2017 17h57min9s BRST
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120136,'C_DocType Production Order Group','S','C_DocType.DocBaseType=''POG'' ',0,0,'Y',TO_TIMESTAMP('2017-12-12 17:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 17:57:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','66a1e2aa-295a-489d-aa74-a4471131cb72')
;

-- 12/12/2017 17h57min38s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=1120136,Updated=TO_TIMESTAMP('2017-12-12 17:57:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129924
;

-- 12/12/2017 18h32min44s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=131,Updated=TO_TIMESTAMP('2017-12-12 18:32:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129919
;

-- 12/12/2017 18h33min21s BRST
UPDATE AD_Column SET AD_Reference_ID=15, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2017-12-12 18:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129920
;

-- 12/12/2017 18h33min27s BRST
UPDATE AD_Column SET AD_Reference_ID=15, FKConstraintType=NULL,Updated=TO_TIMESTAMP('2017-12-12 18:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129921
;

-- 12/12/2017 18h34min45s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=1120133,Updated=TO_TIMESTAMP('2017-12-12 18:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129922
;

-- 12/12/2017 18h36min8s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 18:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127230
;

-- 12/12/2017 18h36min56s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-12-12 18:36:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129918
;

-- 12/12/2017 18h36min59s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-12-12 18:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129919
;

-- 12/12/2017 18h37min12s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-12-12 18:37:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129920
;

-- 12/12/2017 18h37min15s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-12-12 18:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129921
;

-- 12/12/2017 18h37min42s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2017-12-12 18:37:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129922
;

-- 12/12/2017 18h38min2s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 18:38:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127232
;

-- 12/12/2017 18h40min47s BRST
UPDATE AD_Field SET IsReadOnly='Y', DefaultValue='@AD_Org_ID@', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-12 18:40:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127240
;

-- 12/12/2017 18h41min10s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=202, IsAllowCopy='N',Updated=TO_TIMESTAMP('2017-12-12 18:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129912
;

-- 12/12/2017 18h45min57s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1129932,0,'Production Group',323,'LBR_ProductionGroup_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 18:45:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 18:45:56','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','U','N','N','N','Y','e8ff7c5b-c92f-4dcf-ac29-dab6167eb699','Y',0,'N','N','N')
;

-- 12/12/2017 18h46min0s BRST
UPDATE AD_Column SET FKConstraintName='LBRProductionGroup_MMovement', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-12 18:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129932
;

-- 12/12/2017 18h46min0s BRST
ALTER TABLE M_Movement ADD COLUMN LBR_ProductionGroup_ID NUMERIC(10) DEFAULT NULL 
;

-- 12/12/2017 18h46min0s BRST
ALTER TABLE M_Movement ADD CONSTRAINT LBRProductionGroup_MMovement FOREIGN KEY (LBR_ProductionGroup_ID) REFERENCES lbr_productiongroup(lbr_productiongroup_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12/12/2017 18h46min11s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2017-12-12 18:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129932
;

-- 12/12/2017 18h50min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1129933,0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',325,'LBR_NotaFiscal_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-12-12 18:50:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 18:50:15','YYYY-MM-DD HH24:MI:SS'),100,1000177,'Y','N',NULL,'LBRA','N','N','N','Y','9f23222b-391f-4efc-85f7-01463a48c229','Y',0,'N','N')
;

-- 12/12/2017 18h50min20s BRST
UPDATE AD_Column SET FKConstraintName='LBRNotaFiscal_MProduction', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-12 18:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129933
;

-- 12/12/2017 18h50min20s BRST
ALTER TABLE M_Production ADD COLUMN LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 12/12/2017 18h50min20s BRST
ALTER TABLE M_Production ADD CONSTRAINT LBRNotaFiscal_MProduction FOREIGN KEY (LBR_NotaFiscal_ID) REFERENCES lbr_notafiscal(lbr_notafiscal_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12/12/2017 19h0min53s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1129934,0,'Invoice','Invoice Identifier','The Invoice Document.',325,'C_Invoice_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_TIMESTAMP('2017-12-12 19:00:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 19:00:53','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','N','N','Y','45732807-2729-4f13-953c-8a087ba498c5','Y',0,'N','N')
;

-- 12/12/2017 19h0min55s BRST
UPDATE AD_Column SET FKConstraintName='CInvoice_MProduction', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-12 19:00:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129934
;

-- 12/12/2017 19h0min55s BRST
ALTER TABLE M_Production ADD COLUMN C_Invoice_ID NUMERIC(10) DEFAULT NULL 
;

-- 12/12/2017 19h0min55s BRST
ALTER TABLE M_Production ADD CONSTRAINT CInvoice_MProduction FOREIGN KEY (C_Invoice_ID) REFERENCES c_invoice(c_invoice_id) DEFERRABLE INITIALLY DEFERRED
;

-- 12/12/2017 19h4min4s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120196,0,0,'Y',TO_TIMESTAMP('2017-12-12 19:04:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 19:04:04','YYYY-MM-DD HH24:MI:SS'),100,'BOM Drop','N','LBR_POG_BOM_Drop','N','org.kenos.idempiere.lbr.base.process.POGBOMDrop','3','LBRA',0,0,'N','N','Y','N','77d47875-2bfd-4c40-920e-647df834ca17')
;

-- 12/12/2017 19h4min38s BRST
UPDATE AD_Process SET Description='Creates the production lines by exploding the bill of materials',Updated=TO_TIMESTAMP('2017-12-12 19:04:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120196
;

-- 12/12/2017 19h7min12s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120197,0,0,'Y',TO_TIMESTAMP('2017-12-12 19:07:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 19:07:11','YYYY-MM-DD HH24:MI:SS'),100,'Move to Producer','Move the products to the Producer','Move the products from all lines to the Producer','N','LBR_POG_Mov_Producer','N','org.kenos.idempiere.lbr.base.process.POGBOMDrop','3','LBRA',0,0,'N','N','Y','N','854453e0-33fe-4f81-92e3-4c360170e798')
;

-- 12/12/2017 19h14min25s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120198,0,0,'Y',TO_TIMESTAMP('2017-12-12 19:14:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-12 19:14:24','YYYY-MM-DD HH24:MI:SS'),100,'Generate Invoice to Pay Producer','Generate the Invoices to Pay the Producer',NULL,'N','LBR_POG_Gen_Invoice','N','org.kenos.idempiere.lbr.base.process.POGBGenInvoice','3','LBRA',0,0,'N','N','Y','N','599ddb17-afbf-4397-8c26-32e676ee36a8')
;

-- 12/12/2017 19h14min43s BRST
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.base.process.POGMoveToProducer',Updated=TO_TIMESTAMP('2017-12-12 19:14:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120197
;

-- 12/12/2017 19h16min8s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2017-12-12 19:16:08','YYYY-MM-DD HH24:MI:SS'),100,'LBR_POG_BOM_Drop','Y',2000003,'Explodir LDM',TO_TIMESTAMP('2017-12-12 19:16:08','YYYY-MM-DD HH24:MI:SS'),100,'N','daea7c17-63e4-44eb-ab45-7ed9c0ae2b1b','W',1120281,1120196,10)
;

-- 12/12/2017 19h16min30s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2017-12-12 19:16:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR_POG_Mov_Producer','Y',2000004,'Enviar ao Produtor',TO_TIMESTAMP('2017-12-12 19:16:30','YYYY-MM-DD HH24:MI:SS'),100,'N','f1a7345a-df38-4589-80f6-54155cdb1552','W',1120281,1120197,20)
;

-- 12/12/2017 19h17min39s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_TIMESTAMP('2017-12-12 19:17:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_POG_Gen_Invoice','Y',2000005,'Gera a Fatura à Pagar',TO_TIMESTAMP('2017-12-12 19:17:39','YYYY-MM-DD HH24:MI:SS'),100,'N','61293250-9643-4819-b591-eb622f7b9a1c','W',1120281,1120198,30)
;

-- 14/12/2017 22h24min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1129935,0,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120582,'LBR_Tax_ID',22,'N','N','N','N','N',0,'N',1000006,0,0,'Y',TO_TIMESTAMP('2017-12-14 22:24:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-14 22:24:06','YYYY-MM-DD HH24:MI:SS'),100,1000094,'Y','N','LBRA','N','N','N','Y','77bc78c4-f04b-4f8d-a03a-45822e2cefe9','Y',0,'N','N')
;

-- 14/12/2017 22h24min10s BRST
ALTER TABLE LBR_ProductionGroup ADD COLUMN LBR_Tax_ID NUMERIC(10) DEFAULT NULL 
;

-- 14/12/2017 22h27min26s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127286,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120281,1129935,'Y',0,150,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-14 22:27:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-14 22:27:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6149d815-c000-460b-af1d-0badc6a68bf4','Y',150,1,1,1,'N','N','N')
;

-- 14/12/2017 22h28min25s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-14 22:28:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127286
;

-- 14/12/2017 22h28min25s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-14 22:28:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127232
;

-- 14/12/2017 22h32min42s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127288,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120282,1129931,'Y',0,270,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-14 22:32:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-14 22:32:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','b8a946eb-f0f4-4b9c-a254-6c86bb2dc8cf','Y',250,1,1,1,'N','N','N')
;

-- 14/12/2017 22h32min58s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-14 22:32:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127288
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 15/12/2017 10h24min5s BRST
UPDATE AD_Tab SET Parent_Column_ID=1129909,Updated=TO_TIMESTAMP('2017-12-15 10:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120282
;

-- 15/12/2017 10h25min58s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127291,'Production Group',1120282,1129930,'Y',0,280,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-15 10:25:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 10:25:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8433de9a-c001-4c26-b51c-61b55e2e2787','Y',260,1,1,1,'N','N','N')
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127291
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127242
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127243
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127244
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127245
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127246
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127247
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127248
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127249
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127288
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127250
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127251
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127252
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127253
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127254
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127255
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127256
;

-- 15/12/2017 10h26min33s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127257
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127258
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127259
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127260
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127261
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127262
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127263
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127266
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127264
;

-- 15/12/2017 10h26min34s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127265
;

-- 15/12/2017 10h26min44s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 10:26:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127291
;

-- 15/12/2017 12h0min37s BRST
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120137,'M_Warehouse 3rd from Org','S','M_Warehouse.AD_Org_ID=@AD_Org_ID@ AND M_Warehouse.lbr_WarehouseType=''3WN''',0,0,'Y',TO_TIMESTAMP('2017-12-15 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f7cf1439-61cb-40a2-bba8-4cf3ff243a73')
;

-- 15/12/2017 12h0min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1129936,0,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120582,1120137,'M_Warehouse_ID',22,'N','N','Y','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2017-12-15 12:00:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 12:00:47','YYYY-MM-DD HH24:MI:SS'),100,459,'N','N','LBRA','N','N','N','Y','da5e6fa1-7041-4121-8c4f-0c1ba7ce5538','Y',0,'N','N')
;

-- 15/12/2017 12h0min54s BRST
UPDATE AD_Column SET FKConstraintName='MWarehouse_LBRProductionGroup', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-15 12:00:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129936
;

-- 15/12/2017 12h0min54s BRST
ALTER TABLE LBR_ProductionGroup ADD COLUMN M_Warehouse_ID NUMERIC(10) NOT NULL
;

-- 15/12/2017 12h1min49s BRST
UPDATE AD_Column SET FKConstraintName='MWarehouse_LBRProductionGroup', FKConstraintType='N',Updated=TO_TIMESTAMP('2017-12-15 12:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129936
;

-- 15/12/2017 12h1min49s BRST
ALTER TABLE LBR_ProductionGroup ADD CONSTRAINT MWarehouse_LBRProductionGroup FOREIGN KEY (M_Warehouse_ID) REFERENCES m_warehouse(m_warehouse_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15/12/2017 12h2min11s BRST
UPDATE AD_Table SET AD_Window_ID=1120133,Updated=TO_TIMESTAMP('2017-12-15 12:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120582
;

-- 15/12/2017 12h2min48s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127289,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120281,1129936,'Y',0,160,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-12-15 12:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 12:02:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1c53663-8a54-4825-9f6b-b0d84cfc1304','Y',160,1,1,1,'N','N','N')
;

-- 15/12/2017 12h2min58s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-15 12:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127289
;

-- 15/12/2017 12h18min55s BRST
UPDATE AD_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=191, AD_Val_Rule_ID=52087,Updated=TO_TIMESTAMP('2017-12-15 12:18:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127247
;

-- 15/12/2017 12h39min58s BRST
UPDATE AD_Field SET AD_Reference_ID=30, AD_Reference_Value_ID=191, AD_Val_Rule_ID=52087,Updated=TO_TIMESTAMP('2017-12-15 12:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127282
;

-- 15/12/2017 14h38min27s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120199,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:38:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:38:26','YYYY-MM-DD HH24:MI:SS'),100,'Generate NF','Generate NF from another document','N','LBR_GenerateNF','N','3','LBRA',0,0,'N','N','Y','N','edc65157-f275-4951-801a-92cc0b9a0829')
;

-- 15/12/2017 14h39min49s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120368,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:39:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:39:48','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120199,10,19,322,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'04513c13-b4d8-4b65-b9f8-f4acaddab7af','N')
;

-- 15/12/2017 14h40min49s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120369,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:40:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:40:49','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120199,20,19,170,'N',1120123,0,'N','C_DocType_ID','Y','LBRA',196,'0f39cb5a-7eb7-42bc-a310-f314a6ed5e4d','N')
;

-- 15/12/2017 14h41min55s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120370,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:41:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:41:54','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','Invoice Identifier','The Invoice Document.',1120199,30,30,336,'N',1120129,0,'N','C_Invoice_ID','Y','LBRA',1008,'0fcb6a80-9a44-4a86-be39-099e3c325055','N')
;

-- 15/12/2017 14h43min24s BRST
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120139,'C_Order By Org AND Completed','S','C_Order.DocStatus IN (''CL'',''CO'') AND C_Order.AD_Org_ID = @AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2017-12-15 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d685b707-952b-48b1-a270-15c2c5134a17')
;

-- 15/12/2017 14h43min30s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120371,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:43:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:43:30','YYYY-MM-DD HH24:MI:SS'),100,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120199,40,30,290,'N',1120139,0,'N','C_Order_ID','Y','LBRA',558,'a623311d-f0f4-4989-9d31-8181a23815ba','N')
;

-- 15/12/2017 14h44min6s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120372,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:44:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:44:05','YYYY-MM-DD HH24:MI:SS'),100,'Shipment/Receipt','Material Shipment Document','The Material Shipment / Receipt ',1120199,50,30,337,'N',1120131,0,'N','M_InOut_ID','Y','LBRA',1025,'d215cc6f-ea7a-4c2c-9486-f5fed66efb21','N')
;

-- 15/12/2017 14h45min9s BRST
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120140,'M_Movement By Org AND Completed','S','M_Movement.DocStatus IN (''CL'',''CO'') AND M_Movement.AD_Org_ID = @AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2017-12-15 14:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:45:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','bed7fc9b-91da-470a-af14-336e7bc77b67')
;

-- 15/12/2017 14h45min18s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120373,0,0,'Y',TO_TIMESTAMP('2017-12-15 14:45:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:45:18','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Move','Movement of Inventory','The Inventory Movement uniquely identifies a group of movement lines.',1120199,60,30,53252,'N',1120140,0,'N','M_Movement_ID','Y','LBRA',1030,'43264115-3f81-4be1-a59b-d61fa1a410ac','N')
;

-- 15/12/2017 14h46min19s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120299,'Generate NF','P',0,0,'Y',TO_TIMESTAMP('2017-12-15 14:46:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-15 14:46:18','YYYY-MM-DD HH24:MI:SS'),100,'N',1120199,'Y','N','LBRA','Y','73052576-ec91-477a-b39a-8e03c0f1d3df')
;

-- 15/12/2017 14h46min19s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120299, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120299)
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15/12/2017 14h47min23s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 15/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120299
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 15/12/2017 15h9min36s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 15/12/2017 15h37min58s BRST
UPDATE AD_Process SET Classname='org.kenos.idempiere.lbr.nfe.process.GenerateNF',Updated=TO_TIMESTAMP('2017-12-15 15:37:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120199
;

-- 15/12/2017 15h37min58s BRST
UPDATE AD_Column SET IsMandatory='N' WHERE AD_Column_ID=1126691
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 20/12/2017 17h18min11s BRST
INSERT INTO t_alter_column values('m_production','DateStart','TIMESTAMP',null,'NULL')
;
ALTER TABLE M_Production ALTER COLUMN DateStart DROP NOT NULL
;
UPDATE AD_Process SET ClassName='org.kenos.idempiere.lbr.nfe.process.POGBGenInvoice' WHERE ClassName='org.kenos.idempiere.lbr.base.process.POGBGenInvoice'
;