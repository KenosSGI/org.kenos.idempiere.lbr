-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 22/12/2017 15h9min18s BRST
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_TIMESTAMP('2017-12-22 15:09:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129920
;

-- 22/12/2017 15h10min18s BRST
UPDATE AD_Column SET DefaultValue='@DatePromised@',Updated=TO_TIMESTAMP('2017-12-22 15:10:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=59966
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 29/12/2017 9h3min49s BRST
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:03:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127249
;

-- 29/12/2017 9h7min7s BRST
UPDATE AD_Field SET SeqNo=251, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:07:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127251
;

-- 29/12/2017 9h7min48s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=101, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127251
;

-- 29/12/2017 9h8min35s BRST
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:08:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127250
;

-- 29/12/2017 9h9min7s BRST
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:09:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127250
;

-- 29/12/2017 9h9min22s BRST
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=6, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127251
;

-- 29/12/2017 9h9min40s BRST
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-12-29 09:09:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127251
;

-- View: rv_storage

-- DROP VIEW rv_storage;

CREATE OR REPLACE VIEW rv_storage AS 
 SELECT s.ad_client_id,
    s.ad_org_id,
    s.m_product_id,
    p.value,
    p.name,
    p.description,
    p.upc,
    p.sku,
    p.c_uom_id,
    p.m_product_category_id,
    p.classification,
    p.weight,
    p.volume,
    p.versionno,
    p.guaranteedays,
    p.guaranteedaysmin,
    s.m_locator_id,
    l.m_warehouse_id,
    l.x,
    l.y,
    l.z,
    s.qtyonhand,
    s.qtyreserved,
        CASE
            WHEN COALESCE(lt.isavailableforreservation, 'Y'::bpchar) = 'Y'::bpchar THEN s.qtyonhand
            ELSE 0::numeric
        END - s.qtyreserved AS qtyavailable,
    s.qtyordered,
    s.datelastinventory,
    s.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    daysbetween(asi.guaranteedate::timestamp with time zone, getdate()) AS shelflifedays,
    daysbetween(asi.guaranteedate::timestamp with time zone, getdate())::numeric - p.guaranteedaysmin AS goodfordays,
        CASE
            WHEN COALESCE(p.guaranteedays, 0::numeric) > 0::numeric THEN round(daysbetween(asi.guaranteedate::timestamp with time zone, getdate())::numeric / p.guaranteedays * 100::numeric, 0)
            ELSE NULL::numeric
        END AS shelfliferemainingpct,
    s.isactive AS m_storage_isactive,
    s.updated AS m_storage_updated,
    s.updatedby AS m_storage_updatedby,
    l.ad_org_id AS m_locator_ad_org_id,
    l.isactive AS m_locator_isactive,
    l.isdefault,
    l.priorityno,
    l.value AS m_locator_value,
    p.ad_org_id AS m_product_ad_org_id,
    p.copyfrom AS m_product_copyfrom,
    p.created AS m_product_created,
    p.createdby AS m_product_createdby,
    p.c_revenuerecognition_id,
    p.c_subscriptiontype_id,
    p.c_taxcategory_id,
    p.descriptionurl,
    p.discontinued AS m_product_discontinued,
    p.discontinuedat AS m_product_discontinuedat,
    p.documentnote,
    p.group1,
    p.group2,
    p.help,
    p.imageurl,
    p.isactive AS m_product_isactive,
    p.isbom,
    p.isdropship,
    p.isexcludeautodelivery,
    p.isinvoiceprintdetails,
    p.ispicklistprintdetails,
    p.ispurchased,
    p.isselfservice,
    p.issold,
    p.isstocked,
    p.issummary AS m_product_issummary,
    p.isverified,
    p.iswebstorefeatured,
    p.lowlevel,
    p.m_attributeset_id AS m_product_m_attributeset_id,
    p.m_attributesetinstance_id AS m_product_m_asi_id,
    p.m_freightcategory_id,
    p.m_locator_id AS m_product_m_locator_id,
    p.processing AS m_product_processing,
    p.producttype,
    p.r_mailtext_id,
    p.salesrep_id AS m_product_salesrep_id,
    p.s_expensetype_id,
    p.shelfdepth,
    p.shelfheight,
    p.shelfwidth,
    p.s_resource_id,
    p.unitsperpack,
    p.unitsperpallet,
    p.updated AS m_product_updated,
    p.updatedby AS m_product_updatedby,
    asi.ad_org_id AS m_asi_ad_org_id,
    asi.created AS m_asi_created,
    asi.createdby AS m_asi_createdby,
    asi.description AS m_asi_description,
    asi.isactive AS m_asi_isactive,
    asi.updated AS m_asi_updated,
    asi.updatedby AS m_asi_updatedby,
        CASE
            WHEN w.lbr_warehousetype::text = '3WN'::text THEN ( SELECT lbr_productiongroup.c_bpartner_id
               FROM lbr_productiongroup
              WHERE (lbr_productiongroup.lbr_productiongroup_id IN ( SELECT m_production.lbr_productiongroup_id
                       FROM m_production
                      WHERE (m_production.m_production_id IN ( SELECT m_productionline.m_production_id
                               FROM m_productionline
                              WHERE m_productionline.m_locator_id = l.m_locator_id)))))
            ELSE NULL::numeric
        END AS c_bpartner_id
   FROM m_storage s
     JOIN m_locator l ON s.m_locator_id = l.m_locator_id
     JOIN m_warehouse w ON l.m_warehouse_id = w.m_warehouse_id
     LEFT JOIN m_locatortype lt ON l.m_locatortype_id = lt.m_locatortype_id
     JOIN m_product p ON s.m_product_id = p.m_product_id
     LEFT JOIN m_attributesetinstance asi ON s.m_attributesetinstance_id = asi.m_attributesetinstance_id;

ALTER TABLE rv_storage
  OWNER TO adempiere;


-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 22/12/2017 11h9min25s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129938,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',630,'C_BPartner_ID',131089,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-22 11:09:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-22 11:09:24','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','372c9521-8c4a-4152-9425-f48bbfb6fde0','N')
;

-- 22/12/2017 11h12min48s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120374,0,0,'Y',TO_TIMESTAMP('2017-12-22 11:12:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-22 11:12:47','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',236,70,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'609f1192-e66b-4bb1-ab74-0d6594d72e37','N')
;

-- View: rv_lbr_maketoordercandidate

-- DROP VIEW rv_lbr_maketoordercandidate;

CREATE OR REPLACE VIEW rv_lbr_maketoordercandidate AS 
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.isactive,
    l.created,
    l.createdby,
    l.updated,
    l.updatedby,
    o.c_order_id,
    o.docstatus,
    o.docaction,
    o.c_doctype_id,
    o.isapproved,
    o.iscreditapproved,
    o.salesrep_id,
    o.bill_bpartner_id,
    o.bill_location_id,
    o.bill_user_id,
    o.isdropship,
    l.c_bpartner_id,
    l.c_bpartner_location_id,
    o.ad_user_id,
    o.poreference,
    o.c_currency_id,
    o.issotrx,
    l.c_campaign_id,
    l.c_project_id,
    l.c_activity_id,
    l.c_projectphase_id,
    l.c_projecttask_id,
    l.c_orderline_id,
    l.dateordered,
    l.datepromised,
    l.m_product_id,
    l.m_warehouse_id,
    l.m_attributesetinstance_id,
    productattribute(l.m_attributesetinstance_id) AS productattribute,
    pasi.m_attributeset_id,
    pasi.m_lot_id,
    pasi.guaranteedate,
    pasi.lot,
    pasi.serno,
    l.c_uom_id,
    l.qtyentered,
    l.qtyordered,
    l.qtyreserved,
    l.qtydelivered,
    l.qtyinvoiced,
    l.priceactual,
    l.priceentered,
    l.qtyordered - l.qtydelivered AS qtytodeliver,
    l.qtyordered - l.qtyinvoiced AS qtytoinvoice,
    (l.qtyordered - l.qtyinvoiced) * l.priceactual AS netamttoinvoice,
    l.qtylostsales,
    l.qtylostsales * l.priceactual AS amtlostsales,
        CASE
            WHEN l.pricelist = 0::numeric THEN 0::numeric
            ELSE currencyround((l.pricelist - l.priceactual) / l.pricelist * 100::numeric, o.c_currency_id, 'N'::character varying)
        END AS discount,
        CASE
            WHEN l.pricelimit = 0::numeric THEN 0::numeric
            ELSE currencyround((l.priceactual - l.pricelimit) / l.pricelimit * 100::numeric, o.c_currency_id, 'N'::character varying)
        END AS margin,
        CASE
            WHEN l.pricelimit = 0::numeric THEN 0::numeric
            ELSE (l.priceactual - l.pricelimit) * l.qtydelivered
        END AS marginamt,
    o.ad_org_id AS c_order_ad_org_id,
    o.ad_orgtrx_id AS c_order_ad_orgtrx_id,
    o.amountrefunded,
    o.amounttendered,
    o.c_activity_id AS c_order_c_activity_id,
    o.c_bpartner_id AS c_order_c_bpartner_id,
    o.c_bpartner_location_id AS c_order_c_bpartner_loc_id,
    o.c_campaign_id AS c_order_c_compaign_id,
    o.c_cashline_id,
    o.c_cashplanline_id,
    o.c_charge_id AS c_order_c_charge_id,
    o.c_conversiontype_id,
    o.c_doctypetarget_id,
    o.chargeamt,
    o.copyfrom,
    o.c_payment_id,
    o.c_paymentterm_id,
    o.c_pos_id,
    o.c_project_id AS c_order_c_project_id,
    o.created AS c_order_created,
    o.createdby AS c_order_createdby,
    o.dateacct,
    o.dateordered AS c_order_dateordered,
    o.dateprinted,
    o.datepromised AS c_order_datepromised,
    o.deliveryrule,
    o.deliveryviarule,
    o.description AS c_order_description,
    o.documentno,
    o.dropship_bpartner_id,
    o.dropship_location_id,
    o.dropship_user_id,
    o.freightamt AS c_order_freightamt,
    o.freightcostrule,
    o.grandtotal,
    o.invoicerule,
    o.isactive AS c_order_isactive,
    o.isdelivered,
    o.isdiscountprinted,
    o.isinvoiced,
    o.ispayschedulevalid,
    o.isprinted,
    o.isselected,
    o.isselfservice,
    o.istaxincluded,
    o.istransferred,
    o.link_order_id,
    o.m_freightcategory_id,
    o.m_pricelist_id,
    o.m_shipper_id AS c_order_m_shipper_id,
    o.m_warehouse_id AS c_order_m_warehouse_id,
    o.ordertype,
    o.pay_bpartner_id,
    o.pay_location_id,
    o.paymentrule,
    o.posted,
    o.priorityrule,
    o.processed AS c_order_processed,
    o.processedon,
    o.promotioncode,
    o.ref_order_id,
    o.sendemail,
    o.totallines,
    o.updated AS c_order_updated,
    o.updatedby AS c_order_updatedby,
    o.user1_id AS c_order_user1_id,
    o.user2_id AS c_order_user2_id,
    o.volume,
    o.weight,
    l.ad_orgtrx_id AS c_orderline_ad_orgtrx_id,
    l.c_charge_id AS c_orderline_c_charge_id,
    l.c_currency_id AS c_orderline_c_currency_id,
    l.c_tax_id,
    l.datedelivered,
    l.dateinvoiced,
    l.description AS c_orderline_description,
    l.discount AS c_orderline_discount,
    l.freightamt AS c_orderline_freightamt,
    l.isdescription,
    l.line,
    l.linenetamt,
    l.link_orderline_id,
    l.m_promotion_id,
    l.m_shipper_id AS c_orderline_m_shipper_id,
    l.pricecost,
    l.pricelimit,
    l.pricelist,
    l.processed AS c_orderline_processed,
    l.ref_orderline_id,
    l.rramt,
    l.rrstartdate,
    l.s_resourceassignment_id,
    l.user1_id AS c_orderline_user1_id,
    l.user2_id AS c_orderline_user2_id,
    pasi.ad_org_id AS m_asi_ad_org_id,
    pasi.created AS m_asi_created,
    pasi.createdby AS m_asi_createdby,
    pasi.description AS m_asi_description,
    pasi.isactive AS m_asi_isactive,
    pasi.updated AS m_asi_updated,
    pasi.updatedby AS m_asi_updatedby,
    pdt.m_production_id,
    pdt.lbr_productiongroup_id
   FROM c_order o
     JOIN c_orderline l ON o.c_order_id = l.c_order_id
     LEFT JOIN m_attributesetinstance pasi ON l.m_attributesetinstance_id = pasi.m_attributesetinstance_id
     LEFT JOIN m_product p ON p.m_product_id = l.m_product_id
     LEFT JOIN m_production pdt ON pdt.c_orderline_id = l.c_orderline_id
  WHERE p.isbom = 'Y'::bpchar AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
           FROM c_doctype
          WHERE c_doctype.docbasetype = 'SOO'::bpchar)) AND o.docstatus = 'CO'::bpchar;

