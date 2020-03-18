SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 18 de mar de 2020 15:32:48 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,IsChangeLog,ReplicationType,IsCentrallyMaintained,AD_Table_UU,Processing,IsSystemLanguage) VALUES (1120671,'Production Line Report','Plan for producing a product','RV_LBR_ProductionLine',125,'1',0,0,'Y',TO_DATE('2020-03-18 15:32:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:32:47','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','L','Y','e6ff7955-45b8-4cb7-ae11-156f63bcb743','N','N')
;

-- 18 de mar de 2020 15:32:48 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_ProductionLine',1000000,'N','N','Table RV_LBR_ProductionLine','Y','Y',0,0,TO_DATE('2020-03-18 15:32:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:32:48','YYYY-MM-DD HH24:MI:SS'),100,1153714,'Y',1000000,1,200000,'9b8d71b4-661a-4d3b-8c47-2fed53cc9a24')
;

-- 18 de mar de 2020 15:35:23 BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120007,'771d22cd-0006-4327-8621-af91a969b030',TO_DATE('2020-03-18 15:35:23','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','RV_LBR_ProductionLine',TO_DATE('2020-03-18 15:35:23','YYYY-MM-DD HH24:MI:SS'),100,1120671,10,'FROM M_ProductionLine')
;

-- 18 de mar de 2020 15:35:28 BRT
UPDATE AD_ViewComponent SET EntityType='LBRA',Updated=TO_DATE('2020-03-18 15:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120007
;

-- 18 de mar de 2020 15:37:14 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120360,'52b86ca8-33a5-466a-91ff-5a4f321a67ed',TO_DATE('2020-03-18 15:37:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-18 15:37:14','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_productionline_id','m_productionline_id',10)
;

-- 18 de mar de 2020 15:37:29 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120361,'72342e42-4ff8-45c7-9f99-b47d73a400ac',TO_DATE('2020-03-18 15:37:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-18 15:37:28','YYYY-MM-DD HH24:MI:SS'),100,1120007,'ad_client_id','ad_client_id',20)
;

-- 18 de mar de 2020 15:37:37 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120362,'10d5bee1-3446-4bb7-9bc4-32a65c989b43',TO_DATE('2020-03-18 15:37:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-18 15:37:37','YYYY-MM-DD HH24:MI:SS'),100,1120007,'ad_org_id','ad_org_id',30)
;

-- 18 de mar de 2020 15:37:48 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120363,'1dbb3619-11cf-4be7-aad7-706ee8476e95',TO_DATE('2020-03-18 15:37:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2020-03-18 15:37:47','YYYY-MM-DD HH24:MI:SS'),100,1120007,'isactive','isactive',40)
;

-- 18 de mar de 2020 15:37:52 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120364,'e8bfd4fd-55bf-4615-81b6-3b1959a6880c',TO_DATE('2020-03-18 15:37:52','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:37:52','YYYY-MM-DD HH24:MI:SS'),100,1120007,'created','created',50)
;

-- 18 de mar de 2020 15:38:12 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120365,'83a19db9-151b-40b5-ac6e-4d7e764dc9a6',TO_DATE('2020-03-18 15:38:12','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:12','YYYY-MM-DD HH24:MI:SS'),100,1120007,'createdby','createdby',60)
;

-- 18 de mar de 2020 15:38:19 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120366,'f6c7ddf0-19ee-44c9-b56e-abbc567db916',TO_DATE('2020-03-18 15:38:18','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:18','YYYY-MM-DD HH24:MI:SS'),100,1120007,'updated','updated',70)
;

-- 18 de mar de 2020 15:38:24 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120367,'9e8ef254-08b3-440f-a85c-c3b493a61622',TO_DATE('2020-03-18 15:38:24','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:24','YYYY-MM-DD HH24:MI:SS'),100,1120007,'updatedby','updatedby',80)
;

-- 18 de mar de 2020 15:38:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120368,'bddd90eb-ea43-460b-95b6-f06005a2c3d6',TO_DATE('2020-03-18 15:38:28','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:28','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_productionplan_id','m_productionplan_id',90)
;

-- 18 de mar de 2020 15:38:34 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120369,'f76e225b-b193-4e80-bac7-a1074b97157c',TO_DATE('2020-03-18 15:38:34','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:34','YYYY-MM-DD HH24:MI:SS'),100,1120007,'line','line',100)
;

-- 18 de mar de 2020 15:38:40 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120370,'a705aef2-0919-45b2-a2ea-1d504a48a551',TO_DATE('2020-03-18 15:38:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:40','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_product_id','m_product_id',110)
;

