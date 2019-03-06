SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/02/2019 18h12min42s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120233,0,0,'Y',TO_DATE('2019-02-27 18:12:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-02-27 18:12:41','YYYY-MM-DD HH24:MI:SS'),100,'Movement To Production','Movement To Production','N','LBR_MovementToProduction','N','org.kenos.idempiere.lbr.base.process.MovementToProduction','3','LBRA',0,0,'N','N','Y','N','1b3e18bf-6d92-4c98-84f0-877878a69481')
;

-- 27/02/2019 18h13min55s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120467,0,0,'Y',TO_DATE('2019-02-27 18:13:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-02-27 18:13:55','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120233,10,19,'N',201,0,'N','C_DocType_ID','Y','LBRA',196,'1fd97ef2-4c66-46ab-8595-dc7de3422456','N')
;

-- 27/02/2019 18h14min59s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120468,0,0,'Y',TO_DATE('2019-02-27 18:14:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-02-27 18:14:58','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120233,20,19,'N',0,'N','M_Warehouse_ID','Y','LBRA',459,'1d308608-7d93-4cc2-8b7c-75e9e964908f','N')
;

-- 27/02/2019 18h16min44s BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2019-02-27 18:16:43','YYYY-MM-DD HH24:MI:SS'),100,'Movement To Production','Y',1120008,'Movement To Production',TO_DATE('2019-02-27 18:16:43','YYYY-MM-DD HH24:MI:SS'),100,'N','c24ed299-2015-4d5a-9be4-a883045e7268','W',53344,1120233,10)
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 28/02/2019 18h38min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (1131443,0,'Production','Plan for producing a product','The Production uniquely identifies a Production Plan',323,'M_Production_ID',10,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2019-02-28 18:38:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-02-28 18:38:06','YYYY-MM-DD HH24:MI:SS'),100,1032,'Y','N','LBRA','N','N','N','Y','e987db4d-4285-48a8-bd2e-e6876c63515d','Y',0,'N','N','N')
;

-- 28/02/2019 18h38min14s BRT
UPDATE AD_Column SET FKConstraintName='MProduction_MMovement', FKConstraintType='N',Updated=TO_DATE('2019-02-28 18:38:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131443
;

-- 28/02/2019 18h38min14s BRT
ALTER TABLE M_Movement ADD M_Production_ID NUMBER(10) DEFAULT NULL 
;

-- 28/02/2019 18h38min15s BRT
ALTER TABLE M_Movement ADD CONSTRAINT MProduction_MMovement FOREIGN KEY (M_Production_ID) REFERENCES m_production(m_production_id) DEFERRABLE INITIALLY DEFERRED
;

SELECT Register_Migration_Script ('201902281800_ProcMovementToProduction.sql') FROM DUAL
;