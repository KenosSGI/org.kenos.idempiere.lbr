SET SQLBLANKLINES ON
SET DEFINE OFF

-- View: rv_lbr_notafiscal_details

-- DROP VIEW rv_lbr_notafiscal_details;

CREATE OR REPLACE VIEW rv_lbr_notafiscal_details AS 
 SELECT nf.documentno,
    nf.c_doctypetarget_id,
    nf.lbr_isowndocument,
    nf.lbr_nfestatus,
    nf.c_bpartner_id,
    nf.docstatus,
    nf.iscancelled,
    nf.lbr_nfeenv,
    nf.datedoc,
    nf.datetrx,
    nfl.lbr_notafiscalline_id,
    nfl.ad_org_id,
    nfl.ad_client_id,
    nfl.isactive,
    nfl.created,
    nfl.createdby,
    nfl.updated,
    nfl.updatedby,
    nfl.c_invoiceline_id,
    nfl.lbr_notafiscal_id,
    nfl.m_product_id,
    nfl.c_uom_id,
    nfl.lbr_ncm_id,
    nfl.lbr_cfop_id,
    nfl.productname,
    nfl.productvalue,
    nfl.price,
    nfl.linetotalamt,
    nfl.pricelistamt,
    nfl.qty,
    nfl.lbr_uomname,
    nfl.description,
    nfl.discount,
    nfl.line,
    nfl.vendorproductno,
    nfl.lbr_taxstatus,
    nfl.lbr_isservice,
    nfl.lbr_servicetaxes,
    nfl.lbr_linetotalcif,
    nfl.lbr_linetotalsiscomex,
    nfl.lbr_nfdi_id,
    nfl.lbr_numseqitem,
    nfl.lbr_numadicao,
    nfl.manufacturer,
    nfl.lbr_taxstatusipi,
    nfl.discountamt,
    nfl.lbr_otherchargesamt,
    nfl.lbr_productsource,
    nfl.lbr_indtot,
    nfl.freightamt,
    nfl.lbr_insuranceamt,
    nfl.lbr_cest_id,
    nfl.lbr_fcivalue,
    icms.lbr_taxamt AS icms_taxamt,
    icms.lbr_taxbase AS icms_taxbase,
    icms.lbr_taxbaseamt AS icms_taxbaseamt,
    icms.lbr_taxrate AS icms_taxrate,
    icms.cst AS csticms,
    pis.lbr_taxamt AS pis_taxamt,
    pis.lbr_taxbase AS pis_taxbase,
    pis.lbr_taxbaseamt AS pis_taxbaseamt,
    pis.lbr_taxrate AS pis_taxrate,
    pis.cst AS cstpis,
    cofins.lbr_taxamt AS cofins_taxamt,
    cofins.lbr_taxbase AS cofins_taxbase,
    cofins.lbr_taxbaseamt AS cofins_taxbaseamt,
    cofins.lbr_taxrate AS cofins_taxrate,
    cofins.cst AS cstcofins,
    ipi.lbr_taxamt AS ipi_taxamt,
    ipi.lbr_taxbase AS ipi_taxbase,
    ipi.lbr_taxbaseamt AS ipi_taxbaseamt,
    ipi.lbr_taxrate AS ipi_taxrate,
    ipi.cst AS cstipi,
    icmsst.lbr_taxamt AS icmsst_taxamt,
    icmsst.lbr_taxbase AS icmsst_taxbase,
    icmsst.lbr_taxbaseamt AS icmsst_taxbaseamt,
    icmsst.lbr_taxrate AS icmsst_taxrate,
    icmsst.cst AS icmsst_taxstatus,
    round(nfl.linetotalamt + COALESCE(icmsst.lbr_taxamt, 0::numeric) + COALESCE(ipi.lbr_taxamt, 0::numeric), 2) AS grossramt,
    fcp.lbr_taxamt AS fcp_taxamt,
    fcp.lbr_taxbase AS fcp_taxbase,
    fcp.lbr_taxbaseamt AS fcp_taxbaseamt,
    fcp.lbr_taxrate AS fcp_taxrate,
    fcp.cst AS fcp_taxstatus,
    icmsdifal.lbr_taxamt AS icmsdifal_taxamt,
    icmsdifal.lbr_taxbase AS icmsdifal_taxbase,
    icmsdifal.lbr_taxbaseamt AS icmsdifal_taxbaseamt,
    icmsdifal.lbr_taxrate AS icmsdifal_taxrate,
    icmsdifal.cst AS icmsdifal_taxstatus,
    icmsdifalorig.lbr_taxamt AS icmsdifalorig_taxamt,
    icmsdifalorig.lbr_taxbase AS icmsdifalorig_taxbase,
    icmsdifalorig.lbr_taxbaseamt AS icmsdifalorig_taxbaseamt,
    icmsdifalorig.lbr_taxrate AS icmsdifalorig_taxrate,
    icmsdifalorig.cst AS icmsdifalorig_taxstatus,
    nf.lbr_transactiontype,
    nf.lbr_finnfe,
    nf.lbr_nfeid,
    nf.lbr_cfopnote,
    nf.c_order_id,
    nf.c_invoice_id,
    nf.m_inout_id
   FROM lbr_notafiscalline nfl
     LEFT JOIN lbr_notafiscal nf ON nfl.lbr_notafiscal_id = nf.lbr_notafiscal_id
     LEFT JOIN lbr_nflinetax_v icms ON nfl.lbr_notafiscalline_id = icms.lbr_notafiscalline_id AND icms.taxindicator::text = 'ICMS'::text
     LEFT JOIN lbr_nflinetax_v pis ON nfl.lbr_notafiscalline_id = pis.lbr_notafiscalline_id AND pis.taxindicator::text = 'PIS'::text
     LEFT JOIN lbr_nflinetax_v cofins ON nfl.lbr_notafiscalline_id = cofins.lbr_notafiscalline_id AND cofins.taxindicator::text = 'COFINS'::text
     LEFT JOIN lbr_nflinetax_v ipi ON nfl.lbr_notafiscalline_id = ipi.lbr_notafiscalline_id AND ipi.taxindicator::text = 'IPI'::text
     LEFT JOIN lbr_nflinetax_v icmsst ON nfl.lbr_notafiscalline_id = icmsst.lbr_notafiscalline_id AND icmsst.taxindicator::text = 'ICMSST'::text
     LEFT JOIN lbr_nflinetax_v fcp ON nfl.lbr_notafiscalline_id = fcp.lbr_notafiscalline_id AND fcp.taxindicator::text = 'FCP'::text
     LEFT JOIN lbr_nflinetax_v icmsdifal ON nfl.lbr_notafiscalline_id = icmsdifal.lbr_notafiscalline_id AND icmsdifal.taxindicator::text = 'ICMSDIFAL'::text
     LEFT JOIN lbr_nflinetax_v icmsdifalorig ON nfl.lbr_notafiscalline_id = icmsdifalorig.lbr_notafiscalline_id AND icmsdifalorig.taxindicator::text = 'ICMSDIFALORIG'::text;

