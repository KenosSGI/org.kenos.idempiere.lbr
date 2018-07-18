SET SQLBLANKLINES ON
SET DEFINE OFF

-- Criação do relatório Detalhes de Inventário e Uso Interno
-- 28/06/2018 13h58min36s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120601,'Inventory Details','Physical and Internal Use Detail','RV_LBR_InventoryDetails',0,'3',0,0,'Y',TO_DATE('2018-06-28 13:58:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 13:58:35','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','N','L','N','Y','b8bcdd32-d8f2-43d4-9cf3-00434373c904','N','N','N','N')
;

-- 28/06/2018 13h58min36s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('RV_LBR_InventoryDetails',1000000,'N','N','Table RV_LBR_InventoryDetails','Y','Y',0,0,TO_DATE('2018-06-28 13:58:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 13:58:36','YYYY-MM-DD HH24:MI:SS'),100,1153601,'Y',1000000,1,200000,'1a10cda3-385a-4cb5-a550-e4d457b1561e')
;

-- 28/06/2018 14h0min38s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120003,'b76cf7c0-ff75-448f-a3e7-ecc366f7a44b',TO_DATE('2018-06-28 14:00:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Inventory Details',TO_DATE('2018-06-28 14:00:38','YYYY-MM-DD HH24:MI:SS'),100,1120601,10,'FROM M_Inventory i
LEFT JOIN M_InventoryLine il ON il.M_Inventory_ID = i.M_Inventory_ID
LEFT JOIN C_DocType dt ON dt.C_DocType_ID = i.C_DocType_ID')
;

-- 28/06/2018 14h1min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120264,'2fa55f6c-25cf-4690-a41f-ee2f72e2a15a',TO_DATE('2018-06-28 14:01:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:01','YYYY-MM-DD HH24:MI:SS'),100,1120003,'M_Inventory_ID','i.M_Inventory_ID',10)
;

-- 28/06/2018 14h1min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120265,'2197ed4d-a06a-4875-89e3-4e935dd7b3d8',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,1120003,'AD_Client_ID','i.AD_Client_ID',20)
;

-- 28/06/2018 14h1min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120266,'b36d3b91-af71-4183-9239-227b3c445138',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,1120003,'AD_Org_ID','i.AD_Org_ID',30)
;

-- 28/06/2018 14h1min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120267,'b5ecfe6b-e537-4717-9769-f35a0c828e70',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,1120003,'IsActive','i.IsActive',40)
;

-- 28/06/2018 14h1min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120268,'3cae7bd8-5d36-49c3-afc5-630c9aeb9cc7',TO_DATE('2018-06-28 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,1120003,'Created','SYSDATE',50)
;

-- 28/06/2018 14h1min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120269,'d7a1a1db-66db-4d67-ab9b-f7506ee4ce31',TO_DATE('2018-06-28 14:01:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:04','YYYY-MM-DD HH24:MI:SS'),100,1120003,'CreatedBy','i.CreatedBy',60)
;

-- 28/06/2018 14h1min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120270,'4e091963-ce0b-4ea3-92e0-14fd82fe7bf1',TO_DATE('2018-06-28 14:01:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:04','YYYY-MM-DD HH24:MI:SS'),100,1120003,'Updated','SYSDATE',70)
;

-- 28/06/2018 14h1min5s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120271,'c90cc212-5f9f-43e1-8447-b14665563b74',TO_DATE('2018-06-28 14:01:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:05','YYYY-MM-DD HH24:MI:SS'),100,1120003,'UpdatedBy','i.UpdatedBy',80)
;

-- 28/06/2018 14h1min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120272,'b10649c5-fa43-455d-963f-293513b37974',TO_DATE('2018-06-28 14:01:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:05','YYYY-MM-DD HH24:MI:SS'),100,1120003,'DocumentNo','i.DocumentNo',90)
;

-- 28/06/2018 14h1min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120273,'1264dcd7-07f7-4ef5-985b-21e9f8b6cfab',TO_DATE('2018-06-28 14:01:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:06','YYYY-MM-DD HH24:MI:SS'),100,1120003,'DocStatus','i.DocStatus',100)
;

-- 28/06/2018 14h1min7s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120274,'6842984b-c77b-4b7e-9213-a0ad7efa356c',TO_DATE('2018-06-28 14:01:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:06','YYYY-MM-DD HH24:MI:SS'),100,1120003,'DocSubTypeInv','dt.DocSubTypeInv',110)
;

