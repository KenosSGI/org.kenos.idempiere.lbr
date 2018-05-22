SET SQLBLANKLINES ON
SET DEFINE OFF

-- Campos DIFAL e FCP no Relatório de Detalhes de NF
-- 22/05/2018 11h55min29s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120001,'cf80d08c-7120-486f-a143-231b1c17e9c2',TO_DATE('2018-05-22 11:55:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Details',TO_DATE('2018-05-22 11:55:29','YYYY-MM-DD HH24:MI:SS'),100,1120566,10,'FROM LBR_NotaFiscalline nfl
LEFT JOIN LBR_NotaFiscal nf ON (nfl.LBR_NotaFiscal_ID=nf.LBR_NotaFiscal_ID)
LEFT JOIN LBR_NFLineTax_V icms ON (nfl.LBR_NotaFiscalLine_ID=icms.LBR_NotaFiscalLine_ID AND icms.TaxIndicator=''ICMS'')
LEFT JOIN LBR_NFLineTax_V pis ON (nfl.LBR_NotaFiscalLine_ID=pis.LBR_NotaFiscalLine_ID AND pis.TaxIndicator=''PIS'')
LEFT JOIN LBR_NFLineTax_V cofins ON (nfl.LBR_NotaFiscalLine_ID=cofins.LBR_NotaFiscalLine_ID AND cofins.TaxIndicator=''COFINS'')
LEFT JOIN LBR_NFLineTax_V ipi ON (nfl.LBR_NotaFiscalLine_ID=ipi.LBR_NotaFiscalLine_ID AND ipi.TaxIndicator=''IPI'')
LEFT JOIN LBR_NFLineTax_V icmsst ON (nfl.LBR_NotaFiscalLine_ID=icmsst.LBR_NotaFiscalLine_ID AND icmsst.TaxIndicator=''ICMSST'')
LEFT JOIN LBR_NFLineTax_V difal ON (nfl.LBR_NotaFiscalLine_ID=difal.LBR_NotaFiscalLine_ID AND difal.TaxIndicator=''ICMSDIFAL'')
LEFT JOIN LBR_NFLineTax_V difalo ON (nfl.LBR_NotaFiscalLine_ID=difalo.LBR_NotaFiscalLine_ID AND difalo.TaxIndicator=''ICMSDIFALORIG'')
LEFT JOIN LBR_NFLineTax_V fcp ON (nfl.LBR_NotaFiscalLine_ID=fcp.LBR_NotaFiscalLine_ID AND fcp.TaxIndicator=''FCP'')')
;

-- 22/05/2018 11h56min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120148,'d4c00780-5033-42c6-829a-3f33ee73cebc',TO_DATE('2018-05-22 11:56:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:08','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NotaFiscal_ID','nf.LBR_NotaFiscal_ID',10)
;

-- 22/05/2018 11h56min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120149,'b1c0566a-784e-40af-8904-db516a43219f',TO_DATE('2018-05-22 11:56:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:09','YYYY-MM-DD HH24:MI:SS'),100,1120001,'AD_Client_ID','nf.AD_Client_ID',20)
;

-- 22/05/2018 11h56min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120150,'1ad17e20-3699-4174-87a7-efebb0a106f3',TO_DATE('2018-05-22 11:56:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:09','YYYY-MM-DD HH24:MI:SS'),100,1120001,'AD_Org_ID','nf.AD_Org_ID',30)
;

-- 22/05/2018 11h56min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120151,'04ae2664-fec5-485b-961a-9bf458e1df7f',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IsActive','nfl.IsActive',40)
;

-- 22/05/2018 11h56min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120152,'92e73046-1ecb-4de3-b88f-2a66847a8f73',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Created','nfl.Created',50)
;

-- 22/05/2018 11h56min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120153,'e4caf05e-6f3b-4568-b09f-8b470792bc91',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:10','YYYY-MM-DD HH24:MI:SS'),100,1120001,'CreatedBy','nfl.CreatedBy',60)
;

-- 22/05/2018 11h56min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120154,'963c8d22-e42d-40a8-a16d-30c410f9c19c',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Updated','nfl.Updated',70)
;

-- 22/05/2018 11h56min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120155,'34691e20-246c-4158-ba64-10833b1cce60',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,1120001,'UpdatedBy','nfl.UpdatedBy',80)
;

-- 22/05/2018 11h56min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120156,'603d5272-dc2a-4bd2-a6f1-7aeff3daac51',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:11','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DocumentNo','nf.DocumentNo',90)
;

-- 22/05/2018 11h56min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120157,'cd095d1b-8e9e-47a9-971b-5b098e4a4679',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_BPartner_ID','nf.C_BPartner_ID',100)
;

-- 22/05/2018 11h56min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120158,'e6af4116-4486-4b11-a84c-0ba9552b031c',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_DocTypeTarget_ID','nf.C_DocTypeTarget_ID',110)
;

-- 22/05/2018 11h56min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120159,'ce0c45cb-6da0-4c2e-ac23-0173986927a6',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:12','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_Invoice_ID','nf.C_Invoice_ID',120)
;

-- 22/05/2018 11h56min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120160,'1306ba71-9d0a-46d6-8716-3c4274bfab3a',TO_DATE('2018-05-22 11:56:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:13','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_InvoiceLine_ID','nfl.C_InvoiceLine_ID',130)
;

-- 22/05/2018 11h56min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120161,'575b81ed-706e-4776-97c6-e283672a6e9f',TO_DATE('2018-05-22 11:56:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:13','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_Order_ID','nf.C_Order_ID',140)
;

-- 22/05/2018 11h56min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120162,'ac3e0d11-f4e0-4490-a9c2-ef2a7363f560',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,1120001,'C_UOM_ID','nfl.C_UOM_ID',150)
;

-- 22/05/2018 11h56min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120163,'064e73dd-609d-41e4-bf9c-e265f69d3aee',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,1120001,'COFINS_TaxAmt','cofins.LBR_TaxAmt',160)
;

-- 22/05/2018 11h56min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120164,'f392301d-0fe3-4b0d-936b-6bf83f308ae0',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:14','YYYY-MM-DD HH24:MI:SS'),100,1120001,'COFINS_TaxBase','cofins.LBR_TaxBase',170)
;

-- 22/05/2018 11h56min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120165,'dcf18b15-f3b0-4a11-a0fe-5c67cc512a49',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,1120001,'COFINS_TaxBaseAmt','cofins.LBR_TaxBaseAmt',180)
;

-- 22/05/2018 11h56min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120166,'4fad115f-9963-4946-b591-4df69f626a5c',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,1120001,'COFINS_TaxRate','cofins.LBR_TaxRate',190)
;