ALTER TABLE rv_lbr_maketoordercandidate
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/12/2017 12h23min37s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120585,'Make To Order Candidate','Make To Order Candidate show Only Order where Products are set as Build of Material','RV_LBR_MakeToOrderCandidate',0,'3',0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:36','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','36cc8de8-08f9-468f-89e8-a27400d35fed','N','N','N','N')
;

-- 26/12/2017 12h23min38s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_MakeToOrderCandidate',1000000,'N','N','Table RV_LBR_MakeToOrderCandidate','Y','Y',0,0,TO_TIMESTAMP('2017-12-26 12:23:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:37','YYYY-MM-DD HH24:MI:SS'),100,1153589,'Y',1000000,1,200000,'04268f59-1cc8-4f9b-8f99-dea6cc281072')
;

-- 26/12/2017 12h23min55s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129968,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120585,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:54','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','aff3a8c3-677f-468e-85cb-2d21bcaece8f','N','D')
;

-- 26/12/2017 12h23min56s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129969,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120585,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:55','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9a2abc54-1a15-4861-8a29-fe621926b92e','N','D')
;

-- 26/12/2017 12h23min56s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129970,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120585,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:56','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','3feb9c6e-fe8d-46c7-b268-fbb79194294b','N')
;

-- 26/12/2017 12h23min57s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129971,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120585,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:56','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','09dd1305-3a35-4e7d-b52b-231125795e5f','N')
;

-- 26/12/2017 12h23min57s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129972,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120585,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:57','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','b3604a2f-f6f8-4254-92ef-8680e38ff641','N','D')
;

-- 26/12/2017 12h23min58s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129973,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120585,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:57','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','f45c65ed-820a-4f54-814e-d9bb2374ed2a','N')
;

-- 26/12/2017 12h23min58s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129974,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120585,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:58','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','4b9dc24f-1a3e-4d2b-8ff6-5806a4341bff','N','D')
;

-- 26/12/2017 12h23min59s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129975,0.0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120585,'C_Order_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:58','YYYY-MM-DD HH24:MI:SS'),100,558,'N','N','LBRA','N','fb2cc910-7755-4ff3-b5f0-78201a25f396','N','N')
;

-- 26/12/2017 12h23min59s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129976,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120585,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:59','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','d4e1d7ea-ed5f-46f1-aba0-c1c750e7635c','N')
;

-- 26/12/2017 12h24min0s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU) VALUES (1129977,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120585,'DocAction','CO',2,'N','N','N','N','N','N',28,135,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:23:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:23:59','YYYY-MM-DD HH24:MI:SS'),100,287,'N','N','LBRA','N','35638aa9-9d7d-462d-8a84-943688542df9')
;

-- 26/12/2017 12h24min0s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129978,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120585,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:00','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','7c038902-2a5e-4d8b-b2f7-57660f8ae899','N')
;

-- 26/12/2017 12h24min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129979,0.0,'Approved','Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.',1120585,'IsApproved',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:00','YYYY-MM-DD HH24:MI:SS'),100,351,'N','N','LBRA','N','92cb3e02-2f2e-4f7e-a39e-ef90c5f45d23','N')
;

-- 26/12/2017 12h24min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129980,0.0,'Credit Approved','Credit  has been approved','Credit Approved indicates if the credit approval was successful for Orders',1120585,'IsCreditApproved',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,363,'N','N','LBRA','N','8046ef96-2582-4e89-9dac-27b3b626a9cc','N')
;

-- 26/12/2017 12h24min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129981,0.0,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120585,'SalesRep_ID',10,'N','N','N','N','N','N',18,190,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,1063,'N','N','LBRA','N','71f282a8-ec58-4ef7-805c-ee19c90d3a07','N')
;

-- 26/12/2017 12h24min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129982,0.0,'Invoice Partner','Business Partner to be invoiced','If empty the shipment business partner will be invoiced',1120585,'Bill_BPartner_ID',10,'N','N','N','N','N','N',18,138,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:02','YYYY-MM-DD HH24:MI:SS'),100,2039,'N','N','LBRA','N','3cc750e6-a040-4add-95c9-01e862395fed','N')
;

-- 26/12/2017 12h24min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129983,0.0,'Invoice Location','Business Partner Location for invoicing',1120585,'Bill_Location_ID',10,'N','N','N','N','N','N',18,159,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:03','YYYY-MM-DD HH24:MI:SS'),100,2040,'N','N','LBRA','N','d0f2ed6d-ea61-4348-9082-a109236640fc','N')
;

-- 26/12/2017 12h24min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129984,0.0,'Invoice Contact','Business Partner Contact for invoicing',1120585,'Bill_User_ID',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:03','YYYY-MM-DD HH24:MI:SS'),100,2041,'N','N','LBRA','N','3c217e78-ea22-4a27-8b3d-eabdf6ce10cf','N')
;

-- 26/12/2017 12h24min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129985,0.0,'Drop Shipment','Drop Shipments are sent from the Vendor directly to the Customer','Drop Shipments do not cause any Inventory reservations or movements as the Shipment is from the Vendor''s inventory. The Shipment of the Vendor to the Customer must be confirmed.',1120585,'IsDropShip',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:04','YYYY-MM-DD HH24:MI:SS'),100,2466,'N','N','LBRA','N','77a7dfdb-5bcc-414a-bf35-6e9de4aaad85','N')
;

-- 26/12/2017 12h24min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129986,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120585,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:04','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','edf69776-4996-49a5-9b3c-083536a29a62','N')
;

-- 26/12/2017 12h24min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129987,0.0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120585,'C_BPartner_Location_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:05','YYYY-MM-DD HH24:MI:SS'),100,189,'N','N','LBRA','N','c14bd49d-689d-4884-8f02-54d792b6dc65','N')
;

-- 26/12/2017 12h24min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129988,0.0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1120585,'AD_User_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:05','YYYY-MM-DD HH24:MI:SS'),100,138,'N','N','LBRA','N','2aa11682-3c58-4e78-8f83-46b2d8f9eff4','N')
;

-- 26/12/2017 12h24min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129989,0.0,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',1120585,'POReference',20,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:06','YYYY-MM-DD HH24:MI:SS'),100,952,'N','N','LBRA','N','e4b4c6c4-e259-4f65-bf90-38d7b0f9c4e9','N')
;

-- 26/12/2017 12h24min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129990,0.0,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120585,'C_Currency_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:06','YYYY-MM-DD HH24:MI:SS'),100,193,'N','N','LBRA','N','abe7e18b-5b12-4ee2-bc41-da3228e40680','N','N')
;

-- 26/12/2017 12h24min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129991,0.0,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120585,'IsSOTrx',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:07','YYYY-MM-DD HH24:MI:SS'),100,1106,'N','N','LBRA','N','65f180bb-75c6-46f6-be3b-edc1b0c787a7','N')
;

-- 26/12/2017 12h24min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129992,0.0,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120585,'C_Campaign_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:07','YYYY-MM-DD HH24:MI:SS'),100,550,'N','N','LBRA','N','4db540e9-fe98-44ed-9414-1ab1e79fe842','N','N')
;

-- 26/12/2017 12h24min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129993,0.0,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120585,'C_Project_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:08','YYYY-MM-DD HH24:MI:SS'),100,208,'N','N','LBRA','N','e1c298a5-808e-488d-ad42-c728a40f9bbb','N')
;

-- 26/12/2017 12h24min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1129994,0.0,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120585,'C_Activity_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:08','YYYY-MM-DD HH24:MI:SS'),100,1005,'N','N','LBRA','N','3078c29b-6bef-4dd8-8eb6-775aaa2f5311','N','N')
;

-- 26/12/2017 12h24min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129995,0.0,'Project Phase','Phase of a Project',1120585,'C_ProjectPhase_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:09','YYYY-MM-DD HH24:MI:SS'),100,2073,'N','N','LBRA','N','08179812-6b32-44f2-a58a-694917d3c48a','N')
;

-- 26/12/2017 12h24min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129996,0.0,'Project Task','Actual Project Task in a Phase','A Project Task in a Project Phase represents the actual work.',1120585,'C_ProjectTask_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:09','YYYY-MM-DD HH24:MI:SS'),100,2074,'N','N','LBRA','N','0dfe10f4-77b7-4d2a-baf6-936e3f0f484b','N')
;

-- 26/12/2017 12h24min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129997,0.0,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120585,'C_OrderLine_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:10','YYYY-MM-DD HH24:MI:SS'),100,561,'N','N','LBRA','N','f5112a9e-964f-452c-bbe3-4b2eaf86bd7f','N')
;

-- 26/12/2017 12h24min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129998,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120585,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:10','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','de62f6af-84eb-4d5f-8547-42ef5aab187b','N')
;

-- 26/12/2017 12h24min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1129999,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120585,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:11','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','fcee2235-713c-494f-8808-8ad7fc9c347d','N')
;

-- 26/12/2017 12h24min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130000,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120585,231,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:11','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','6b953341-2eed-44f9-953e-740dd5304e0e','N','N')
;

-- 26/12/2017 12h24min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130001,0.0,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120585,'M_Warehouse_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,459,'N','N','LBRA','N','32775132-5f76-476f-9917-5a8fd5d2e309','N')
;

-- 26/12/2017 12h24min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130002,0.0,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120585,'M_AttributeSetInstance_ID',10,'N','N','N','N','N','N',35,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,2019,'N','N','LBRA','N','47c8db05-a992-4307-9d14-e0d48ddde513','N','N')
;

-- 26/12/2017 12h24min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130003,0.0,'Product Attribute','Product Attribute Instance Description',1120585,'ProductAttribute',2147483647,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:13','YYYY-MM-DD HH24:MI:SS'),100,2679,'N','N','LBRA','N','9604620a-8880-4c40-ae2e-8ec8e53848e0','N')
;