-- 28/06/2018 14h1min8s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120275,'f835d044-0a78-4979-9664-eb4ec1c328cb',TO_DATE('2018-06-28 14:01:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:07','YYYY-MM-DD HH24:MI:SS'),100,1120003,'C_DocType_ID','i.C_DocType_ID',120)
;

-- 28/06/2018 14h1min8s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120276,'b73cc33e-a19c-40b7-a5b4-ba6ffbb0b7f3',TO_DATE('2018-06-28 14:01:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:08','YYYY-MM-DD HH24:MI:SS'),100,1120003,'InventoryType','il.InventoryType',130)
;

-- 28/06/2018 14h1min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120277,'f15880fa-1e90-4cb9-ae25-93780d565db5',TO_DATE('2018-06-28 14:01:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:08','YYYY-MM-DD HH24:MI:SS'),100,1120003,'MovementDate','i.MovementDate',140)
;

-- 28/06/2018 14h1min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120278,'362fe28e-c5f2-4bd4-9c0e-03a48bbfcc4b',TO_DATE('2018-06-28 14:01:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:09','YYYY-MM-DD HH24:MI:SS'),100,1120003,'M_Product_ID','il.M_Product_ID',150)
;

-- 28/06/2018 14h1min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120279,'cdac0d2e-b375-48c6-a547-7356e3c5e165',TO_DATE('2018-06-28 14:01:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:09','YYYY-MM-DD HH24:MI:SS'),100,1120003,'M_Warehouse_ID','i.M_Warehouse_ID',160)
;

-- 28/06/2018 14h1min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120280,'378a557b-f5df-47f9-9bfa-511eaeda21e9',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,1120003,'M_Locator_ID','il.M_Locator_ID',170)
;

-- 28/06/2018 14h1min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120281,'c7c21804-6ec1-49b8-a07a-c4aa818476eb',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,1120003,'M_AttributeSetInstance_ID','il.M_AttributeSetInstance_ID',180)
;

-- 28/06/2018 14h1min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120282,'7c58676f-8f7d-44a9-bb78-bf7b2df17bf6',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:10','YYYY-MM-DD HH24:MI:SS'),100,1120003,'QtyCount','il.QtyCount',190)
;

-- 28/06/2018 14h1min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120283,'7e883810-537f-4b1f-ac5d-30178a9bc24c',TO_DATE('2018-06-28 14:01:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:18','YYYY-MM-DD HH24:MI:SS'),100,1120003,'QtyBook','il.QtyBook',200)
;

-- 28/06/2018 14h1min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120284,'4411a415-a341-4f94-b34d-bb19a5adca27',TO_DATE('2018-06-28 14:01:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:18','YYYY-MM-DD HH24:MI:SS'),100,1120003,'QtyInternalUse','il.QtyInternalUse',210)
;

-- 28/06/2018 14h1min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120285,'e6e1087d-b3c4-4fac-9808-9c914beac4b9',TO_DATE('2018-06-28 14:01:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:21','YYYY-MM-DD HH24:MI:SS'),100,1120003,'Description','i.Description',220)
;

-- 28/06/2018 14h1min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120286,'5b527e41-7290-4e0a-aa2c-91e194f6d876',TO_DATE('2018-06-28 14:01:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:21','YYYY-MM-DD HH24:MI:SS'),100,1120003,'LineDescription','il.Description',230)
;

-- 28/06/2018 14h1min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120287,'e0006cbc-8a72-4e0b-85aa-0b0a21b92384',TO_DATE('2018-06-28 14:01:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-06-28 14:01:23','YYYY-MM-DD HH24:MI:SS'),100,1120003,'C_Charge_ID','il.C_Charge_ID',240)
;

