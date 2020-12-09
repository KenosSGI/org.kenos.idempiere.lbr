CREATE OR REPLACE VIEW adempiere.lbr_factfiscalbase
AS SELECT nf.ad_client_id,
    nf.ad_org_id,
    nf.created,
    nf.createdby,
    nf.updated,
    nf.updatedby,
    nf.isactive,
    nfl.lbr_notafiscalline_id AS lbr_factfiscal_id,
    nf.lbr_notafiscal_id,
    nf.documentno,
    nf.lbr_nfeprot,
    nf.lbr_nfeid,
    nf.issotrx,
    nf.iscancelled,
    nf.c_invoice_id,
    nf.c_order_id,
    nf.c_bpartner_id,
    nf.lbr_isowndocument,
    ''::text AS docbasetypebr,
    nf.datedoc,
    COALESCE(nf.lbr_dateinout, nf.datedoc) AS lbr_dateinout,
    nf.lbr_nfserie,
    round(COALESCE(nf.grandtotal, 0::numeric), 2) AS grandtotal,
    round(COALESCE(nf.totallines + nf.lbr_servicetotalamt, 0::numeric), 2) AS totallines,
    round(COALESCE(nf.freightamt, 0::numeric), 2) AS freightamt,
    round(COALESCE(nf.lbr_insuranceamt, 0::numeric), 2) AS lbr_insuranceamt,
    round(COALESCE(nf.lbr_totalsiscomex, 0::numeric), 2) AS lbr_totalsiscomex,
    nf.freightcostrule,
    nf.lbr_nfmodel,
    round(COALESCE(( SELECT sum(abs(lbr_nflinetax.lbr_taxamt)) AS sum
           FROM lbr_nflinetax
          WHERE lbr_nflinetax.lbr_taxrate < 0::numeric AND (lbr_nflinetax.lbr_notafiscalline_id IN ( SELECT lbr_notafiscalline.lbr_notafiscalline_id
                   FROM lbr_notafiscalline
                  WHERE lbr_notafiscalline.lbr_notafiscal_id = nf.lbr_notafiscal_id AND (lbr_notafiscalline.lbr_cfopname::text ~~ '6.109'::text OR lbr_notafiscalline.lbr_cfopname::text ~~ '6.110'::text)))), 0::numeric), 2) AS discountamt,
        CASE
            WHEN nf.issotrx = 'N'::bpchar THEN 0::numeric
            ELSE round(COALESCE(tot_icms.lbr_taxbaseamt, 0::numeric), 2)
        END AS icms_nftaxbaseamt,
        CASE
            WHEN nf.issotrx = 'N'::bpchar THEN 0::numeric
            ELSE round(COALESCE(tot_icms.lbr_taxamt, 0::numeric), 2)
        END AS icms_nftaxamt,
        CASE
            WHEN oi.lbr_indatividade = '0'::bpchar AND nf.issotrx = 'N'::bpchar THEN 0::numeric
            ELSE round(COALESCE(tot_icmsst.lbr_taxbaseamt, 0::numeric), 2)
        END AS icmsst_nftaxbaseamt,
        CASE
            WHEN oi.lbr_indatividade = '0'::bpchar AND nf.issotrx = 'N'::bpchar THEN 0::numeric
            ELSE round(COALESCE(tot_icmsst.lbr_taxamt, 0::numeric), 2)
        END AS icmsst_nftaxamt,
    round(COALESCE(tot_cofins.lbr_taxamt, 0::numeric), 2) AS cofins_nftaxamt,
    round(COALESCE(tot_pis.lbr_taxamt, 0::numeric), 2) AS pis_nftaxamt,
    round(COALESCE(tot_ipi.lbr_taxamt, 0::numeric), 2) AS ipi_nftaxamt,
    nf.lbr_cnpj,
    nf.lbr_ie,
    nf.lbr_orgaddress1,
    nf.lbr_orgaddress2,
    nf.lbr_orgaddress3,
    nf.lbr_orgaddress4,
    nf.lbr_orgcity,
    nf.lbr_orgpostal,
    nf.lbr_orgregion,
    nf.lbr_orgname,
    nf.lbr_orgccm,
    nf.org_location_id,
    nf.lbr_orgphone,
    orgcity.lbr_citycode AS lbr_orgcitycode,
    oi.lbr_indatividade,
    oi.lbr_suframa,
    oi.lbr_fantasia,
    oi.lbr_cnae,
    oi.email,
    oi.lbr_bp_accountant_id,
    nf.lbr_bpcnpj,
    nf.lbr_bpie,
    nf.lbr_bpaddress1,
    nf.lbr_bpaddress2,
    nf.lbr_bpaddress3,
    nf.lbr_bpaddress4,
    nf.lbr_bpcity,
    nf.lbr_bppostal,
    nf.lbr_bpregion,
    nf.bpname,
    nf.c_bpartner_location_id,
    nf.lbr_bpphone,
    nf.lbr_bpsuframa,
    bpcity.lbr_citycode AS bpcitycode,
    bpcountry.lbr_countrycode AS bpcountrycode,
    nfl.line,
    nfl.lbr_notafiscalline_id,
    nfl.lbr_cfop_id,
    nfl.m_product_id,
    nfl.lbr_ncm_id,
    nfl.c_uom_id,
    nfl.productvalue,
    nfl.productname,
    nfl.lbr_cfopname,
    nfl.lbr_ncmname,
    nfl.lbr_uomname,
    uom.name AS lbr_uomdescription,
    p.upc,
        CASE
            WHEN nfl.m_product_id IS NULL THEN '09'::character varying
            ELSE p.lbr_itemtypebr
        END AS lbr_itemtypebr,
    ncmp.value AS productncm,
    uomp.uomsymbol AS productuom,
    nfl.lbr_isservice,
    round(COALESCE(nfl.price, 0::numeric), 2) AS price,
    round(COALESCE(nfl.qty, 0::numeric), 2) AS qty,
    nfl.lbr_nfdi_id,
    round(COALESCE(nfl.linetotalamt, 0::numeric), 2) AS linenetamt,
    round(
        CASE
            WHEN cfop.value::text ~~ '3.%'::text OR cfop.value::text ~~ '7.%'::text THEN COALESCE(icms.lbr_taxbaseamt, 0::numeric)
            WHEN cfop.value::text ~~ '6.109'::text OR cfop.value::text ~~ '6.110'::text THEN COALESCE(nfl.linetotalamt, 0::numeric) + round(COALESCE(( SELECT sum(abs(lbr_nflinetax.lbr_taxamt)) * '-1'::integer::numeric
               FROM lbr_nflinetax
              WHERE lbr_nflinetax.lbr_taxrate < 0::numeric AND lbr_nflinetax.lbr_notafiscalline_id = nfl.lbr_notafiscalline_id), 0::numeric), 4) +
            CASE
                WHEN COALESCE(il.freightamt, 0::numeric) = 0::numeric THEN COALESCE(nfl.linetotalamt, 0::numeric) * COALESCE(nf.freightamt, 0::numeric) /
                CASE
                    WHEN COALESCE(nf.totallines, 0::numeric) = 0::numeric THEN 1::numeric
                    ELSE COALESCE(nf.totallines, 0::numeric)
                END
                ELSE COALESCE(il.freightamt, 0::numeric)
            END
            ELSE COALESCE(nfl.linetotalamt, 0::numeric) + COALESCE(icmsst.lbr_taxamt, 0::numeric) + COALESCE(ipi.lbr_taxamt, 0::numeric) +
            CASE
                WHEN COALESCE(il.freightamt, 0::numeric) = 0::numeric THEN COALESCE(nfl.linetotalamt, 0::numeric) * COALESCE(nf.freightamt, 0::numeric) /
                CASE
                    WHEN COALESCE(nf.totallines, 0::numeric) = 0::numeric THEN 1::numeric
                    ELSE COALESCE(nf.totallines, 0::numeric)
                END
                ELSE COALESCE(il.freightamt, 0::numeric)
            END
        END, 2) AS linetotalamt,
    round(COALESCE(icms.lbr_taxbaseamt, 0::numeric), 2) AS icms_taxbaseamt,
    round(COALESCE(icms.lbr_taxbase, 0::numeric), 2) AS icms_taxbase,
    round(COALESCE(icms.lbr_taxrate, 0::numeric), 2) AS icms_taxrate,
    round(COALESCE(icms.lbr_taxamt, 0::numeric), 2) AS icms_taxamt,
    COALESCE(nfl.lbr_productsource, '0'::bpchar)::text ||
    COALESCE(icms.lbr_taxstatus, '00'::character varying)::text icms_taxstatus,
    round(COALESCE(pis.lbr_taxbaseamt, 0::numeric), 2) AS pis_taxbaseamt,
    round(COALESCE(pis.lbr_taxbase, 0::numeric), 2) AS pis_taxbase,
    round(COALESCE(pis.lbr_taxrate, 0::numeric), 2) AS pis_taxrate,
    round(COALESCE(pis.lbr_taxamt, 0::numeric), 2) AS pis_taxamt,
    COALESCE(pis.lbr_taxstatus, '99'::character varying) AS pis_taxstatus,
    round(COALESCE(cofins.lbr_taxbaseamt, 0::numeric), 2) AS cofins_taxbaseamt,
    round(COALESCE(cofins.lbr_taxbase, 0::numeric), 2) AS cofins_taxbase,
    round(COALESCE(cofins.lbr_taxrate, 0::numeric), 2) AS cofins_taxrate,
    round(COALESCE(cofins.lbr_taxamt, 0::numeric), 2) AS cofins_taxamt,
    COALESCE(cofins.lbr_taxstatus, '99'::character varying) AS cofins_taxstatus,
    round(COALESCE(icmsst.lbr_taxbaseamt, 0::numeric), 2) AS icmsst_taxbaseamt,
    round(COALESCE(icmsst.lbr_taxbase, 0::numeric), 2) AS icmsst_taxbase,
    round(COALESCE(icmsst.lbr_taxrate, 0::numeric), 2) AS icmsst_taxrate,
    round(COALESCE(icmsst.lbr_taxamt, 0::numeric), 2) AS icmsst_taxamt,
    COALESCE(nfl.lbr_productsource, '0'::bpchar)::text || COALESCE(icmsst.lbr_taxstatus, '00'::character varying)::text AS icmsst_taxstatus,
    round(COALESCE(ipi.lbr_taxbaseamt, 0::numeric), 2) AS ipi_taxbaseamt,
    round(COALESCE(ipi.lbr_taxrate, 0::numeric), 2) AS ipi_taxrate,
    round(COALESCE(ipi.lbr_taxamt, 0::numeric), 2) AS ipi_taxamt,
    COALESCE(
        CASE
            WHEN nf.issotrx = 'Y'::bpchar THEN ipi.lbr_taxstatus
            ELSE ipi.lbr_po_taxstatus
        END,
        CASE
            WHEN nf.issotrx = 'Y'::bpchar THEN '50'::text
            ELSE '00'::text
        END::character varying) AS ipi_taxstatus,
    round(COALESCE(ii.lbr_taxbaseamt, 0::numeric), 2) AS ii_taxbaseamt,
    round(COALESCE(ii.lbr_taxrate, 0::numeric), 2) AS ii_taxrate,
    round(COALESCE(ii.lbr_taxamt, 0::numeric), 2) AS ii_taxamt
   FROM lbr_notafiscalline nfl
     JOIN lbr_notafiscal nf ON nf.lbr_notafiscal_id = nfl.lbr_notafiscal_id
     JOIN ad_orginfo oi ON oi.ad_org_id = nf.ad_org_id
     JOIN c_invoice i ON nf.c_invoice_id = i.c_invoice_id
     LEFT JOIN c_doctype dt ON nf.c_doctypetarget_id = dt.c_doctype_id
     JOIN c_doctype dti ON i.c_doctypetarget_id = dti.c_doctype_id
     LEFT JOIN c_invoiceline il ON nfl.c_invoiceline_id = il.c_invoiceline_id
     LEFT JOIN m_product p ON p.m_product_id = nfl.m_product_id
     LEFT JOIN c_uom uomp ON uomp.c_uom_id = p.c_uom_id
     LEFT JOIN lbr_ncm ncmp ON ncmp.lbr_ncm_id = p.lbr_ncm_id
     LEFT JOIN c_location orgloc ON orgloc.c_location_id = nf.org_location_id
     LEFT JOIN c_city orgcity ON orgcity.c_city_id = orgloc.c_city_id
     LEFT JOIN c_country orgcountry ON orgcountry.c_country_id = orgloc.c_country_id
     LEFT JOIN c_bpartner_location bpl ON bpl.c_bpartner_location_id = nf.c_bpartner_location_id
     LEFT JOIN c_location bploc ON bploc.c_location_id = bpl.c_location_id
     LEFT JOIN c_city bpcity ON bpcity.c_city_id = bploc.c_city_id
     LEFT JOIN c_country bpcountry ON bpcountry.c_country_id = bploc.c_country_id
     LEFT JOIN lbr_cfop cfop ON nfl.lbr_cfop_id = cfop.lbr_cfop_id
     LEFT JOIN c_uom uom ON uom.c_uom_id = nfl.c_uom_id
     LEFT JOIN factfiscal_nflinetax_v icms ON nfl.lbr_notafiscalline_id = icms.lbr_notafiscalline_id AND icms.lbr_taxname::text = 'ICMS'::text
     LEFT JOIN factfiscal_nflinetax_v pis ON nfl.lbr_notafiscalline_id = pis.lbr_notafiscalline_id AND pis.lbr_taxname::text = 'PIS'::text
     LEFT JOIN factfiscal_nflinetax_v cofins ON nfl.lbr_notafiscalline_id = cofins.lbr_notafiscalline_id AND cofins.lbr_taxname::text = 'COFINS'::text
     LEFT JOIN factfiscal_nflinetax_v icmsst ON nfl.lbr_notafiscalline_id = icmsst.lbr_notafiscalline_id AND icmsst.lbr_taxname::text = 'ICMSST'::text AND (icmsst.lbr_taxstatus::text = ANY (ARRAY['10'::character varying::text, '30'::character varying::text, '70'::character varying::text]))
     LEFT JOIN factfiscal_nflinetax_v ipi ON nfl.lbr_notafiscalline_id = ipi.lbr_notafiscalline_id AND ipi.lbr_taxname::text = 'IPI'::text
     LEFT JOIN factfiscal_nflinetax_v ii ON nfl.lbr_notafiscalline_id = ii.lbr_notafiscalline_id AND ii.lbr_taxname::text = 'II'::text
     LEFT JOIN lbr_nftax tot_icms ON nf.lbr_notafiscal_id = tot_icms.lbr_notafiscal_id AND tot_icms.lbr_taxgroup_id = (( SELECT lbr_taxgroup.lbr_taxgroup_id
           FROM lbr_taxgroup
          WHERE lbr_taxgroup.name::text ~~ 'ICMS'::text))
     LEFT JOIN lbr_nftax tot_pis ON nfl.lbr_notafiscal_id = tot_pis.lbr_notafiscal_id AND tot_pis.lbr_taxgroup_id = (( SELECT lbr_taxgroup.lbr_taxgroup_id
           FROM lbr_taxgroup
          WHERE lbr_taxgroup.name::text ~~ 'PIS'::text))
     LEFT JOIN lbr_nftax tot_cofins ON nfl.lbr_notafiscal_id = tot_cofins.lbr_notafiscal_id AND tot_cofins.lbr_taxgroup_id = (( SELECT lbr_taxgroup.lbr_taxgroup_id
           FROM lbr_taxgroup
          WHERE lbr_taxgroup.name::text ~~ 'COFINS'::text))
     LEFT JOIN lbr_nftax tot_icmsst ON nfl.lbr_notafiscal_id = tot_icmsst.lbr_notafiscal_id AND tot_icmsst.lbr_taxgroup_id = (( SELECT lbr_taxgroup.lbr_taxgroup_id
           FROM lbr_taxgroup
          WHERE lbr_taxgroup.name::text ~~ 'ICMSST'::text))
     LEFT JOIN lbr_nftax tot_ipi ON nfl.lbr_notafiscal_id = tot_ipi.lbr_notafiscal_id AND tot_ipi.lbr_taxgroup_id = (( SELECT lbr_taxgroup.lbr_taxgroup_id
           FROM lbr_taxgroup
          WHERE lbr_taxgroup.name::text ~~ 'IPI'::text))
  WHERE
        CASE
            WHEN nf.issotrx = 'N'::bpchar AND dti.lbr_isowndocument = 'N'::bpchar THEN nf.iscancelled = 'N'::bpchar
            ELSE true
        END AND
        CASE
            WHEN il.m_product_id IS NOT NULL THEN NOT (il.m_product_id IN ( SELECT ci.m_productfreight_id
               FROM ad_clientinfo ci
              WHERE ci.ad_client_id = il.ad_client_id)) AND NOT (il.m_product_id IN ( SELECT ci.lbr_productinsurance_id
               FROM ad_clientinfo ci
              WHERE ci.ad_client_id = il.ad_client_id)) AND NOT (il.m_product_id IN ( SELECT ci.lbr_productsiscomex_id
               FROM ad_clientinfo ci
              WHERE ci.ad_client_id = il.ad_client_id))
            ELSE true
        END
