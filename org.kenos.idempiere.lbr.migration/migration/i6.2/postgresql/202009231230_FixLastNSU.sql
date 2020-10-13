-- 23 de set de 2020 11:33:07 BRT
UPDATE AD_ViewComponent SET FromClause='FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), COALESCE (cfg.Value, MAX(CAST (nsu.LBR_NSU AS INT)))) 
          FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu, (SELECT MAX(CAST (Value AS INT)) AS Value FROM AD_SysConfig WHERE Name=''LBR_DFE_LAST_NSU'') cfg 
         WHERE nsu.LBR_NSU IS NOT NULL 
           AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID
      GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID, cfg.Value) s (AD_Client_ID, AD_Org_ID, ID)',Updated=TO_TIMESTAMP('2020-09-23 11:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120010
;

-- 23 de set de 2020 11:33:11 BRT
CREATE OR REPLACE VIEW LBR_MissingNSU(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_FixMissingNSU, DateDoc) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, CAST ('Y' AS TEXT) AS IsActive, LPAD (CAST (s.ID AS TEXT), 15, '0') AS LBR_NSU, CAST ('N' AS TEXT) AS LBR_FixMissingNSU, CAST (NULL AS TIMESTAMP) AS DateDoc FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), COALESCE (cfg.Value, MAX(CAST (nsu.LBR_NSU AS INT)))) FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu, (SELECT MAX(CAST (Value AS INT)) AS Value FROM AD_SysConfig WHERE Name='LBR_DFE_LAST_NSU') cfg WHERE nsu.LBR_NSU IS NOT NULL AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID, cfg.Value) s (AD_Client_ID, AD_Org_ID, ID) WHERE NOT EXISTS (SELECT 1 FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID AND CAST (nsu.LBR_NSU AS INT)=s.ID)
;

-- 23 de set de 2020 11:37:43 BRT
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2020-09-23 11:37:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120510
;

SELECT Register_Migration_Script ('202009231230_FixLastNSU.sql') FROM DUAL
;