-- 28/06/2018 14h2min12s BRT
CREATE OR REPLACE VIEW RV_LBR_InventoryDetails(M_Inventory_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, DocStatus, DocSubTypeInv, C_DocType_ID, InventoryType, MovementDate, M_Product_ID, M_Warehouse_ID, M_Locator_ID, M_AttributeSetInstance_ID, QtyCount, QtyBook, QtyInternalUse, Description, LineDescription, C_Charge_ID) AS SELECT i.M_Inventory_ID AS M_Inventory_ID, i.AD_Client_ID AS AD_Client_ID, i.AD_Org_ID AS AD_Org_ID, i.IsActive AS IsActive, i.Created AS Created, i.CreatedBy AS CreatedBy, i.Updated AS Updated, i.UpdatedBy AS UpdatedBy, i.DocumentNo AS DocumentNo, i.DocStatus AS DocStatus, dt.DocSubTypeInv AS DocSubTypeInv, i.C_DocType_ID AS C_DocType_ID, il.InventoryType AS InventoryType, i.MovementDate AS MovementDate, il.M_Product_ID AS M_Product_ID, i.M_Warehouse_ID AS M_Warehouse_ID, il.M_Locator_ID AS M_Locator_ID, il.M_AttributeSetInstance_ID AS M_AttributeSetInstance_ID, il.QtyCount AS QtyCount, il.QtyBook AS QtyBook, il.QtyInternalUse AS QtyInternalUse, i.Description AS Description, il.Description AS LineDescription, il.C_Charge_ID AS C_Charge_ID FROM M_Inventory i
LEFT JOIN M_InventoryLine il ON il.M_Inventory_ID = i.M_Inventory_ID
LEFT JOIN C_DocType dt ON dt.C_DocType_ID = i.C_DocType_ID
;

-- 28/06/2018 14h2min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130375,0.0,'Phys.Inventory','Parameters for a Physical Inventory','The Physical Inventory indicates a unique parameters for a physical inventory.',1120601,'M_Inventory_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,1027,'N','N','LBRA','N','2368eb20-0df0-4d13-96f8-a84445fd5240','N')
;

-- 28/06/2018 14h2min26s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130376,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120601,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','2e37b6c4-f440-43d4-a52b-b8e0f4d4d786','N','D')
;

-- 28/06/2018 14h2min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130377,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120601,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:26','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','d6c45317-ba17-4f1f-9e02-3d822521d244','N','D')
;

-- 28/06/2018 14h2min27s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130378,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120601,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-06-28 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','c2de8861-7020-4f72-b7f4-9bd2cf910021','N')
;

-- 28/06/2018 14h2min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130379,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120601,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-06-28 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:27','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','dc50df7b-cf79-414e-846d-8dec2bf00056','N')
;

-- 28/06/2018 14h2min28s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130380,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120601,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-06-28 14:02:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:28','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','2ab78a35-1728-413a-9e51-e0882e7d802f','N','D')
;

-- 28/06/2018 14h2min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130381,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120601,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-06-28 14:02:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:28','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','4932f30b-cb21-4da0-86f1-9cdf653e9efc','N')
;

-- 28/06/2018 14h2min29s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130382,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120601,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-06-28 14:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:29','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','6b9401ac-fe8f-48fc-8581-ffa7e5abdc4c','N','D')
;

-- 28/06/2018 14h2min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130383,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120601,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-06-28 14:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:29','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','85274860-e7e8-42e9-861c-25c8c495002c','N')
;

-- 28/06/2018 14h2min30s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130384,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120601,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2018-06-28 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,289,'N','N','LBRA','N','288882c7-f5cc-4b11-9d18-36479ba45521','N')
;

-- 28/06/2018 14h2min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130385,0.0,'Inv Sub Type','Inventory Sub Type','The Inventory Sub Type indicates the type of inventory this document refers to.  This field only appears when the Document Base Type is Material Physical Inventory.  The selection made here will determine which window must be used and which data in the lines is relevant for the document.  Internal Use inventory (based on Internal Used Quantity) or Physical Inventory (based on difference between Qty Counted vs Qty Book)',1120601,'DocSubTypeInv',2,'N','N','N','N','N','N',17,200068,0,0,'Y',TO_DATE('2018-06-28 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:30','YYYY-MM-DD HH24:MI:SS'),100,202506,'N','N','LBRA','N','7c91d7a5-c60d-4954-98e6-22366c8b8236','N')
;

-- 28/06/2018 14h2min31s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130386,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120601,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-06-28 14:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:31','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','6df6a451-3563-4a29-864a-9509515f9bcf','N')
;