-- 26/12/2017 12h24min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130004,0.0,'Attribute Set','Product Attribute Set','Define Product Attribute Sets to add additional attributes and values to the product. You need to define a Attribute Set if you want to enable Serial and Lot Number tracking.',1120585,'M_AttributeSet_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:13','YYYY-MM-DD HH24:MI:SS'),100,2017,'N','N','LBRA','N','56de7732-a96a-431d-9115-a5e0c9e6ef64','N')
;

-- 26/12/2017 12h24min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130005,0.0,'Lot','Product Lot Definition','The individual Lot of a Product',1120585,'M_Lot_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:14','YYYY-MM-DD HH24:MI:SS'),100,2021,'N','N','LBRA','N','94cc15e5-6ed2-47a8-a0df-78e4e1b31db0','N')
;

-- 26/12/2017 12h24min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130006,0.0,'Guarantee Date','Date when guarantee expires','Date when the normal guarantee or availability expires',1120585,'GuaranteeDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:14','YYYY-MM-DD HH24:MI:SS'),100,1936,'N','N','LBRA','N','704631e3-ee81-4f4b-9828-3f1ab0cabe62','N')
;

-- 26/12/2017 12h24min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130007,0.0,'Lot No','Lot number (alphanumeric)','The Lot Number indicates the specific lot that a product was part of.',1120585,'Lot',40,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:15','YYYY-MM-DD HH24:MI:SS'),100,446,'N','N','LBRA','N','1dd51283-2d62-49b1-8e56-64030e78e340','N')
;

-- 26/12/2017 12h24min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130008,0.0,'Serial No','Product Serial Number ','The Serial Number identifies a tracked, warranted product.  It can only be used when the quantity is 1.',1120585,'SerNo',40,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:15','YYYY-MM-DD HH24:MI:SS'),100,568,'N','N','LBRA','N','00e544cd-038c-4f85-a5f4-42ba525a7103','N')
;

-- 26/12/2017 12h24min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130009,0.0,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1120585,'C_UOM_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:16','YYYY-MM-DD HH24:MI:SS'),100,215,'N','N','LBRA','N','3dcbae0c-c90c-4944-8975-659e637c6820','N','N')
;

-- 26/12/2017 12h24min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130010,0.0,'Quantity','The Quantity Entered is based on the selected UoM','The Quantity Entered is converted to base product UoM quantity',1120585,'QtyEntered',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:16','YYYY-MM-DD HH24:MI:SS'),100,2589,'N','N','LBRA','N','56c17190-b98c-48ef-a93d-4941185518d1','N')
;

-- 26/12/2017 12h24min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130011,0.0,'Ordered Quantity','Ordered Quantity','The Ordered Quantity indicates the quantity of a product that was ordered.',1120585,'QtyOrdered',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:17','YYYY-MM-DD HH24:MI:SS'),100,531,'N','N','LBRA','N','2c122ae2-f877-41f8-8346-ad60bad3b4bc','N')
;

-- 26/12/2017 12h24min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130012,0.0,'Reserved Quantity','Reserved Quantity','The Reserved Quantity indicates the quantity of a product that is currently reserved.',1120585,'QtyReserved',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:17','YYYY-MM-DD HH24:MI:SS'),100,532,'N','N','LBRA','N','314a2daa-a115-40fc-be7e-84f09d49b2d3','N')
;

-- 26/12/2017 12h24min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130013,0.0,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120585,'QtyDelivered',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:18','YYYY-MM-DD HH24:MI:SS'),100,528,'N','N','LBRA','N','32a7d981-f825-453d-896e-2dcd8e4dfce5','N')
;

-- 26/12/2017 12h24min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130014,0.0,'Quantity Invoiced','Invoiced Quantity','The Invoiced Quantity indicates the quantity of a product that have been invoiced.',1120585,'QtyInvoiced',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:18','YYYY-MM-DD HH24:MI:SS'),100,529,'N','N','LBRA','N','142764b8-13c2-43f4-b6bc-e9109c31fb6a','N')
;

-- 26/12/2017 12h24min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130015,0.0,'Unit Price','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.',1120585,'PriceActual',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:19','YYYY-MM-DD HH24:MI:SS'),100,519,'N','N','LBRA','N','7f14b4b2-f053-432c-8984-6f799242b369','N')
;

-- 26/12/2017 12h24min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130016,0.0,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120585,'PriceEntered',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:19','YYYY-MM-DD HH24:MI:SS'),100,2588,'N','N','LBRA','N','a86d6601-bdc1-4174-96d6-f59d8c7a7d98','N')
;

-- 26/12/2017 12h24min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130017,0.0,'Qty to deliver',1120585,'QtyToDeliver',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:20','YYYY-MM-DD HH24:MI:SS'),100,1250,'N','N','LBRA','N','ddaf37cb-611f-40ac-aa11-d7327278a44b','N')
;

-- 26/12/2017 12h24min21s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130018,0.0,'Qty to invoice',1120585,'QtyToInvoice',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:20','YYYY-MM-DD HH24:MI:SS'),100,1251,'N','N','LBRA','N','a3edc98b-4469-4992-8061-bbefad90e610','N')
;

-- 26/12/2017 12h24min21s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130019,0.0,'Invoice net Amount','Net amount of this Invoice','Indicates the net amount for this invoice.  It does not include shipping or any additional charges.',1120585,'NetAmtToInvoice',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:21','YYYY-MM-DD HH24:MI:SS'),100,1249,'N','N','LBRA','N','76a8761d-762f-4fe9-b8c9-1e6d8e0195dd','N')
;

-- 26/12/2017 12h24min22s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130020,0.0,'Lost Sales Qty','Quantity of potential sales','When an order is closed and there is a difference between the ordered quantity and the delivered (invoiced) quantity is the Lost Sales Quantity.  Note that the Lost Sales Quantity is 0 if you void an order, so close the order if you want to track lost opportunities.  [Void = data entry error - Close = the order is finished]',1120585,'QtyLostSales',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:21','YYYY-MM-DD HH24:MI:SS'),100,2826,'N','N','LBRA','N','9cc6dd52-fb9f-4a9e-909e-0b3a81e3111f','N')
;

-- 26/12/2017 12h24min22s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130021,0.0,'Lost Sales Amt','Amount of lost sales in Invoice Currency',1120585,'AmtLostSales',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:22','YYYY-MM-DD HH24:MI:SS'),100,2827,'N','N','LBRA','N','d58ece85-f583-4c5f-98a3-8997792a750f','N')
;

-- 26/12/2017 12h24min23s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130022,0.0,'Discount %','Discount in percent','The Discount indicates the discount applied or taken as a percentage.',1120585,'Discount',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:22','YYYY-MM-DD HH24:MI:SS'),100,280,'N','N','LBRA','N','e42bcbe4-99f4-4034-b052-832cbee19d85','N')
;

-- 26/12/2017 12h24min24s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130023,0.0,'Margin %','Margin for a product as a percentage','The Margin indicates the margin for this product as a percentage of the limit price and selling price.',1120585,'Margin',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:23','YYYY-MM-DD HH24:MI:SS'),100,1528,'N','N','LBRA','N','1709947a-feb8-4dab-82e4-2c248fe42aff','N')
;

-- 26/12/2017 12h24min24s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130024,0.0,'Margin Amount','Difference between actual and limit price multiplied by the quantity','The margin amount is calculated as the difference between actual and limit price multiplied by the quantity',1120585,'MarginAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:24','YYYY-MM-DD HH24:MI:SS'),100,2828,'N','N','LBRA','N','a9627367-1cf8-4a63-a6aa-526000436cb0','N')
;

-- 26/12/2017 12h24min25s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130025,0.0,'c_order_ad_org_id',1120585,'C_Order_AD_Org_ID',10,'N','N','N','N','N','N',18,276,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:24','YYYY-MM-DD HH24:MI:SS'),100,201135,'N','N','LBRA','N','eb635690-2481-49f6-963a-dbc95f49ed51','N')
;

-- 26/12/2017 12h24min25s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130026,0.0,'c_order_ad_orgtrx_id',1120585,'C_Order_AD_OrgTrx_ID',10,'N','N','N','N','N','N',18,130,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:25','YYYY-MM-DD HH24:MI:SS'),100,201136,'N','N','LBRA','N','251c1ab8-be96-453a-8996-eba89edde11f','N')
;

-- 26/12/2017 12h24min26s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130027,0.0,'AmountRefunded',1120585,'AmountRefunded',22,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:25','YYYY-MM-DD HH24:MI:SS'),100,52022,'N','N','LBRA','N','d187cf37-2978-41fa-afed-cf9e1bd25e7b','N')
;

-- 26/12/2017 12h24min26s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130028,0.0,'AmountTendered',1120585,'AmountTendered',22,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:26','YYYY-MM-DD HH24:MI:SS'),100,52021,'N','N','LBRA','N','eb4ad2da-1c8c-4548-a18c-6401e5819b67','N')
;

-- 26/12/2017 12h24min27s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130029,0.0,'c_order_c_activity_id',1120585,'C_Order_C_Activity_ID',10,'N','N','N','N','N','N',18,142,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:26','YYYY-MM-DD HH24:MI:SS'),100,201137,'N','N','LBRA','N','3c303eb7-65f5-4033-9e5b-1b8218066a1b','N')
;

-- 26/12/2017 12h24min27s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130030,0.0,'c_order_c_bpartner_id',1120585,'C_Order_C_BPartner_ID',10,'N','N','N','N','N','N',18,138,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:27','YYYY-MM-DD HH24:MI:SS'),100,201138,'N','N','LBRA','N','1bebf52d-42ba-4bc8-a6a9-adaf153d1e93','N')
;

-- 26/12/2017 12h24min28s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130031,0.0,'c_order_c_bpartner_location_id',1120585,'C_Order_C_BPartner_Loc_ID',10,'N','N','N','N','N','N',18,159,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:27','YYYY-MM-DD HH24:MI:SS'),100,202081,'N','N','LBRA','N','b599d5a2-9bc4-4549-872a-1599f6482b85','N')
;

-- 26/12/2017 12h24min28s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130032,0.0,'c_order_c_compaign_id',1120585,'C_Order_C_Compaign_ID',10,'N','N','N','N','N','N',18,143,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:28','YYYY-MM-DD HH24:MI:SS'),100,202082,'N','N','LBRA','N','fbe2b7dc-194f-411f-9156-2eca2a737b3c','N')
;

-- 26/12/2017 12h24min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130033,0.0,'Cash Journal Line','Cash Journal Line','The Cash Journal Line indicates a unique line in a cash journal.',1120585,'C_CashLine_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:28','YYYY-MM-DD HH24:MI:SS'),100,1464,'N','N','LBRA','N','7a7f961f-a176-4fb1-87a9-a5cdcc79285f','N')
;

-- 26/12/2017 12h24min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130034,0.0,'Cash Plan Line',1120585,'C_CashPlanLine_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:29','YYYY-MM-DD HH24:MI:SS'),100,54397,'N','N','LBRA','N','9416f8f3-f7b5-4109-a8d4-8751d30b4634','N')
;

-- 26/12/2017 12h24min30s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130035,0.0,'c_order_c_charge_id',1120585,'C_Order_C_Charge_ID',10,'N','N','N','N','N','N',18,200,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:29','YYYY-MM-DD HH24:MI:SS'),100,201140,'N','N','LBRA','N','eec8693a-41f3-48ca-84d2-249ad4c55878','N')
;