-- 18 de mar de 2020 15:38:46 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120371,'d8166074-1b4a-41a5-b4cf-6cb69f944b6c',TO_DATE('2020-03-18 15:38:45','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:45','YYYY-MM-DD HH24:MI:SS'),100,1120007,'movementqty','movementqty',120)
;

-- 18 de mar de 2020 15:38:51 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120372,'d68ee656-4784-41d0-a2ec-690a46d7284e',TO_DATE('2020-03-18 15:38:51','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:51','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_locator_id','m_locator_id',130)
;

-- 18 de mar de 2020 15:38:58 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120373,'49a17693-9834-4b6c-a30a-19c0f1de99a8',TO_DATE('2020-03-18 15:38:58','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:38:58','YYYY-MM-DD HH24:MI:SS'),100,1120007,'description','description',140)
;

-- 18 de mar de 2020 15:39:04 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120374,'9660d4cd-2c26-4b90-b391-7e64cd72a84a',TO_DATE('2020-03-18 15:39:04','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:04','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_attributesetinstance_id','m_attributesetinstance_id',150)
;

-- 18 de mar de 2020 15:39:10 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120375,'eb598295-5eea-457b-95eb-8da7db27e290',TO_DATE('2020-03-18 15:39:10','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:10','YYYY-MM-DD HH24:MI:SS'),100,1120007,'processed','processed',160)
;

-- 18 de mar de 2020 15:39:17 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120376,'9ed37c96-7d96-4d5c-8ecf-54fd4ee7eafd',TO_DATE('2020-03-18 15:39:16','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:16','YYYY-MM-DD HH24:MI:SS'),100,1120007,'qtydelivered','qtydelivered',170)
;

-- 18 de mar de 2020 15:39:23 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120377,'4e1e71f0-0f76-4ac9-8427-d81d990110a1',TO_DATE('2020-03-18 15:39:23','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:23','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_productionline_uu','m_productionline_uu',180)
;

-- 18 de mar de 2020 15:39:28 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120378,'039e09e3-b8bd-4767-91b5-ebf1a84a2648',TO_DATE('2020-03-18 15:39:28','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:28','YYYY-MM-DD HH24:MI:SS'),100,1120007,'plannedqty','plannedqty',190)
;

-- 18 de mar de 2020 15:39:33 BRT
UPDATE AD_ViewColumn SET ColumnName='qtyused', ColumnSQL='qtyused',Updated=TO_DATE('2020-03-18 15:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120378
;

-- 18 de mar de 2020 15:39:38 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120379,'c3718d2a-de9e-4963-aab7-25be6abf24e4',TO_DATE('2020-03-18 15:39:37','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:37','YYYY-MM-DD HH24:MI:SS'),100,1120007,'isendproduct','isendproduct',200)
;

-- 18 de mar de 2020 15:39:43 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120380,'ea2a4ac1-94c8-4575-af8d-e4c6c75fabf6',TO_DATE('2020-03-18 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:43','YYYY-MM-DD HH24:MI:SS'),100,1120007,'lbr_cfop_id','lbr_cfop_id',210)
;

-- 18 de mar de 2020 15:39:48 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120381,'d3d9fe8f-f678-4649-9607-83c9eb42ac10',TO_DATE('2020-03-18 15:39:48','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:48','YYYY-MM-DD HH24:MI:SS'),100,1120007,'lbr_notafiscalline_id','lbr_notafiscalline_id',220)
;

-- 18 de mar de 2020 15:39:55 BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120382,'7cf8235f-52ae-430f-a37b-679e9f729d2d',TO_DATE('2020-03-18 15:39:55','YYYY-MM-DD HH24:MI:SS'),100,'U','Y',TO_DATE('2020-03-18 15:39:55','YYYY-MM-DD HH24:MI:SS'),100,1120007,'m_production_id','m_production_id',230)
;