-- 28/06/2018 14h2min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130387,0.0,'Inventory Type','Type of inventory difference','The type of inventory difference determines which account is used. The default is the Inventory Difference account defined for the warehouse.  Alternatively, you could select any charge.  This allows you to account for Internal Use or extraordinary inventory losses.',1120601,'InventoryType','D',1,'N','N','N','N','N','N',17,292,0,0,'Y',TO_DATE('2018-06-28 14:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:31','YYYY-MM-DD HH24:MI:SS'),100,2202,'N','N','LBRA','N','9b98b206-b85a-4528-b845-b3fb9b2d02bc','N')
;

-- 28/06/2018 14h2min32s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130388,0.0,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120601,'MovementDate',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-06-28 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,1037,'N','N','LBRA','N','1fc64d33-bdb2-4052-b8fd-ec504f7c70d1','N')
;

-- 28/06/2018 14h2min33s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130389,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120601,'M_Product_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-06-28 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:32','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','d7a00743-984b-4fa0-b5bb-d3bbcbdc631b','N')
;

-- 28/06/2018 14h2min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130390,0.0,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120601,'M_Warehouse_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-06-28 14:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:33','YYYY-MM-DD HH24:MI:SS'),100,459,'N','N','LBRA','N','72f71bae-5505-4f87-a495-a8602168d543','N')
;

-- 28/06/2018 14h2min34s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130391,0.0,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120601,'M_Locator_ID',10,'N','N','N','N','N','N',31,0,0,'Y',TO_DATE('2018-06-28 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,448,'N','N','LBRA','N','3e7057a7-afc6-4b91-b8a5-abacdbaf45df','N')
;

-- 28/06/2018 14h2min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130392,0.0,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120601,'M_AttributeSetInstance_ID',10,'N','N','N','N','N','N',35,0,0,'Y',TO_DATE('2018-06-28 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:34','YYYY-MM-DD HH24:MI:SS'),100,2019,'N','N','LBRA','N','4f9db067-fd1b-49f3-8744-99b8d5a21a45','N','N')
;

-- 28/06/2018 14h2min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130393,0.0,'Quantity count','Counted Quantity','The Quantity Count indicates the actual inventory count taken for a product in inventory',1120601,'QtyCount',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,1049,'N','N','LBRA','N','22030032-5bc4-4eda-895c-03c035d6f659','N')
;

-- 28/06/2018 14h2min35s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130394,0.0,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120601,'QtyBook',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,1048,'N','N','LBRA','N','3de66e61-9d19-4690-ae4a-5bf141c69990','N')
;

-- 28/06/2018 14h2min36s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130395,0.0,'Internal Use Qty','Internal Use Quantity removed from Inventory','Quantity of product inventory used internally (positive if taken out - negative if returned)',1120601,'QtyInternalUse',131089,'N','N','N','N','N','N',29,0,0,'Y',TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:35','YYYY-MM-DD HH24:MI:SS'),100,2654,'N','N','LBRA','N','d423c660-7825-4534-a5da-85a12c33a6c3','N')
;

-- 28/06/2018 14h2min39s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130396,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120601,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-06-28 14:02:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:36','YYYY-MM-DD HH24:MI:SS'),100,275,'N','Y','LBRA','N','24d07d09-1fd9-446f-9ac9-358e42ec66b3','N')
;

-- 28/06/2018 14h2min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130397,0.0,'Line Description','Description of the Line',1120601,'LineDescription',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-06-28 14:02:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:39','YYYY-MM-DD HH24:MI:SS'),100,2108,'N','N','LBRA','N','e1809473-e7e9-4420-86f1-898a800988c3','N')
;

-- 28/06/2018 14h2min40s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130398,0.0,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120601,'C_Charge_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-06-28 14:02:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:02:40','YYYY-MM-DD HH24:MI:SS'),100,968,'N','N','LBRA','N','72ab01c6-56a8-47a6-891f-7ef079c0607e','N')
;

-- 28/06/2018 14h5min48s BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,IsReport,Value,IsDirectPrint,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120218,0,0,'Y',TO_DATE('2018-06-28 14:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:05:48','YYYY-MM-DD HH24:MI:SS'),100,'Inventory Details','Physical and Internal Use Detail','Y','RV_LBR_InventoryDetails','N','3','LBRA',0,0,'N','N','Y','N','b3426bb9-1c70-4ace-8d5d-33b084816bad')
;

