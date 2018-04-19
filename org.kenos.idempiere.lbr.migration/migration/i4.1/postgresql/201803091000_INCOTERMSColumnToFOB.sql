-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/09/2017 16h39min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1129889,0,'Freight Terms',259,'FOB',10,'N','N','N','N','N',0,'N',17,200030,0,0,'Y',TO_TIMESTAMP('2017-09-21 16:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-09-21 16:39:05','YYYY-MM-DD HH24:MI:SS'),100,200270,'Y','N','LBRA','N','N','N','Y','75a0fb3a-fadc-4e64-8067-693e3f0e58dc','Y','N','N')
;

-- 21/09/2017 16h41min29s BRT
UPDATE AD_Field SET Name='Freight Terms', Description=NULL, Help=NULL, AD_Column_ID=1129889, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-09-21 16:41:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123910
;

-- 21/09/2017 16h41min39s BRT
ALTER TABLE C_Order ADD COLUMN FOB VARCHAR(10) DEFAULT NULL 
;

UPDATE C_ORDER SET FOB = LBR_INCOTERMS;

-- View: rv_lbr_c_order

DROP VIEW rv_lbr_c_order;

CREATE OR REPLACE VIEW rv_lbr_c_order AS 
 SELECT o.ad_client_id,
    o.ad_org_id,
    o.isactive,
    o.created,
    o.createdby,
    o.updated,
    o.updatedby,
    o.c_order_id,
    o.issotrx,
    o.documentno,
    o.docstatus,
    o.c_doctype_id,
    o.c_bpartner_id,
    o.m_warehouse_id,
    o.salesrep_id,
    o.dateordered,
    o.datepromised,
    o.c_bpartner_location_id,
    o.bill_bpartner_id,
    o.bill_location_id,
    o.bill_user_id,
    o.description,
    o.poreference,
    o.c_currency_id,
    o.c_charge_id,
    o.chargeamt,
    o.totallines,
    o.grandtotal,
    o.m_pricelist_id,
    o.istaxincluded,
    o.volume,
    o.weight,
    o.c_campaign_id,
    o.c_project_id,
    o.c_activity_id,
    o.m_shipper_id,
    o.deliveryrule,
    o.deliveryviarule,
    o.priorityrule,
    o.invoicerule,
    o.c_doctypetarget_id,
    o.ad_user_id,
    o.c_paymentterm_id,
    o.isapproved,
    o.iscreditapproved,
    o.isdelivered,
    o.isinvoiced,
    o.dateacct,
    o.freightamt,
    o.c_cashline_id,
    o.ref_order_id,
    o.c_pos_id,
    o.link_order_id,
    o.freightcostrule,
    o.lbr_paymentrule,
    o.lbr_transactiontype,
    o.lbr_insuranceamt,
    o.lbr_otherchargesamt,
    o.lbr_freightcostrule,
    o.lbr_haswithhold,
    o.fob,
    o.lbr_indpres
   FROM c_order o;

-- View: rv_lbr_quote

DROP VIEW rv_lbr_quote;

CREATE OR REPLACE VIEW rv_lbr_quote AS 
 SELECT q.ad_client_id,
    q.ad_org_id,
    q.isactive,
    q.created,
    q.createdby,
    q.updated,
    q.updatedby,
    q.c_order_id,
    q.issotrx,
    q.documentno,
    q.docstatus,
    q.c_doctype_id,
    q.c_bpartner_id,
    q.m_warehouse_id,
    q.salesrep_id,
    q.dateordered,
    q.datepromised,
    q.c_bpartner_location_id,
    q.bill_bpartner_id,
    q.bill_location_id,
    q.bill_user_id,
    q.description,
    q.poreference,
    q.c_currency_id,
    q.c_charge_id,
    q.chargeamt,
    q.totallines,
    q.grandtotal,
    q.m_pricelist_id,
    q.istaxincluded,
    q.volume,
    q.weight,
    q.c_campaign_id,
    q.c_project_id,
    q.c_activity_id,
    q.m_shipper_id,
    q.deliveryrule,
    q.deliveryviarule,
    q.priorityrule,
    q.invoicerule,
    q.c_doctypetarget_id,
    q.ad_user_id,
    q.c_paymentterm_id,
    q.isapproved,
    q.iscreditapproved,
    q.isdelivered,
    q.isinvoiced,
    q.dateacct,
    q.freightamt,
    q.c_cashline_id,
    q.ref_order_id,
    q.c_pos_id,
    q.link_order_id,
    q.freightcostrule,
    q.lbr_paymentrule,
    q.lbr_transactiontype,
    q.lbr_insuranceamt,
    q.lbr_otherchargesamt,
    q.lbr_freightcostrule,
    q.lbr_haswithhold,
    q.fob,
    q.lbr_indpres,
    o.c_order_id AS lbr_quoteorder_id,
        CASE
            WHEN COALESCE(o.ref_order_id, 0::numeric) = 0::numeric THEN
            CASE
                WHEN q.docstatus = 'CL'::bpchar THEN 'L'::text
                ELSE 'P'::text
            END
            ELSE
            CASE
                WHEN o.docstatus = 'CO'::bpchar OR o.docstatus = 'CL'::bpchar THEN 'W'::text
                ELSE 'P'::text
            END
        END AS lbr_quotestatus
   FROM c_order q
     LEFT JOIN c_doctype dt ON q.c_doctypetarget_id = dt.c_doctype_id
     LEFT JOIN c_order o ON o.ref_order_id = q.c_order_id
  WHERE dt.docsubtypeso = 'ON'::bpchar;

-- 21/09/2017 17h6min28s BRT
UPDATE AD_Column SET Name='Freight Terms', Description=NULL, Help=NULL, ColumnName='FOB', FieldLength=10, AD_Reference_ID=17, AD_Reference_Value_ID=200030, AD_Element_ID=200270,Updated=TO_TIMESTAMP('2017-09-21 17:06:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129568
;

-- 21/09/2017 17h6min54s BRT
UPDATE AD_Column SET Name='Freight Terms', Description=NULL, Help=NULL, ColumnName='FOB', FieldLength=10, AD_Reference_Value_ID=200030, AD_Element_ID=200270,Updated=TO_TIMESTAMP('2017-09-21 17:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129505
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 19/04/2018 13h21min20s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1125125
;

-- 19/04/2018 13h21min20s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1125125
;

ALTER TABLE C_ORDER DROP COLUMN LBR_INCOTERMS;

SELECT Register_Migration_Script ('201803091000_INCOTERMSColumnToFOB.sql') FROM DUAL
;