-- 26/12/2017 12h24min30s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130036,0.0,'Currency Type','Currency Conversion Rate Type','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',1120585,'C_ConversionType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,2278,'N','N','LBRA','N','48319cb4-9fcc-44c3-aeac-a98286b20c37','N','N')
;

-- 26/12/2017 12h24min31s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130037,0.0,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120585,'C_DocTypeTarget_ID',10,'N','N','N','N','N','N',18,170,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:30','YYYY-MM-DD HH24:MI:SS'),100,197,'N','N','LBRA','N','f39d2b9c-84c1-4b86-b506-008cf849cec6','N')
;

-- 26/12/2017 12h24min31s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130038,0.0,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120585,'ChargeAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,849,'N','N','LBRA','N','fc68f47f-b3dc-4d38-9617-99a62c322c13','N')
;

-- 26/12/2017 12h24min32s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU) VALUES (1130039,0.0,'Copy From','Copy From Record','Copy From Record',1120585,'CopyFrom',1,'N','N','N','N','N','N',28,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:31','YYYY-MM-DD HH24:MI:SS'),100,2037,'N','N','LBRA','N','b847c4ae-cdff-48d3-92eb-5225566368aa')
;

-- 26/12/2017 12h24min32s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130040,0.0,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120585,'C_Payment_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,1384,'N','N','LBRA','N','3d3ca4a2-753b-4626-814b-48bf2e8e6c64','N')
;

-- 26/12/2017 12h24min33s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130041,0.0,'Payment Term','The terms of Payment (timing, discount)','Payment Terms identify the method and timing of payment.',1120585,'C_PaymentTerm_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:32','YYYY-MM-DD HH24:MI:SS'),100,204,'N','N','LBRA','N','2358d40d-2cfd-4323-8757-8a932b29cdac','N')
;

-- 26/12/2017 12h24min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130042,0.0,'POS Terminal','Point of Sales Terminal','The POS Terminal defines the defaults and functions available for the POS Form',1120585,'C_POS_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:33','YYYY-MM-DD HH24:MI:SS'),100,2581,'N','N','LBRA','N','838c6a2e-c768-42db-a43d-30c87a59df4e','N')
;

-- 26/12/2017 12h24min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130043,0.0,'c_order_c_project_id',1120585,'C_Order_C_Project_ID',10,'N','N','N','N','N','N',18,141,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,201142,'N','N','LBRA','N','b798a6c1-16e0-403f-ac1e-111c3857df27','N')
;

-- 26/12/2017 12h24min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130044,0.0,'c_order_created',1120585,'c_order_created',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,201143,'N','N','LBRA','N','2907880b-fdec-4a2e-9add-cb11bc44b021','N')
;

-- 26/12/2017 12h24min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130045,0.0,'c_order_createdby',1120585,'C_Order_CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,201144,'N','N','LBRA','N','41ddef64-2f31-4ebc-94a9-bbce24a9fca9','N')
;

-- 26/12/2017 12h24min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130046,0.0,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120585,'DateAcct',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:35','YYYY-MM-DD HH24:MI:SS'),100,263,'N','N','LBRA','N','5a2bd22b-bec6-49c7-a918-825dfe13b6f7','N')
;

-- 26/12/2017 12h24min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130047,0.0,'c_order_dateordered',1120585,'c_order_dateordered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,202083,'N','N','LBRA','N','1be551e4-6598-43bd-902d-e7b356e128d7','N')
;

-- 26/12/2017 12h24min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130048,0.0,'Date printed','Date the document was printed.','Indicates the Date that a document was printed.',1120585,'DatePrinted',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:36','YYYY-MM-DD HH24:MI:SS'),100,1091,'N','N','LBRA','N','9b4673f8-8f69-4e5c-9065-35997aa32df0','N')
;

-- 26/12/2017 12h24min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130049,0.0,'c_order_datepromised',1120585,'c_order_datepromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:37','YYYY-MM-DD HH24:MI:SS'),100,201145,'N','N','LBRA','N','cf5c498f-a96c-4c9b-8fe1-539addc3d756','N')
;

-- 26/12/2017 12h24min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130050,0.0,'Delivery Rule','Defines the timing of Delivery','The Delivery Rule indicates when an order should be delivered. For example should the order be delivered when the entire order is complete, when a line is complete or as the products become available.',1120585,'DeliveryRule',1,'N','N','N','N','N','N',17,151,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:37','YYYY-MM-DD HH24:MI:SS'),100,555,'N','N','LBRA','N','ddd1cb4f-8eef-4428-b0d4-5e2b0c594575','N')
;

-- 26/12/2017 12h24min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130051,0.0,'Delivery Via','How the order will be delivered','The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.',1120585,'DeliveryViaRule',1,'N','N','N','N','N','N',17,152,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:38','YYYY-MM-DD HH24:MI:SS'),100,274,'N','N','LBRA','N','775ab4e2-2f1e-4b4b-b750-9aaa941ee04b','N')
;

-- 26/12/2017 12h24min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130052,0.0,'c_order_description',1120585,'c_order_description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:38','YYYY-MM-DD HH24:MI:SS'),100,201146,'N','N','LBRA','N','640420cd-e620-4a88-ad15-c7c442be38dc','N')
;

-- 26/12/2017 12h24min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130053,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120585,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:39','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','09b1bfa6-a05b-41cc-9a3e-d16cb961aa3d','N')
;

-- 26/12/2017 12h24min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130054,0.0,'Drop Ship Business Partner','Business Partner to ship to','If empty the business partner will be shipped to.',1120585,'DropShip_BPartner_ID',10,'N','N','N','N','N','N',18,138,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:39','YYYY-MM-DD HH24:MI:SS'),100,53458,'N','N','LBRA','N','2dedc790-88e9-4a60-8692-722b35855445','N')
;

-- 26/12/2017 12h24min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130055,0.0,'Drop Shipment Location','Business Partner Location for shipping to',1120585,'DropShip_Location_ID',10,'N','N','N','N','N','N',18,159,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:40','YYYY-MM-DD HH24:MI:SS'),100,53459,'N','N','LBRA','N','bd7d54d5-fe49-43d0-b68d-b22408b8660a','N')
;

-- 26/12/2017 12h24min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130056,0.0,'Drop Shipment Contact','Business Partner Contact for drop shipment',1120585,'DropShip_User_ID',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:40','YYYY-MM-DD HH24:MI:SS'),100,53460,'N','N','LBRA','N','0f4dc1ec-88dc-433b-97f4-0f8aaec2d3d2','N')
;

-- 26/12/2017 12h24min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130057,0.0,'c_order_freightamt',1120585,'c_order_freightamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:41','YYYY-MM-DD HH24:MI:SS'),100,201147,'N','N','LBRA','N','9e568b6a-7530-44e2-b99e-cdb22ffef233','N')
;

-- 26/12/2017 12h24min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130058,0.0,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120585,'FreightCostRule',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:41','YYYY-MM-DD HH24:MI:SS'),100,1007,'N','N','LBRA','N','5814f67c-87a7-4a18-a2c9-7366700bd2db','N')
;

-- 26/12/2017 12h24min42s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130059,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120585,'GrandTotal',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:42','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','019c5bb1-b350-4b16-a7ff-4f3fcf69b7a9','N')
;

-- 26/12/2017 12h24min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130060,0.0,'Invoice Rule','Frequency and method of invoicing ','The Invoice Rule defines how a Business Partner is invoiced and the frequency of invoicing.',1120585,'InvoiceRule',1,'N','N','N','N','N','N',17,150,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:42','YYYY-MM-DD HH24:MI:SS'),100,559,'N','N','LBRA','N','201f6c0e-d7dc-496b-85c8-039dcc331dc4','N')
;

-- 26/12/2017 12h24min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130061,0.0,'c_order_isactive',1120585,'c_order_isactive',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,201148,'N','N','LBRA','N','374a0df4-d2fd-47ba-b88d-1e4838bd0207','N')
;

-- 26/12/2017 12h24min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130062,0.0,'Delivered',1120585,'IsDelivered',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,367,'N','N','LBRA','N','034670b1-bf4a-4aa9-9e70-0d8c10e031f1','N')
;

-- 26/12/2017 12h24min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130063,0.0,'Discount Printed','Print Discount on Invoice and Order','The Discount Printed Checkbox indicates if the discount will be printed on the document.',1120585,'IsDiscountPrinted',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:44','YYYY-MM-DD HH24:MI:SS'),100,1239,'N','N','LBRA','N','aff593ff-a9ec-4aba-8f25-95dca670df8e','N')
;

-- 26/12/2017 12h24min45s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130064,0.0,'Invoiced','Is this invoiced?','If selected, invoices are created',1120585,'IsInvoiced',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:44','YYYY-MM-DD HH24:MI:SS'),100,387,'N','N','LBRA','N','d9b235d6-def0-45b9-a371-24efa6f28ad7','N')
;

-- 26/12/2017 12h24min45s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130065,0.0,'Pay Schedule valid','Is the Payment Schedule is valid','Payment Schedules allow to have multiple due dates.',1120585,'IsPayScheduleValid',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:45','YYYY-MM-DD HH24:MI:SS'),100,2281,'N','N','LBRA','N','46c2ec98-461e-42f9-8ab0-d9f0555667e0','N')
;

-- 26/12/2017 12h24min46s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130066,0.0,'Printed','Indicates if this document / line is printed','The Printed checkbox indicates if this document or line will included when printing.',1120585,'IsPrinted',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:45','YYYY-MM-DD HH24:MI:SS'),100,399,'N','N','LBRA','N','60bd12f4-1f5c-4d69-a72c-874ba437d019','N')
;

-- 26/12/2017 12h24min46s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130067,0.0,'Selected',1120585,'IsSelected','N',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:46','YYYY-MM-DD HH24:MI:SS'),100,1321,'N','N','LBRA','N','f751a26a-43bf-44b3-92e2-1f95ba4a175b','N')
;

-- 26/12/2017 12h24min47s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130068,0.0,'Self-Service','This is a Self-Service entry or this entry can be changed via Self-Service','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.',1120585,'IsSelfService',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:46','YYYY-MM-DD HH24:MI:SS'),100,2063,'N','N','LBRA','N','638db19a-c15d-420a-939f-cbce99864e28','N')
;

-- 26/12/2017 12h24min47s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130069,0.0,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120585,'IsTaxIncluded',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:47','YYYY-MM-DD HH24:MI:SS'),100,1065,'N','N','LBRA','N','9ce07f36-f300-458c-803d-0127037a703c','N')
;

-- 26/12/2017 12h24min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130070,0.0,'Transferred','Transferred to General Ledger (i.e. accounted)','The transferred checkbox indicates if the transactions associated with this document should be transferred to the General Ledger.',1120585,'IsTransferred',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:47','YYYY-MM-DD HH24:MI:SS'),100,419,'N','N','LBRA','N','303f4aae-c764-4832-b170-b02e6eb1d13d','N')
;

-- 26/12/2017 12h24min48s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130071,0.0,'Linked Order','This field links a sales order to the purchase order that is generated from it.',1120585,'Link_Order_ID',10,'N','N','N','N','N','N',18,290,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:48','YYYY-MM-DD HH24:MI:SS'),100,53462,'N','N','LBRA','N','5bf6de81-9167-4557-89cc-485d7c9850ce','N')
;