-- 28/06/2018 14h6min9s BRT
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType,AD_ReportView_UU) VALUES (1120038,0,0,'Y',TO_DATE('2018-06-28 14:06:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:06:08','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_InventoryDetails',1120601,'LBRA','ca9a4ce5-649f-401b-a3b9-0fa9c425b4bf')
;

-- 28/06/2018 14h6min54s BRT
UPDATE AD_Process SET AD_ReportView_ID=1120038,Updated=TO_DATE('2018-06-28 14:06:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120218
;

-- 28/06/2018 14h7min49s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120423,0,0,'Y',TO_DATE('2018-06-28 14:07:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:48','YYYY-MM-DD HH24:MI:SS'),100,'Inv Sub Type','Inventory Sub Type','The Inventory Sub Type indicates the type of inventory this document refers to.  This field only appears when the Document Base Type is Material Physical Inventory.  The selection made here will determine which window must be used and which data in the lines is relevant for the document.  Internal Use inventory (based on Internal Used Quantity) or Physical Inventory (based on difference between Qty Counted vs Qty Book)',1120218,10,17,200068,'N',0,'N','DocSubTypeInv','Y','LBRA',202506,'ed6596a5-9327-4aae-9768-f6d0e3ccfcf4','N')
;

-- 28/06/2018 14h7min49s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120424,0,0,'Y',TO_DATE('2018-06-28 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120218,20,30,162,'N',0,'N','M_Product_ID','Y','LBRA',454,'a0804bc2-79f1-480c-8519-0fc5de3ec5ec','N')
;

-- 28/06/2018 14h7min51s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120425,0,0,'Y',TO_DATE('2018-06-28 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:49','YYYY-MM-DD HH24:MI:SS'),100,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120218,30,15,'Y',0,'N','MovementDate','Y','LBRA',1037,'0358f658-208d-4589-90c5-2a8258283375','N')
;

-- 28/06/2018 14h7min51s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120426,0,0,'Y',TO_DATE('2018-06-28 14:07:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:51','YYYY-MM-DD HH24:MI:SS'),100,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120218,40,30,191,'N',0,'N','M_Locator_ID','Y','LBRA',448,'4d96a204-aa91-4a6f-9d4b-795e852bf030','N')
;

-- 28/06/2018 14h7min52s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120427,0,0,'Y',TO_DATE('2018-06-28 14:07:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:51','YYYY-MM-DD HH24:MI:SS'),100,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120218,50,19,'N',0,'N','M_Warehouse_ID','Y','LBRA',459,'47eab32a-9fb6-40f0-b4f1-5cf51fca0883','N')
;

-- 28/06/2018 14h7min52s BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120428,0,0,'Y',TO_DATE('2018-06-28 14:07:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:07:52','YYYY-MM-DD HH24:MI:SS'),100,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120218,60,19,'N',0,'N','C_Charge_ID','Y','LBRA',968,'9be9aeff-0452-4db0-b6ad-358ba72a45a0','N')
;

-- 28/06/2018 14h12min7s BRT
UPDATE AD_Process_Para SET DefaultValue='IU',Updated=TO_DATE('2018-06-28 14:12:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120423
;

-- 28/06/2018 14h16min25s BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120311,'RV_LBR_InventoryDetails','Physical and Internal Use Detail','R',0,0,'Y',TO_DATE('2018-06-28 14:16:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-06-28 14:16:24','YYYY-MM-DD HH24:MI:SS'),100,'N',1120218,'N','N','LBRA','Y','7cd15a6a-1309-4054-9ec8-1fdc0266c039')
;

-- 28/06/2018 14h16min25s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120311, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120311)
;

-- 17/07/2018 10h11min47s BRT
UPDATE AD_Process SET Help='With this report you can have details about your physical and internal use inventory.',Updated=TO_DATE('2018-07-17 10:11:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=2000005
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=229
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=477
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=181
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=484
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=179
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=503
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200064
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=479
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53253
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120311
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=426
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=537
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=292
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=545
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=504
;

-- 28/06/2018 14h18min51s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=515
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=229
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=477
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=181
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=484
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=179
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=503
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=200064
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=479
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120311
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53253
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=426
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=537
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=292
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=23, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=545
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=24, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=504
;

-- 28/06/2018 14h18min53s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=25, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=515
;

SELECT Register_Migration_Script ('201806281440_RV_LBR_InventoryDetails.sql') FROM DUAL
;