-- 22/05/2018 11h56min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120167,'f90597f4-00c3-4174-a73f-9148a6a54166',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:15','YYYY-MM-DD HH24:MI:SS'),100,1120001,'CSTCOFINS','cofins.CST',200)
;

-- 22/05/2018 11h56min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120168,'493149bc-808c-4523-9a4d-780aa04a6364',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,1120001,'CSTICMS','icms.CST',210)
;

-- 22/05/2018 11h56min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120169,'0ee7083e-7a9c-45ec-8417-509617b754e2',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,1120001,'CSTIPI','ipi.CST',220)
;

-- 22/05/2018 11h56min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120170,'28ca2716-f527-4f4a-8e8a-20a6923950ee',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:16','YYYY-MM-DD HH24:MI:SS'),100,1120001,'CSTPIS','pis.CST',230)
;

-- 22/05/2018 11h56min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120171,'1ea0cd56-031c-4040-b2db-085a5a032c31',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DateDoc','nf.DateDoc',240)
;

-- 22/05/2018 11h56min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120172,'c5a3d0ea-51a5-427b-9174-07ba7ab24e4d',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DateTrx','nf.DateTrx',250)
;

-- 22/05/2018 11h56min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120173,'e842a1e7-b0f9-4ba2-bdcf-36bef09932b8',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Description','nfl.Description',260)
;

-- 22/05/2018 11h56min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120174,'7dc5bd52-4c48-42c8-94ea-54d9d7b51d8f',TO_DATE('2018-05-22 11:56:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:18','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Discount','nfl.Discount',270)
;

-- 22/05/2018 11h56min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120175,'dd484e56-dbe2-40f2-92e9-c7401ffc7f86',TO_DATE('2018-05-22 11:56:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:18','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DiscountAmt','nfl.DiscountAmt',280)
;

-- 22/05/2018 11h56min19s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120176,'2b45ca89-e931-4117-93a1-3ca1e509c19e',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DocStatus','nf.DocStatus',290)
;

-- 22/05/2018 11h56min19s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120177,'ce9dfe75-1dd2-466b-89ed-a8dd7cf016da',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FCP_TaxAmt','fcp.LBR_TaxAmt',300)
;

-- 22/05/2018 11h56min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120178,'9ee8f71d-8339-4c6c-8685-08cf5a4eb982',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:19','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FCP_TaxBase','fcp.LBR_TaxBase',310)
;

-- 22/05/2018 11h56min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120179,'13b4c256-8219-45e9-9afb-e317c3f306a7',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FCP_TaxBaseAmt','fcp.LBR_TaxBaseAmt',320)
;

-- 22/05/2018 11h56min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120180,'ccb2a5c0-a747-4c44-b751-b1b8556875f2',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FCP_TaxRate','fcp.LBR_TaxRate',330)
;

-- 22/05/2018 11h56min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120181,'3f4ca751-7550-41d7-9a36-426a86e34991',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:20','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FCP_TaxStatus','fcp.CST',340)
;

-- 22/05/2018 11h56min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120182,'498eea9b-f52c-4b9a-a3f9-ac0a6466df78',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,1120001,'FreightAmt','nfl.FreightAmt',350)
;

-- 22/05/2018 11h56min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120183,'34902b90-a314-47c1-a1a5-5b56096ba4a7',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,1120001,'GrossRAmt','round(((nfl.linetotalAmt+COALESCE(icmsst.LBR_TaxAmt,0))+COALESCE(ipi.LBR_TaxAmt,0)),2)',360)
;

-- 22/05/2018 11h56min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120184,'1649d13d-3580-484e-9973-97bc61036b10',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:21','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMS_TaxAmt','icms.LBR_TaxAmt',370)
;

-- 22/05/2018 11h56min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120185,'f4485f04-3186-417a-9a60-8bc9391548d2',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMS_TaxBase','icms.LBR_TaxBase',380)
;

-- 22/05/2018 11h56min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120186,'b1485139-7f30-4a19-8e6d-e11069f517b9',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMS_TaxBaseAmt','icms.LBR_TaxBaseAmt',390)
;

-- 22/05/2018 11h56min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120187,'0d457224-7bc8-480a-a302-57bfb36b29ae',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:22','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMS_TaxRate','icms.LBR_TaxRate',400)
;

-- 22/05/2018 11h56min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120188,'3ba82132-3e9b-4b9b-9a2a-c3ad6f8cbe9f',TO_DATE('2018-05-22 11:56:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:23','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFAL_TaxAmt','difal.LBR_TaxAmt',410)
;

-- 22/05/2018 11h56min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120189,'28c7c7a5-68b3-4d61-9504-e1993b378352',TO_DATE('2018-05-22 11:56:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:23','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFAL_TaxBase','difal.LBR_TaxBase',420)
;

-- 22/05/2018 11h56min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120190,'da6d49aa-b729-4414-a566-35ef9cd8aa1a',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFAL_TaxBaseAmt','difal.LBR_TaxBaseAmt',430)
;

-- 22/05/2018 11h56min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120191,'93aaf49f-5745-460e-90e9-5abfd4e0f593',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFAL_TaxRate','difal.LBR_TaxRate',440)
;

-- 22/05/2018 11h56min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120192,'6ce3e0de-56c8-448b-bb5c-7a4ec9f49ec9',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFAL_TaxStatus','difal.CST',450)
;

-- 22/05/2018 11h56min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120193,'a2a4e25b-2021-4c81-be5e-f733f2f6b657',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFALO_TaxAmt','difalo.LBR_TaxAmt',460)
;

-- 22/05/2018 11h56min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120194,'497cdc45-d7f2-462d-9caa-f9d55f4d03f5',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFALO_TaxBase','difalo.LBR_TaxBase',470)
;

-- 22/05/2018 11h56min26s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120195,'f12f832d-82c1-46cb-8400-96ce7b9b84cb',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:25','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFALO_TaxBaseAmt','difalo.LBR_TaxBaseAmt',480)
;

-- 22/05/2018 11h56min26s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120196,'21c6a230-fec2-4f72-bafc-421ab7f415c1',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFALO_TaxRate','difalo.LBR_TaxRate',490)
;

-- 22/05/2018 11h56min26s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120197,'abbc2bbd-5ac4-4a81-ae25-f46fe7849566',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,1120001,'DIFALO_TaxStatus','difalo.CST',500)
;

-- 22/05/2018 11h56min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120198,'8d5b907b-7015-4915-aa94-2d91135be23d',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:26','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMSST_TaxAmt','icmsst.LBR_TaxAmt',510)
;

