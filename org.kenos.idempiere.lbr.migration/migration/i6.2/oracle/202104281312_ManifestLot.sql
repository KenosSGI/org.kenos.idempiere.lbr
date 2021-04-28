SET SQLBLANKLINES ON
SET DEFINE OFF

-- 28 de abr de 2021 12:22:35 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120569,0,0,'Y',TO_DATE('2021-04-28 12:22:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-28 12:22:35','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120161,5,17,'N',202,0,'N','AD_Org_ID','Y','LBRA',113,'d2f5ebdf-e6c9-475e-b474-f18c321f0928','N')
;

-- 28 de abr de 2021 12:23:18 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120570,0,0,'Y',TO_DATE('2021-04-28 12:23:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-28 12:23:17','YYYY-MM-DD HH24:MI:SS'),100,'NFe Environment',1120161,30,17,1100001,'N',0,'N','lbr_NFeEnv','Y','LBRA',1100011,'a5bc73ac-1604-4854-bb82-268a43db544b','N')
;

-- 28 de abr de 2021 12:25:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123386,0,0,'Y',TO_DATE('2021-04-28 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-28 12:24:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ManifestTries','Manifest Tries',NULL,NULL,'Manifest Tries','LBRA','412ab3ee-689b-42a8-9d02-340da5f8409f')
;

-- 28 de abr de 2021 12:25:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1133729,0,'Manifest Tries',1120461,'LBR_ManifestTries',1,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_DATE('2021-04-28 12:25:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-04-28 12:25:29','YYYY-MM-DD HH24:MI:SS'),100,1123386,'Y','N','LBRA','N','N','N','Y','82988561-08f5-4e63-9f8f-69d7cc5d52b8','Y',0,'N','N','N','N')
;

-- 28 de abr de 2021 12:25:59 BRT
UPDATE AD_Column SET IsAllowLogging='N', IsAllowCopy='N',Updated=TO_DATE('2021-04-28 12:25:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133729
;

-- 28 de abr de 2021 12:26:02 BRT
ALTER TABLE LBR_PartnerDFe ADD LBR_ManifestTries NUMBER(10) DEFAULT NULL 
;

-- 28 de abr de 2021 13:19:54 BRT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=130,Updated=TO_DATE('2021-04-28 13:19:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120569
;

-- 28 de abr de 2021 13:20:18 BRT
UPDATE AD_Process_Para SET DisplayLogic='@LBR_PartnerDFe_ID@!0',Updated=TO_DATE('2021-04-28 13:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120569
;

-- 28 de abr de 2021 13:20:24 BRT
UPDATE AD_Process_Para SET DisplayLogic='@LBR_PartnerDFe_ID@!0',Updated=TO_DATE('2021-04-28 13:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120570
;

-- 28 de abr de 2021 13:25:14 BRT
UPDATE AD_Process_Para SET AD_Reference_ID=19, DisplayLogic='@LBR_PartnerDFe_ID@=0',Updated=TO_DATE('2021-04-28 13:25:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120569
;

-- 28 de abr de 2021 13:25:17 BRT
UPDATE AD_Process_Para SET DisplayLogic='@LBR_PartnerDFe_ID@=0',Updated=TO_DATE('2021-04-28 13:25:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120570
;

-- 28 de abr de 2021 12:26:02 BRT
SELECT Register_Migration_Script ('202104281312_ManifestLot.sql') FROM DUAL
;