-- 18 de mar de 2020 15:40:48 BRT
UPDATE AD_ViewComponent SET Referenced_Table_ID=326,Updated=TO_DATE('2020-03-18 15:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120007
;

-- 18 de mar de 2020 15:41:11 BRT
CREATE OR REPLACE VIEW RV_LBR_ProductionLine(m_productionline_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, m_productionplan_id, line, m_product_id, movementqty, m_locator_id, description, m_attributesetinstance_id, processed, qtydelivered, m_productionline_uu, qtyused, isendproduct, lbr_cfop_id, lbr_notafiscalline_id, m_production_id) AS SELECT m_productionline_id AS m_productionline_id, ad_client_id AS ad_client_id, ad_org_id AS ad_org_id, isactive AS isactive, created AS created, createdby AS createdby, updated AS updated, updatedby AS updatedby, m_productionplan_id AS m_productionplan_id, line AS line, m_product_id AS m_product_id, movementqty AS movementqty, m_locator_id AS m_locator_id, description AS description, m_attributesetinstance_id AS m_attributesetinstance_id, processed AS processed, qtydelivered AS qtydelivered, m_productionline_uu AS m_productionline_uu, qtyused AS qtyused, isendproduct AS isendproduct, lbr_cfop_id AS lbr_cfop_id, lbr_notafiscalline_id AS lbr_notafiscalline_id, m_production_id AS m_production_id FROM M_ProductionLine
;

-- 18 de mar de 2020 15:41:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131850,0.0,'Production Line','Document Line representing a production','The Production Line indicates the production document line (if applicable) for this transaction',1120671,'M_ProductionLine_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-18 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,1033,'N','N','LBRA','N','3bfe44f1-b910-428f-8a81-777f2e901cb1','N')
;

-- 18 de mar de 2020 15:41:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131851,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120671,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-03-18 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:23','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','087cece8-5aa2-4c6c-9e04-6d525fe8b682','N','D')
;

-- 18 de mar de 2020 15:41:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131852,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120671,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-03-18 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','da3ba99d-b82c-4055-8504-cad099520bcd','N','D')
;

-- 18 de mar de 2020 15:41:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131853,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120671,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-03-18 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:24','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','b7a14314-53e5-4c19-9290-e62ade62e8e6','N')
;

-- 18 de mar de 2020 15:41:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131854,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120671,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2020-03-18 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','31816921-eed7-4994-b971-f83b96446311','N')
;

-- 18 de mar de 2020 15:41:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131855,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120671,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2020-03-18 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:25','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','e1e2c0d8-20ce-462f-99ac-de776e73ef58','N','D')
;

-- 18 de mar de 2020 15:41:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131856,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120671,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','e8f92461-a4e2-4072-aaba-12d19db34290','N')
;

-- 18 de mar de 2020 15:41:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131857,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120671,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','2e87de48-20d6-4898-bcef-cf39b2712dea','N','D')
;

-- 18 de mar de 2020 15:41:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131858,0.0,'Production Plan','Plan for how a product is produced','The Production Plan identifies the items and steps in generating a product.',1120671,'M_ProductionPlan_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:26','YYYY-MM-DD HH24:MI:SS'),100,1342,'N','N','LBRA','N','e0deda20-526f-4029-8480-fb078ab987de','N')
;

-- 18 de mar de 2020 15:41:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131859,0.0,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120671,'Line',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,439,'N','N','LBRA','N','4f73629c-980a-49f1-ad3b-f48488fa9ea4','N')
;

-- 18 de mar de 2020 15:41:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131860,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120671,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','83e2a6b4-5760-4ef6-baa7-1c83bcc80ea8','N')
;

-- 18 de mar de 2020 15:41:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131861,0.0,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120671,'MovementQty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:27','YYYY-MM-DD HH24:MI:SS'),100,1038,'N','N','LBRA','N','d8b900d5-b84b-4d97-a27d-007426bd7880','N')
;

-- 18 de mar de 2020 15:41:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131862,0.0,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120671,'M_Locator_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,448,'N','N','LBRA','N','09226894-2f1b-4c2e-aad2-8ab4cbd4fe78','N')
;

-- 18 de mar de 2020 15:41:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1131863,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120671,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','58524c7c-9147-4c75-b4ed-4326d6cd93c6',10,'N')
;

-- 18 de mar de 2020 15:41:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131864,0.0,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120671,'M_AttributeSetInstance_ID',10,'N','N','N','N','N','N',35,0,0,'Y',TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:28','YYYY-MM-DD HH24:MI:SS'),100,2019,'N','N','LBRA','N','c464e113-4405-4166-8b2a-a718812c4eb6','N','N')
;

-- 18 de mar de 2020 15:41:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131865,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120671,'Processed',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,1047,'N','N','LBRA','N','bbcac8df-823b-4efa-ac18-510cc1679bd6','N')
;

-- 18 de mar de 2020 15:41:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131866,0.0,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120671,'QtyDelivered',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,528,'N','N','LBRA','N','3e3a322c-d2cc-4748-bcfe-9bec9d118337','N')
;

-- 18 de mar de 2020 15:41:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131867,0.0,'M_ProductionLine_UU',1120671,'M_ProductionLine_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:29','YYYY-MM-DD HH24:MI:SS'),100,55023,'N','N','LBRA','N','c0244153-b6a9-4f9f-af3d-281f4983ff9b','N')
;

