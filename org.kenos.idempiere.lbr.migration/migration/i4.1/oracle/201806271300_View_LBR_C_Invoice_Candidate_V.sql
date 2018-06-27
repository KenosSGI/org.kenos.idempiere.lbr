-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/06/2018 11h27min6s BRT
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120600,'Invoice Candidate','Invoice Candidate View defines which order ready to generate invoice','Invoice Candidate View defines which order ready to generate invoice. It is a invoice created specifically to IDempiereLBR','LBR_C_Invoice_Candidate_V',0,'3',0,0,'Y',TO_TIMESTAMP('2018-06-27 11:27:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 11:27:06','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','bed7a0c2-46eb-4e03-9e72-3c04cd8de2e7','N','N','N','N')
;

-- 27/06/2018 11h27min7s BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_C_Invoice_Candidate_V',1000000,'N','N','Table LBR_C_Invoice_Candidate_V','Y','Y',0,0,TO_TIMESTAMP('2018-06-27 11:27:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 11:27:06','YYYY-MM-DD HH24:MI:SS'),100,1153600,'Y',1000000,1,200000,'6dc64210-5b2d-407f-8012-f316f92ffa1d')
;

-- 27/06/2018 11h50min48s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,WhereClause,FromClause) VALUES (0,0,1120002,'d0ea8b64-3f7e-459f-92c4-9c562ad04016',TO_TIMESTAMP('2018-06-27 11:50:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Invoice Candidate',TO_TIMESTAMP('2018-06-27 11:50:48','YYYY-MM-DD HH24:MI:SS'),100,1120600,10,'WHERE (o.docstatus = ANY (ARRAY[''CO''::bpchar, ''CL''::bpchar, ''IP''::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
FROM c_doctype
WHERE c_doctype.docbasetype = ''SOO''::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY[''ON''::bpchar, ''OB''::bpchar, ''WR''::bpchar])))) AND l.qtyordered > l.qtyinvoiced AND (o.invoicerule = ''I''::bpchar OR o.invoicerule = ''O''::bpchar AND NOT (EXISTS ( SELECT 1
FROM c_orderline zz1
WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = ''D''::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = ''S''::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = ''S''::bpchar AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = ''D''::bpchar OR si.invoicefrequency = ''W''::bpchar OR si.invoicefrequency = ''T''::bpchar AND (trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday - 1) OR trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff + 14) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday + 14)) OR si.invoicefrequency = ''M''::bpchar AND trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying','FROM c_order o
JOIN c_orderline l ON o.c_order_id = l.c_order_id
JOIN c_bpartner bp ON o.c_bpartner_id = bp.c_bpartner_id
LEFT JOIN c_invoiceschedule si ON bp.c_invoiceschedule_id = si.c_invoiceschedule_id')
;

-- 27/06/2018 11h53min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120251,'0b48f5d8-2b50-4a0b-8b9d-b314be6fac65',TO_TIMESTAMP('2018-06-27 11:53:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:53:35','YYYY-MM-DD HH24:MI:SS'),100,1120002,'AD_Client_ID','o.AD_Client_ID',10)
;

-- 27/06/2018 11h54min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120252,'5ff04eb0-e656-44c2-8429-3dd4104ec137',TO_TIMESTAMP('2018-06-27 11:54:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:54:13','YYYY-MM-DD HH24:MI:SS'),100,1120002,'AD_Org_ID','o.AD_Org_ID',20)
;

-- 27/06/2018 11h55min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120253,'fc12d961-c029-43c7-9779-c6c46a9ad8e7',TO_TIMESTAMP('2018-06-27 11:55:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:55:01','YYYY-MM-DD HH24:MI:SS'),100,1120002,'Created','o.Created',30)
;

-- 27/06/2018 11h55min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120254,'4081bd8e-e8fb-46fb-820c-22d65a51a8c3',TO_TIMESTAMP('2018-06-27 11:55:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:55:12','YYYY-MM-DD HH24:MI:SS'),100,1120002,'CreatedBy','o.CreatedBy',40)
;

