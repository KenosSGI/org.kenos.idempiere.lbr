DROP VIEW RV_BOMLine;

CREATE OR REPLACE VIEW RV_BOMLine AS 

WITH RECURSIVE TR_BOMLine
(
    M_Product_ID,
	M_ProductBOM_ID,
	M_Product_BOM_ID,
    QtyBOM,
	Depth,
    Tree
)

AS 
(
    SELECT
        pb.M_Product_ID,
        pb.M_Product_ID AS M_ProductBOM_ID,
        0::NUMERIC AS M_Product_BOM_ID,
        1::NUMERIC AS QtyBOM,
        0 AS Depth,
        '' || pb.M_Product_ID AS Tree
        
    FROM
        M_Product pb 
    
    WHERE
        pb.IsBOM='Y'
        
    UNION ALL
    
    SELECT
        bl.M_Product_ID,
        bom.M_ProductBOM_ID AS M_ProductBOM_ID,
        bom.M_Product_BOM_ID,
        (bl.QtyBOM * bom.BOMQty) AS QtyBOM,
        (bl.Depth + 1) AS Depth,
        bl.Tree || '|' || bom.M_ProductBOM_ID AS Tree
        
    FROM
        M_Product_BOM bom,
        TR_BOMline bl 
        
    WHERE
        (bom.M_Product_ID = bl.M_ProductBOM_ID)
) 

SELECT
	bl.AD_Client_ID,
	bl.AD_Org_ID,
	bl.CreatedBy,
	bl.UpdatedBy,
	bl.Updated,
	bl.Created,
	t.M_Product_ID,
	bl.IsActive,
	bl.Description,
	t.M_ProductBOM_ID,
	bl.Line,
	t.QtyBOM,
	t.Depth,
    t.Tree
    
FROM
	TR_BOMline t 

INNER JOIN 
	M_Product_BOM bl 
	ON (t.M_Product_BOM_ID = bl.M_Product_BOM_ID)

;


SELECT Register_Migration_Script ('201809121130_RVBOMLine.sql') FROM DUAL
;