-- 26/12/2017 12h24min49s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130072,0.0,'Freight Category','Category of the Freight','Freight Categories are used to calculate the Freight for the Shipper selected',1120585,'M_FreightCategory_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:48','YYYY-MM-DD HH24:MI:SS'),100,2111,'N','N','LBRA','N','e8e47082-f5f9-48b3-a478-086c108db1d1','N')
;

-- 26/12/2017 12h24min50s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130073,0.0,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120585,'M_PriceList_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:49','YYYY-MM-DD HH24:MI:SS'),100,449,'N','N','LBRA','N','5f13d456-1d9a-43ba-8be5-023886c8c8aa','N','N')
;

-- 26/12/2017 12h24min50s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130074,0.0,'c_order_m_shipper_id',1120585,'C_Order_M_Shipper_ID',10,'N','N','N','N','N','N',18,200037,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:50','YYYY-MM-DD HH24:MI:SS'),100,201154,'N','N','LBRA','N','b4f61425-4059-4c2d-ab12-d291ebf4d364','N')
;

-- 26/12/2017 12h24min51s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130075,0.0,'c_order_m_warehouse_id',1120585,'C_Order_M_Warehouse_ID',10,'N','N','N','N','N','N',18,197,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:50','YYYY-MM-DD HH24:MI:SS'),100,201155,'N','N','LBRA','N','4f0c2631-c7a8-47bc-9bb4-a48b50773d86','N')
;

-- 26/12/2017 12h24min51s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130076,0.0,'Order Type','Type of Order: MRP records grouped by source (Sales Order, Purchase Order, Distribution Order, Requisition)',1120585,'OrderType',510,'N','N','N','N','N','N',14,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:51','YYYY-MM-DD HH24:MI:SS'),100,52020,'N','N','LBRA','N','33aada74-60af-442e-9d5e-666dbfcb9749','N')
;

-- 26/12/2017 12h24min52s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130077,0.0,'Payment BPartner','Business Partner responsible for the payment',1120585,'Pay_BPartner_ID',10,'N','N','N','N','N','N',18,138,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:51','YYYY-MM-DD HH24:MI:SS'),100,2420,'N','N','LBRA','N','c2449970-dd72-42bf-9cca-a669825e141d','N')
;

-- 26/12/2017 12h24min52s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130078,0.0,'Payment Location','Location of the Business Partner responsible for the payment',1120585,'Pay_Location_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,2421,'N','N','LBRA','N','c51fd13c-b86b-4a38-a951-d5e5e574d31a','N')
;

-- 26/12/2017 12h24min53s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130079,0.0,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120585,'PaymentRule',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,1143,'N','N','LBRA','N','e2b52b11-be74-4514-bfa6-e0b88ce7f887','N')
;

-- 26/12/2017 12h24min53s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130080,0.0,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120585,'Posted',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:53','YYYY-MM-DD HH24:MI:SS'),100,1308,'N','N','LBRA','N','f0737596-fcc1-4b62-a4b2-319ce8f353f1','N')
;

-- 26/12/2017 12h24min54s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130081,0.0,'Priority','Priority of a document','The Priority indicates the importance (high, medium, low) of this document',1120585,'PriorityRule',1,'N','N','N','N','N','N',17,154,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:53','YYYY-MM-DD HH24:MI:SS'),100,522,'N','N','LBRA','N','fc4dd371-5d2c-4e6b-a85b-a08d38bffa5a','N')
;

-- 26/12/2017 12h24min54s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130082,0.0,'c_order_processed',1120585,'c_order_processed',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:54','YYYY-MM-DD HH24:MI:SS'),100,201157,'N','N','LBRA','N','306053f0-9663-4e50-aa27-c4fe7e9327b3','N')
;

-- 26/12/2017 12h24min55s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130083,0.0,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120585,'ProcessedOn',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:54','YYYY-MM-DD HH24:MI:SS'),100,54128,'N','N','LBRA','N','bc7f160a-a230-4f11-b611-38185628abc6','N')
;

-- 26/12/2017 12h24min55s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130084,0.0,'Promotion Code','User entered promotion code at sales time','If present, user entered the promotion code at sales time to get this promotion',1120585,'PromotionCode',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:55','YYYY-MM-DD HH24:MI:SS'),100,53809,'N','N','LBRA','N','34c79f08-638d-4baa-8903-4bd06c8fbe0d','N')
;

-- 26/12/2017 12h24min56s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130085,0.0,'Referenced Order','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120585,'Ref_Order_ID',10,'N','N','N','N','N','N',30,290,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:55','YYYY-MM-DD HH24:MI:SS'),100,2431,'N','N','LBRA','N','b33cab56-e716-4d40-bff2-6310ea17db27','N')
;

-- 26/12/2017 12h24min56s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130086,0.0,'Send EMail','Enable sending Document EMail','Send emails with document attached (e.g. Invoice, Delivery Note, etc.)',1120585,'SendEMail',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:56','YYYY-MM-DD HH24:MI:SS'),100,1978,'N','N','LBRA','N','172c69f8-42cb-48d0-952f-58988872b5e0','N')
;

-- 26/12/2017 12h24min57s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130087,0.0,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',1120585,'TotalLines',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:56','YYYY-MM-DD HH24:MI:SS'),100,598,'N','N','LBRA','N','fc3ac264-eafe-4bff-8b39-1e748cfe5aa8','N')
;

-- 26/12/2017 12h24min57s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130088,0.0,'c_order_updated',1120585,'c_order_updated',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:57','YYYY-MM-DD HH24:MI:SS'),100,201159,'N','N','LBRA','N','4ccb9b1c-8498-408f-8353-1c92f3429630','N')
;

-- 26/12/2017 12h24min58s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130089,0.0,'c_order_updatedby',1120585,'C_Order_UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:57','YYYY-MM-DD HH24:MI:SS'),100,201160,'N','N','LBRA','N','c8e286e2-c8d3-4053-9687-c07d7a807c4b','N')
;

-- 26/12/2017 12h24min58s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130090,0.0,'c_order_user1_id',1120585,'C_Order_User1_ID',10,'N','N','N','N','N','N',18,134,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:58','YYYY-MM-DD HH24:MI:SS'),100,201161,'N','N','LBRA','N','4b630fbf-3d92-4691-aa03-1f6c29c8a101','N')
;

-- 26/12/2017 12h25min0s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130091,0.0,'c_order_user2_id',1120585,'C_Order_User2_ID',10,'N','N','N','N','N','N',18,137,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:24:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:24:58','YYYY-MM-DD HH24:MI:SS'),100,201162,'N','N','LBRA','N','b7f58073-4ef1-495f-a4ef-8a59424300b3','N')
;

-- 26/12/2017 12h25min0s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130092,0.0,'Volume','Volume of a product','The Volume indicates the volume of the product in the Volume UOM of the Client',1120585,'Volume',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:00','YYYY-MM-DD HH24:MI:SS'),100,627,'N','N','LBRA','N','5f0ec3fd-02e8-44cd-b51a-08a523e3e63a','N')
;

-- 26/12/2017 12h25min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130093,0.0,'Weight','Weight of a product','The Weight indicates the weight  of the product in the Weight UOM of the Client',1120585,'Weight',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:00','YYYY-MM-DD HH24:MI:SS'),100,629,'N','N','LBRA','N','ac16a11e-8099-4f8e-9138-c6fb7f52e01d','N')
;

-- 26/12/2017 12h25min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130094,0.0,'c_orderline_ad_orgtrx_id',1120585,'C_OrderLine_AD_OrgTrx_ID',10,'N','N','N','N','N','N',18,130,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:01','YYYY-MM-DD HH24:MI:SS'),100,201121,'N','N','LBRA','N','a2c46163-ecbc-4e0e-884d-513be7b68c27','N')
;

-- 26/12/2017 12h25min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130095,0.0,'c_orderline_c_charge_id',1120585,'C_OrderLine_C_Charge_ID',10,'N','N','N','N','N','N',18,200,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:01','YYYY-MM-DD HH24:MI:SS'),100,201122,'N','N','LBRA','N','60a4cc1b-4ef6-42b9-91b5-6332d60d982d','N')
;

-- 26/12/2017 12h25min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130096,0.0,'c_orderline_c_currency_id',1120585,'C_OrderLine_C_Currency_ID',10,'N','N','N','N','N','N',18,112,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:02','YYYY-MM-DD HH24:MI:SS'),100,201123,'N','N','LBRA','N','dc777ee0-a97a-4ec7-b901-a127a814239e','N')
;

-- 26/12/2017 12h25min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130097,0.0,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',1120585,'C_Tax_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:03','YYYY-MM-DD HH24:MI:SS'),100,213,'N','N','LBRA','N','fb031f96-133c-42b2-9c2f-939c70136856','N')
;

-- 26/12/2017 12h25min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130098,0.0,'Date Delivered','Date when the product was delivered',1120585,'DateDelivered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:03','YYYY-MM-DD HH24:MI:SS'),100,264,'N','N','LBRA','N','5b4a26ce-31e6-4f9b-be61-ce137e0db086','N')
;

-- 26/12/2017 12h25min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130099,0.0,'Date Invoiced','Date printed on Invoice','The Date Invoice indicates the date printed on the invoice.',1120585,'DateInvoiced',29,'N','N','N','N','N','N',15,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:04','YYYY-MM-DD HH24:MI:SS'),100,267,'N','N','LBRA','N','8ae6e9df-f538-4762-a9c8-738bd15dc509','N')
;

-- 26/12/2017 12h25min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130100,0.0,'c_orderline_description',1120585,'c_orderline_description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:05','YYYY-MM-DD HH24:MI:SS'),100,201400,'N','N','LBRA','N','9d4eafae-0d10-4971-b2ab-029e1169754a','N')
;

-- 26/12/2017 12h25min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130101,0.0,'c_orderline_discount',1120585,'c_orderline_discount',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:05','YYYY-MM-DD HH24:MI:SS'),100,202084,'N','N','LBRA','N','57f4a6fd-299b-4c50-a34a-58b7db639409','N')
;

-- 26/12/2017 12h25min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130102,0.0,'c_orderline_freightamt',1120585,'c_orderline_freightamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:06','YYYY-MM-DD HH24:MI:SS'),100,201125,'N','N','LBRA','N','9623ce8a-95a7-4735-8146-bed5f5462732','N')
;

-- 26/12/2017 12h25min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130103,0.0,'Description Only','if true, the line is just description and no transaction','If a line is Description Only, e.g. Product Inventory is not corrected. No accounting transactions are created and the amount or totals are not included in the document.  This for including descriptive detail lines, e.g. for an Work Order.',1120585,'IsDescription',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:06','YYYY-MM-DD HH24:MI:SS'),100,2183,'N','N','LBRA','N','4d6b53e8-3f5c-4701-8396-a091290c759b','N')
;

-- 26/12/2017 12h25min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130104,0.0,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120585,'Line',10,'N','N','N','N','N','N',11,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:07','YYYY-MM-DD HH24:MI:SS'),100,439,'N','N','LBRA','N','0e0a579b-fc6e-4744-991c-d2997d37a828','N')
;

-- 26/12/2017 12h25min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130105,0.0,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',1120585,'LineNetAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:07','YYYY-MM-DD HH24:MI:SS'),100,441,'N','N','LBRA','N','611aaa15-b369-4ed2-9ffd-f0805ddcec24','N')
;

-- 26/12/2017 12h25min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130106,0.0,'Linked Order Line','This field links a sales order line to the purchase order line that is generated from it.',1120585,'Link_OrderLine_ID',10,'N','N','N','N','N','N',18,271,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,53463,'N','N','LBRA','N','d3c31018-a096-4d0c-9326-1b63629d877b','N')
;