-- 27/06/2018 11h55min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120255,'cf3f1ea2-5ab9-4d03-bb5f-3f875e7aca0b',TO_TIMESTAMP('2018-06-27 11:55:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:55:22','YYYY-MM-DD HH24:MI:SS'),100,1120002,'Updated','o.Updated',50)
;

-- 27/06/2018 11h55min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120256,'e0a2033c-7800-472c-95b3-fffceb68d506',TO_TIMESTAMP('2018-06-27 11:55:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:55:33','YYYY-MM-DD HH24:MI:SS'),100,1120002,'UpdatedBy','o.UpdatedBy',60)
;

-- 27/06/2018 11h55min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120257,'f6b85d23-a56c-410f-a3be-855c8ebf9624',TO_TIMESTAMP('2018-06-27 11:55:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:55:56','YYYY-MM-DD HH24:MI:SS'),100,1120002,'IsActive','o.IsActive',70)
;

-- 27/06/2018 11h56min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120258,'8c679ace-8d58-4d59-b915-b3dfb1c15348',TO_TIMESTAMP('2018-06-27 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,1120002,'C_BPartner_ID','o.C_BPartner_ID',80)
;

-- 27/06/2018 11h56min48s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120259,'a40e3ca6-34f7-4d5a-a84f-21118104cc83',TO_TIMESTAMP('2018-06-27 11:56:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:56:48','YYYY-MM-DD HH24:MI:SS'),100,1120002,'C_Order_ID','o.C_Order_ID',90)
;

-- 27/06/2018 11h57min8s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120260,'d500a1e8-7f04-4aef-b61f-f71f9e2cd3f9',TO_TIMESTAMP('2018-06-27 11:57:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:57:08','YYYY-MM-DD HH24:MI:SS'),100,1120002,'DocumentNo','o.DocumentNo',100)
;

-- 27/06/2018 11h57min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120261,'7806eb1e-c46e-4448-896e-0d07ae4e0f04',TO_TIMESTAMP('2018-06-27 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,1120002,'DateOrdered','o.DateOrdered',110)
;

-- 27/06/2018 11h57min50s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120262,'399d276f-f4cf-4e90-b50e-a88433643341',TO_TIMESTAMP('2018-06-27 11:57:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:57:49','YYYY-MM-DD HH24:MI:SS'),100,1120002,'C_DocType_ID','o.C_DocType_ID',120)
;

-- 27/06/2018 11h58min49s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120263,'ba06e6e3-d948-4934-9a57-04c6cec5490d',TO_TIMESTAMP('2018-06-27 11:58:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2018-06-27 11:58:48','YYYY-MM-DD HH24:MI:SS'),100,1120002,'TotalLines','sum((l.QtyOrdered - l.QtyInvoiced) * l.PriceActual) AS TotalLines',130)
;

-- 27/06/2018 12h8min57s BRT
UPDATE AD_ViewComponent SET WhereClause='WHERE (o.docstatus = ANY (ARRAY[''CO''::bpchar, ''CL''::bpchar, ''IP''::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
           FROM c_doctype
          WHERE c_doctype.docbasetype = ''SOO''::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY[''ON''::bpchar, ''OB''::bpchar, ''WR''::bpchar])))) AND l.qtyordered > l.qtyinvoiced AND (o.invoicerule = ''I''::bpchar OR o.invoicerule = ''O''::bpchar AND NOT (EXISTS ( SELECT 1
           FROM c_orderline zz1
          WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = ''D''::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = ''S''::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = ''S''::bpchar 
AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = ''D''::bpchar OR si.invoicefrequency = ''W''::bpchar OR si.invoicefrequency = ''T''::bpchar 
AND (trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) 
AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday - 1) 
OR trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff + 14) 
AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday + 14)) 
OR si.invoicefrequency = ''M''::bpchar AND trunc(o.dateordered::timestamp with time zone) <= 
(firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= 
(firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday - 1)))',Updated=TO_TIMESTAMP('2018-06-27 12:08:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120002
;