-- 18 de mar de 2020 15:41:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131868,0.0,'Quantity Used',1120671,'QtyUsed',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2020-03-18 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,55236,'N','N','LBRA','N','043a8bf4-4699-4137-84a1-c1faab561443','N')
;

-- 18 de mar de 2020 15:41:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131869,0.0,'End Product','End Product of production',1120671,'IsEndProduct',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2020-03-18 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:30','YYYY-MM-DD HH24:MI:SS'),100,55237,'N','N','LBRA','N','06f34a01-c852-41ac-8870-d1650ff1b0b1','N')
;

-- 18 de mar de 2020 15:41:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131870,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120671,'LBR_CFOP_ID',10,'N','N','N','N','N','N',30,1000016,0,0,'Y',TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,1000137,'N','N','LBRA','N','558f0b68-f049-4f21-b80b-2dca574fab5d','N','N')
;

-- 18 de mar de 2020 15:41:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1131871,0.0,'Nota Fiscal Line','Primary key table LBR_NotaFiscalLine','Primary key table LBR_NotaFiscalLine',1120671,'LBR_NotaFiscalLine_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,1000219,'N','N','LBRA','N','29307d27-903e-40b4-b01e-3b5fbafef621','N')
;

-- 18 de mar de 2020 15:41:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1131872,0.0,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120671,'M_Production_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,1032,'N','N','LBRA','N','f0becd76-d43f-4d8f-aa29-5eab472c9c9e','N','N')
;

-- 18 de mar de 2020 15:42:02 BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2020-03-18 15:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131871
;

-- 18 de mar de 2020 15:42:22 BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2020-03-18 15:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131858
;

-- 18 de mar de 2020 15:45:29 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120044,0,0,'Y',TO_DATE('2020-03-18 15:45:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:45:29','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Rpt_Production','LBR_Rpt_Production',1120604,'LBRA','fa5824dc-90ca-4edf-8216-a8a9250fa308')
;

-- 18 de mar de 2020 15:45:51 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,AD_Process_UU,AllowMultipleExecution) VALUES (1120243,0,0,'Y',TO_DATE('2020-03-18 15:45:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:45:51','YYYY-MM-DD HH24:MI:SS'),100,'Report Production','Y','LBR_Rpt_Production','N',1120044,'3','U',0,0,'N','N','Y','37dfb925-378f-4420-a857-e23e722cc4eb','P')
;

-- 18 de mar de 2020 15:46:32 BRT
INSERT INTO AD_PrintFormat (Updated,CreatedBy,IsTableBased,IsActive,IsStandardHeaderFooter,AD_PrintFont_ID,AD_Table_ID,IsForm,HeaderMargin,UpdatedBy,AD_PrintColor_ID,Created,Name,CreateCopy,FooterMargin,AD_Client_ID,AD_PrintPaper_ID,AD_Org_ID,AD_PrintFormat_ID,AD_ReportView_ID,AD_PrintTableFormat_ID,IsDefault,AD_PrintFormat_UU) VALUES (TO_DATE('2020-03-18 15:46:32','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y',130,1120604,'N',0,100,100,TO_DATE('2020-03-18 15:46:32','YYYY-MM-DD HH24:MI:SS'),'LBR_Rpt_Production','N',0,0,100,0,2000238,1120044,100,'Y','d26b0752-dd3b-4c22-bd23-4e4873d8c072')
;

-- 18 de mar de 2020 15:47:04 BRT
UPDATE AD_PrintFormat SET IsForm='Y',Updated=TO_DATE('2020-03-18 15:47:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 15:47:20 BRT
UPDATE AD_PrintFormat SET AD_PrintFont_ID=130, AD_Table_ID=1120604, AD_PrintColor_ID=100, Name='RV_LBR_Production', AD_PrintPaper_ID=100,Updated=TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Ativo',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Ativo',0,0,1130458,'N','Y',100,0,2008629,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','8898db65-a21b-4ce8-a62d-645b1148abe7')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Empresa',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Empresa',0,0,1130456,'N','Y',100,0,2008630,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','14491719-6a12-452f-8d5d-437aef19616b')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Criado',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Criado',0,0,1130459,'N','Y',100,0,2008631,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','d0bd4c29-cffa-45e3-82ac-da37e904ee3f')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Criado por',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Criado por',0,0,1130460,'N','Y',100,0,2008632,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','3997abed-28f1-461e-b596-e35e6fd2f174')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (5,'Número do Documento',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Número do Documento',0,0,1130467,'N','Y',100,0,2008633,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','04ebf8b3-8ed0-455d-8033-c969b551cccd')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (6,'Total Geral',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Total Geral',0,0,1130469,'N','Y',100,0,2008634,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','77f2febd-8592-4049-a950-85e814d8aba0')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (7,'Data da Movimentação',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Data da Movimentação',0,0,1130466,'N','Y',100,0,2008635,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','2f5d2e8f-0d7f-47e1-9059-8b0f546f0c4c')
;

