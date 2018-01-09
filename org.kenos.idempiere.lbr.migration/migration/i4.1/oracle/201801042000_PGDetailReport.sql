SET SQLBLANKLINES ON
SET DEFINE OFF

-- View: rv_lbr_pgdetail

-- DROP VIEW rv_lbr_pgdetail;

CREATE OR REPLACE VIEW rv_lbr_pgdetail AS 
 SELECT pg.ad_client_id,
    pg.ad_org_id,
    pg.isactive,
    pg.created,
    pg.createdby,
    pg.updated,
    pg.updatedby,
    pg.documentno,
    pg.c_doctypetarget_id,
    pg.c_bpartner_id,
    pg.c_bpartner_location_id,
    pg.dateordered,
    pg.m_pricelist_id,
    pg.lbr_cfop_id,
    pg.description,
    pg.docstatus,
    pg.lbr_productiongroup_id,
    p.m_product_id,
    p.datepromised,
    p.name,
    p.m_locator_id,
    p.movementdate,
    p.priceentered,
    p.productionqty,
    p.datestart,
    p.iscreated,
    p.m_production_id,
    p.c_orderline_id
   FROM lbr_productiongroup pg
     LEFT JOIN m_production p ON pg.lbr_productiongroup_id = p.lbr_productiongroup_id;

ALTER TABLE rv_lbr_pgdetail
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 04/01/2018 18h2min17s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120591,'Production Group Detail','RV_LBR_PGDetail',0,'3',0,0,'Y',TO_DATE('2018-01-04 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','LBRA','N','Y','L','N','Y','cf57a7c2-f70e-4a08-a014-8e2ce955a5c5','N','N','N','N')
;

-- 04/01/2018 18h2min44s BRST
UPDATE AD_Table SET Description='Report Production Group and Production',Updated=TO_DATE('2018-01-04 18:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120591
;

-- 04/01/2018 18h3min33s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130173,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120591,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:32','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','0184327b-6eb8-4bb5-8bab-f9fe8dad8615','N','D')
;

-- 04/01/2018 18h3min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130174,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120591,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:33','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','b9ffbe98-6bfb-4d2a-9afc-436e955642ea','N','D')
;

-- 04/01/2018 18h3min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130175,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120591,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-01-04 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','89037a72-7182-466f-ab76-051efef697f9','N')
;

-- 04/01/2018 18h3min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130176,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120591,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-01-04 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:34','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','e373bb13-7b32-4ab6-a93f-41d63c2e1411','N')
;

-- 04/01/2018 18h3min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130177,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120591,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-01-04 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:35','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','763454b4-e1f5-4d87-abeb-3171e037fba4','N','D')
;

-- 04/01/2018 18h3min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130178,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120591,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-01-04 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','aeeeab7f-10e6-496e-9b89-da5b9b4a7f7f','N')
;

-- 04/01/2018 18h3min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130179,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120591,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-01-04 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:36','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','bc42b3b6-4d91-4ffb-b2ca-b98d41a8c9a1','N','D')
;

-- 04/01/2018 18h3min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130180,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120591,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-01-04 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','dedf4a8e-e82a-4153-9f72-4521cd691090','N')
;

-- 04/01/2018 18h3min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130181,0.0,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120591,'C_DocTypeTarget_ID',10,'N','N','N','N','N','N',18,170,0,0,'Y',TO_DATE('2018-01-04 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:37','YYYY-MM-DD HH24:MI:SS'),100,197,'N','N','LBRA','N','902f794b-648e-4292-8f3a-0a0ad78c9447','N')
;

-- 04/01/2018 18h3min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130182,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120591,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-01-04 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','4c11cc2d-bedf-419a-ba39-ee9c87d07e41','N')
;

-- 04/01/2018 18h3min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130183,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120591,'C_BPartner_Location_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:38','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','bc1fdf2a-b34a-4885-b0fc-1c9824a54c6e','N')
;

-- 04/01/2018 18h3min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130184,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120591,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-01-04 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','e2d03d82-df22-41dc-af20-0c4e614bc9fc','N')
;

-- 04/01/2018 18h3min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130185,0.0,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120591,'M_PriceList_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:39','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','N','LBRA','N','92a59c9a-5b94-4fab-a574-da0b58252300','N','N')
;

-- 04/01/2018 18h3min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130186,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120591,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_DATE('2018-01-04 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:40','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','fd60805b-35bd-47eb-8ac0-3fd47f64719d','N')
;

-- 04/01/2018 18h3min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130187,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120591,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-01-04 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','8aca05fd-70fa-4198-ad7d-0a2c6e0820f7','N')
;

-- 04/01/2018 18h3min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130188,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120591,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2018-01-04 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','e1de8a37-d31a-4cb1-9c01-1b86f3e9cbf7','N')
;

-- 04/01/2018 18h3min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130189,0.0,'Production Group',1120591,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','77da8ecc-9b50-4c71-93e4-747ee71e452c','N','N')
;

-- 04/01/2018 18h3min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130190,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120591,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-01-04 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:43','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','5c8ac875-dcab-4d90-91e4-9971e4051928','N')
;

-- 04/01/2018 18h3min45s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130191,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120591,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-01-04 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:44','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','8864eb45-98ba-4834-b080-fea3f50efc51','N')
;

-- 04/01/2018 18h3min46s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130192,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120591,'Name',60,'N','N','N','N','Y','N',10,0,0,'Y',TO_DATE('2018-01-04 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:45','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','a751d913-6019-4033-840d-cbb775370469','N')
;

