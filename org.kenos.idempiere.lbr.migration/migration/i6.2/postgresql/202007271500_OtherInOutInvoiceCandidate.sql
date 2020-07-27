SET SQLBLANKLINES ON
SET DEFINE OFF

-- View: adempiere.c_invoice_candidate_v

DROP VIEW adempiere.c_invoice_candidate_v;

CREATE OR REPLACE VIEW adempiere.c_invoice_candidate_v
 AS
 SELECT o.ad_client_id,
    o.ad_org_id,
    o.c_bpartner_id,
    o.c_order_id,
    o.documentno,
    o.dateordered,
    o.c_doctype_id,
    sum((l.qtyordered - l.qtyinvoiced) * l.priceactual) AS totallines
   FROM adempiere.c_order o
     JOIN adempiere.c_orderline l ON o.c_order_id = l.c_order_id
     JOIN adempiere.c_bpartner bp ON o.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN adempiere.c_invoiceschedule si ON bp.c_invoiceschedule_id = si.c_invoiceschedule_id
  WHERE (o.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar, 'IP'::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
           FROM adempiere.c_doctype
          WHERE c_doctype.lbr_issalespurchaseoperation = 'Y'::bpchar AND c_doctype.docbasetype = 'SOO'::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY['ON'::bpchar, 'OB'::bpchar, 'WR'::bpchar])))) AND l.qtyordered <> l.qtyinvoiced AND (o.invoicerule = 'I'::bpchar OR o.invoicerule = 'O'::bpchar AND NOT (EXISTS ( SELECT 1
           FROM adempiere.c_orderline zz1
          WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = 'D'::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = 'D'::bpchar OR si.invoicefrequency = 'W'::bpchar OR si.invoicefrequency = 'T'::bpchar AND (adempiere.trunc(o.dateordered::timestamp with time zone) <= ((adempiere.firstof(adempiere.getdate(), 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoicedaycutoff) - 1) AND adempiere.trunc(adempiere.getdate()) >= ((adempiere.firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoiceday) - 1) OR adempiere.trunc(o.dateordered::timestamp with time zone) <= ((adempiere.firstof(adempiere.getdate(), 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoicedaycutoff) + 14) AND adempiere.trunc(adempiere.getdate()) >= ((adempiere.firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoiceday) + 14)) OR si.invoicefrequency = 'M'::bpchar AND adempiere.trunc(o.dateordered::timestamp with time zone) <= ((adempiere.firstof(adempiere.getdate(), 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoicedaycutoff) - 1) AND adempiere.trunc(adempiere.getdate()) >= ((adempiere.firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone OPERATOR(adempiere.+) si.invoiceday) - 1)))
  GROUP BY o.ad_client_id, o.ad_org_id, o.c_bpartner_id, o.c_order_id, o.documentno, o.dateordered, o.c_doctype_id;

ALTER TABLE adempiere.c_invoice_candidate_v
    OWNER TO adempiere;


SELECT Register_Migration_Script ('202007271500_OtherInOutInvoiceCandidate.sql') FROM DUAL
;