-- 22/05/2018 11h56min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120199,'e7483117-e4b6-4c06-8633-098c07cdf327',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMSST_TaxBase','icmsst.LBR_TaxBase',520)
;

-- 22/05/2018 11h56min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120200,'b37e1b41-b8b5-4d5d-be14-d064f3b0b526',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMSST_TaxBaseAmt','icmsst.LBR_TaxBaseAmt',530)
;

-- 22/05/2018 11h56min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120201,'1159b989-0de3-4732-9f18-a77c0cbe5988',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMSST_TaxRate','icmsst.LBR_TaxRate',540)
;

-- 22/05/2018 11h56min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120202,'ea20ccd5-2673-4d61-acd9-e5fb2b84e6db',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ICMSST_TaxStatus','icmsst.CST',550)
;

-- 22/05/2018 11h56min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120203,'7947a957-0b36-4760-85d5-796f473f27f2',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IPI_TaxAmt','ipi.LBR_TaxAmt',560)
;

-- 22/05/2018 11h56min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120204,'6ffcc194-1e86-4ea8-87b8-6044df400fce',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:28','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IPI_TaxBase','ipi.LBR_TaxBase',570)
;

-- 22/05/2018 11h56min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120205,'d406cc9b-a1f3-4c1a-bf33-7d887d3a8c13',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IPI_TaxBaseAmt','ipi.LBR_TaxBaseAmt',580)
;

-- 22/05/2018 11h56min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120206,'8d7ce01e-fa95-413a-8663-a6c0253991b9',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IPI_TaxRate','ipi.LBR_TaxRate',590)
;

-- 22/05/2018 11h56min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120207,'163c6396-2eec-4e5e-9720-7e588c79eaa6',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:29','YYYY-MM-DD HH24:MI:SS'),100,1120001,'IsCancelled','nf.IsCancelled',600)
;

-- 22/05/2018 11h56min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120208,'344581e6-9d30-48e9-a46e-0a002e2e08e8',TO_DATE('2018-05-22 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_CEST_ID','nfl.LBR_CEST_ID',610)
;

-- 22/05/2018 11h56min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120209,'bf27e047-ba29-4037-b80b-43ea57dbf7dc',TO_DATE('2018-05-22 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_CFOP_ID','nfl.LBR_CFOP_ID',620)
;

-- 22/05/2018 11h56min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120210,'56fcf52f-98b2-455e-bc32-8575aff68c43',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_CFOPNote','nf.LBR_CFOPNote',630)
;

-- 22/05/2018 11h56min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120211,'c8db2937-9f42-4c52-8141-3dc38c522bd7',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_FCIValue','nfl.LBR_FCIValue',640)
;

-- 22/05/2018 11h56min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120212,'78754743-b8f4-437f-88d0-1e323e700063',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:31','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_FinNFe','nf.LBR_FinNFe',650)
;

-- 22/05/2018 11h56min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120213,'92d3f2fc-1a80-40a3-96d7-51c0f6ea24d5',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_IndTot','nfl.LBR_IndTot',660)
;

-- 22/05/2018 11h56min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120214,'34a4fd33-f95c-4019-8c82-5e224534ee80',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_InsuranceAmt','nfl.LBR_InsuranceAmt',670)
;

-- 22/05/2018 11h56min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120215,'beba2126-d5de-401e-871c-1ce3c0604bbe',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:32','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_IsOwnDocument','nf.LBR_IsOwnDocument',680)
;

-- 22/05/2018 11h56min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120216,'f6bafbc1-de1e-4af7-9cff-4c3e1e6f494e',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_IsService','nfl.LBR_IsService',690)
;

-- 22/05/2018 11h56min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120217,'00099843-30d3-491c-a30b-f721fc62e8e8',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_LineTotalCIF','nfl.LBR_LineTotalCIF',700)
;

-- 22/05/2018 11h56min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120218,'70bff312-41bf-480d-895a-31e2a9490b23',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:33','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_LineTotalSISCOMEX','nfl.LBR_LineTotalSISCOMEX',710)
;

-- 22/05/2018 11h56min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120219,'41d87e4a-e896-4d96-90bf-5528317bee75',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NCM_ID','nfl.LBR_NCM_ID',720)
;

-- 22/05/2018 11h56min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120220,'1960e740-231f-427f-953a-fd0ce61ec087',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NFDI_ID','nfl.LBR_NFDI_ID',730)
;

-- 22/05/2018 11h56min35s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120221,'091935a1-80a7-4fa5-8cae-96a683ec8c45',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:34','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NFeEnv','nf.LBR_NFeEnv',740)
;

-- 22/05/2018 11h56min35s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120222,'456ff63e-a903-438f-8345-3e3d32353e6b',TO_DATE('2018-05-22 11:56:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:35','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NFeID','nf.LBR_NFeID',750)
;

-- 22/05/2018 11h56min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120223,'47534742-b7c3-44a9-a57b-6ee1b6ed1756',TO_DATE('2018-05-22 11:56:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:35','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NFeStatus','nf.LBR_NFeStatus',760)
;

-- 22/05/2018 11h56min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120224,'dbb6939b-3dd2-4593-939c-6027182eb0c4',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NotaFiscalLine_ID','nfl.LBR_NotaFiscalLine_ID',770)
;

-- 22/05/2018 11h56min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120225,'4db0fa7e-db0d-4b70-92be-e8061b4d98a8',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NumAdicao','nfl.LBR_NumAdicao',780)
;

-- 22/05/2018 11h56min37s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120226,'022f58ce-e0be-498d-b729-c6445c4caebe',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:36','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_NumSeqItem','nfl.LBR_NumSeqItem',790)
;

-- 22/05/2018 11h56min37s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120227,'25e38165-cd3d-409a-a0fe-58d3bdd0e972',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_OtherChargesAmt','nfl.LBR_OtherChargesAmt',800)
;

-- 22/05/2018 11h56min37s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120228,'7613ab04-b804-47a1-b946-fb2573f10bdb',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_ProductSource','nfl.LBR_ProductSource',810)
;

-- 22/05/2018 11h56min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120229,'c1435730-4b55-4b89-8630-22290bebb43d',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:37','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_ServiceTaxes','nfl.LBR_ServiceTaxes',820)
;

-- 22/05/2018 11h56min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120230,'e54ade0f-3826-4a62-9b99-93ee333ea114',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_TaxStatus','nfl.LBR_TaxStatus',830)
;

-- 22/05/2018 11h56min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120231,'ad5db9f9-1c7c-4c8a-b272-5efc0158d989',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_TaxStatusIPI','nfl.LBR_TaxStatusIPI',840)
;