-- 18 de mar de 2020 15:47:20 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Organização',TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'Organização',0,0,1130457,'N','Y',100,0,2008636,100,'N',0,TO_DATE('2020-03-18 15:47:20','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','bdee73d3-833f-449c-975b-e7060b1cdde2')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (9,'Preço',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Preço',0,0,1130465,'N','Y',100,0,2008637,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','562389de-a1a2-46cc-8273-cf5e034a8d01')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (10,'Produto',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Produto',0,0,1130463,'N','Y',100,0,2008638,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','c9adf113-ca3c-4a6a-8741-f5fcf90e935a')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (11,'Produção',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Produção',0,0,1130455,'N','Y',100,0,2008639,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','653b9154-d4e1-46ae-b8b6-857a60563eed')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (12,'Production Group',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Production Group',0,0,1130468,'N','Y',100,0,2008640,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','26183c78-cc4a-4370-95dc-637db0f7cc8f')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (13,'Quantidade de Produção',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Qde de Produção',0,0,1130464,'N','Y',100,0,2008641,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','8764bbdd-0e5b-4b61-b5ca-310ac25b39e9')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Atualizado',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Atualizado',0,0,1130461,'N','Y',100,0,2008642,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','0f77090a-edf9-4ff5-a5b5-56ea4e1a1061')
;

-- 18 de mar de 2020 15:47:21 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Atualizado por',TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),'N',0,'Atualizado por',0,0,1130462,'N','Y',100,0,2008643,100,'N',0,TO_DATE('2020-03-18 15:47:21','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','914f9690-7de1-4198-aad7-5c37579790f8')
;

-- 18 de mar de 2020 15:49:02 BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120045,0,0,'Y',TO_DATE('2020-03-18 15:49:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 15:49:01','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_ProductionLine',1120671,'LBRA','03187151-67e2-430b-9266-0e32e77473c8')
;

