-- 20 de jun de 2020 12:07:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131925,0,'MDFe Vehicle',319,'LBR_MDFeVehicle_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-06-20 12:07:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:07:32','YYYY-MM-DD HH24:MI:SS'),100,1121484,'N','N','LBRA','N','N','N','Y','ebb290e2-6cec-4286-a111-c8f7601447d9','Y',0,'N','N','N')
;

-- 20 de jun de 2020 12:07:38 BRT
UPDATE AD_Column SET FKConstraintName='LBRMDFeVehicle_MInOut', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-06-20 12:07:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131925
;

-- 20 de jun de 2020 12:07:38 BRT
ALTER TABLE M_InOut ADD COLUMN LBR_MDFeVehicle_ID NUMERIC(10) DEFAULT NULL 
;

-- 20 de jun de 2020 12:07:39 BRT
ALTER TABLE M_InOut ADD CONSTRAINT LBRMDFeVehicle_MInOut FOREIGN KEY (LBR_MDFeVehicle_ID) REFERENCES lbr_mdfevehicle(lbr_mdfevehicle_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20 de jun de 2020 12:08:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131926,0,'MDFe Driver',319,'LBR_MDFeDriver_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-06-20 12:08:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:08:04','YYYY-MM-DD HH24:MI:SS'),100,1121485,'N','N','LBRA','N','N','N','Y','0c711dfd-cb13-43e7-8ab3-405b8a862fa9','Y',0,'N','N','N')
;

-- 20 de jun de 2020 12:08:08 BRT
UPDATE AD_Column SET FKConstraintName='LBRMDFeDriver_MInOut', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-06-20 12:08:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131926
;

-- 20 de jun de 2020 12:08:08 BRT
ALTER TABLE M_InOut ADD COLUMN LBR_MDFeDriver_ID NUMERIC(10) DEFAULT NULL 
;

-- 20 de jun de 2020 12:08:08 BRT
ALTER TABLE M_InOut ADD CONSTRAINT LBRMDFeDriver_MInOut FOREIGN KEY (LBR_MDFeDriver_ID) REFERENCES lbr_mdfedriver(lbr_mdfedriver_id) DEFERRABLE INITIALLY DEFERRED
;

-- 20 de jun de 2020 12:10:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1131927,0,'BP Shipper License Plate','Defines the BP Shipper License Plate','Defines the BP Shipper License Plate',319,'lbr_BPShipperLicensePlate',11,'N','N','N','N','Y',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-06-20 12:10:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:10:45','YYYY-MM-DD HH24:MI:SS'),100,1000286,'Y','N','LBRA','N','N','N','Y','c4925772-9aed-4706-8112-ae2aea6ca9a1','Y',0,'N','N','N')
;

-- 20 de jun de 2020 12:12:10 BRT
UPDATE AD_Column SET VFormat='LLL-0A00-LL',Updated=TO_TIMESTAMP('2020-06-20 12:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131927
;

-- 20 de jun de 2020 12:12:15 BRT
ALTER TABLE M_InOut ADD COLUMN lbr_BPShipperLicensePlate VARCHAR(11) DEFAULT NULL 
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_Element SET Placeholder='XXX-9X99-UF',Updated=TO_TIMESTAMP('2020-06-20 12:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000286
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_Column SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99-UF' WHERE AD_Element_ID=1000286
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', AD_Element_ID=1000286 WHERE UPPER(ColumnName)='LBR_BPSHIPPERLICENSEPLATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99-UF' WHERE AD_Element_ID=1000286 AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99-UF' WHERE AD_Element_ID=1000286 AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:14:20 BRT
UPDATE AD_Field SET Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99-UF' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000286) AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:16:26 BRT
UPDATE AD_Column SET VFormat='LLL-0A00/LL',Updated=TO_TIMESTAMP('2020-06-20 12:16:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000730
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_Element SET Placeholder='XXX-9X99/UF',Updated=TO_TIMESTAMP('2020-06-20 12:16:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000286
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_Column SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99/UF' WHERE AD_Element_ID=1000286
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', AD_Element_ID=1000286 WHERE UPPER(ColumnName)='LBR_BPSHIPPERLICENSEPLATE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99/UF' WHERE AD_Element_ID=1000286 AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_InfoColumn SET ColumnName='lbr_BPShipperLicensePlate', Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99/UF' WHERE AD_Element_ID=1000286 AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:16:36 BRT
UPDATE AD_Field SET Name='BP Shipper License Plate', Description='Defines the BP Shipper License Plate', Help='Defines the BP Shipper License Plate', Placeholder='XXX-9X99/UF' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000286) AND IsCentrallyMaintained='Y'
;

-- 20 de jun de 2020 12:16:45 BRT
UPDATE AD_Column SET VFormat='LLL-0A00/LL',Updated=TO_TIMESTAMP('2020-06-20 12:16:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131927
;

-- 20 de jun de 2020 12:17:12 BRT
INSERT INTO t_alter_column values('m_inout','lbr_BPShipperLicensePlate','VARCHAR(11)',null,'NULL')
;

-- 20 de jun de 2020 12:17:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129367,'Customer NF Number','Number of the Customer NF','Number of the Customer NF',257,1001054,'Y',20,580,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-06-20 12:17:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:17:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3b3894a0-d5db-4b19-bf8c-5b450adfb8ff','Y',265,2)
;

-- 20 de jun de 2020 12:17:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129368,'MDFe Vehicle',257,1131925,'Y',10,590,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-06-20 12:17:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:17:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2f48fa8d-7f6a-48f6-b5ce-224683a39784','Y',275,2)
;

-- 20 de jun de 2020 12:17:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129369,'MDFe Driver',257,1131926,'Y',10,600,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-06-20 12:17:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:17:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','faabb31e-a90c-4a43-8fc3-40ec24b63311','Y',285,2)
;

-- 20 de jun de 2020 12:17:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1129370,'BP Shipper License Plate','Defines the BP Shipper License Plate','Defines the BP Shipper License Plate',257,1131927,'Y',11,610,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-06-20 12:17:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-06-20 12:17:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90cf901d-7ada-4083-85bb-9e1b3434be20','Y',295,2)
;

-- 20 de jun de 2020 12:19:10 BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:19:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129367
;

-- 20 de jun de 2020 12:19:30 BRT
UPDATE AD_Field SET SeqNo=212, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129368
;

-- 20 de jun de 2020 12:19:35 BRT
UPDATE AD_Field SET SeqNo=213, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:19:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129369
;

-- 20 de jun de 2020 12:19:43 BRT
UPDATE AD_Field SET SeqNo=214, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129370
;

-- 20 de jun de 2020 12:20:20 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129369
;

-- 20 de jun de 2020 12:22:56 BRT
UPDATE AD_Field SET DisplayLogic='@DeliveryViaRule@=D', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129368
;

-- 20 de jun de 2020 12:23:03 BRT
UPDATE AD_Field SET DisplayLogic='@DeliveryViaRule@=D', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129369
;

-- 20 de jun de 2020 12:23:19 BRT
UPDATE AD_Field SET DisplayLogic='@DeliveryViaRule@=S | @DeliveryViaRule@=D', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129370
;

-- 20 de jun de 2020 12:23:51 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-06-20 12:23:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129369
;

SELECT Register_Migration_Script ('202006201617_PlateAndDriverShipment.sql') FROM DUAL
;