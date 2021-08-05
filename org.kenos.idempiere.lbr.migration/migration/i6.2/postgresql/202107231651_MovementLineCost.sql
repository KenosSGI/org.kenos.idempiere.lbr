-- 23 de jul de 2021 16:50:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133738,0,'Current Cost Price','The currently used cost price',324,'CurrentCostPrice','0',22,'N','N','N','N','N',0,'N',37,0,0,'Y',TO_TIMESTAMP('2021-07-23 16:50:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-23 16:50:03','YYYY-MM-DD HH24:MI:SS'),100,1394,'Y','N','LBRA','N','N','N','Y','4e49c8cb-7d4d-41f9-aa9a-5d824160bf97','Y',0,'N','N','N')
;

-- 23 de jul de 2021 16:50:06 BRT
ALTER TABLE M_MovementLine ADD COLUMN CurrentCostPrice NUMERIC DEFAULT '0' 
;

-- 23 de jul de 2021 16:50:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131635,'Current Cost Price','The currently used cost price',260,1133738,'Y',22,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2021-07-23 16:50:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-07-23 16:50:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9ae31dc3-b847-4630-8ae5-29ae1cebfb5f','Y',180,2)
;

-- 23 de jul de 2021 16:50:40 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-23 16:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2731
;

-- 23 de jul de 2021 16:50:40 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-23 16:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2732
;

-- 23 de jul de 2021 16:50:40 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-23 16:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131635
;

-- 23 de jul de 2021 16:50:40 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2021-07-23 16:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204930
;

-- 5 de ago de 2021 09:42:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123388,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:42:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:42:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_Ref_MovementLine_ID','LBR_Ref_MovementLine_ID','LBR_Ref_MovementLine_ID','LBRA','f4d26dde-6179-44cf-812a-85b53c2d2335')
;

-- 5 de ago de 2021 09:43:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133739,0,'LBR_Ref_MovementLine_ID',324,'LBR_Ref_MovementLine_ID',10,'N','N','N','N','N',0,'N',18,53284,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:43:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:43:09','YYYY-MM-DD HH24:MI:SS'),100,1123388,'Y','N','LBRA','N','N','N','Y','49d6ca3c-30a3-4aff-b164-8f6da7d6ad09','Y',0,'N','N','N')
;