-- 26/12/2017 12h25min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130107,0.0,'Promotion',1120585,'M_Promotion_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,53802,'N','N','LBRA','N','3eadf935-c4a1-44a3-b0ce-24c27eb9456e','N','N')
;

-- 26/12/2017 12h25min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130108,0.0,'c_orderline_m_shipper_id',1120585,'C_OrderLine_M_Shipper_ID',10,'N','N','N','N','N','N',18,200037,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:09','YYYY-MM-DD HH24:MI:SS'),100,201126,'N','N','LBRA','N','d240411d-7264-4b57-820b-e4e463d08b2c','N')
;

-- 26/12/2017 12h25min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130109,0.0,'Cost Price','Price per Unit of Measure including all indirect costs (Freight, etc.)','Optional Purchase Order Line cost price.',1120585,'PriceCost',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:09','YYYY-MM-DD HH24:MI:SS'),100,2821,'N','N','LBRA','N','51c48b88-c5e8-425b-b367-77cb3452486a','N')
;

-- 26/12/2017 12h25min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130110,0.0,'Limit Price','Lowest price for a product','The Price Limit indicates the lowest price for a product stated in the Price List Currency.',1120585,'PriceLimit',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:10','YYYY-MM-DD HH24:MI:SS'),100,955,'N','N','LBRA','N','52e41040-eaad-44ea-969f-04b526824709','N')
;

-- 26/12/2017 12h25min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130111,0.0,'List Price','List Price','The List Price is the official List Price in the document currency.',1120585,'PriceList',131089,'N','N','N','N','N','N',37,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:10','YYYY-MM-DD HH24:MI:SS'),100,520,'N','N','LBRA','N','3c48078d-c58e-440e-a438-214393ccd4cb','N')
;

-- 26/12/2017 12h25min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130112,0.0,'c_orderline_processed',1120585,'c_orderline_processed',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:11','YYYY-MM-DD HH24:MI:SS'),100,201128,'N','N','LBRA','N','c05e2f4f-cb75-42d9-9dbf-ad7457ad815d','N')
;

-- 26/12/2017 12h25min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130113,0.0,'Referenced Order Line','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120585,'Ref_OrderLine_ID',10,'N','N','N','N','N','N',30,271,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:11','YYYY-MM-DD HH24:MI:SS'),100,1905,'N','N','LBRA','N','b8f781a2-f9b3-4d09-9f13-99e023f8272c','N','N')
;

-- 26/12/2017 12h25min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130114,0.0,'Revenue Recognition Amt','Revenue Recognition Amount','The amount for revenue recognition calculation.  If empty, the complete invoice amount is used.  The difference between Revenue Recognition Amount and Invoice Line Net Amount is immediately recognized as revenue.',1120585,'RRAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:12','YYYY-MM-DD HH24:MI:SS'),100,3033,'N','N','LBRA','N','40722e20-582c-4865-893d-5409df2c875a','N')
;

-- 26/12/2017 12h25min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130115,0.0,'Revenue Recognition Start','Revenue Recognition Start Date','The date the revenue recognition starts.',1120585,'RRStartDate',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:12','YYYY-MM-DD HH24:MI:SS'),100,3032,'N','N','LBRA','N','b22c2f69-07a5-4321-8e1b-09e9460a3060','N')
;

-- 26/12/2017 12h25min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130116,0.0,'Resource Assignment','Resource Assignment',1120585,'S_ResourceAssignment_ID',10,'N','N','N','N','N','N',33,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:13','YYYY-MM-DD HH24:MI:SS'),100,1778,'N','N','LBRA','N','09501207-65ce-4a27-9123-f6212bc88777','N')
;

-- 26/12/2017 12h25min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130117,0.0,'c_orderline_user1_id',1120585,'C_OrderLine_User1_ID',10,'N','N','N','N','N','N',18,134,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:13','YYYY-MM-DD HH24:MI:SS'),100,202499,'N','N','LBRA','N','4731606c-b609-454d-8514-61988f7c835e','N')
;

-- 26/12/2017 12h25min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130118,0.0,'c_orderline_user2_id',1120585,'C_OrderLine_User2_ID',10,'N','N','N','N','N','N',18,137,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:14','YYYY-MM-DD HH24:MI:SS'),100,201130,'N','N','LBRA','N','94a025b1-9e8f-48ad-8142-14057b2fc0f0','N')
;

-- 26/12/2017 12h25min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130119,0.0,'m_attributesetinstance_ad_org_id',1120585,'M_ASI_AD_Org_ID',10,'N','N','N','N','N','N',18,276,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:15','YYYY-MM-DD HH24:MI:SS'),100,201355,'N','N','LBRA','N','6b0dab5e-11be-4da2-82c1-31c0d657c1ed','N')
;

-- 26/12/2017 12h25min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130120,0.0,'m_asi_created',1120585,'m_asi_created',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:16','YYYY-MM-DD HH24:MI:SS'),100,201611,'N','N','LBRA','N','30df318d-7bf3-46c8-bb6d-fcb419aaccf0','N')
;

-- 26/12/2017 12h25min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130121,0.0,'M_ASI_CreatedBy',1120585,'M_ASI_CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,201589,'N','N','LBRA','N','40614532-5bae-4c87-9c7a-66880fb7a560','N')
;

-- 26/12/2017 12h25min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130122,0.0,'m_attributesetinstance_description',1120585,'M_ASI_Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,201358,'N','N','LBRA','N','adf64923-1033-4f05-b19a-7150be1e6e2f','N')
;

-- 26/12/2017 12h25min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130123,0.0,'m_asi_isactive',1120585,'m_asi_isactive',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:17','YYYY-MM-DD HH24:MI:SS'),100,201612,'N','N','LBRA','N','6e135acd-7773-4f92-a52f-5a02d56f59fc','N')
;

-- 26/12/2017 12h25min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130124,0.0,'m_asi_updated',1120585,'m_asi_updated',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:18','YYYY-MM-DD HH24:MI:SS'),100,201613,'N','N','LBRA','N','31f0925c-e1f3-44ff-9ed2-6d18a83cb709','N')
;

-- 26/12/2017 12h25min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130125,0.0,'M_AttributeSetInstance_UpdatedBy',1120585,'M_ASI_UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:19','YYYY-MM-DD HH24:MI:SS'),100,201588,'N','N','LBRA','N','34267011-06dc-4cfa-a4aa-84af0423ea17','N')
;

-- 26/12/2017 12h25min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130126,0.0,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',1120585,'M_Production_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:19','YYYY-MM-DD HH24:MI:SS'),100,1032,'N','N','LBRA','N','1d14a7d3-362c-4ea7-8d48-c5a838c0ab56','N')
;

-- 26/12/2017 12h25min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130127,0.0,'Production Group',1120585,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:25:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:25:20','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','0f5e6210-c867-4845-b8e2-2893f50e9d50','N','N')
;

-- 26/12/2017 12h30min27s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120032,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:30:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:30:26','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_MakeToOrderCandidate','View to Report Make To Order Candidate',1120585,'LBRA','4d2fd13c-b5fd-4e6b-bddc-dc1d8467b970')
;

-- 26/12/2017 12h31min43s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120202,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:31:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:31:43','YYYY-MM-DD HH24:MI:SS'),100,'Make To Order Candidate','Make To Order Candidate','Y','RV_LBR_MakeToOrderCandidate','N',1120032,'3','LBRA',0,0,'N','N','Y','N','31dfe921-cec5-49d1-b0a5-b26d596d5ef6')
;

-- 26/12/2017 12h44min47s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120381,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:44:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:44:46','YYYY-MM-DD HH24:MI:SS'),100,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120202,10,18,172,'N',0,'N','C_DocTypeTarget_ID','Y','LBRA',197,'d49e2665-d3e7-47b5-a519-6f3c52324c84','N')
;

-- 26/12/2017 12h45min25s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120382,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:45:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:45:24','YYYY-MM-DD HH24:MI:SS'),100,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120202,20,15,'Y',0,'N','DateOrdered','Y','U',268,'b27bb67b-d458-4798-925b-b0b158c10308','N')
;

-- 26/12/2017 12h45min32s BRST
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_TIMESTAMP('2017-12-26 12:45:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120382
;

-- 26/12/2017 12h46min4s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120383,0,0,'Y',TO_TIMESTAMP('2017-12-26 12:46:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:46:03','YYYY-MM-DD HH24:MI:SS'),100,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120202,30,15,'Y',0,'N','DatePromised','Y','LBRA',269,'bcc2881a-50ed-4fe3-b3d6-a2d65f34618f','N')
;

-- 26/12/2017 12h49min28s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120302,'Make To Order Candidate','R',0,0,'Y',TO_TIMESTAMP('2017-12-26 12:49:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 12:49:27','YYYY-MM-DD HH24:MI:SS'),100,'N',1120202,'Y','N','LBRA','Y','6b3352ab-4121-40e2-a0a1-938aed7e37c8')
;

-- 26/12/2017 12h49min28s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120302, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120302)
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 26/12/2017 14h47min24s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/12/2017 15h29min19s BRST
UPDATE AD_ReportView SET WhereClause='M_Production_ID IS NULL',Updated=TO_TIMESTAMP('2017-12-26 15:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=1120032
;

-- View: rv_lbr_materialtopurchase

-- DROP VIEW rv_lbr_materialtopurchase;

CREATE OR REPLACE VIEW rv_lbr_materialtopurchase AS 
 SELECT pg.ad_client_id,
    pg.ad_org_id,
    pg.isactive,
    pg.created,
    pg.createdby,
    pg.updated,
    pg.updatedby,
    pg.lbr_productiongroup_id,
    pl.m_product_id,
    sum(pl.movementqty) * (-1)::numeric AS movementqty,
    pg.c_bpartner_id,
    pg.docstatus,
    pg.dateordered,
    pg.datepromised
   FROM lbr_productiongroup pg,
    m_production p,
    m_productionline pl
  WHERE pg.lbr_productiongroup_id = p.lbr_productiongroup_id AND p.m_production_id = pl.m_production_id AND pg.docstatus = 'WC'::bpchar AND pl.isendproduct = 'N'::bpchar
  GROUP BY pg.ad_client_id, pg.ad_org_id, pg.isactive, pg.created, pg.createdby, pg.updated, pg.updatedby, pg.lbr_productiongroup_id, pl.m_product_id;

ALTER TABLE rv_lbr_materialtopurchase
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/12/2017 18h18min12s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120586,'Material To Purchase','Material To Purchase','RV_LBR_MaterialToPurchase',0,'3',0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:11','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','8af34b78-78ae-4639-8c8f-f8123ec40450','N','N','N','N')
;

-- 26/12/2017 18h18min13s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_MaterialToPurchase',1000000,'N','N','Table RV_LBR_MaterialToPurchase','Y','Y',0,0,TO_TIMESTAMP('2017-12-26 18:18:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:12','YYYY-MM-DD HH24:MI:SS'),100,1153590,'Y',1000000,1,200000,'b699bbff-4194-4137-bd58-effb91e248b5')
;

-- 26/12/2017 18h18min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130128,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120586,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:34','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','cdbc71aa-3642-44ac-b4c5-173a4e2c8ad5','N','D')
;

-- 26/12/2017 18h18min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130129,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120586,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:35','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9749829e-1047-40b8-a166-024e9f1d1f5a','N','D')
;

-- 26/12/2017 18h18min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130130,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120586,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','2aa7f829-b8e2-4b87-85c0-93fa6545a57d','N')
;

-- 26/12/2017 18h18min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130131,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120586,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:36','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','6e9d1dd2-09a7-4751-a7a9-79f4b493c849','N')
;

-- 26/12/2017 18h18min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130132,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120586,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:37','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','22e1fb00-8e3d-4193-8d67-b5b8dbb94f64','N','D')
;

-- 26/12/2017 18h18min38s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130133,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120586,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:38','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','f3c5621b-6642-443d-a304-4d00d9cd484d','N')
;

-- 26/12/2017 18h18min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130134,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120586,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:38','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','9e2ca3d5-70ca-4429-87da-43b9e05d012e','N','D')
;

-- 26/12/2017 18h18min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130135,0.0,'Production Group',1120586,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:39','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','b23c0596-ab8d-40bf-ba4f-efa9e4cb99f8','N','N')
;

-- 26/12/2017 18h18min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130136,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120586,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:39','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','c2b39ec0-bd76-4f80-befc-59e749f213ba','N')
;

-- 26/12/2017 18h18min40s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130137,0.0,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120586,'MovementQty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:40','YYYY-MM-DD HH24:MI:SS'),100,1038,'N','N','LBRA','N','42daf688-2d7e-4d57-99a5-90bb33a0190c','N')
;