-- 27/06/2018 12h10min3s BRT
UPDATE AD_ViewColumn SET ColumnSQL='sum((l.QtyOrdered - l.QtyInvoiced) * l.PriceActual)',Updated=TO_TIMESTAMP('2018-06-27 12:10:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120263
;

-- 27/06/2018 12h11min18s BRT
UPDATE AD_ViewComponent SET WhereClause='WHERE (o.docstatus = ANY (ARRAY[''CO''::bpchar, ''CL''::bpchar, ''IP''::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id
           FROM c_doctype
          WHERE c_doctype.docbasetype = ''SOO''::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY[''ON''::bpchar, ''OB''::bpchar, ''WR''::bpchar])))) AND l.qtyordered > l.qtyinvoiced AND (o.invoicerule = ''I''::bpchar OR o.invoicerule = ''O''::bpchar AND NOT (EXISTS ( SELECT 1
           FROM c_orderline zz1
          WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = ''D''::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = ''S''::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = ''S''::bpchar 
AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = ''D''::bpchar OR si.invoicefrequency = ''W''::bpchar OR si.invoicefrequency = ''T''::bpchar 
AND (trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) 
AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday - 1) 
OR trunc(o.dateordered::timestamp with time zone) <= (firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff + 14) 
AND trunc(getdate()) >= (firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday + 14)) 
OR si.invoicefrequency = ''M''::bpchar AND trunc(o.dateordered::timestamp with time zone) <= 
(firstof(getdate(), ''MM''::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(getdate()) >= 
(firstof(o.dateordered::timestamp with time zone, ''MM''::character varying)::timestamp with time zone + si.invoiceday - 1))) GROUP BY o.ad_client_id, o.ad_org_id, o.c_bpartner_id, o.c_order_id, o.documentno, o.dateordered, o.c_doctype_id',Updated=TO_TIMESTAMP('2018-06-27 12:11:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120002
;

-- 27/06/2018 12h11min29s BRT
CREATE OR REPLACE VIEW LBR_C_Invoice_Candidate_V(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, C_BPartner_ID, C_Order_ID, DocumentNo, DateOrdered, C_DocType_ID, TotalLines) AS SELECT o.AD_Client_ID AS AD_Client_ID, o.AD_Org_ID AS AD_Org_ID, o.Created AS Created, o.CreatedBy AS CreatedBy, o.Updated AS Updated, o.UpdatedBy AS UpdatedBy, o.IsActive AS IsActive, o.C_BPartner_ID AS C_BPartner_ID, o.C_Order_ID AS C_Order_ID, o.DocumentNo AS DocumentNo, o.DateOrdered AS DateOrdered, o.C_DocType_ID AS C_DocType_ID, sum((l.QtyOrdered - l.QtyInvoiced) * l.PriceActual) AS TotalLines FROM c_order o JOIN c_orderline l ON o.c_order_id = l.c_order_id JOIN c_bpartner bp ON o.c_bpartner_id = bp.c_bpartner_id LEFT JOIN c_invoiceschedule si ON bp.c_invoiceschedule_id = si.c_invoiceschedule_id WHERE (o.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar, 'IP'::bpchar])) AND (o.c_doctype_id IN ( SELECT c_doctype.c_doctype_id FROM c_doctype WHERE c_doctype.docbasetype = 'SOO'::bpchar AND (c_doctype.docsubtypeso <> ALL (ARRAY['ON'::bpchar, 'OB'::bpchar, 'WR'::bpchar])))) AND l.qtyordered > l.qtyinvoiced AND (o.invoicerule = 'I'::bpchar OR o.invoicerule = 'O'::bpchar AND NOT (EXISTS ( SELECT 1 FROM c_orderline zz1 WHERE zz1.c_order_id = o.c_order_id AND zz1.qtyordered <> zz1.qtydelivered)) OR o.invoicerule = 'D'::bpchar AND l.qtyinvoiced <> l.qtydelivered OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NULL OR o.invoicerule = 'S'::bpchar AND bp.c_invoiceschedule_id IS NOT NULL AND (si.invoicefrequency IS NULL OR si.invoicefrequency = 'D'::bpchar OR si.invoicefrequency = 'W'::bpchar OR si.invoicefrequency = 'T'::bpchar AND (trunc(o.dateordered::timestamp with time zone) <= (firstof(statement_timestamp(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(statement_timestamp()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday - 1) OR trunc(o.dateordered::timestamp with time zone) <= (firstof(statement_timestamp(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff + 14) AND trunc(statement_timestamp()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday + 14)) OR si.invoicefrequency = 'M'::bpchar AND trunc(o.dateordered::timestamp with time zone) <= (firstof(statement_timestamp(), 'MM'::character varying)::timestamp with time zone + si.invoicedaycutoff - 1) AND trunc(statement_timestamp()) >= (firstof(o.dateordered::timestamp with time zone, 'MM'::character varying)::timestamp with time zone + si.invoiceday - 1))) GROUP BY o.ad_client_id, o.ad_org_id, o.c_bpartner_id, o.c_order_id, o.documentno, o.dateordered, o.c_doctype_id
;

-- 27/06/2018 12h12min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130362,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120600,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:08','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','7077611f-dd78-40f0-a299-51c53e95147f','N','D')
;

-- 27/06/2018 12h12min9s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130363,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120600,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:09','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9eb23d67-7e95-4231-be78-19fec44c158e','N','D')
;

-- 27/06/2018 12h12min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130364,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120600,'Created','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:09','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','5712deaa-2db2-41dc-afa8-f94bbd69b0d2','N')
;

-- 27/06/2018 12h12min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130365,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120600,'CreatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:10','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','e384f741-1f9d-4b90-8af9-b8bc148b94f2','N','D')
;

-- 27/06/2018 12h12min10s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130366,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120600,'Updated','SYSDATE',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:10','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','ddc8796b-6404-4db6-a804-27c548f07ee3','N')
;

-- 27/06/2018 12h12min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130367,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120600,'UpdatedBy',10,'N','N','N','N','N','N',18,110,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','c95ac34b-3fd8-4e37-8243-31098266e93a','N','D')
;

-- 27/06/2018 12h12min11s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130368,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120600,'IsActive','Y',1,'N','N','N','N','N','N',20,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,348,'N','N','LBRA','N','1ffb186f-259e-4964-82ef-ad69a4a7ef26','N')
;

-- 27/06/2018 12h12min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130369,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120600,'C_BPartner_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:11','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N','60be677d-3680-4789-8196-74aad62fbea7','N')
;

-- 27/06/2018 12h12min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130370,0.0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120600,'C_Order_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,558,'N','N','LBRA','N','42bd7800-1248-421c-979a-cf2c4565438d','N','N')
;

-- 27/06/2018 12h12min12s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130371,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120600,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','3f026a4a-94c2-410b-85e3-4dd6b73ee38a','N')
;

-- 27/06/2018 12h12min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130372,0.0,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120600,'DateOrdered',29,'N','N','N','N','N','N',16,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:12','YYYY-MM-DD HH24:MI:SS'),100,268,'N','N','LBRA','N','6fe1c34e-c3cd-4a95-99c2-323466cd5651','N')
;

-- 27/06/2018 12h12min13s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130373,0.0,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120600,'C_DocType_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:13','YYYY-MM-DD HH24:MI:SS'),100,196,'N','N','LBRA','N','d700a2cd-b036-4994-9f30-9d4008755349','N')
;

-- 27/06/2018 12h12min14s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130374,0.0,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',1120600,'TotalLines',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_TIMESTAMP('2018-06-27 12:12:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-27 12:12:13','YYYY-MM-DD HH24:MI:SS'),100,598,'N','N','LBRA','N','7991ddb2-b5d8-49bd-a12b-0476a6966c7a','N')
;

SELECT Register_Migration_Script ('201806271300_View_LBR_C_Invoice_Candidate_V.sql') FROM DUAL
;