-- 04/01/2018 18h3min46s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130193,0.0,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120591,'M_Locator_ID',10,'N','N','N','N','N','N',31,0,0,'Y',TO_DATE('2018-01-04 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,448,'N','N','LBRA','N','84bf2a56-097e-40ae-94c2-f5898cd3bab6','N')
;

-- 04/01/2018 18h3min47s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130194,0.0,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120591,'MovementDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-01-04 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:46','YYYY-MM-DD HH24:MI:SS'),100,1037,'N','N','LBRA','N','2674099f-4bbd-498b-a319-b81182a549e1','N')
;

-- 04/01/2018 18h3min47s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130195,0.0,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120591,'PriceEntered',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_DATE('2018-01-04 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,2588,'N','N','LBRA','N','5099ee60-9394-45b3-a696-a05911378601','N')
;

-- 04/01/2018 18h3min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130196,0.0,'Production Quantity','Quantity of products to produce','The Production Quantity identifies the number of products to produce',1120591,'ProductionQty','0',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-01-04 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:47','YYYY-MM-DD HH24:MI:SS'),100,1343,'Y','N','@IsCreated@=''Y''','LBRA','N','5f4dc75c-edb2-4163-aba0-f07f1a6e6a4d','N')
;

-- 04/01/2018 18h3min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130197,0.0,'Date Start','Date Start for this Order',1120591,'DateStart',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-01-04 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,53280,'N','N','LBRA','N','0b92fe1a-0f6e-46e5-848d-847ea934bcdb','N')
;

-- 04/01/2018 18h3min49s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130198,0.0,'Records created',1120591,'IsCreated','N',1,'N','N','N','N','N','N',17,319,0,0,'Y',TO_DATE('2018-01-04 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:48','YYYY-MM-DD HH24:MI:SS'),100,1341,'N','N','LBRA','N','6d6d1e88-11af-460c-8193-cb83fb6b6c6c','N','N')
;

-- 04/01/2018 18h3min49s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130199,0.0,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120591,'M_Production_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-01-04 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,1032,'N','N','LBRA','N','c251ef40-5d80-4ae0-a47a-3855cdf077cc','N')
;

-- 04/01/2018 18h3min50s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130200,0.0,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120591,'C_OrderLine_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-01-04 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:03:49','YYYY-MM-DD HH24:MI:SS'),100,561,'N','N','LBRA','N','b97803af-e9a0-4a13-9fe8-80195407c901','N')
;

-- 04/01/2018 18h8min2s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120037,0,0,'Y',TO_DATE('2018-01-04 18:08:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:08:01','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_PGDetail',1120591,'LBRA','cdd85bc9-661f-4ff2-802d-7090016e8fab')
;

-- 04/01/2018 18h8min17s BRST
UPDATE AD_ReportView SET Description='View Report Production Group and Production',Updated=TO_DATE('2018-01-04 18:08:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=1120037
;

-- 04/01/2018 18h8min34s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120209,0,0,'Y',TO_DATE('2018-01-04 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,'Production Group Detail','Report Production Group and Production','Y','RV_LBR_PGDetail','N',1120037,'3','LBRA',0,0,'N','N','Y','N','a009bf34-9d0c-4135-b5c4-a0cbc983eeae')
;

-- 04/01/2018 18h10min29s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120395,0,0,'Y',TO_DATE('2018-01-04 18:10:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:10:28','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120209,10,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'ce9c05c1-b938-4dfb-bfe7-9987b11a3dc5','N')
;

-- 04/01/2018 18h11min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120396,0,0,'Y',TO_DATE('2018-01-04 18:11:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:11:50','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120209,20,30,'N',0,'N','M_Product_ID','Y','LBRA',454,'1984c6d1-9f74-4f45-8b11-5de119ab0d5e','N')
;

-- 04/01/2018 18h12min33s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120397,0,0,'Y',TO_DATE('2018-01-04 18:12:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:12:33','YYYY-MM-DD HH24:MI:SS'),100,'Production Group',1120209,30,30,'N',0,'N','LBR_ProductionGroup_ID','Y','LBRA',1122423,'10a52696-4996-4476-843d-4eb358c769e3','N')
;

-- 04/01/2018 18h13min8s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120398,0,0,'Y',TO_DATE('2018-01-04 18:13:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120209,40,15,'Y',0,'N','DateOrdered','Y','LBRA',268,'d58c5c49-9840-4af9-baa3-6e9612cca7d0','N')
;

-- 04/01/2018 18h13min32s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120399,0,0,'Y',TO_DATE('2018-01-04 18:13:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:13:31','YYYY-MM-DD HH24:MI:SS'),100,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120209,50,15,'Y',0,'N','DatePromised','Y','LBRA',269,'2bfecb85-7960-4b17-9783-1b6660290529','N')
;

-- 04/01/2018 18h14min12s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120400,0,0,'Y',TO_DATE('2018-01-04 18:14:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:14:12','YYYY-MM-DD HH24:MI:SS'),100,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120209,60,17,131,'N',0,'N','DocStatus','Y','LBRA',289,'0b1c8d2b-a740-47ac-b751-0fff6c901c5c','N')
;

-- 04/01/2018 18h17min9s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120306,'Production Group Detail','R',0,0,'Y',TO_DATE('2018-01-04 18:17:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-01-04 18:17:08','YYYY-MM-DD HH24:MI:SS'),100,'N',1120209,'Y','N','LBRA','Y','987503f9-e4f3-4d76-bbc2-153135b970ca')
;

-- 04/01/2018 18h17min9s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120306, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120306)
;

-- 04/01/2018 18h17min55s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120305
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120306
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 04/01/2018 18h17min56s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

SELECT Register_Migration_Script ('201801042000_PGDetailReport.sql') FROM DUAL
;