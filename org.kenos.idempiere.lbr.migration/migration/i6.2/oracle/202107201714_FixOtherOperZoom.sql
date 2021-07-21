SET SQLBLANKLINES ON
SET DEFINE OFF

-- Jul 20, 2021, 5:14:22 PM BRT
INSERT INTO AD_ZoomCondition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AD_ZoomCondition_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,SeqNo,WhereClause,Name,AD_ZoomCondition_UU) VALUES (0,0,259,1120164,1120000,TO_DATE('2021-07-20 17:14:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-07-20 17:14:22','YYYY-MM-DD HH24:MI:SS'),100,5,'EXISTS (SELECT 1 FROM C_DocType dt WHERE dt.C_DocType_ID=C_Order.C_DocTypeTarget_ID AND dt.LBR_IsSalesPurchaseOperation=''N'' AND dt.IsSOTrx=''N'')','Simple Order (Other In)','95f75f2c-0167-4518-b00b-4635b6547adb')
;

-- Jul 20, 2021, 5:14:48 PM BRT
INSERT INTO AD_ZoomCondition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AD_ZoomCondition_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy,SeqNo,WhereClause,Name,AD_ZoomCondition_UU) VALUES (0,0,259,1120163,1120001,TO_DATE('2021-07-20 17:14:48','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2021-07-20 17:14:48','YYYY-MM-DD HH24:MI:SS'),100,30,'EXISTS (SELECT 1 FROM C_DocType dt WHERE dt.C_DocType_ID=C_Order.C_DocTypeTarget_ID AND dt.LBR_IsSalesPurchaseOperation=''N'' AND dt.IsSOTrx=''Y'')','Simple Order (Other Out)','fc46ba8b-2df6-4f69-9db6-97d07e9da3de')
;

-- Jul 20, 2021, 5:14:48 PM BRT
SELECT Register_Migration_Script ('202107201714_FixOtherOperZoom.sql') FROM DUAL
;