-- 18 de mar de 2020 15:49:07 BRT
INSERT INTO AD_PrintFormat (Updated,CreatedBy,IsTableBased,IsActive,IsStandardHeaderFooter,AD_PrintFont_ID,AD_Table_ID,IsForm,HeaderMargin,UpdatedBy,AD_PrintColor_ID,Created,Name,CreateCopy,FooterMargin,AD_Client_ID,AD_PrintPaper_ID,AD_Org_ID,AD_PrintFormat_ID,AD_ReportView_ID,AD_PrintTableFormat_ID,IsDefault,AD_PrintFormat_UU) VALUES (TO_DATE('2020-03-18 15:49:07','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y',130,1120671,'N',0,100,100,TO_DATE('2020-03-18 15:49:07','YYYY-MM-DD HH24:MI:SS'),'LBR_Rpt_ProductionLine','N',0,0,100,0,2000239,1120045,100,'N','e54e9736-27c8-429c-9768-a7eb78ba1665')
;

-- 18 de mar de 2020 15:49:15 BRT
UPDATE AD_PrintFormat SET AD_PrintFont_ID=130, AD_Table_ID=1120671, AD_PrintColor_ID=100, Name='RV_LBR_ProductionLine', AD_PrintPaper_ID=100,Updated=TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000239
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Ativo',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Ativo',0,0,1131853,'N','Y',100,0,2008644,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','d8825aeb-daab-4acd-b09d-d3d5108c9919')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (2,'Instância do Conjunto de Atributos',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Instância do Conjunto de Atributos',0,0,1131864,'N','Y',100,0,2008645,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','165f6f30-25d1-4517-bcac-d5e361acc1d7')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (3,'CFOP',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'CFOP',0,0,1131870,'N','Y',100,0,2008646,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','99239073-8a3b-4a29-9dd0-bc72b2250753')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Empresa',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Empresa',0,0,1131851,'N','Y',100,0,2008647,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','b132471e-df18-4b51-8658-08670987c08d')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Criado',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Criado',0,0,1131854,'N','Y',100,0,2008648,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','18c6206e-b454-478b-b108-58601a135174')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Criado por',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Criado por',0,0,1131855,'N','Y',100,0,2008649,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','554c2e1e-3ee0-425a-9720-0e39d2f36b50')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (7,'Quantidade Entregue',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Qde Entregue',0,0,1131866,'N','Y',100,0,2008650,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','8977c4a4-bdfd-4afe-955f-bec5ff47be2c')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (8,'Descrição',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Descrição',0,0,1131863,'N','Y',100,0,2008651,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','3faf9edb-7ebc-4f7c-9a86-3be5c9f81343')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (9,'End Product',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'End Product',0,0,1131869,'N','Y',100,0,2008652,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','7f7afedb-c27b-4afe-a79b-2ab2f321ab05')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (10,'Linha Núm.',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Linha Núm.',0,0,1131859,'N','Y',100,0,2008653,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','c2e7b84d-1f21-4a9b-98b9-368b72910565')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (11,'Localizador',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Localizador',0,0,1131862,'N','Y',100,0,2008654,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','b924f0a6-7de1-4237-8477-8eafbfd142fc')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (12,'Quantidade Movimentada',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Qde',0,0,1131861,'N','Y',100,0,2008655,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','465745fd-3a19-45e2-8c93-7d0418ef65a6')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (13,'M_ProductionLine_UU',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'M_ProductionLine_UU',0,0,1131867,'N','Y',100,0,2008656,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','4e91d1f3-9091-4f80-a291-3087022f12f9')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (14,'Linha Nota Fiscal',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Linha Nota Fiscal',0,0,1131871,'N','Y',100,0,2008657,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','10ff0b1e-a89b-42ba-9661-f2ac1c434aa6')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Organização',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Organização',0,0,1131852,'N','Y',100,0,2008658,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','17ac9b40-28bb-4d5a-89c7-22c95c863d9c')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (16,'Processado',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Processado',0,0,1131865,'N','Y',100,0,2008659,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','ffb7d5aa-3a65-437b-8944-a32e5acbe372')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (17,'Produto',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Produto',0,0,1131860,'N','Y',100,0,2008660,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','edf11b91-e3f6-466f-b3bb-d1d1158473a9')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (18,'Produção',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Produção',0,0,1131872,'N','Y',100,0,2008661,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','acfc6fb2-5748-4549-8cc7-9e681b841718')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (19,'Linha de Produção',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Linha de Produção',0,0,1131850,'N','Y',100,0,2008662,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','10ddbb2c-8fc4-43ab-866c-0e69a71d1a45')
;

-- 18 de mar de 2020 15:49:15 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (20,'Plano de Produção',TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),'N',0,'Plano de Produção',0,0,1131858,'N','Y',100,0,2008663,100,'N',0,TO_DATE('2020-03-18 15:49:15','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','9a2c87d5-34df-4d91-a8d3-1772ef632b00')
;

-- 18 de mar de 2020 15:49:16 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (21,'Quantity Used',TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),'N',0,'Quantity Used in production',0,0,1131868,'N','Y',100,0,2008664,100,'N',0,TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'T','Y','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','5b2e9fa9-81c9-49e8-8355-001f12ef87ab')
;

-- 18 de mar de 2020 15:49:16 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Atualizado',TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),'N',0,'Atualizado',0,0,1131856,'N','Y',100,0,2008665,100,'N',0,TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','616558f9-0666-478a-b70b-d70f92e3b1e1')
;

-- 18 de mar de 2020 15:49:16 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,PrintName,YSpace,SortNo,AD_Column_ID,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,IsNextPage,IsFixedWidth,IsMaxCalc,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,AD_PrintFormatItem_UU) VALUES (0,'Atualizado por',TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),'N',0,'Atualizado por',0,0,1131857,'N','Y',100,0,2008666,100,'N',0,TO_DATE('2020-03-18 15:49:16','YYYY-MM-DD HH24:MI:SS'),2000239,0,0,'Y','N',0,0,'L','N','N','N','X','F','C','N','N','N','N','N','N','N','N','N','N','N','N','N',1,0,'N','Y','N','c69b2ca5-d1a5-4f75-b589-acb727ea59dd')
;

