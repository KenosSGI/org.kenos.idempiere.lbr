SET SQLBLANKLINES ON
SET DEFINE OFF

CREATE OR REPLACE VIEW RV_ProductionCost AS
WITH prod_cost AS ( SELECT SUM (CASE WHEN pl.IsEndProduct<>'Y' THEN ocust.CurrentCostPrice*pl.QtyUsed ELSE 0 END) AS AvgCost, 
SUM (CASE WHEN pl.IsEndProduct='Y' THEN pl.MovementQty ELSE 0 END) AS ProductionQty, ocust.M_CostElement_ID, p.M_Production_ID
FROM M_Production p
INNER JOIN M_ProductionLine pl ON (pl.M_Production_ID=p.M_Production_ID)
INNER JOIN M_Cost ocust ON (ocust.M_Product_ID=pl.M_Product_ID)
WHERE p.DocStatus IN ('CL','CO')
GROUP BY ocust.M_CostElement_ID, p.M_Production_ID )
SELECT p.AD_Client_ID, p.AD_Org_ID, prod_cost.M_CostElement_ID, p.M_Product_ID, TRUNC(p.MovementDate, 'MM') AS MovementDate, 
AVG(prod_cost.AvgCost) AS AvgCost, prod_cost.ProductionQty
FROM M_Production p
INNER JOIN prod_cost ON (prod_cost.M_Production_ID=p.M_Production_ID)
WHERE p.DocStatus IN ('CL','CO')
GROUP BY p.AD_Client_ID, p.AD_Org_ID, prod_cost.M_CostElement_ID, p.M_Product_ID, TRUNC(p.MovementDate, 'MM'), prod_cost.ProductionQty
;

SELECT Register_Migration_Script ('202208291703_RV_ProductionCost.sql') FROM DUAL
;
