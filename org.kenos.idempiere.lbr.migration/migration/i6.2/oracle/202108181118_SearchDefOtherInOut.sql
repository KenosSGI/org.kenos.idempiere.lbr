SET SQLBLANKLINES ON
SET DEFINE OFF

-- 18 de ago de 2021 10:34:23 BRT
UPDATE AD_SearchDefinition SET Name='Pesquisa por Pedido Venda/Compra', Query='SELECT C_Order_ID FROM C_Order
WHERE (UPPER(DocumentNo) LIKE UPPER(''%'' || ?))
AND AD_Client_ID=@#AD_Client_ID@
AND EXISTS (SELECT 1 FROM C_DocType dt WHERE dt.C_DocType_ID=C_DocTypeTarget_ID
AND dt.LBR_IsSalesPurchaseOperation=''Y'')', SearchType='Q',Updated=TO_DATE('2021-08-18 10:34:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SearchDefinition_ID=1120001
;

-- 18 de ago de 2021 10:48:14 BRT
INSERT INTO AD_SearchDefinition (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SearchDefinition_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DataType,IsActive,Name,Query,SearchType,Updated,UpdatedBy,PO_Window_ID,IsDefault,AD_SearchDefinition_UU) VALUES (0,2169,0,1120006,259,1120163,TO_DATE('2021-08-18 10:48:13','YYYY-MM-DD HH24:MI:SS'),100,'S','Y','Pesquisa por Outras Saídas/Entradas','SELECT C_Order_ID FROM C_Order
WHERE (UPPER(DocumentNo) LIKE UPPER(''%'' || ? || ''%''))
AND AD_Client_ID=@#AD_Client_ID@
AND EXISTS (SELECT 1 FROM C_DocType dt WHERE dt.C_DocType_ID=C_DocTypeTarget_ID
AND dt.LBR_IsSalesPurchaseOperation=''N'')','Q',TO_DATE('2021-08-18 10:48:13','YYYY-MM-DD HH24:MI:SS'),100,1120164,'N','c4d1128c-07f7-4178-a444-f2ed9ac05baf')
;

-- 18 de ago de 2021 10:48:14 BRT
SELECT Register_Migration_Script ('202108181118_SearchDefOtherInOut.sql') FROM DUAL
;