-- 18 de mar de 2020 15:49:47 BRT
INSERT INTO AD_PrintFormatItem (SeqNo,Name,Created,IsNextLine,AD_Client_ID,AD_PrintFormatChild_ID,YSpace,SortNo,IsPageBreak,IsRelativePosition,UpdatedBy,MaxWidth,AD_PrintFormatItem_ID,CreatedBy,IsSummarized,YPosition,AD_PrintColor_ID,Updated,AD_PrintFormat_ID,AD_Org_ID,XSpace,AD_PrintFont_ID,IsActive,IsHeightOneLine,MaxHeight,XPosition,FieldAlignmentType,IsPrinted,IsOrderBy,IsGroupBy,LineAlignmentType,PrintFormatType,PrintAreaType,ImageIsAttached,IsCounted,IsAveraged,IsSuppressNull,IsSetNLPosition,BelowColumn,IsNextPage,IsFixedWidth,IsMaxCalc,RunningTotalLines,IsRunningTotal,IsMinCalc,IsVarianceCalc,IsDeviationCalc,IsFilledRectangle,LineWidth,ArcDiameter,ShapeType,IsCentrallyMaintained,IsImageField,IsSuppressRepeats,AD_PrintFormatItem_UU,IsDesc,IsPrintBarcodeText) VALUES (23,'Production Line',TO_DATE('2020-03-18 15:49:47','YYYY-MM-DD HH24:MI:SS'),'Y',0,2000239,0,0,'N','Y',100,0,2008667,100,'N',0,100,TO_DATE('2020-03-18 15:49:47','YYYY-MM-DD HH24:MI:SS'),2000238,0,0,130,'Y','Y',0,0,'D','Y','N','N','X','P','C','N','N','N','N','N',0,'N','N','N',20,'N','N','N','N','N',1,0,'N','N','N','N','7a380008-899c-4037-bcf3-a97caeb4f03d','N','Y')
;

-- 18 de mar de 2020 15:49:58 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, AD_Column_ID=1130455, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008667
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008637
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008634
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008639
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008640
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=10,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008633
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008635
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008638
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 15:51:21 BRT
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008667
;

-- 18 de mar de 2020 15:52:40 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XSpace=250, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:52:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008635
;

-- 18 de mar de 2020 15:52:53 BRT
UPDATE AD_PrintFormatItem SET IsNextLine='Y', YSpace=0, SortNo=0, IsPageBreak='N', IsRelativePosition='N', XSpace=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:52:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008638
;

-- 18 de mar de 2020 15:52:59 BRT
UPDATE AD_PrintFormatItem SET YSpace=0, SortNo=0, IsPageBreak='N', IsRelativePosition='N', XSpace=0, XPosition=250, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:52:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 15:53:13 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', IsRelativePosition='Y', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 15:53:17 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', IsRelativePosition='Y', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008638
;

