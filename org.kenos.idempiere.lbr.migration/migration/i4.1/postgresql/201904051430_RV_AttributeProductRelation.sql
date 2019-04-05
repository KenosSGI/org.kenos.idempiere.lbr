CREATE OR REPLACE VIEW RV_AttributeProductRelation AS
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM M_Transaction t 	WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0 UNION
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM M_InOutLine iol 	WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0 UNION
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM M_InventoryLine il 	WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0 UNION
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM C_OrderLine ol 		WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0 UNION
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM M_ProductionLine pl WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0 UNION
SELECT M_AttributeSetInstance_ID, M_Product_ID FROM C_InvoiceLine il 	WHERE M_AttributeSetInstance_ID>0 AND M_Product_ID>0
;

SELECT Register_Migration_Script ('201904051430_RV_AttributeProductRelation.sql') FROM DUAL
;