-- 22/05/2018 11h56min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120232,'12731bf6-de26-4846-9297-45940248541e',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:38','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_TransactionType','nf.LBR_TransactionType',850)
;

-- 22/05/2018 11h56min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120233,'dd84b613-8313-4063-a3b7-d6f542847917',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LBR_UOMName','nfl.LBR_UOMName',860)
;

-- 22/05/2018 11h56min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120234,'ee3a3152-aeb6-42c1-9958-6f1bfa93093e',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Line','nfl.Line',870)
;

-- 22/05/2018 11h56min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120235,'8d8019b7-1998-48c4-9b43-ff640898b958',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:39','YYYY-MM-DD HH24:MI:SS'),100,1120001,'LineTotalAmt','nfl.LineTotalAmt',880)
;

-- 22/05/2018 11h56min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120236,'ed00436c-dbfb-422d-b2c1-8da511b7dd51',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,1120001,'M_InOut_ID ','nf.M_InOut_ID ',890)
;

-- 22/05/2018 11h56min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120237,'916df50f-d8aa-4754-9157-9d66f94e33b9',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,1120001,'M_Product_ID','nfl.M_Product_ID',900)
;

-- 22/05/2018 11h56min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120238,'aeb360c0-af17-41d6-bea5-60eefd83d43b',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:40','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Manufacturer','nfl.Manufacturer',910)
;

-- 22/05/2018 11h56min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120239,'cc847f92-b2f8-4afe-b8ad-ac1f630ef8db',TO_DATE('2018-05-22 11:56:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:41','YYYY-MM-DD HH24:MI:SS'),100,1120001,'PIS_TaxAmt','pis.LBR_TaxAmt',920)
;

-- 22/05/2018 11h56min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120240,'25a78866-6b72-451d-a526-196059c66d58',TO_DATE('2018-05-22 11:56:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:41','YYYY-MM-DD HH24:MI:SS'),100,1120001,'PIS_TaxBase','pis.LBR_TaxBase',930)
;

-- 22/05/2018 11h56min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120241,'b4a9e682-5986-4144-bf59-2b31d19cc19c',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,1120001,'PIS_TaxBaseAmt','pis.LBR_TaxBaseAmt',940)
;

-- 22/05/2018 11h56min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120242,'cc97e426-1681-4415-a53d-e5c5a7104212',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,1120001,'PIS_TaxRate','pis.LBR_TaxRate',950)
;

-- 22/05/2018 11h56min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120243,'10280d53-ac73-4c4d-b044-a117170e9840',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Price','nfl.Price',960)
;

-- 22/05/2018 11h56min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120244,'39661132-bd2b-4400-9b0c-d28520f85410',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,1120001,'PriceListAmt','nfl.PriceListAmt',970)
;

-- 22/05/2018 11h56min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120245,'b02dae9a-8d89-4fe9-a01a-51233d00423a',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ProductName','nfl.ProductName',980)
;

-- 22/05/2018 11h56min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120246,'22a58a13-3a0b-4ccc-8c80-5974c0ebe722',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,1120001,'ProductValue','nfl.ProductValue',990)
;

-- 22/05/2018 11h56min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120247,'0084f964-4f81-401c-8a60-2d0945a6ddd4',TO_DATE('2018-05-22 11:56:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:44','YYYY-MM-DD HH24:MI:SS'),100,1120001,'Qty','nfl.Qty',1000)
;

-- 22/05/2018 11h56min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120248,'382890a8-b15e-44e0-bcd1-9eb5b2f20ce3',TO_DATE('2018-05-22 11:56:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 11:56:44','YYYY-MM-DD HH24:MI:SS'),100,1120001,'VendorProductNo','nfl.VendorProductNo',1010)
;

-- 22/05/2018 11h57min42s BRT
UPDATE AD_ViewColumn SET ColumnSQL='ROUND(((nfl.LineTotalAmt+COALESCE(icmsst.LBR_TaxAmt,0))+COALESCE(ipi.LBR_TaxAmt,0)),2)',Updated=TO_DATE('2018-05-22 11:57:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120183
;

-- 22/05/2018 12h10min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130258,0.0,'FCP',1120566,'FCP_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,1122461,'N','N','LBRA','N','3eef0424-d019-46bb-b7cb-eb5af1405b8b','N','N')
;

-- 22/05/2018 12h10min17s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122463,0,0,'Y',TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,'fcp_taxbase','fcp_taxbase','fcp_taxbase','LBRA','1d34629e-adaf-4724-90ba-6638ee4776ca')
;

-- 22/05/2018 12h10min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130259,0.0,'fcp_taxbase',1120566,'fcp_taxbase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:16','YYYY-MM-DD HH24:MI:SS'),100,1122463,'N','N','LBRA','N','8ca5fb3b-6bd0-441d-8923-20b34eb0e3e1','N')
;

-- 22/05/2018 12h10min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130260,0.0,'FCP Base',1120566,'FCP_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,1122462,'N','N','LBRA','N','b2acb7fc-4f63-4660-a7e6-7a1a46787389','N','N')
;

-- 22/05/2018 12h10min18s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122464,0,0,'Y',TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,'fcp_taxrate','fcp_taxrate','fcp_taxrate','LBRA','1fbb224c-b9a0-46b5-b7f6-752608194c57')
;

-- 22/05/2018 12h10min18s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130261,0.0,'fcp_taxrate',1120566,'fcp_taxrate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:17','YYYY-MM-DD HH24:MI:SS'),100,1122464,'N','N','LBRA','N','9c9ed4ec-afef-4911-8966-55167da9dad4','N')
;

-- 22/05/2018 12h10min18s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122465,0,0,'Y',TO_DATE('2018-05-22 12:10:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:18','YYYY-MM-DD HH24:MI:SS'),100,'fcp_taxstatus','fcp_taxstatus','fcp_taxstatus','LBRA','6ae4cd59-7bc2-4611-bd24-0a2d49d92dd4')
;

-- 22/05/2018 12h10min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130262,0.0,'fcp_taxstatus',1120566,'fcp_taxstatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_DATE('2018-05-22 12:10:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:18','YYYY-MM-DD HH24:MI:SS'),100,1122465,'N','N','LBRA','N','9521873f-c213-4e79-8175-7797956cbcfe','N')
;

-- 22/05/2018 12h10min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130263,0.0,'Gross Amount','Gross Remuneration Amount','Gross Salary or Wage Amount (without Overtime, Benefits and Employer overhead)',1120566,'GrossRAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,2767,'N','N','LBRA','N','6119d06d-168c-4c80-9df4-41a3fa50c6e3','N')
;

