CREATE OR REPLACE VIEW adempiere.rv_bomline
AS WITH RECURSIVE tr_bomline(m_product_id, m_productbom_id, m_product_bom_id, qtybom, depth, tree) AS (
         SELECT pb.m_product_id,
            pb.m_product_id AS m_productbom_id,
            0::numeric AS m_product_bom_id,
            1::numeric AS qtybom,
            0 AS depth,
            ''::text || pb.m_product_id AS tree,
            ''::text AS linetree
           FROM m_product pb
          WHERE pb.isbom = 'Y'::bpchar
        UNION ALL
         SELECT bl_1.m_product_id,
            bom.m_productbom_id,
            bom.m_product_bom_id,
            bl_1.qtybom * bom.bomqty AS qtybom,
            bl_1.depth + 1 AS depth,
            (bl_1.tree || '|'::text) || bom.m_productbom_id AS tree,
            (bl_1.linetree || '|'::text) || LPAD(bom.line::text, 4, '0') AS linetree
           FROM m_product_bom bom,
            tr_bomline bl_1
          WHERE bom.m_product_id = bl_1.m_productbom_id
        )
 SELECT bl.ad_client_id,
    bl.ad_org_id,
    bl.createdby,
    bl.updatedby,
    bl.updated,
    bl.created,
    t.m_product_id,
    bl.isactive,
    bl.description,
    t.m_productbom_id,
    bl.line,
    t.qtybom,
    t.depth,
    t.tree,
    t.linetree
   FROM tr_bomline t
     JOIN m_product_bom bl ON t.m_product_bom_id = bl.m_product_bom_id;

SELECT Register_Migration_Script ('202210031952_RV_BOMLine.sql') FROM DUAL
;