-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 4 de set de 2020 19:30:06 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2020-09-04 19:30:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReProcessOrder','Y',1120012,'LBR_ReProcessOrder',TO_TIMESTAMP('2020-09-04 19:30:05','YYYY-MM-DD HH24:MI:SS'),100,'N','9db53d79-55c9-4be4-9117-0a213de4bc20','W',1120365,1120212,'@DocStatus@=DR | @DocStatus@=IP',20)
;

-- 4 de set de 2020 19:30:38 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2020-09-04 19:30:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ReProcessOrder','Y',1120013,'LBR_ReProcessOrder',TO_TIMESTAMP('2020-09-04 19:30:37','YYYY-MM-DD HH24:MI:SS'),100,'N','86d34618-0434-43c0-a841-c0ff0b7ebef7','W',1120371,1120212,'@DocStatus@=DR | @DocStatus@=IP',20)
;

SELECT Register_Migration_Script ('202009041900_ReProcessOtherInOut.sql') FROM DUAL
;