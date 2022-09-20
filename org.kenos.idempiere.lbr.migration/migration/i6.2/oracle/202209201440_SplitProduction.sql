SET SQLBLANKLINES ON
SET DEFINE OFF

-- 20 de set de 2022 14:15:43 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2022-09-20 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129931
;

-- 20 de set de 2022 14:16:52 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2022-09-20 14:16:51','YYYY-MM-DD HH24:MI:SS'),100,'POGManage','Y',1120024,'POGManage',TO_DATE('2022-09-20 14:16:51','YYYY-MM-DD HH24:MI:SS'),100,'N','82471b50-9e0e-4d8f-a4c9-a66313dd0dda','W',53344,1120205,20)
;

-- 20 de set de 2022 14:17:51 BRT
UPDATE AD_ToolBarButton SET DisplayLogic='@DocStatus@=DR | @DocStatus@=IP',Updated=TO_DATE('2022-09-20 14:17:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=1120024
;

-- 20 de set de 2022 14:17:51 BRT
SELECT Register_Migration_Script ('202209201440_SplitProduction.sql') FROM DUAL
;