-- 5 de ago de 2021 09:43:16 BRT
UPDATE AD_Column SET FKConstraintName='LBRRefMovementLine_MMovementLi', FKConstraintType='N',Updated=TO_TIMESTAMP('2021-08-05 09:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133739
;

-- 5 de ago de 2021 09:43:16 BRT
ALTER TABLE M_MovementLine ADD COLUMN LBR_Ref_MovementLine_ID NUMERIC(10) DEFAULT NULL 
;

-- 5 de ago de 2021 09:43:16 BRT
ALTER TABLE M_MovementLine ADD CONSTRAINT LBRRefMovementLine_MMovementLi FOREIGN KEY (LBR_Ref_MovementLine_ID) REFERENCES m_movementline(m_movementline_id) DEFERRABLE INITIALLY DEFERRED
;

-- 5 de ago de 2021 09:43:34 BRT
UPDATE AD_Column SET IsAllowLogging='N', IsAllowCopy='N',Updated=TO_TIMESTAMP('2021-08-05 09:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133739
;

-- 5 de ago de 2021 09:50:46 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120298,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:50:46','YYYY-MM-DD HH24:MI:SS'),100,'Create Return Material','Creates a return document of a material stored in 3rd party warehouse','N','LBR_CreateReturnMov','N','org.kenos.idempiere.lbr.nfe.process.CreateReturnMov','3','LBRA',0,0,'N','N','Y','N','4d1494d5-af2f-45cc-bfd7-c8a767a9b23e','P')
;

-- 5 de ago de 2021 09:52:53 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120205,'C_DocType RM of Storage Outside Company ','C_DocType Return Material of Storage Outside Company ','S','C_DocType.LBR_DocBaseType=''MMSA+''',0,0,'Y',TO_TIMESTAMP('2021-08-05 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:52:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','467d480f-5bf7-4368-bd7c-ddb70b668c91')
;

-- 5 de ago de 2021 09:53:21 BRT
UPDATE AD_Val_Rule SET Name='C_DocType RM of Storage Outside Company',Updated=TO_TIMESTAMP('2021-08-05 09:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120205
;

-- 5 de ago de 2021 09:53:25 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Process_Para_UU,IsEncrypted) VALUES (1120576,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:53:24','YYYY-MM-DD HH24:MI:SS'),100,'C_DocType_ID',1120298,10,19,170,'N',1120205,0,'N','C_DocType_ID','N','LBRA','b52bb891-b016-442d-ac54-9bc2bf558eba','N')
;

-- 5 de ago de 2021 09:53:34 BRT
UPDATE AD_Process_Para SET Name='Document Type', Description='Document type or rules', Help='The Document Type determines document sequence and processing rules', ColumnName='C_DocType_ID', IsCentrallyMaintained='Y', AD_Element_ID=196,Updated=TO_TIMESTAMP('2021-08-05 09:53:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120576
;

-- 5 de ago de 2021 09:53:43 BRT
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2021-08-05 09:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120576
;

-- 5 de ago de 2021 09:54:54 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU,AllowMultipleExecution) VALUES (1120299,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:54:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:54:54','YYYY-MM-DD HH24:MI:SS'),100,'Create Transfer Material In','Creates a transfer document to complete the transfer from transit warehouse','N','LBR_CreateTransferIn','N','org.kenos.idempiere.lbr.nfe.process.CreateReturnMov','3','LBRA',0,0,'N','N','Y','N','d07dd5b3-2c97-4ecd-aa74-9ea56a4eeed2','P')
;

-- 5 de ago de 2021 09:55:30 BRT
UPDATE AD_Val_Rule SET Code='C_DocType.LBR_DocBaseType=''MMEA+''',Updated=TO_TIMESTAMP('2021-08-05 09:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120205
;

-- 5 de ago de 2021 09:56:15 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120206,'C_DocType RM of Transfer','C_DocType Return Material of Storage Outside Company ','S','C_DocType.LBR_DocBaseType=''MMET+''',0,0,'Y',TO_TIMESTAMP('2021-08-05 09:56:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:56:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','1fb1a4fd-ebfa-4079-89bf-b36507a6054b')
;

-- 5 de ago de 2021 09:57:09 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120577,0,0,'Y',TO_TIMESTAMP('2021-08-05 09:57:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:57:09','YYYY-MM-DD HH24:MI:SS'),100,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120299,10,18,170,'N',1120206,0,'Y','C_DocType_ID','Y','LBRA',196,'dd5b6f2f-10dd-48c7-93ff-d51c6127c2d1','N')
;

-- 5 de ago de 2021 09:57:23 BRT
UPDATE AD_Val_Rule SET Name='C_DocType MM of Storage Outside Company',Updated=TO_TIMESTAMP('2021-08-05 09:57:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120205
;

-- 5 de ago de 2021 09:57:28 BRT
UPDATE AD_Val_Rule SET Name='C_DocType MM of Transfer',Updated=TO_TIMESTAMP('2021-08-05 09:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120206
;

-- 5 de ago de 2021 09:59:02 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120207,'M_Locator of Related BP','Locator from selected Organization','S','M_Locator.AD_Org_ID=@AD_Org_ID@',0,0,'Y',TO_TIMESTAMP('2021-08-05 09:59:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 09:59:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5ddb094b-4664-4a07-a200-a221b4edec83')
;

-- 5 de ago de 2021 10:05:56 BRT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT 1 FROM M_Warehouse w 
WHERE w.M_Warehouse_ID=M_Locator.M_Warehouse_ID 
AND w.IsInTransit=''N'' 
AND w.LBR_WarehouseType=''OWN'' 
AND M_Locator.AD_Org_ID IN (SELECT bp.AD_OrgBP_ID 
FROM C_BPartner bp WHERE bp.C_BPartner_ID=@C_BPartner_ID@))',Updated=TO_TIMESTAMP('2021-08-05 10:05:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120207
;

-- 5 de ago de 2021 10:06:07 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120578,0,0,'Y',TO_TIMESTAMP('2021-08-05 10:06:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2021-08-05 10:06:07','YYYY-MM-DD HH24:MI:SS'),100,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120299,20,18,191,'N',1120207,0,'N','M_Locator_ID','Y','LBRA',448,'ca234e36-8c0b-4e54-92db-2cb9d5022ed4','N')
;

-- 5 de ago de 2021 10:08:47 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2021-08-05 10:08:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateReturnMov','Y',1120021,'LBR_CreateReturnMov',TO_TIMESTAMP('2021-08-05 10:08:46','YYYY-MM-DD HH24:MI:SS'),100,'N','ee863960-80a5-456b-aa48-a06e88a3a23e','W',259,1120298,'@SQL=SELECT 1 FROM C_DocType dt, M_Movement m WHERE dt.lbr_DocBaseType=''MMSA-'' AND dt.C_DocType_ID=m.C_DocType_ID AND m.M_Movement_ID=@M_Movement_ID@ AND m.DocStatus IN (''CL'', ''CO'')',20)
;

-- 5 de ago de 2021 10:09:11 BRT
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,"action",AD_Tab_ID,AD_Process_ID,DisplayLogic,SeqNo) VALUES (0,0,TO_TIMESTAMP('2021-08-05 10:09:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CreateReturnMov','Y',1120022,'LBR_CreateTransferIn',TO_TIMESTAMP('2021-08-05 10:09:11','YYYY-MM-DD HH24:MI:SS'),100,'N','2966debf-e622-4ae1-b3a0-6383f7fb5fff','W',259,1120299,'@SQL=SELECT 1 FROM C_DocType dt, M_Movement m WHERE dt.lbr_DocBaseType=''MMST-'' AND dt.C_DocType_ID=m.C_DocType_ID AND m.M_Movement_ID=@M_Movement_ID@ AND m.DocStatus IN (''CL'', ''CO'')',20)
;

-- 5 de ago de 2021 10:09:24 BRT
UPDATE AD_ToolBarButton SET SeqNo=30,Updated=TO_TIMESTAMP('2021-08-05 10:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ToolBarButton_ID=1120022
;

-- 5 de ago de 2021 09:43:34 BRT
SELECT Register_Migration_Script ('202107231651_MovementLineCost.sql') FROM DUAL
;

