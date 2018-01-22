INSERT INTO LBR_NFeWebService(lbr_nfewebservice_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, c_region_id, lbr_nfeenv, versionno, url, lbr_wstype, lbr_nfewebservice_uu)
  VALUES (1121675, 0, 0, 'Y', '2018-01-22 14:23:46.0', 100, '2018-01-22 14:23:46.0', 100, 'NFeDistribuicaoDFe', NULL, '1', '3.10', 'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx', '1', 'DC4D3EA8-AA29-493F-8643-503B0CB21A53')
;
INSERT INTO LBR_NFeWebService(lbr_nfewebservice_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, c_region_id, lbr_nfeenv, versionno, url, lbr_wstype, lbr_nfewebservice_uu)
  VALUES (1121676, 0, 0, 'Y', '2018-01-22 14:23:46.0', 100, '2018-01-22 14:23:46.0', 100, 'NFeDistribuicaoDFe', NULL, '2', '3.10', 'https://hom.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx', '1', '5D8109A1-448B-4B09-9C77-4B5C9FCDEB42')
;

SELECT Register_Migration_Script ('201801221800_WSDownloadNFe.sql') FROM DUAL
;