-- 26/12/2017 18h18min41s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130138,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120586,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:41','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','20f9585c-8a9a-4feb-8198-f97c5650df93','N')
;

-- 26/12/2017 18h18min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130139,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120586,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:42','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','9395d358-5cb1-4004-bcef-05303507f742','N')
;

-- 26/12/2017 18h18min43s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130140,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120586,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','2040c839-14c0-41e0-80ec-97505a0373d1','N')
;

-- 26/12/2017 18h18min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130141,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120586,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','44297752-33fd-4e23-8f0c-1249b60a3519','N')
;

-- 26/12/2017 18h30min25s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120034,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:30:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:30:24','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_MaterialToPurchase',1120586,'LBRA','ffbb8efe-cdfc-4d58-a330-8b5242d7f470')
;

-- 26/12/2017 18h30min46s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120206,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:30:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:30:46','YYYY-MM-DD HH24:MI:SS'),100,'Material To Purchase','Material To Purchase','Y','RV_LBR_MaterialToPurchase','N',1120034,'3','LBRA',0,0,'N','N','Y','N','db11f883-c90c-48ad-b4bb-499c000ad2e0')
;

-- 26/12/2017 18h38min51s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120384,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:38:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:38:50','YYYY-MM-DD HH24:MI:SS'),100,'Production Group',1120206,10,19,'N',0,'N','LBR_ProductionGroup_ID','Y','LBRA',1122423,'a37bde11-e90a-421c-b705-6395007985dd','N')
;

-- 26/12/2017 18h39min18s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120385,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:39:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:39:17','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120206,20,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'446676a9-88e7-4bc0-b072-ee74a6a7be2d','N')
;

-- 26/12/2017 18h39min44s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120386,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:39:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:39:43','YYYY-MM-DD HH24:MI:SS'),100,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120206,30,15,'Y',0,'N','DateOrdered','Y','LBRA',268,'3aaa0210-9cf8-4241-a458-619da31bcffa','N')
;

-- 26/12/2017 18h40min3s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120387,0,0,'Y',TO_TIMESTAMP('2017-12-26 18:40:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:40:02','YYYY-MM-DD HH24:MI:SS'),100,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120206,40,15,'Y',0,'N','DatePromised','Y','LBRA',269,'5967d852-b869-49aa-89c6-d0cacbf74d09','N')
;

-- 26/12/2017 18h40min48s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120303,'Material to Purchase','R',0,0,'Y',TO_TIMESTAMP('2017-12-26 18:40:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 18:40:48','YYYY-MM-DD HH24:MI:SS'),100,'N',1120206,'Y','N','LBRA','Y','7149ead9-35bf-43a8-9383-a255499b20c5')
;

-- 26/12/2017 18h40min48s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120303, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120303)
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 26/12/2017 18h41min0s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 26/12/2017 18h41min1s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 26/12/2017 16h45min57s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120033,0,0,'Y',TO_TIMESTAMP('2017-12-26 16:45:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 16:45:56','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Rpt_Production_Group',1120582,'LBRA','6733deac-ae69-44c7-8853-bd02690fac93')
;

-- 26/12/2017 16h46min12s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120204,0,0,'Y',TO_TIMESTAMP('2017-12-26 16:46:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-26 16:46:11','YYYY-MM-DD HH24:MI:SS'),100,'Report Production Group','Y','LBR_Rpt_Production_Group','N',1120033,'3','LBRA',0,0,'N','N','Y','N','9f5406c8-715c-447e-b56c-43fc0671c81a')
;

-- 26/12/2017 16h46min34s BRST
UPDATE AD_Tab SET AD_Process_ID=1120204,Updated=TO_TIMESTAMP('2017-12-26 16:46:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120281
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/12/2017 12h18min32s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120388,0,0,'Y',TO_TIMESTAMP('2017-12-27 12:18:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 12:18:31','YYYY-MM-DD HH24:MI:SS'),100,'Production Group',1120204,10,13,'N',0,'N','LBR_ProductionGroup_ID','Y','LBRA',1122423,'3f34f824-50b1-46e0-94d6-6d1e591fc511','N')
;

-- 27/12/2017 12h21min21s BRST
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2017-12-27 12:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120388
;

-- 27/12/2017 12h21min43s BRST
UPDATE AD_Process_Para SET DisplayLogic='1 = 2',Updated=TO_TIMESTAMP('2017-12-27 12:21:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120388
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28/12/2017 10h35min28s BRST
UPDATE AD_Process SET IsDirectPrint='Y',Updated=TO_TIMESTAMP('2017-12-28 10:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120204
;

-- View: rv_lbr_orderinproduction

-- DROP VIEW rv_lbr_orderinproduction;

CREATE OR REPLACE VIEW rv_lbr_orderinproduction AS 
 SELECT pg.ad_client_id,
    pg.ad_org_id,
    pg.isactive,
    pg.created,
    pg.createdby,
    pg.updated,
    pg.updatedby,
    pg.lbr_productiongroup_id,
    pl.m_product_id,
    sum(pl.movementqty) AS movementqty,
    pg.c_bpartner_id,
    pg.docstatus,
    pg.dateordered,
    pg.datepromised,
    bomqtyonhandbylocator(pl.m_product_id, NULL, pl.m_locator_id) AS QtyOnHand
   FROM lbr_productiongroup pg,
    m_production p,
    m_productionline pl
  WHERE pg.lbr_productiongroup_id = p.lbr_productiongroup_id AND p.m_production_id = pl.m_production_id AND pg.docstatus = 'CO'::bpchar AND pl.isendproduct = 'Y'::bpchar AND (p.docstatus::text <> ALL (ARRAY['CO'::character varying::text, 'CL'::character varying::text]))
  GROUP BY pg.ad_client_id, pg.ad_org_id, pg.isactive, pg.created, pg.createdby, pg.updated, pg.updatedby, pg.lbr_productiongroup_id, pl.m_product_id, pl.m_locator_id;

ALTER TABLE rv_lbr_orderinproduction
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/12/2017 17h14min51s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120587,'Order In Production','RV_LBR_OrderInProduction',0,'3',0,0,'Y',TO_TIMESTAMP('2017-12-27 17:14:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:14:50','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','5e2c8e07-6624-469b-bd6d-e3737dd7b837','N','N','N','N')
;

-- 27/12/2017 17h14min51s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_OrderInProduction',1000000,'N','N','Table RV_LBR_OrderInProduction','Y','Y',0,0,TO_TIMESTAMP('2017-12-27 17:14:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:14:51','YYYY-MM-DD HH24:MI:SS'),100,1153591,'Y',1000000,1,200000,'9a73fc8f-dbad-4f33-a408-1c9d511f717b')
;

-- 27/12/2017 17h15min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130143,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120587,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:05','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','dba8ed8a-9996-4444-889a-51ca66091854','N','D')
;

-- 27/12/2017 17h15min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130144,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120587,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:06','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','e5ace474-9b30-4eac-aedb-9f760630020f','N','D')
;

-- 27/12/2017 17h15min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130145,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120587,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','6f3bd2d5-b03a-4fff-a3d8-12a3d54f4e9d','N')
;

-- 27/12/2017 17h15min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130146,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120587,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:07','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','a6ec35bb-0f61-41a4-9eb2-71de0a56d283','N')
;

-- 27/12/2017 17h15min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130147,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120587,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:08','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','0d7a99f3-3613-44dd-aace-c15b9ebd8bc7','N','D')
;

-- 27/12/2017 17h15min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130148,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120587,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:09','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','02f112bd-fc2f-494e-8e26-65483a2fb96d','N')
;

-- 27/12/2017 17h15min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130149,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120587,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:09','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','8e1df85c-c39e-42dd-a3f7-d81c04a0ef6b','N','D')
;

-- 27/12/2017 17h15min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130150,0.0,'Production Group',1120587,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:10','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','af0b873e-2c77-4409-84d0-64a8f687d389','N','N')
;

-- 27/12/2017 17h15min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130151,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120587,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:10','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','38a10238-f713-42a9-8aee-e75b2ced86ea','N')
;

-- 27/12/2017 17h15min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130152,0.0,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120587,'MovementQty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:11','YYYY-MM-DD HH24:MI:SS'),100,1038,'N','N','LBRA','N','9b012f5d-c730-42af-a2bf-455d8e6f8689','N')
;

-- 27/12/2017 17h15min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130153,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120587,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:11','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','8951a29e-af2c-4cc5-a309-38191b9a9e4e','N')
;

-- 27/12/2017 17h15min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130154,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120587,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:12','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','04519459-2088-4869-92ad-3801b3fd2ce5','N')
;

-- 27/12/2017 17h15min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130155,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120587,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:12','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','34693243-97c5-4eb3-882c-11f88edda5df','N')
;

-- 27/12/2017 17h15min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130156,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120587,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:13','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','b8021cda-2856-4614-a0e3-38431fb779df','N')
;

-- 27/12/2017 17h15min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130157,0.0,'QtyOnHand',1120587,'QtyOnHand',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:15:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:15:13','YYYY-MM-DD HH24:MI:SS'),100,530,'N','N','LBRA','N','646e395f-37b4-407f-b07b-0bd7e5ee85cf','N')
;

-- 27/12/2017 17h17min17s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120035,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:17:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:17:16','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_OrderInProduction',1120587,'LBRA','00ce9d25-e68a-4756-8855-817e64d86dcc')
;

-- 27/12/2017 17h17min28s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120207,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:17:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:17:28','YYYY-MM-DD HH24:MI:SS'),100,'Order In Production','Y','RV_LBR_OrderInProduction','N',1120035,'3','LBRA',0,0,'N','N','Y','N','def40a04-15bb-4f86-a853-471c3c0b6503')
;

-- 27/12/2017 17h18min6s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120389,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:18:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:18:05','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120207,10,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'5f72a73f-8778-47f6-beab-cec0f1295b37','N')
;

-- 27/12/2017 17h18min35s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120390,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:18:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:18:34','YYYY-MM-DD HH24:MI:SS'),100,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120207,20,15,'Y',0,'N','DateOrdered','Y','LBRA',268,'bac63dfb-60f5-497a-92ac-6f7b8fddf0d3','N')
;