-- 22/05/2018 12h10min19s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130264,0.0,'DIFAL',1120566,'DIFAL_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,1122457,'N','N','LBRA','N','695133a6-d0d3-4153-800c-0bb19fdcc67e','N','N')
;

-- 22/05/2018 12h10min20s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122466,0,0,'Y',TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,'difal_taxbase','difal_taxbase','difal_taxbase','LBRA','67a6499a-70b1-49f9-9b04-f184a2e8ac5a')
;

-- 22/05/2018 12h10min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130265,0.0,'difal_taxbase',1120566,'difal_taxbase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:19','YYYY-MM-DD HH24:MI:SS'),100,1122466,'N','N','LBRA','N','535b72a4-00df-4dd6-826d-f0fea0a367b6','N')
;

-- 22/05/2018 12h10min20s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130266,0.0,'DIFAL Base',1120566,'DIFAL_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,1122458,'N','N','LBRA','N','f0c355f3-7d79-4686-9750-23006e222a55','N','N')
;

-- 22/05/2018 12h10min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122467,0,0,'Y',TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,'difal_taxrate','difal_taxrate','difal_taxrate','LBRA','2271780d-b13d-4fc9-aa3e-65b8a5369b64')
;

-- 22/05/2018 12h10min21s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130267,0.0,'difal_taxrate',1120566,'difal_taxrate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:20','YYYY-MM-DD HH24:MI:SS'),100,1122467,'N','N','LBRA','N','b921b171-b87f-43e0-a13b-cca295dff4d0','N')
;

-- 22/05/2018 12h10min21s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122468,0,0,'Y',TO_DATE('2018-05-22 12:10:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:21','YYYY-MM-DD HH24:MI:SS'),100,'difal_taxstatus','difal_taxstatus','difal_taxstatus','LBRA','671bae5f-c6f3-474c-bf27-94d49545e63e')
;

-- 22/05/2018 12h10min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130268,0.0,'difal_taxstatus',1120566,'difal_taxstatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_DATE('2018-05-22 12:10:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:21','YYYY-MM-DD HH24:MI:SS'),100,1122468,'N','N','LBRA','N','11d7457a-6c44-4bf5-8765-e961ba754637','N')
;

-- 22/05/2018 12h10min22s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130269,0.0,'DIFALO',1120566,'DIFALO_TaxAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,1122459,'N','N','LBRA','N','9c44f0a9-45b0-49e3-9d30-7748b41c1433','N','N')
;

-- 22/05/2018 12h10min22s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122469,0,0,'Y',TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,'difalo_taxbase','difalo_taxbase','difalo_taxbase','LBRA','9b6197ae-558b-462a-b0a5-a8b4b714f476')
;

-- 22/05/2018 12h10min23s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130270,0.0,'difalo_taxbase',1120566,'difalo_taxbase',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,1122469,'N','N','LBRA','N','aa977110-a738-4ffa-91a6-a4847d1cf457','N')
;

-- 22/05/2018 12h10min23s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1130271,0.0,'DIFALO Base',1120566,'DIFALO_TaxBaseAmt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,1122460,'N','N','LBRA','N','21a5816a-676f-48c6-8f1e-445811e9e205','N','N')
;

-- 22/05/2018 12h10min23s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122470,0,0,'Y',TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,'difalo_taxrate','difalo_taxrate','difalo_taxrate','LBRA','6dacc048-12ce-4720-bcee-a6538e9ddf60')
;

-- 22/05/2018 12h10min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130272,0.0,'difalo_taxrate',1120566,'difalo_taxrate',131089,'N','N','N','N','N','N',22,0,0,'Y',TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:23','YYYY-MM-DD HH24:MI:SS'),100,1122470,'N','N','LBRA','N','6df3e0e1-0fa8-4432-b205-aeeef1d91a4c','N')
;

-- 22/05/2018 12h10min24s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122471,0,0,'Y',TO_DATE('2018-05-22 12:10:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:24','YYYY-MM-DD HH24:MI:SS'),100,'difalo_taxstatus','difalo_taxstatus','difalo_taxstatus','LBRA','8dd8f6dc-bfd1-4e24-a4f2-281775efb1cc')
;