ALTER TABLE rv_lbr_notafiscal_details
  OWNER TO adempiere;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 07/05/2018 15h3min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130242,0,'Transaction Type','Defines the Transaction Type','Defines the Transaction Type',1120566,'lbr_TransactionType',3,'N','N','N','N','N',0,'N',17,1000024,0,0,'Y',TO_DATE('2018-05-07 15:03:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:03:29','YYYY-MM-DD HH24:MI:SS'),100,1000147,'Y','N','LBRA','N','N','N','Y','915d89e7-84c1-4866-aeec-3f146124b1ef','Y',0,'N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 07/05/2018 15h12min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130244,0,'Finalidade NFe','Define a Finalidade da NFe','1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria',1120566,'lbr_FinNFe','1',1,'N','N','N','N','N',0,'N',17,1100012,0,0,'Y',TO_DATE('2018-05-07 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:12:35','YYYY-MM-DD HH24:MI:SS'),100,1100066,'Y','N',NULL,'LBRA','N','N','N','Y','9684d04c-fda3-470c-9f60-d75eaa4d4846','Y',0,'N','N')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 07/05/2018 15h37min46s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130245,0,'NFe ID','Identification of NFe',1120566,'lbr_NFeID',255,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-05-07 15:37:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:37:45','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N',NULL,'LBRA','N','N','N','Y','80a95b3f-40cf-4dca-85ed-c312d221ef94','Y',0,'N','N')
;

-- 07/05/2018 15h38min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130247,0,'CFOP Note','Defines the CFOP Note','Defines the CFOP Note',1120566,'lbr_CFOPNote',300,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-05-07 15:38:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:38:17','YYYY-MM-DD HH24:MI:SS'),100,1000280,'Y','N',NULL,'LBRA','N','N','N','Y','26ae44a1-1124-4b92-9df4-721fd7e342fc','Y',0,'N','N')
;

-- 07/05/2018 15h38min50s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130248,0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120566,'C_Order_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-05-07 15:38:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:38:50','YYYY-MM-DD HH24:MI:SS'),100,558,'N','N','LBRA','N','N','N','Y','7739da64-5757-4bd9-8f1b-135ec326421a','Y',0,'N','N')
;

-- 07/05/2018 15h39min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130249,0,'Invoice','Invoice Identifier','The Invoice Document.',1120566,'C_Invoice_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-05-07 15:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:39:08','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N','N','N','Y','03bf17ba-1165-460a-89b5-39d4022ded86','Y',0,'N','N')
;

-- 07/05/2018 15h39min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (1130250,0,'Shipment/Receipt','Material Shipment Document','The Material Shipment / Receipt ',1120566,'M_InOut_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2018-05-07 15:39:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-07 15:39:24','YYYY-MM-DD HH24:MI:SS'),100,1025,'N','N','LBRA','N','N','N','Y','b51a1fb7-37cd-41e5-a5a0-c33725c9a46f','Y',0,'N','N')
;

SELECT Register_Migration_Script ('201805071700_RV_NF_Details_AddColumn.sql') FROM DUAL
;