-- 18 de mar de 2020 15:53:28 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XSpace=250, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 15:53:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 15:54:04 BRT
UPDATE AD_PrintFormat SET Name='LBR_Rpt_Production',Updated=TO_DATE('2020-03-18 15:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 15:54:12 BRT
UPDATE AD_PrintFormat SET Name='LBR_Rpt_ProductionLine',Updated=TO_DATE('2020-03-18 15:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000239
;

-- 18 de mar de 2020 15:54:30 BRT
UPDATE AD_PrintFormat SET Name='Production Line Report',Updated=TO_DATE('2020-03-18 15:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000239
;

-- 18 de mar de 2020 15:54:42 BRT
UPDATE AD_PrintFormat SET Name='Production Report',Updated=TO_DATE('2020-03-18 15:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 15:54:57 BRT
UPDATE AD_Process SET AD_PrintFormat_ID=2000238,Updated=TO_DATE('2020-03-18 15:54:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120243
;

-- 18 de mar de 2020 15:55:50 BRT
UPDATE AD_Tab SET AD_Process_ID=1120243,Updated=TO_DATE('2020-03-18 15:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53344
;

-- 18 de mar de 2020 16:04:20 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120492,0,0,'Y',TO_DATE('2020-03-18 16:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-03-18 16:04:20','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120243,10,30,'N',10,'Y','@M_Product_ID@','M_Product_ID','Y','U',454,'2cbf4ffc-c4e4-4998-81a9-1a76596a1fd6','N')
;

-- 18 de mar de 2020 16:04:27 BRT
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_DATE('2020-03-18 16:04:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120492
;

-- 18 de mar de 2020 16:04:48 BRT
UPDATE AD_Process_Para SET Name='Production Quantity', Description='Quantity of products to produce', Help='The Production Quantity identifies the number of products to produce', DefaultValue='@Production@', ColumnName='ProductionQty', AD_Element_ID=1343,Updated=TO_DATE('2020-03-18 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120492
;

-- 18 de mar de 2020 16:05:14 BRT
UPDATE AD_Process_Para SET Name='Production', Description='Plan for producing a product', Help='The Production uniquely identifies a Production Plan', DefaultValue='@M_Production_ID@', ColumnName='M_Production_ID', AD_Element_ID=1032,Updated=TO_DATE('2020-03-18 16:05:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120492
;

-- 18 de mar de 2020 16:06:10 BRT
UPDATE AD_Process SET EntityType='LBRA',Updated=TO_DATE('2020-03-18 16:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120243
;

-- 18 de mar de 2020 16:06:20 BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='1=1',Updated=TO_DATE('2020-03-18 16:06:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120492
;

-- 18 de mar de 2020 16:14:11 BRT
UPDATE AD_Column SET IsKey='Y', IsUpdateable='N', IsAllowCopy='N',Updated=TO_DATE('2020-03-18 16:14:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130455
;

-- 18 de mar de 2020 16:22:30 BRT
UPDATE AD_PrintFormat SET AD_PrintTableFormat_ID=101,Updated=TO_DATE('2020-03-18 16:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000239
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008662
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008663
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008650
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008651
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008656
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008657
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008659
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008661
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008646
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008652
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008660
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008655
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008645
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008654
;

-- 18 de mar de 2020 16:23:52 BRT
UPDATE AD_PrintFormatItem SET SeqNo=70,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008664
;

-- 18 de mar de 2020 16:24:02 BRT
UPDATE AD_PrintFormatItem SET PrintName='Line', SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 16:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008653
;

-- 18 de mar de 2020 16:24:56 BRT
UPDATE AD_PrintFormatItem SET SeqNo=0,IsPrinted='N', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008645
;

-- 18 de mar de 2020 16:24:56 BRT
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008664
;

-- 18 de mar de 2020 16:25:19 BRT
UPDATE AD_PrintFormatItem SET SeqNo=20,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008660
;

-- 18 de mar de 2020 16:25:19 BRT
UPDATE AD_PrintFormatItem SET SeqNo=30,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008655
;

-- 18 de mar de 2020 16:25:19 BRT
UPDATE AD_PrintFormatItem SET SeqNo=40,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008664
;

-- 18 de mar de 2020 16:25:19 BRT
UPDATE AD_PrintFormatItem SET SeqNo=50,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008654
;

-- 18 de mar de 2020 16:25:19 BRT
UPDATE AD_PrintFormatItem SET SeqNo=60,IsPrinted='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008652
;

-- 18 de mar de 2020 16:26:25 BRT
UPDATE AD_PrintFormat SET AD_PrintFont_ID=131,Updated=TO_DATE('2020-03-18 16:26:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 17:00:50 BRT
UPDATE AD_PrintFormat SET IsStandardHeaderFooter='N', HeaderMargin=100, FooterMargin=100,Updated=TO_DATE('2020-03-18 17:00:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=2000238
;

-- 18 de mar de 2020 17:01:07 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N', PrintAreaType='H',Updated=TO_DATE('2020-03-18 17:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008633
;

-- 18 de mar de 2020 17:01:10 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N', PrintAreaType='H',Updated=TO_DATE('2020-03-18 17:01:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008635
;

-- 18 de mar de 2020 17:01:12 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N', PrintAreaType='H',Updated=TO_DATE('2020-03-18 17:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008638
;

-- 18 de mar de 2020 17:01:14 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N', PrintAreaType='H',Updated=TO_DATE('2020-03-18 17:01:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 17:01:19 BRT
UPDATE AD_PrintFormatItem SET YSpace=10, SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 17:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008667
;

-- 18 de mar de 2020 17:01:30 BRT
UPDATE AD_PrintFormatItem SET IsNextLine='Y', SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 17:01:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008635
;

-- 18 de mar de 2020 17:01:33 BRT
UPDATE AD_PrintFormatItem SET IsNextLine='Y', SortNo=0, IsPageBreak='N', YPosition=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 17:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 17:05:15 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XSpace=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 17:05:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008635
;

-- 18 de mar de 2020 17:05:18 BRT
UPDATE AD_PrintFormatItem SET SortNo=0, IsPageBreak='N', YPosition=0, XSpace=0, XPosition=0, IsGroupBy='N',Updated=TO_DATE('2020-03-18 17:05:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=2008641
;

-- 18 de mar de 2020 17:07:05 BRT
UPDATE AD_Process SET ShowHelp='S',Updated=TO_DATE('2020-03-18 17:07:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120243
;

-- 18 de mar de 2020 17:11:17 BRT
UPDATE AD_Process SET ShowHelp='Y',Updated=TO_DATE('2020-03-18 17:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120243
;

-- 18 de mar de 2020 17:11:46 BRT
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2020-03-18 17:11:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120492
;

-- 18 de mar de 2020 17:11:46 BRT
SELECT Register_Migration_Script ('202003181730_PrintProduction.sql') FROM DUAL
;