-- 22/05/2018 12h10min24s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130273,0.0,'difalo_taxstatus',1120566,'difalo_taxstatus',2147483647,'N','N','N','N','N','N',14,0,0,'Y',TO_DATE('2018-05-22 12:10:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 12:10:24','YYYY-MM-DD HH24:MI:SS'),100,1122471,'N','N','LBRA','N','c3e22b3f-99a9-4251-a335-6f59e31a3461','N')
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Element SET Name='COFINS Red. na BC', PrintName='COFINS Red. na BC',Updated=TO_DATE('2018-05-22 12:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121872
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Column SET ColumnName='cofins_taxbase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxbase', Name='COFINS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121872 WHERE UPPER(ColumnName)='COFINS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxbase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_InfoColumn SET ColumnName='cofins_taxbase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Field SET Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121872) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_PrintFormatItem SET PrintName='COFINS Red. na BC', Name='COFINS Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121872)
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Element SET Name='DIFAL Red. na BC', PrintName='DIFAL Red. na BC',Updated=TO_DATE('2018-05-22 12:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122466
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Column SET ColumnName='difal_taxbase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxbase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122466 WHERE UPPER(ColumnName)='DIFAL_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxbase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_InfoColumn SET ColumnName='difal_taxbase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_Field SET Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122466) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min29s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFAL Red. na BC', Name='DIFAL Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122466)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='DIFALO Red. na BC', PrintName='DIFALO Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122469
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='difalo_taxbase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxbase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122469 WHERE UPPER(ColumnName)='DIFALO_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxbase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='difalo_taxbase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122469) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFALO Red. na BC', Name='DIFALO Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122469)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='FCP Red. na BC', PrintName='FCP Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122463
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='fcp_taxbase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxbase', Name='FCP Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122463 WHERE UPPER(ColumnName)='FCP_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxbase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='fcp_taxbase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122463) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='FCP Red. na BC', Name='FCP Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122463)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='ICMS Red. na BC', PrintName='ICMS Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121862
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='icms_taxbase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxbase', Name='ICMS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121862 WHERE UPPER(ColumnName)='ICMS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxbase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='icms_taxbase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121862) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS Red. na BC', Name='ICMS Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121862)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='ICMSST Red. na BC', PrintName='ICMSST Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121877
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='icmsst_taxbase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxbase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121877 WHERE UPPER(ColumnName)='ICMSST_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxbase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='icmsst_taxbase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121877) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST Red. na BC', Name='ICMSST Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121877)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='IPI Red. na BC', PrintName='IPI Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122310
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='ipi_taxbase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxbase', Name='IPI Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122310 WHERE UPPER(ColumnName)='IPI_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxbase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='ipi_taxbase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122310) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='IPI Red. na BC', Name='IPI Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122310)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='PIS Red. na BC', PrintName='PIS Red. na BC',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121867
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='pis_taxbase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxbase', Name='PIS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121867 WHERE UPPER(ColumnName)='PIS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxbase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='pis_taxbase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121867) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='PIS Red. na BC', Name='PIS Red. na BC' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121867)
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Element SET Name='COFINS CST', PrintName='COFINS CST',Updated=TO_DATE('2018-05-22 12:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121875
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Column SET ColumnName='cofins_taxstatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxstatus', Name='COFINS CST', Description=NULL, Help=NULL, AD_Element_ID=1121875 WHERE UPPER(ColumnName)='COFINS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxstatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_InfoColumn SET ColumnName='cofins_taxstatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min30s BRT
UPDATE AD_Field SET Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121875) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='COFINS CST', Name='COFINS CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121875)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='DIFAL CST', PrintName='DIFAL CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122468
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='difal_taxstatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxstatus', Name='DIFAL CST', Description=NULL, Help=NULL, AD_Element_ID=1122468 WHERE UPPER(ColumnName)='DIFAL_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxstatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='difal_taxstatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122468) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFAL CST', Name='DIFAL CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122468)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='DIFALO CST', PrintName='DIFALO CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122471
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='difalo_taxstatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxstatus', Name='DIFALO CST', Description=NULL, Help=NULL, AD_Element_ID=1122471 WHERE UPPER(ColumnName)='DIFALO_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxstatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='difalo_taxstatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122471) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFALO CST', Name='DIFALO CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122471)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='FCP CST', PrintName='FCP CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122465
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='fcp_taxstatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxstatus', Name='FCP CST', Description=NULL, Help=NULL, AD_Element_ID=1122465 WHERE UPPER(ColumnName)='FCP_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxstatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='fcp_taxstatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122465) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='FCP CST', Name='FCP CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122465)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='ICMS CST', PrintName='ICMS CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121865
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='icms_taxstatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxstatus', Name='ICMS CST', Description=NULL, Help=NULL, AD_Element_ID=1121865 WHERE UPPER(ColumnName)='ICMS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxstatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='icms_taxstatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121865) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS CST', Name='ICMS CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121865)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='ICMSST CST', PrintName='ICMSST CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121880
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='icmsst_taxstatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxstatus', Name='ICMSST CST', Description=NULL, Help=NULL, AD_Element_ID=1121880 WHERE UPPER(ColumnName)='ICMSST_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxstatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='icmsst_taxstatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121880) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST CST', Name='ICMSST CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121880)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='IPI CST', PrintName='IPI CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121884
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='ipi_taxstatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxstatus', Name='IPI CST', Description=NULL, Help=NULL, AD_Element_ID=1121884 WHERE UPPER(ColumnName)='IPI_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxstatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='ipi_taxstatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121884) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='IPI CST', Name='IPI CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121884)
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Element SET Name='PIS CST', PrintName='PIS CST',Updated=TO_DATE('2018-05-22 12:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121870
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Column SET ColumnName='pis_taxstatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxstatus', Name='PIS CST', Description=NULL, Help=NULL, AD_Element_ID=1121870 WHERE UPPER(ColumnName)='PIS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxstatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_InfoColumn SET ColumnName='pis_taxstatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_Field SET Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121870) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h18min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='PIS CST', Name='PIS CST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121870)
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Element SET ColumnName='COFINS_TaxBase',Updated=TO_DATE('2018-05-22 12:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121872
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Column SET ColumnName='COFINS_TaxBase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxBase', Name='COFINS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121872 WHERE UPPER(ColumnName)='COFINS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxBase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_InfoColumn SET ColumnName='COFINS_TaxBase', Name='COFINS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121872 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Element SET ColumnName='DIFAL_TaxBase',Updated=TO_DATE('2018-05-22 12:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122466
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Column SET ColumnName='DIFAL_TaxBase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxBase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122466 WHERE UPPER(ColumnName)='DIFAL_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxBase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFAL_TaxBase', Name='DIFAL Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122466 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Element SET ColumnName='DIFALO_TaxBase',Updated=TO_DATE('2018-05-22 12:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122469
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Column SET ColumnName='DIFALO_TaxBase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxBase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122469 WHERE UPPER(ColumnName)='DIFALO_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxBase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFALO_TaxBase', Name='DIFALO Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122469 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Element SET ColumnName='FCP_TaxBase',Updated=TO_DATE('2018-05-22 12:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122463
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Column SET ColumnName='FCP_TaxBase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxBase', Name='FCP Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122463 WHERE UPPER(ColumnName)='FCP_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxBase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_InfoColumn SET ColumnName='FCP_TaxBase', Name='FCP Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122463 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Element SET ColumnName='ICMS_TaxBase',Updated=TO_DATE('2018-05-22 12:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121862
;

-- 22/05/2018 12h19min58s BRT
UPDATE AD_Column SET ColumnName='ICMS_TaxBase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxBase', Name='ICMS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121862 WHERE UPPER(ColumnName)='ICMS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxBase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_TaxBase', Name='ICMS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121862 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='ICMSST_TaxBase',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121877
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='ICMSST_TaxBase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxBase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121877 WHERE UPPER(ColumnName)='ICMSST_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxBase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_TaxBase', Name='ICMSST Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121877 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='IPI_TaxBase',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122310
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='IPI_TaxBase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxBase', Name='IPI Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1122310 WHERE UPPER(ColumnName)='IPI_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxBase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='IPI_TaxBase', Name='IPI Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1122310 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='PIS_TaxBase',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121867
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='PIS_TaxBase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxBase', Name='PIS Red. na BC', Description=NULL, Help=NULL, AD_Element_ID=1121867 WHERE UPPER(ColumnName)='PIS_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxBase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='PIS_TaxBase', Name='PIS Red. na BC', Description=NULL, Help=NULL WHERE AD_Element_ID=1121867 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='COFINS_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121875
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='COFINS_TaxStatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxStatus', Name='COFINS CST', Description=NULL, Help=NULL, AD_Element_ID=1121875 WHERE UPPER(ColumnName)='COFINS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxStatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='COFINS_TaxStatus', Name='COFINS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121875 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='DIFAL_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122468
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='DIFAL_TaxStatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxStatus', Name='DIFAL CST', Description=NULL, Help=NULL, AD_Element_ID=1122468 WHERE UPPER(ColumnName)='DIFAL_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxStatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFAL_TaxStatus', Name='DIFAL CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122468 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='DIFALO_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122471
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='DIFALO_TaxStatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxStatus', Name='DIFALO CST', Description=NULL, Help=NULL, AD_Element_ID=1122471 WHERE UPPER(ColumnName)='DIFALO_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxStatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFALO_TaxStatus', Name='DIFALO CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122471 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='FCP_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122465
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='FCP_TaxStatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxStatus', Name='FCP CST', Description=NULL, Help=NULL, AD_Element_ID=1122465 WHERE UPPER(ColumnName)='FCP_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxStatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='FCP_TaxStatus', Name='FCP CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1122465 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='ICMS_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121865
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='ICMS_TaxStatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxStatus', Name='ICMS CST', Description=NULL, Help=NULL, AD_Element_ID=1121865 WHERE UPPER(ColumnName)='ICMS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxStatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_TaxStatus', Name='ICMS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121865 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='ICMSST_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121880
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='ICMSST_TaxStatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxStatus', Name='ICMSST CST', Description=NULL, Help=NULL, AD_Element_ID=1121880 WHERE UPPER(ColumnName)='ICMSST_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxStatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_TaxStatus', Name='ICMSST CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121880 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='IPI_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121884
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='IPI_TaxStatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxStatus', Name='IPI CST', Description=NULL, Help=NULL, AD_Element_ID=1121884 WHERE UPPER(ColumnName)='IPI_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxStatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='IPI_TaxStatus', Name='IPI CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121884 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Element SET ColumnName='PIS_TaxStatus',Updated=TO_DATE('2018-05-22 12:19:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121870
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Column SET ColumnName='PIS_TaxStatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxStatus', Name='PIS CST', Description=NULL, Help=NULL, AD_Element_ID=1121870 WHERE UPPER(ColumnName)='PIS_TAXSTATUS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxStatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h19min59s BRT
UPDATE AD_InfoColumn SET ColumnName='PIS_TaxStatus', Name='PIS CST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121870 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_Element SET ColumnName='ICMS_NFTaxBaseAmt', Name='ICMS Base', PrintName='ICMS Base',Updated=TO_DATE('2018-05-22 12:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121848
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_Column SET ColumnName='ICMS_NFTaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121848
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_NFTaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL, AD_Element_ID=1121848 WHERE UPPER(ColumnName)='ICMS_NFTAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_NFTaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121848 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_NFTaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121848 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min13s BRT
UPDATE AD_Field SET Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121848) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min14s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS Base', Name='ICMS Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121848)
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_Element SET ColumnName='ICMSST_NFTaxBaseAmt', Name='ICMSST Base', PrintName='ICMSST Base',Updated=TO_DATE('2018-05-22 12:21:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121850
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_Column SET ColumnName='ICMSST_NFTaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121850
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_NFTaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL, AD_Element_ID=1121850 WHERE UPPER(ColumnName)='ICMSST_NFTAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_NFTaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121850 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_NFTaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121850 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_Field SET Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121850) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 12h21min29s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST Base', Name='ICMSST Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121850)
;

-- 22/05/2018 12h33min35s BRT
UPDATE AD_Column SET Name='CST ICMS', Description=NULL, Help=NULL, ColumnName='LBR_CSTICMS', FieldLength=3, AD_Reference_ID=10, AD_Element_ID=1122239, IsUpdateable='Y',Updated=TO_DATE('2018-05-22 12:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129281
;

-- 22/05/2018 12h33min53s BRT
UPDATE AD_Column SET Name='CST COFINS', Description=NULL, Help=NULL, ColumnName='LBR_CSTCOFINS', FieldLength=3, AD_Reference_ID=10, AD_Element_ID=1122238, IsUpdateable='Y',Updated=TO_DATE('2018-05-22 12:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129291
;

-- 22/05/2018 12h34min13s BRT
UPDATE AD_Column SET Name='CST IPI', Description=NULL, Help=NULL, ColumnName='LBR_CSTIPI', FieldLength=3, AD_Reference_ID=10, AD_Element_ID=1122240, IsUpdateable='Y',Updated=TO_DATE('2018-05-22 12:34:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129296
;

-- 22/05/2018 12h34min24s BRT
UPDATE AD_Column SET Name='CST PIS', Description=NULL, Help=NULL, ColumnName='LBR_CSTPIS', FieldLength=3, AD_Reference_ID=10, AD_Element_ID=1122241, IsUpdateable='Y',Updated=TO_DATE('2018-05-22 12:34:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129286
;

-- 22/05/2018 12h35min27s BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_CSTCOFINS',Updated=TO_DATE('2018-05-22 12:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120167
;

-- 22/05/2018 12h35min29s BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_CSTICMS',Updated=TO_DATE('2018-05-22 12:35:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120168
;

-- 22/05/2018 12h35min31s BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_CSTIPI',Updated=TO_DATE('2018-05-22 12:35:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120169
;

-- 22/05/2018 12h35min36s BRT
UPDATE AD_ViewColumn SET ColumnName='LBR_CSTPIS',Updated=TO_DATE('2018-05-22 12:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewColumn_ID=1120170
;

-- 22/05/2018 12h35min59s BRT
DROP VIEW RV_LBR_NotaFiscal_Details
;

-- 22/05/2018 12h35min59s BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal_Details(LBR_NotaFiscal_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, DocumentNo, C_BPartner_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_InvoiceLine_ID, C_Order_ID, C_UOM_ID, COFINS_TaxAmt, COFINS_TaxBase, COFINS_TaxBaseAmt, COFINS_TaxRate, LBR_CSTCOFINS, LBR_CSTICMS, LBR_CSTIPI, LBR_CSTPIS, DateDoc, DateTrx, Description, Discount, DiscountAmt, DocStatus, FCP_TaxAmt, FCP_TaxBase, FCP_TaxBaseAmt, FCP_TaxRate, FCP_TaxStatus, FreightAmt, GrossRAmt, ICMS_TaxAmt, ICMS_TaxBase, ICMS_TaxBaseAmt, ICMS_TaxRate, DIFAL_TaxAmt, DIFAL_TaxBase, DIFAL_TaxBaseAmt, DIFAL_TaxRate, DIFAL_TaxStatus, DIFALO_TaxAmt, DIFALO_TaxBase, DIFALO_TaxBaseAmt, DIFALO_TaxRate, DIFALO_TaxStatus, ICMSST_TaxAmt, ICMSST_TaxBase, ICMSST_TaxBaseAmt, ICMSST_TaxRate, ICMSST_TaxStatus, IPI_TaxAmt, IPI_TaxBase, IPI_TaxBaseAmt, IPI_TaxRate, IsCancelled, LBR_CEST_ID, LBR_CFOP_ID, LBR_CFOPNote, LBR_FCIValue, LBR_FinNFe, LBR_IndTot, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_IsService, LBR_LineTotalCIF, LBR_LineTotalSISCOMEX, LBR_NCM_ID, LBR_NFDI_ID, LBR_NFeEnv, LBR_NFeID, LBR_NFeStatus, LBR_NotaFiscalLine_ID, LBR_NumAdicao, LBR_NumSeqItem, LBR_OtherChargesAmt, LBR_ProductSource, LBR_ServiceTaxes, LBR_TaxStatus, LBR_TaxStatusIPI, LBR_TransactionType, LBR_UOMName, Line, LineTotalAmt, M_InOut_ID , M_Product_ID, Manufacturer, PIS_TaxAmt, PIS_TaxBase, PIS_TaxBaseAmt, PIS_TaxRate, Price, PriceListAmt, ProductName, ProductValue, Qty, VendorProductNo) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Client_ID AS AD_Client_ID, nf.AD_Org_ID AS AD_Org_ID, nfl.IsActive AS IsActive, nfl.Created AS Created, nfl.CreatedBy AS CreatedBy, nfl.Updated AS Updated, nfl.UpdatedBy AS UpdatedBy, nf.DocumentNo AS DocumentNo, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nfl.C_InvoiceLine_ID AS C_InvoiceLine_ID, nf.C_Order_ID AS C_Order_ID, nfl.C_UOM_ID AS C_UOM_ID, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBase AS COFINS_TaxBase, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, cofins.LBR_TaxRate AS COFINS_TaxRate, cofins.CST AS LBR_CSTCOFINS, icms.CST AS LBR_CSTICMS, ipi.CST AS LBR_CSTIPI, pis.CST AS LBR_CSTPIS, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nfl.Description AS Description, nfl.Discount AS Discount, nfl.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBase AS FCP_TaxBase, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt, fcp.LBR_TaxRate AS FCP_TaxRate, fcp.CST AS FCP_TaxStatus, nfl.FreightAmt AS FreightAmt, ROUND(((nfl.LineTotalAmt+COALESCE(icmsst.LBR_TaxAmt,0))+COALESCE(ipi.LBR_TaxAmt,0)),2) AS GrossRAmt, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBase AS ICMS_TaxBase, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, icms.LBR_TaxRate AS ICMS_TaxRate, difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBase AS DIFAL_TaxBase, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difal.LBR_TaxRate AS DIFAL_TaxRate, difal.CST AS DIFAL_TaxStatus, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBase AS DIFALO_TaxBase, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, difalo.LBR_TaxRate AS DIFALO_TaxRate, difalo.CST AS DIFALO_TaxStatus, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBase AS ICMSST_TaxBase, icmsst.LBR_TaxBaseAmt AS ICMSST_TaxBaseAmt, icmsst.LBR_TaxRate AS ICMSST_TaxRate, icmsst.CST AS ICMSST_TaxStatus, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBase AS IPI_TaxBase, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, ipi.LBR_TaxRate AS IPI_TaxRate, nf.IsCancelled AS IsCancelled, nfl.LBR_CEST_ID AS LBR_CEST_ID, nfl.LBR_CFOP_ID AS LBR_CFOP_ID, nf.LBR_CFOPNote AS LBR_CFOPNote, nfl.LBR_FCIValue AS LBR_FCIValue, nf.LBR_FinNFe AS LBR_FinNFe, nfl.LBR_IndTot AS LBR_IndTot, nfl.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nfl.LBR_IsService AS LBR_IsService, nfl.LBR_LineTotalCIF AS LBR_LineTotalCIF, nfl.LBR_LineTotalSISCOMEX AS LBR_LineTotalSISCOMEX, nfl.LBR_NCM_ID AS LBR_NCM_ID, nfl.LBR_NFDI_ID AS LBR_NFDI_ID, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeStatus AS LBR_NFeStatus, nfl.LBR_NotaFiscalLine_ID AS LBR_NotaFiscalLine_ID, nfl.LBR_NumAdicao AS LBR_NumAdicao, nfl.LBR_NumSeqItem AS LBR_NumSeqItem, nfl.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nfl.LBR_ProductSource AS LBR_ProductSource, nfl.LBR_ServiceTaxes AS LBR_ServiceTaxes, nfl.LBR_TaxStatus AS LBR_TaxStatus, nfl.LBR_TaxStatusIPI AS LBR_TaxStatusIPI, nf.LBR_TransactionType AS LBR_TransactionType, nfl.LBR_UOMName AS LBR_UOMName, nfl.Line AS Line, nfl.LineTotalAmt AS LineTotalAmt, nf.M_InOut_ID  AS M_InOut_ID , nfl.M_Product_ID AS M_Product_ID, nfl.Manufacturer AS Manufacturer, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBase AS PIS_TaxBase, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, pis.LBR_TaxRate AS PIS_TaxRate, nfl.Price AS Price, nfl.PriceListAmt AS PriceListAmt, nfl.ProductName AS ProductName, nfl.ProductValue AS ProductValue, nfl.Qty AS Qty, nfl.VendorProductNo AS VendorProductNo FROM LBR_NotaFiscalline nfl
LEFT JOIN LBR_NotaFiscal nf ON (nfl.LBR_NotaFiscal_ID=nf.LBR_NotaFiscal_ID)
LEFT JOIN LBR_NFLineTax_V icms ON (nfl.LBR_NotaFiscalLine_ID=icms.LBR_NotaFiscalLine_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFLineTax_V pis ON (nfl.LBR_NotaFiscalLine_ID=pis.LBR_NotaFiscalLine_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFLineTax_V cofins ON (nfl.LBR_NotaFiscalLine_ID=cofins.LBR_NotaFiscalLine_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFLineTax_V ipi ON (nfl.LBR_NotaFiscalLine_ID=ipi.LBR_NotaFiscalLine_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFLineTax_V icmsst ON (nfl.LBR_NotaFiscalLine_ID=icmsst.LBR_NotaFiscalLine_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFLineTax_V difal ON (nfl.LBR_NotaFiscalLine_ID=difal.LBR_NotaFiscalLine_ID AND difal.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFLineTax_V difalo ON (nfl.LBR_NotaFiscalLine_ID=difalo.LBR_NotaFiscalLine_ID AND difalo.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFLineTax_V fcp ON (nfl.LBR_NotaFiscalLine_ID=fcp.LBR_NotaFiscalLine_ID AND fcp.TaxIndicator='FCP')
;

SELECT Register_Migration_Script ('201805221220_DIFAL_RV_LBR_NotaFiscal_Details.sql') FROM DUAL
;