UNION
 SELECT bp.ad_client_id,
    bp.ad_org_id,
    bp.created,
    bp.createdby,
    bp.updated,
    bp.updatedby,
    bp.isactive,
    NULL::numeric AS lbr_factfiscal_id,
    NULL::numeric AS lbr_notafiscal_id,
    NULL::character varying AS documentno,
    NULL::character varying AS lbr_nfeprot,
    NULL::character varying AS lbr_nfeid,
    'N'::bpchar AS issotrx,
    'N'::bpchar AS iscancelled,
    NULL::numeric AS c_invoice_id,
    NULL::numeric AS c_order_id,
    bp.c_bpartner_id,
    NULL::bpchar AS lbr_isowndocument,
    NULL::text AS docbasetypebr,
    p.startdate AS datedoc,
    p.startdate AS lbr_dateinout,
    NULL::character varying AS lbr_nfserie,
    NULL::numeric AS grandtotal,
    NULL::numeric AS totallines,
    NULL::numeric AS freightamt,
    NULL::numeric AS lbr_insuranceamt,
    NULL::numeric AS lbr_totalsiscomex,
    NULL::bpchar AS freightcostrule,
    '01'::character varying AS lbr_nfmodel,
    NULL::numeric AS discountamt,
    NULL::numeric AS icms_nftaxbaseamt,
    NULL::numeric AS icms_nftaxamt,
    NULL::numeric AS icmsst_nftaxbaseamt,
    NULL::numeric AS icmsst_nftaxamt,
    NULL::numeric AS cofins_nftaxamt,
    NULL::numeric AS pis_nftaxamt,
    NULL::numeric AS ipi_nftaxamt,
    NULL::character varying AS lbr_cnpj,
    NULL::character varying AS lbr_ie,
    NULL::character varying AS lbr_orgaddress1,
    NULL::character varying AS lbr_orgaddress2,
    NULL::character varying AS lbr_orgaddress3,
    NULL::character varying AS lbr_orgaddress4,
    NULL::character varying AS lbr_orgcity,
    NULL::character varying AS lbr_orgpostal,
    NULL::character varying AS lbr_orgregion,
    NULL::character varying AS lbr_orgname,
    NULL::character varying AS lbr_orgccm,
    NULL::numeric AS org_location_id,
    NULL::character varying AS lbr_orgphone,
    NULL::character varying AS lbr_orgcitycode,
    '0'::bpchar AS lbr_indatividade,
    NULL::character varying AS lbr_suframa,
    NULL::character varying AS lbr_fantasia,
    NULL::character varying AS lbr_cnae,
    NULL::character varying AS email,
    NULL::numeric AS lbr_bp_accountant_id,
    bp.lbr_cnpj AS lbr_bpcnpj,
    bp.lbr_ie AS lbr_bpie,
    bploc.address1 AS lbr_bpaddress1,
    bploc.address2 AS lbr_bpaddress2,
    bploc.address3 AS lbr_bpaddress3,
    bploc.address4 AS lbr_bpaddress4,
    bploc.city AS lbr_bpcity,
    bploc.postal AS lbr_bppostal,
    r.name AS lbr_bpregion,
    bp.name AS bpname,
    bpl.c_bpartner_location_id,
    NULL::character varying AS lbr_bpphone,
    bp.lbr_suframa AS lbr_bpsuframa,
    bpcity.lbr_citycode AS bpcitycode,
    bpcountry.lbr_countrycode AS bpcountrycode,
    NULL::numeric AS line,
    NULL::numeric AS lbr_notafiscalline_id,
    NULL::numeric AS lbr_cfop_id,
    NULL::numeric AS m_product_id,
    NULL::numeric AS lbr_ncm_id,
    NULL::numeric AS c_uom_id,
    ''::character varying AS productvalue,
    ''::character varying AS productname,
    NULL::character varying AS lbr_cfopname,
    NULL::character varying AS lbr_ncmname,
    NULL::character varying AS lbr_uomname,
    NULL::character varying AS lbr_uomdescription,
    NULL::character varying AS upc,
    NULL::character varying AS lbr_itemtypebr,
    NULL::character varying AS productncm,
    NULL::character varying AS productuom,
    'Y'::bpchar AS lbr_isservice,
    NULL::numeric AS price,
    NULL::numeric AS qty,
    NULL::numeric AS lbr_nfdi_id,
    NULL::numeric AS linenetamt,
    NULL::numeric AS linetotalamt,
    NULL::numeric AS icms_taxbaseamt,
    NULL::numeric AS icms_taxbase,
    NULL::numeric AS icms_taxrate,
    NULL::numeric AS icms_taxamt,
    NULL::text AS icms_taxstatus,
    NULL::numeric AS pis_taxbaseamt,
    NULL::numeric AS pis_taxbase,
    NULL::numeric AS pis_taxrate,
    NULL::numeric AS pis_taxamt,
    NULL::character varying AS pis_taxstatus,
    NULL::numeric AS cofins_taxbaseamt,
    NULL::numeric AS cofins_taxbase,
    NULL::numeric AS cofins_taxrate,
    NULL::numeric AS cofins_taxamt,
    NULL::character varying AS cofins_taxstatus,
    NULL::numeric AS icmsst_taxbaseamt,
    NULL::numeric AS icmsst_taxbase,
    NULL::numeric AS icmsst_taxrate,
    NULL::numeric AS icmsst_taxamt,
    NULL::text AS icmsst_taxstatus,
    NULL::numeric AS ipi_taxbaseamt,
    NULL::numeric AS ipi_taxrate,
    NULL::numeric AS ipi_taxamt,
    NULL::character varying AS ipi_taxstatus,
    NULL::numeric AS ii_taxbaseamt,
    NULL::numeric AS ii_taxrate,
    NULL::numeric AS ii_taxamt
   FROM c_bpartner bp
     LEFT JOIN c_bpartner_location bpl ON bpl.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN c_location bploc ON bploc.c_location_id = bpl.c_location_id
     LEFT JOIN c_city bpcity ON bpcity.c_city_id = bploc.c_city_id
     LEFT JOIN c_country bpcountry ON bpcountry.c_country_id = bploc.c_country_id
     LEFT JOIN c_region r ON r.c_region_id = bploc.c_region_id
     JOIN lbr_salescardtotal card ON card.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN c_period p ON p.c_period_id = card.c_period_id;

SELECT Register_Migration_Script ('202012091600_Fix_LBR_FactFiscalBase.sql') FROM DUAL
;