-- 27/12/2017 17h18min52s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120391,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:18:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:18:51','YYYY-MM-DD HH24:MI:SS'),100,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120207,30,15,'Y',0,'N','DatePromised','Y','LBRA',269,'b5b7dc4c-01ac-4dc6-9cb4-1aafaeef7b6a','N')
;

-- 27/12/2017 17h19min30s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120304,'Order In Production','R',0,0,'Y',TO_TIMESTAMP('2017-12-27 17:19:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:19:29','YYYY-MM-DD HH24:MI:SS'),100,'N',1120207,'Y','N','LBRA','Y','9fc8fe60-97c6-4f05-a804-aaa492a32e8a')
;

-- 27/12/2017 17h19min30s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120304, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120304)
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 27/12/2017 17h19min39s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 27/12/2017 17h19min42s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- View: rv_lbr_itensmovproduction

-- DROP VIEW rv_lbr_itensmovproduction;

CREATE OR REPLACE VIEW rv_lbr_itensmovproduction AS 
 SELECT pg.ad_client_id,
    pg.ad_org_id,
    pg.isactive,
    pg.created,
    pg.createdby,
    pg.updated,
    pg.updatedby,
    pg.lbr_productiongroup_id,
    pl.m_product_id,
    sum(pl.movementqty) * (-1)::numeric AS movementqty,
    pg.c_bpartner_id,
    pg.docstatus,
    pg.dateordered,
    pg.datepromised,
    bomqtyonhandbylocator(pl.m_product_id, NULL, pl.m_locator_id) AS QtyOnHand
   FROM lbr_productiongroup pg,
    m_production p,
    m_productionline pl
  WHERE pg.lbr_productiongroup_id = p.lbr_productiongroup_id AND p.m_production_id = pl.m_production_id AND pg.docstatus = 'CO'::bpchar AND pl.isendproduct = 'N'::bpchar AND p.DocStatus NOT IN ('CO', 'CL')
  GROUP BY pg.ad_client_id, pg.ad_org_id, pg.isactive, pg.created, pg.createdby, pg.updated, pg.updatedby, pg.lbr_productiongroup_id, pl.m_product_id, pl.m_locator_id
 HAVING bomqtyonhandbylocator(pl.m_product_id, NULL, pl.m_locator_id) < (sum(pl.movementqty) * (-1)::numeric);

ALTER TABLE rv_lbr_itensmovproduction
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/12/2017 17h58min2s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120588,'Itens Movement Production','rv_lbr_itensmovproduction',0,'3',0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:01','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','d199351e-280a-484e-9469-8c4d5089f671','N','N','N','N')
;

-- 27/12/2017 17h58min4s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('rv_lbr_itensmovproduction',1000000,'N','N','Table rv_lbr_itensmovproduction','Y','Y',0,0,TO_TIMESTAMP('2017-12-27 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:02','YYYY-MM-DD HH24:MI:SS'),100,1153592,'Y',1000000,1,200000,'ce6e86f9-c7aa-4fc4-96cb-347345e8be53')
;

-- 27/12/2017 17h58min20s BRST
UPDATE AD_Table SET TableName='RV_LBR_ItensMovProduction',Updated=TO_TIMESTAMP('2017-12-27 17:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120588
;

-- 27/12/2017 17h58min20s BRST
UPDATE AD_Sequence SET Name='RV_LBR_ItensMovProduction',Updated=TO_TIMESTAMP('2017-12-27 17:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1153592
;

-- 27/12/2017 17h58min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130158,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120588,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:28','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','f127fac3-4fae-49fe-9d35-6f783b467aca','N','D')
;

-- 27/12/2017 17h58min29s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130159,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120588,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:29','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','2fb0f55a-c35c-477b-b65a-cf87c763231e','N','D')
;

-- 27/12/2017 17h58min30s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130160,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120588,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','189940f3-f9aa-484a-8391-4cdc457641ad','N')
;

-- 27/12/2017 17h58min31s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130161,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120588,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:30','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','361653aa-ef00-4f25-838b-72a6a7c64d52','N')
;

-- 27/12/2017 17h58min31s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130162,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120588,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','a3f3de1b-9827-405f-8a6d-e6d2cea65520','N','D')
;

-- 27/12/2017 17h58min32s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130163,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120588,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:31','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','8e0fe7e6-72a9-4a0f-ac44-945ae558fb95','N')
;

-- 27/12/2017 17h58min32s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130164,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120588,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','2b1142a8-4320-4a40-b035-ff2e02390fb4','N','D')
;

-- 27/12/2017 17h58min33s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130165,0.0,'Production Group',1120588,'LBR_ProductionGroup_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:32','YYYY-MM-DD HH24:MI:SS'),100,1122423,'N','N','LBRA','N','3f43291a-e591-49c4-b9ca-c2d39e6c95a5','N','N')
;

-- 27/12/2017 17h58min33s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130166,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120588,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','6a73eb0c-be2b-4263-bbf0-fd6ca6ce85bb','N')
;

-- 27/12/2017 17h58min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130167,0.0,'Movement Quantity','Quantity of a product moved.','The Movement Quantity indicates the quantity of a product that has been moved.',1120588,'MovementQty',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:33','YYYY-MM-DD HH24:MI:SS'),100,1038,'N','N','LBRA','N','37ded11b-48f1-42f6-a270-bdea09da9fbd','N')
;

-- 27/12/2017 17h58min34s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130168,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120588,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','060b2f38-9af0-4f40-b149-fe096e87d111','N')
;

-- 27/12/2017 17h58min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130169,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120588,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:34','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','8a47ef67-b50b-4fd1-87e4-64064ce72565','N')
;

-- 27/12/2017 17h58min35s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130170,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120588,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','d3e70475-e033-4946-b1dd-ebdaca07d9d6','N')
;

-- 27/12/2017 17h58min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130171,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120588,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:35','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','543606d7-d78e-48dc-99f1-d5cc78c1a8c3','N')
;

-- 27/12/2017 17h58min36s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130172,0.0,'QtyOnHand',1120588,'QtyOnHand',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:58:36','YYYY-MM-DD HH24:MI:SS'),100,530,'N','N','LBRA','N','f3e96f0b-a930-43a9-9735-746df6439adf','N','N')
;

-- 27/12/2017 18h0min0s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120036,0,0,'Y',TO_TIMESTAMP('2017-12-27 17:59:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 17:59:59','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_ItensMovProduction',1120588,'LBRA','0f33f82a-e397-4e91-bab2-95e87ffa7936')
;

-- 27/12/2017 18h0min18s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120208,0,0,'Y',TO_TIMESTAMP('2017-12-27 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,'Itens Movement Production','Y','RV_LBR_ItensMovProduction','N',1120036,'3','LBRA',0,0,'N','N','Y','N','18b9208c-c3fd-4be2-9324-0e24fc060a5d')
;

-- 27/12/2017 18h0min55s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120392,0,0,'Y',TO_TIMESTAMP('2017-12-27 18:00:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 18:00:54','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120208,10,30,'N',0,'N','C_BPartner_ID','Y','LBRA',187,'c71c4495-b205-4841-b6ed-3b82aca5d219','N')
;

-- 27/12/2017 18h1min17s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120393,0,0,'Y',TO_TIMESTAMP('2017-12-27 18:01:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 18:01:17','YYYY-MM-DD HH24:MI:SS'),100,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120208,20,15,'Y',0,'N','DateOrdered','Y','LBRA',268,'d0eede20-a9e9-414a-80e5-99cfe7d406c7','N')
;

-- 27/12/2017 18h1min35s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120394,0,0,'Y',TO_TIMESTAMP('2017-12-27 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120208,30,15,'Y',0,'N','DatePromised','Y','LBRA',269,'42b60039-ea1c-43af-bb39-0a561a90c423','N')
;

-- 27/12/2017 18h2min23s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120305,'Itens Movement Production','R',0,0,'Y',TO_TIMESTAMP('2017-12-27 18:02:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-12-27 18:02:23','YYYY-MM-DD HH24:MI:SS'),100,'N',1120208,'Y','N','LBRA','Y','472bc830-e882-49dc-bd6f-0254be6deb04')
;

-- 27/12/2017 18h2min23s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120305, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120305)
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=2000000
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120298
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120302
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120305
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120303
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120304
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120300
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120301
;

-- 27/12/2017 18h2min34s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- Function: bomqtyonhandbylocator(numeric, numeric, numeric)

-- DROP FUNCTION bomqtyonhandbylocator(numeric, numeric, numeric);

CREATE OR REPLACE FUNCTION bomqtyonhandbylocator(
    product_id numeric,
    warehouse_id numeric,
    locator_id numeric)
  RETURNS numeric AS
$BODY$
DECLARE
	myWarehouse_ID		numeric;
 	v_Quantity		numeric := 99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		numeric;
	v_StdPrecision		int;
	bom			record;
	
BEGIN
	--	Check Parameters
	myWarehouse_ID := Warehouse_ID;
	IF (myWarehouse_ID IS NULL) THEN
		IF (Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	SUM(M_Warehouse_ID) INTO myWarehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=Locator_ID;
		END IF;
	END IF;
	IF (myWarehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
	 	  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;
	--	Unlimited capacity if no item
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN v_Quantity;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyOnHand), 0)
		  INTO	v_ProductQty
		FROM 	M_Storageonhand s
		  JOIN M_Locator l ON (s.M_Locator_ID=l.M_Locator_ID)
		WHERE s.M_Product_ID=Product_ID AND l.M_Warehouse_ID=myWarehouse_ID AND 
		CASE WHEN Locator_ID IS NOT NULL THEN 
			s.M_Locator_ID = Locator_ID
		ELSE
			s.M_Locator_ID IS NOT NULL
		END;
		--
		RETURN v_ProductQty;
	END IF;

	--	Go through BOM
	FOR bom IN 	--	Get BOM Product info
		SELECT b.M_ProductBOM_ID, b.BOMQty, p.IsBOM, p.IsStocked, p.ProductType
		FROM M_PRODUCT_BOM b, M_PRODUCT p
		WHERE b.M_ProductBOM_ID=p.M_Product_ID
		  AND b.M_Product_ID=product_ID
		  AND b.M_ProductBOM_ID != Product_ID
		  AND p.IsBOM='Y'
		  AND p.IsVerified='Y'
		  AND b.IsActive='Y'
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get v_ProductQty
			SELECT 	COALESCE(SUM(QtyOnHand), 0)
			  INTO	v_ProductQty
			FROM 	M_Storageonhand s
			  JOIN M_Locator l ON (s.M_Locator_ID=l.M_Locator_ID)
			WHERE s.M_Product_ID=bom.M_ProductBOM_ID AND l.M_Warehouse_ID=myWarehouse_ID;
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty := ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity := v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty := bomqtyonhandbylocator (bom.M_ProductBOM_ID, myWarehouse_ID, Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity := v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	RETURN 0;
END;
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100;
ALTER FUNCTION bomqtyonhandbylocator(numeric, numeric, numeric)
  OWNER TO adempiere;
  
  -- 27/12/2017 18h2min34s BRST
UPDATE AD_Column SET IsIdentifier = 'Y' WHERE AD_Column_ID=1129925
;

-- 27/12/2017 18h2min34s BRST
SELECT Register_Migration_Script ('201712290900_FixPGAndNewReports.sql') FROM DUAL
;