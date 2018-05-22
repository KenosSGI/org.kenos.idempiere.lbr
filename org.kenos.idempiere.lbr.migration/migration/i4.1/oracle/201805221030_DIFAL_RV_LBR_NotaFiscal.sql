SET SQLBLANKLINES ON
SET DEFINE OFF

-- Campos DIFAL e FCP no Relatório de NF
-- 22/05/2018 10h15min3s BRT
INSERT INTO AD_ViewComponent (AD_Client_ID,AD_Org_ID,AD_ViewComponent_ID,AD_ViewComponent_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,SeqNo,FromClause) VALUES (0,0,1120000,'15b07a4b-a435-4048-ab29-cd8421c1512d',TO_DATE('2018-05-22 10:15:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal',TO_DATE('2018-05-22 10:15:03','YYYY-MM-DD HH24:MI:SS'),100,1120567,10,'FROM LBR_NotaFiscal nf 
LEFT JOIN LBR_NFTax_v icms ON (nf.LBR_NotaFiscal_ID=icms.LBR_NotaFiscal_ID AND icms.TaxIndicator=''ICMS'')
LEFT JOIN LBR_NFTax_v pis ON (nf.LBR_NotaFiscal_ID=pis.LBR_NotaFiscal_ID AND pis.TaxIndicator=''PIS'')
LEFT JOIN LBR_NFTax_v cofins ON (nf.LBR_NotaFiscal_ID=cofins.LBR_NotaFiscal_ID AND cofins.TaxIndicator=''COFINS'')
LEFT JOIN LBR_NFTax_v ipi ON (nf.LBR_NotaFiscal_ID=ipi.LBR_NotaFiscal_ID AND ipi.TaxIndicator=''IPI'')
LEFT JOIN LBR_NFTax_v icmsst ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator=''ICMSST'')
LEFT JOIN LBR_NFTax_v difal ON (nf.LBR_NotaFiscal_ID=difal.LBR_NotaFiscal_ID AND difal.TaxIndicator=''ICMSDIFAL'')
LEFT JOIN LBR_NFTax_v difalo ON (nf.LBR_NotaFiscal_ID=difalo.LBR_NotaFiscal_ID AND difalo.TaxIndicator=''ICMSDIFALORIG'')
LEFT JOIN LBR_NFTax_v fcp ON (nf.LBR_NotaFiscal_ID=fcp.LBR_NotaFiscal_ID AND fcp.TaxIndicator=''FCP'')')
;

-- 22/05/2018 10h15min50s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120000,'a75bcc08-e131-4409-9c1b-537b989ff10d',TO_DATE('2018-05-22 10:15:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:50','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NotaFiscal_ID','nf.LBR_NotaFiscal_ID',10)
;

-- 22/05/2018 10h15min51s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120001,'90ff0a7c-976c-43dc-8f8e-12e906a8cc09',TO_DATE('2018-05-22 10:15:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:50','YYYY-MM-DD HH24:MI:SS'),100,1120000,'AD_Org_ID','nf.AD_Org_ID',20)
;

-- 22/05/2018 10h15min51s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120002,'092bf92c-4202-4fd5-93e8-42039703f146',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,1120000,'AD_Client_ID','nf.AD_Client_ID',30)
;

-- 22/05/2018 10h15min51s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120003,'f898bd01-08eb-4ff2-860a-bb942ae5c33c',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IsActive','nf.IsActive',40)
;

-- 22/05/2018 10h15min52s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120004,'4fc2990c-77e3-49a1-b474-c6cd3f1e3f4b',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:51','YYYY-MM-DD HH24:MI:SS'),100,1120000,'Created','nf.Created',50)
;

-- 22/05/2018 10h15min52s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120005,'cedc482c-7c94-462f-9ea0-86d74600ce1a',TO_DATE('2018-05-22 10:15:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:52','YYYY-MM-DD HH24:MI:SS'),100,1120000,'CreatedBy','nf.CreatedBy',60)
;

-- 22/05/2018 10h15min53s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120006,'fd00b874-bf15-43d0-a62a-f4d6040f4309',TO_DATE('2018-05-22 10:15:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:52','YYYY-MM-DD HH24:MI:SS'),100,1120000,'Updated','nf.Updated',70)
;

-- 22/05/2018 10h15min53s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120007,'f78af7cb-916f-44b4-8f70-221f262f8a9d',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,1120000,'UpdatedBy','nf.UpdatedBy',80)
;

-- 22/05/2018 10h15min53s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120008,'262a558f-906c-41f6-8f29-4a7267dd0e7e',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,1120000,'Bill_Location_ID','nf.Bill_Location_ID',90)
;

-- 22/05/2018 10h15min54s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120009,'fc75751a-ddd7-4198-a3e9-65ea631b5715',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:53','YYYY-MM-DD HH24:MI:SS'),100,1120000,'BPName','nf.BPName',100)
;

-- 22/05/2018 10h15min54s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120010,'6648b4f0-94df-42bd-a703-a116a6e07013',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_BPartner_ID','nf.C_BPartner_ID',110)
;

-- 22/05/2018 10h15min54s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120011,'e52f1302-1eeb-49d6-a4a9-6f8b17143a37',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_BPartner_Location_ID','nf.C_BPartner_Location_ID',120)
;

-- 22/05/2018 10h15min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120012,'6d166c5c-660e-44b3-ad21-9c45b8e0de06',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:54','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_DocType_ID','nf.C_DocType_ID',130)
;

-- 22/05/2018 10h15min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120013,'fcb99c03-e534-4220-98e9-45bd0834499b',TO_DATE('2018-05-22 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_DocTypeTarget_ID','nf.C_DocTypeTarget_ID',140)
;

-- 22/05/2018 10h15min55s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120014,'07e3d08e-bc2e-425a-a135-ad31fd3d7581',TO_DATE('2018-05-22 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_Invoice_ID','nf.C_Invoice_ID',150)
;

-- 22/05/2018 10h15min56s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120015,'17a3ce0c-2856-4eea-93d4-92c9cb89b911',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_Order_ID','nf.C_Order_ID',160)
;

-- 22/05/2018 10h15min56s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120016,'1939a00c-580b-4170-ae36-8bc152b80814',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,1120000,'C_PaymentTerm_ID','nf.C_PaymentTerm_ID',170)
;

-- 22/05/2018 10h15min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120017,'393ae0fd-dc6c-4a0b-a757-ebefc0a62e78',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:56','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DateDoc','nf.DateDoc',180)
;

-- 22/05/2018 10h15min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120018,'9c96f239-2d82-4b05-8f66-ffa0092945a4',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DateTrx','nf.DateTrx',190)
;

-- 22/05/2018 10h15min57s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120019,'881699f3-9960-431b-a031-5121883be620',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DeliveryViaRule','nf.DeliveryViaRule',200)
;

-- 22/05/2018 10h15min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120020,'fea02087-0d28-425e-8881-40b72a4dd523',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:57','YYYY-MM-DD HH24:MI:SS'),100,1120000,'Description','nf.Description',210)
;

-- 22/05/2018 10h15min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120021,'4e3b0159-fbbd-4768-9139-b6f56a31a6a1',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DiscountAmt','nf.DiscountAmt',220)
;

-- 22/05/2018 10h15min58s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120022,'6487a86b-4776-4f6d-abd7-17e5c17cc78e',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DocStatus','nf.DocStatus',230)
;

-- 22/05/2018 10h15min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120023,'cf251030-1e29-469b-a922-0bdfe54a3d60',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:58','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DocumentNo','nf.DocumentNo',240)
;

-- 22/05/2018 10h15min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120024,'4dda1667-e628-4952-80af-b109283d69a9',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,1120000,'FreightAmt','nf.FreightAmt',250)
;

-- 22/05/2018 10h15min59s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120025,'4e79ce6c-471f-45a7-be0a-adb12ebd4cb3',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,1120000,'FreightCostRule','nf.FreightCostRule',260)
;

-- 22/05/2018 10h16min0s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120026,'4097c885-1e28-4d5c-937f-9b05b496ede4',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:15:59','YYYY-MM-DD HH24:MI:SS'),100,1120000,'GrandTotal','nf.GrandTotal',270)
;

-- 22/05/2018 10h16min0s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120027,'f88e08bb-c8d1-4ac5-aca8-2fe40ebd1626',TO_DATE('2018-05-22 10:16:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:00','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IsCancelled','nf.IsCancelled',280)
;

-- 22/05/2018 10h16min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120028,'721f5aa8-efae-4d67-a17a-3af53cab4de3',TO_DATE('2018-05-22 10:16:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:00','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IsPrinted','nf.IsPrinted',290)
;

-- 22/05/2018 10h16min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120029,'ffb24fa9-74cb-40f6-85da-30fdb33e9322',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IsSOTrx','nf.IsSOTrx',300)
;

-- 22/05/2018 10h16min1s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120030,'531f1cba-9985-42d9-b5a4-8b8dc3d17653',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BillNote','nf.LBR_BillNote',310)
;

-- 22/05/2018 10h16min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120031,'7c4abea1-59eb-47fb-9a2c-5fde0a409978',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:01','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPAddress1','nf.LBR_BPAddress1',320)
;

-- 22/05/2018 10h16min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120032,'293874a5-a57f-477c-b601-6270d5369697',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPAddress2','nf.LBR_BPAddress2',330)
;

-- 22/05/2018 10h16min2s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120033,'2828e4de-31ed-401a-95e9-c8eb081e4bb5',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPAddress3','nf.LBR_BPAddress3',340)
;

-- 22/05/2018 10h16min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120034,'84a019cb-ca89-4e2e-bf17-a2e3760364d4',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:02','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPAddress4','nf.LBR_BPAddress4',350)
;

-- 22/05/2018 10h16min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120035,'f34e8d96-7590-40d3-a002-d5f8c52706a6',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPCity','nf.LBR_BPCity',360)
;

-- 22/05/2018 10h16min3s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120036,'863d7dee-ab30-4746-8085-b7c3200ada75',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPCityCode','nf.LBR_BPCityCode',370)
;

-- 22/05/2018 10h16min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120037,'f9ae2a68-6e65-4707-950d-882afa25c87e',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPCNPJ','nf.LBR_BPCNPJ',380)
;

-- 22/05/2018 10h16min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120038,'637752f4-a1ec-4953-8dc8-88d82dc8abac',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPCountry','nf.LBR_BPCountry',390)
;

-- 22/05/2018 10h16min4s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120039,'e5e86e89-79eb-4b78-b304-70bcea8960ac',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPCountryCode','nf.LBR_BPCountryCode',400)
;

-- 22/05/2018 10h16min5s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120040,'dcd38812-1425-411d-ba36-2f6093801c9e',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:04','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryAddress1','nf.LBR_BPDeliveryAddress1',410)
;

-- 22/05/2018 10h16min5s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120041,'407f08c4-80cd-4cfd-8a8d-e86bc6360003',TO_DATE('2018-05-22 10:16:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:05','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryAddress2','nf.LBR_BPDeliveryAddress2',420)
;

-- 22/05/2018 10h16min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120042,'243e02bc-ad6d-46d1-856f-cc65099064eb',TO_DATE('2018-05-22 10:16:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:05','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryAddress3','nf.LBR_BPDeliveryAddress3',430)
;

-- 22/05/2018 10h16min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120043,'b3aae2d1-0145-4c57-abc6-873f6ca9a2ce',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryAddress4','nf.LBR_BPDeliveryAddress4',440)
;

-- 22/05/2018 10h16min6s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120044,'a7431bf3-7846-44c9-a40e-7b9b83b2be38',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryCity','nf.LBR_BPDeliveryCity',450)
;

-- 22/05/2018 10h16min7s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120045,'fcf2d42d-9db6-4f6b-bc95-60252c09458e',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:06','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryCityCode','nf.LBR_BPDeliveryCityCode',460)
;

-- 22/05/2018 10h16min7s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120046,'23d0984b-aa9e-4ae6-a585-e240b1f915fe',TO_DATE('2018-05-22 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryCNPJ','nf.LBR_BPDeliveryCNPJ',470)
;

-- 22/05/2018 10h16min8s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120047,'22f97fce-aeff-4ae3-b8de-dada8743341e',TO_DATE('2018-05-22 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryCountry','nf.LBR_BPDeliveryCountry',480)
;

-- 22/05/2018 10h16min8s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120048,'8593ab2c-d5ff-4eca-b3e1-6bab74c450f5',TO_DATE('2018-05-22 10:16:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:08','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryIE','nf.LBR_BPDeliveryIE',490)
;

-- 22/05/2018 10h16min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120049,'a1b50f33-68d3-4066-9aba-8e1d76a7c85d',TO_DATE('2018-05-22 10:16:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:08','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryPostal','nf.LBR_BPDeliveryPostal',500)
;

-- 22/05/2018 10h16min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120050,'50b64bee-1e75-48c0-90df-d37245d7d94f',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPDeliveryRegion','nf.LBR_BPDeliveryRegion',510)
;

-- 22/05/2018 10h16min9s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120051,'ca7caaab-4b33-4907-8714-8e4638ddb675',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPIE','nf.LBR_BPIE',520)
;

-- 22/05/2018 10h16min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120052,'4d9236b1-9ce2-47e0-aa23-83a11734950d',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:09','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceAddress1','nf.LBR_BPInvoiceAddress1',530)
;

-- 22/05/2018 10h16min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120053,'fe311b56-c31a-4aab-be4f-c890f3d986b9',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceAddress2','nf.LBR_BPInvoiceAddress2',540)
;

-- 22/05/2018 10h16min10s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120054,'84e7e8fc-de4d-43b4-b78a-46065a359761',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceAddress3','nf.LBR_BPInvoiceAddress3',550)
;

-- 22/05/2018 10h16min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120055,'179b8c30-55d7-4995-82ef-32412d8fb3ff',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:10','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceAddress4','nf.LBR_BPInvoiceAddress4',560)
;

-- 22/05/2018 10h16min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120056,'c15aa998-5588-49b4-9f82-42e64c04d76a',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceCity','nf.LBR_BPInvoiceCity',570)
;

-- 22/05/2018 10h16min11s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120057,'f9c309aa-bbb6-4dcc-a4dc-57b19fc5ff08',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceCNPJ','nf.LBR_BPInvoiceCNPJ',580)
;

-- 22/05/2018 10h16min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120058,'962b1609-1c63-4222-9d18-fec681a58146',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceCountry','nf.LBR_BPInvoiceCountry',590)
;

-- 22/05/2018 10h16min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120059,'5c11f250-a09f-4aab-89f0-facbdb6d17f8',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceIE','nf.LBR_BPInvoiceIE',600)
;

-- 22/05/2018 10h16min12s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120060,'bc9b7666-b9db-49f4-853b-b0e4ebfb3f7c',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoicePostal','nf.LBR_BPInvoicePostal',610)
;

-- 22/05/2018 10h16min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120061,'f6de3f7f-c08e-4d58-bbbf-efc882f26a4d',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:12','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPInvoiceRegion','nf.LBR_BPInvoiceRegion',620)
;

-- 22/05/2018 10h16min13s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120062,'01f1f369-ffee-4207-9cf9-dfd5958464ed',TO_DATE('2018-05-22 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPPhone','nf.LBR_BPPhone',630)
;

-- 22/05/2018 10h16min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120063,'5c031eac-aa29-4c36-aa90-1cea879cb03f',TO_DATE('2018-05-22 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPPostal','nf.LBR_BPPostal',640)
;

-- 22/05/2018 10h16min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120064,'92f373a1-7e55-44f0-9c73-eec4895136eb',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPRegion','nf.LBR_BPRegion',650)
;

-- 22/05/2018 10h16min14s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120065,'178efec0-ca56-42d1-a2a2-4bac0466f82d',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperAddress','nf.LBR_BPShipperAddress',660)
;

-- 22/05/2018 10h16min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120066,'8eed7c07-84a6-43a1-a381-ccb2a304a963',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:14','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperAddress1','nf.LBR_BPShipperAddress1',670)
;

-- 22/05/2018 10h16min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120067,'b881148f-08cd-4c98-bbea-92a6d4fc34ef',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperAddress2','nf.LBR_BPShipperAddress2',680)
;

-- 22/05/2018 10h16min15s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120068,'0185f1c1-6602-4337-8fbe-0c3776a9e7d7',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperAddress3','nf.LBR_BPShipperAddress3',690)
;

-- 22/05/2018 10h16min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120069,'2d8b6046-bd1e-4cb7-9773-b0ca97a801c7',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:15','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperAddress4','nf.LBR_BPShipperAddress4',700)
;

-- 22/05/2018 10h16min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120070,'803b7e81-7f32-44d8-8d8b-ebcc1827f77e',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperCity','nf.LBR_BPShipperCity',710)
;

-- 22/05/2018 10h16min16s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120071,'9b6a5357-26ce-4617-acf3-408b5c614d00',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperCNPJ','nf.LBR_BPShipperCNPJ',720)
;

-- 22/05/2018 10h16min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120072,'6d56bfb9-74c0-4fc2-a365-3c3a8e061799',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:16','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperCountry','nf.LBR_BPShipperCountry',730)
;

-- 22/05/2018 10h16min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120073,'74565e59-557a-4b03-b395-b978fdeb9505',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperIE','nf.LBR_BPShipperIE',740)
;

-- 22/05/2018 10h16min17s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120074,'fda1ffea-5b62-45fa-b4f6-694d91d3988c',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperLicensePlate','nf.LBR_BPShipperLicensePlate',750)
;

-- 22/05/2018 10h16min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120075,'c6fc160f-4e45-46e0-a2db-2ebd5c680671',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:17','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperName','nf.LBR_BPShipperName',760)
;

-- 22/05/2018 10h16min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120076,'fc1b8274-db2c-4f06-9d1b-c991141c6961',TO_DATE('2018-05-22 10:16:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:18','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperPostal','nf.LBR_BPShipperPostal',770)
;

-- 22/05/2018 10h16min18s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120077,'531b1608-b7fb-4c19-b826-7f42a09d0ddf',TO_DATE('2018-05-22 10:16:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:18','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPShipperRegion','nf.LBR_BPShipperRegion',780)
;

-- 22/05/2018 10h16min19s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120078,'2524474a-da1c-4a2c-b7e5-b9805a0c2dc9',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPSuframa','nf.LBR_BPSuframa',790)
;

-- 22/05/2018 10h16min19s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120079,'ece36079-7f3c-4cd0-be05-35c9056a9694',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_BPTypeBR','nf.LBR_BPTypeBR',800)
;

-- 22/05/2018 10h16min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120080,'c7cc2714-03ab-4dea-b112-a56ae3b86cf8',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:19','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_Brand','nf.LBR_Brand',810)
;

-- 22/05/2018 10h16min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120081,'4831836d-d45e-4d36-9b38-9c77c16281c7',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_CFOPNote','nf.LBR_CFOPNote',820)
;

-- 22/05/2018 10h16min20s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120082,'07bc01fd-732b-4bb3-b66b-1e811ab351fd',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_CNPJ','nf.LBR_CNPJ',830)
;

-- 22/05/2018 10h16min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120083,'325dc014-2bd1-4672-a0ad-b1ec1d1ecb66',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_DateInOut','nf.LBR_DateInOut',840)
;

-- 22/05/2018 10h16min21s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120084,'4ba743db-826c-447e-96b4-f7f3ebece6cd',TO_DATE('2018-05-22 10:16:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:21','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_DE_ID','nf.LBR_DE_ID',850)
;

-- 22/05/2018 10h16min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120085,'b65fa67d-0cb9-408d-90ef-b80e567fbdeb',TO_DATE('2018-05-22 10:16:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:21','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_Delivery_Location_ID','nf.LBR_Delivery_Location_ID',860)
;

-- 22/05/2018 10h16min22s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120086,'641c60e6-f734-439b-8ffc-ce467c94b408',TO_DATE('2018-05-22 10:16:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:22','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_FinNFe','nf.LBR_FinNFe',870)
;

-- 22/05/2018 10h16min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120087,'62c6b76a-86be-4ea4-873d-ae03bf094225',TO_DATE('2018-05-22 10:16:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:22','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_FiscalOBS','nf.LBR_FiscalOBS',880)
;

-- 22/05/2018 10h16min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120088,'c8c0810d-6d45-4cb2-8ee0-4a25863cc303',TO_DATE('2018-05-22 10:16:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:23','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_FreightCostRule','nf.LBR_FreightCostRule',890)
;

-- 22/05/2018 10h16min23s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120089,'35161ca5-bb01-44c2-ad86-3630e9934bde',TO_DATE('2018-05-22 10:16:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:23','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_GrossWeight','nf.LBR_GrossWeight',900)
;

-- 22/05/2018 10h16min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120090,'454c173b-42b7-4822-920c-0d7d4975531c',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_IE','nf.LBR_IE',910)
;

-- 22/05/2018 10h16min24s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120091,'d7447133-4532-4a76-b1a5-a01031a59a7b',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_IndIEDest','nf.LBR_IndIEDest',920)
;

-- 22/05/2018 10h16min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120092,'6a6560cb-fe5b-4426-972b-2b7ced85c304',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:24','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_IndPres','nf.LBR_IndPres',930)
;

-- 22/05/2018 10h16min25s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120093,'040ce4a0-093e-4998-8638-6b64e016095c',TO_DATE('2018-05-22 10:16:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:25','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_InsuranceAmt','nf.LBR_InsuranceAmt',940)
;

-- 22/05/2018 10h16min26s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120094,'4c710aa0-593f-4eda-b307-240c146871e4',TO_DATE('2018-05-22 10:16:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:25','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_IsOwnDocument','nf.LBR_IsOwnDocument',950)
;

-- 22/05/2018 10h16min26s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120095,'5e9563c0-0f1f-473a-9716-eec5c15d2ce7',TO_DATE('2018-05-22 10:16:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:26','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_MotivoCancel','nf.LBR_MotivoCancel',960)
;

-- 22/05/2018 10h16min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120096,'13473cf2-1ffe-4e20-88aa-9fa850971a14',TO_DATE('2018-05-22 10:16:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:26','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NetWeight','nf.LBR_NetWeight',970)
;

-- 22/05/2018 10h16min27s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120097,'baa42056-927a-4757-8d6d-fe5745277287',TO_DATE('2018-05-22 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFeDesc','nf.LBR_NFeDesc',980)
;

-- 22/05/2018 10h16min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120098,'b4b32a3f-372d-49aa-9582-380ec17ff6e5',TO_DATE('2018-05-22 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFeEnv','nf.LBR_NFeEnv',990)
;

-- 22/05/2018 10h16min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120099,'2ba435b2-3f5b-42f8-99c4-fe1723041dcb',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFeID','nf.LBR_NFeID',1000)
;

-- 22/05/2018 10h16min28s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120100,'5a7ceed6-1355-45f3-a17c-54edb47c2d04',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFeLot_ID','nf.LBR_NFeLot_ID',1010)
;

-- 22/05/2018 10h16min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120101,'4a61f32a-e8ba-4ec9-b80c-528fcfd35d09',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:28','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFENo','nf.LBR_NFENo',1020)
;

-- 22/05/2018 10h16min29s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120102,'504d987b-497c-4d83-9688-c52ece2133c4',TO_DATE('2018-05-22 10:16:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:29','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFeStatus','nf.LBR_NFeStatus',1030)
;

-- 22/05/2018 10h16min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120103,'5906937f-7a95-4bf3-a55f-e4dae994d170',TO_DATE('2018-05-22 10:16:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:29','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFModel','nf.LBR_NFModel',1040)
;

-- 22/05/2018 10h16min30s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120104,'afbf1dfa-692f-409d-840e-93d496f51c77',TO_DATE('2018-05-22 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFSerie','nf.LBR_NFSerie',1050)
;

-- 22/05/2018 10h16min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120105,'9f1eb843-d610-4bcf-9fb6-1817777ec092',TO_DATE('2018-05-22 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_NFType','nf.LBR_NFType',1060)
;

-- 22/05/2018 10h16min31s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120106,'087f33cd-f871-4f4d-a323-720785ece4ff',TO_DATE('2018-05-22 10:16:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:31','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgAddress1','nf.LBR_OrgAddress1',1070)
;

-- 22/05/2018 10h16min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120107,'8be50a89-fe7c-43bf-8f33-df5b1bea8409',TO_DATE('2018-05-22 10:16:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:31','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgAddress2','nf.LBR_OrgAddress2',1080)
;

-- 22/05/2018 10h16min32s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120108,'0827f85a-71e0-45cf-83b5-df62000c103c',TO_DATE('2018-05-22 10:16:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:32','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgAddress3','nf.LBR_OrgAddress3',1090)
;

-- 22/05/2018 10h16min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120109,'59a05505-2004-40ae-9b72-367d70fb80a4',TO_DATE('2018-05-22 10:16:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:32','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgAddress4','nf.LBR_OrgAddress4',1100)
;

-- 22/05/2018 10h16min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120110,'6bde98be-ddad-44ac-9aba-6839c7e5a4ba',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgCCM','nf.LBR_OrgCCM',1110)
;

-- 22/05/2018 10h16min33s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120111,'883ed5f3-68c9-467e-859b-02dad1b2c932',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgCity','nf.LBR_OrgCity',1120)
;

-- 22/05/2018 10h16min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120112,'0308683e-c1a4-414b-8ce4-a9553676eeef',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgCountry','nf.LBR_OrgCountry',1130)
;

-- 22/05/2018 10h16min34s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120113,'2b2bc06a-b4b8-416f-9e96-d31cc399d208',TO_DATE('2018-05-22 10:16:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:34','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgName','nf.LBR_OrgName',1140)
;

-- 22/05/2018 10h16min35s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120114,'31823368-c172-476e-95dc-0a4a81cedcda',TO_DATE('2018-05-22 10:16:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:34','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgPhone','nf.LBR_OrgPhone',1150)
;

-- 22/05/2018 10h16min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120115,'d18ae760-b4e2-4c50-96fd-8b820c995f63',TO_DATE('2018-05-22 10:16:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:35','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgPostal','nf.LBR_OrgPostal',1160)
;

-- 22/05/2018 10h16min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120116,'32586889-99ec-4f26-86ba-14737930045d',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OrgRegion','nf.LBR_OrgRegion',1170)
;

-- 22/05/2018 10h16min36s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120117,'a9f56627-bfeb-4519-bc1a-113e7997231f',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_OtherChargesAmt','nf.LBR_OtherChargesAmt',1180)
;

-- 22/05/2018 10h16min37s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120118,'ebe009e8-e69f-47f5-ae65-99f9d8298502',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:36','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_PackingType','nf.LBR_PackingType',1190)
;

-- 22/05/2018 10h16min37s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120119,'51c35cb9-2128-4fe7-89cd-01b57f106e21',TO_DATE('2018-05-22 10:16:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:37','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_ServiceTotalAmt','nf.LBR_ServiceTotalAmt',1200)
;

-- 22/05/2018 10h16min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120120,'c457aa0a-16c3-4634-86a4-b6db22c87d80',TO_DATE('2018-05-22 10:16:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:37','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_Ship_Location_ID','nf.LBR_Ship_Location_ID',1210)
;

-- 22/05/2018 10h16min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120121,'25470069-23f9-44ee-b567-8cd7ab11092e',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_ShipNote','nf.LBR_ShipNote',1220)
;

-- 22/05/2018 10h16min38s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120122,'45039ceb-3246-45c7-ad42-8a9594e7e4a5',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_TimeInOut','nf.LBR_TimeInOut',1230)
;

-- 22/05/2018 10h16min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120123,'84d1be97-91e5-4d77-bb5b-e13691203211',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:38','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_TotalCIF','nf.LBR_TotalCIF',1240)
;

-- 22/05/2018 10h16min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120124,'5f03130f-54f4-455e-b512-eb0c84faa3ca',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_TotalSISCOMEX','nf.LBR_TotalSISCOMEX',1250)
;

-- 22/05/2018 10h16min39s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120125,'0d58cd38-8d32-4c54-95c7-f9529e4f9bf1',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_TPEmis','nf.LBR_TPEmis',1260)
;

-- 22/05/2018 10h16min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120126,'95b10be5-f608-4c89-a713-f4550e6547a8',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,1120000,'LBR_TransactionType','nf.LBR_TransactionType',1270)
;

-- 22/05/2018 10h16min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120127,'931bd06b-7b53-4021-b697-cb8d29ac5728',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,1120000,'M_InOut_ID','nf.M_InOut_ID',1280)
;

-- 22/05/2018 10h16min40s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120128,'903b58d2-dd73-42a3-b9d4-9a751bf60518',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,1120000,'M_Shipper_ID','nf.M_Shipper_ID',1290)
;

-- 22/05/2018 10h16min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120129,'e6170ba4-10d8-4801-95b2-aba17a68b723',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:40','YYYY-MM-DD HH24:MI:SS'),100,1120000,'NoPackages','nf.NoPackages',1300)
;

-- 22/05/2018 10h16min41s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120130,'17c1830c-a404-46e8-8885-bf054946516b',TO_DATE('2018-05-22 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,1120000,'Org_Location_ID','nf.Org_Location_ID',1310)
;

-- 22/05/2018 10h16min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120131,'941732c3-7428-4887-85a3-7a2f86d6ce4f',TO_DATE('2018-05-22 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:41','YYYY-MM-DD HH24:MI:SS'),100,1120000,'TotalLines','nf.TotalLines',1320)
;

-- 22/05/2018 10h16min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120132,'3761dd76-b1a2-49cf-90d5-f29a4ca77993',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,1120000,'ICMS_TaxAmt','icms.LBR_TaxAmt',1330)
;

-- 22/05/2018 10h16min42s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120133,'85b0a746-86e8-41ea-a7f6-50b54b639290',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,1120000,'ICMS_TaxBaseAmt','icms.LBR_TaxBaseAmt',1340)
;

-- 22/05/2018 10h16min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120134,'144c90a3-6082-496a-a026-61c5333746d1',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:42','YYYY-MM-DD HH24:MI:SS'),100,1120000,'PIS_TaxAmt','pis.LBR_TaxAmt',1350)
;

-- 22/05/2018 10h16min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120135,'2cc15dea-63b8-4bce-97fc-416bc4ace188',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,1120000,'PIS_TaxBaseAmt','pis.LBR_TaxBaseAmt',1360)
;

-- 22/05/2018 10h16min43s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120136,'a807165b-f144-4f73-ace8-cf2d02180403',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,1120000,'COFINS_TaxAmt','cofins.LBR_TaxAmt',1370)
;

-- 22/05/2018 10h16min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120137,'0c41a37a-0713-4131-8dd6-55b409c3a605',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:43','YYYY-MM-DD HH24:MI:SS'),100,1120000,'COFINS_TaxBaseAmt','cofins.LBR_TaxBaseAmt',1380)
;

-- 22/05/2018 10h16min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120138,'6541f4ea-306c-46d8-b510-16949bbd8f3f',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IPI_TaxAmt','ipi.LBR_TaxAmt',1390)
;

-- 22/05/2018 10h16min44s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120139,'3d68e4d7-a175-4ed9-8eba-fb4c73de0571',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,1120000,'IPI_TaxBaseAmt','ipi.LBR_TaxBaseAmt',1400)
;

-- 22/05/2018 10h16min45s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120140,'d0bb9574-d389-4238-9efb-a0e6cef17f35',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,1120000,'ICMSST_TaxAmt','icmsst.LBR_TaxAmt',1410)
;

-- 22/05/2018 10h16min45s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120141,'602b8ff7-4c98-4237-bcb5-d8e9a8cae05b',TO_DATE('2018-05-22 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,1120000,'ICMSST_TaxBaseAmt ','icmsst.LBR_TaxBaseAmt ',1420)
;

-- 22/05/2018 10h16min47s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120142,'451291e8-10e2-49f7-8b90-b564365528ae',TO_DATE('2018-05-22 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:45','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DIFAL_TaxAmt','difal.LBR_TaxAmt',1430)
;

-- 22/05/2018 10h16min47s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120143,'a1337853-79ea-4199-b81f-bdcc4ec89f18',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DIFAL_TaxBaseAmt','difal.LBR_TaxBaseAmt',1440)
;

-- 22/05/2018 10h16min47s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120144,'c78dbb91-7d6d-4bd5-a2f2-3658a3212eb4',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DIFALO_TaxAmt','difalo.LBR_TaxAmt',1450)
;

-- 22/05/2018 10h16min48s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120145,'79d620ab-91a7-4f69-bc88-471c315080d0',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:47','YYYY-MM-DD HH24:MI:SS'),100,1120000,'DIFALO_TaxBaseAmt','difalo.LBR_TaxBaseAmt',1460)
;

-- 22/05/2018 10h16min48s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120146,'b1c9c604-b67e-4d2a-b7cd-b2aea44578e7',TO_DATE('2018-05-22 10:16:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:48','YYYY-MM-DD HH24:MI:SS'),100,1120000,'FCP_TaxAmt','fcp.LBR_TaxAmt',1470)
;

-- 22/05/2018 10h16min49s BRT
INSERT INTO AD_ViewColumn (AD_Client_ID,AD_Org_ID,AD_ViewColumn_ID,AD_ViewColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_ViewComponent_ID,ColumnName,ColumnSQL,SeqNo) VALUES (0,0,1120147,'cdd2fc07-ca4b-45eb-9ddc-cbe81a490cbf',TO_DATE('2018-05-22 10:16:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-05-22 10:16:48','YYYY-MM-DD HH24:MI:SS'),100,1120000,'FCP_TaxBaseAmt','fcp.LBR_TaxBaseAmt',1480)
;

-- 22/05/2018 10h18min29s BRT
DROP VIEW RV_LBR_NotaFiscal
;

-- 22/05/2018 10h18min29s BRT
CREATE OR REPLACE VIEW RV_LBR_NotaFiscal(LBR_NotaFiscal_ID, AD_Org_ID, AD_Client_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Bill_Location_ID, BPName, C_BPartner_ID, C_BPartner_Location_ID, C_DocType_ID, C_DocTypeTarget_ID, C_Invoice_ID, C_Order_ID, C_PaymentTerm_ID, DateDoc, DateTrx, DeliveryViaRule, Description, DiscountAmt, DocStatus, DocumentNo, FreightAmt, FreightCostRule, GrandTotal, IsCancelled, IsPrinted, IsSOTrx, LBR_BillNote, LBR_BPAddress1, LBR_BPAddress2, LBR_BPAddress3, LBR_BPAddress4, LBR_BPCity, LBR_BPCityCode, LBR_BPCNPJ, LBR_BPCountry, LBR_BPCountryCode, LBR_BPDeliveryAddress1, LBR_BPDeliveryAddress2, LBR_BPDeliveryAddress3, LBR_BPDeliveryAddress4, LBR_BPDeliveryCity, LBR_BPDeliveryCityCode, LBR_BPDeliveryCNPJ, LBR_BPDeliveryCountry, LBR_BPDeliveryIE, LBR_BPDeliveryPostal, LBR_BPDeliveryRegion, LBR_BPIE, LBR_BPInvoiceAddress1, LBR_BPInvoiceAddress2, LBR_BPInvoiceAddress3, LBR_BPInvoiceAddress4, LBR_BPInvoiceCity, LBR_BPInvoiceCNPJ, LBR_BPInvoiceCountry, LBR_BPInvoiceIE, LBR_BPInvoicePostal, LBR_BPInvoiceRegion, LBR_BPPhone, LBR_BPPostal, LBR_BPRegion, LBR_BPShipperAddress, LBR_BPShipperAddress1, LBR_BPShipperAddress2, LBR_BPShipperAddress3, LBR_BPShipperAddress4, LBR_BPShipperCity, LBR_BPShipperCNPJ, LBR_BPShipperCountry, LBR_BPShipperIE, LBR_BPShipperLicensePlate, LBR_BPShipperName, LBR_BPShipperPostal, LBR_BPShipperRegion, LBR_BPSuframa, LBR_BPTypeBR, LBR_Brand, LBR_CFOPNote, LBR_CNPJ, LBR_DateInOut, LBR_DE_ID, LBR_Delivery_Location_ID, LBR_FinNFe, LBR_FiscalOBS, LBR_FreightCostRule, LBR_GrossWeight, LBR_IE, LBR_IndIEDest, LBR_IndPres, LBR_InsuranceAmt, LBR_IsOwnDocument, LBR_MotivoCancel, LBR_NetWeight, LBR_NFeDesc, LBR_NFeEnv, LBR_NFeID, LBR_NFeLot_ID, LBR_NFENo, LBR_NFeStatus, LBR_NFModel, LBR_NFSerie, LBR_NFType, LBR_OrgAddress1, LBR_OrgAddress2, LBR_OrgAddress3, LBR_OrgAddress4, LBR_OrgCCM, LBR_OrgCity, LBR_OrgCountry, LBR_OrgName, LBR_OrgPhone, LBR_OrgPostal, LBR_OrgRegion, LBR_OtherChargesAmt, LBR_PackingType, LBR_ServiceTotalAmt, LBR_Ship_Location_ID, LBR_ShipNote, LBR_TimeInOut, LBR_TotalCIF, LBR_TotalSISCOMEX, LBR_TPEmis, LBR_TransactionType, M_InOut_ID, M_Shipper_ID, NoPackages, Org_Location_ID, TotalLines, ICMS_TaxAmt, ICMS_TaxBaseAmt, PIS_TaxAmt, PIS_TaxBaseAmt, COFINS_TaxAmt, COFINS_TaxBaseAmt, IPI_TaxAmt, IPI_TaxBaseAmt, ICMSST_TaxAmt, ICMSST_TaxBaseAmt , DIFAL_TaxAmt, DIFAL_TaxBaseAmt, DIFALO_TaxAmt, DIFALO_TaxBaseAmt, FCP_TaxAmt, FCP_TaxBaseAmt) AS SELECT nf.LBR_NotaFiscal_ID AS LBR_NotaFiscal_ID, nf.AD_Org_ID AS AD_Org_ID, nf.AD_Client_ID AS AD_Client_ID, nf.IsActive AS IsActive, nf.Created AS Created, nf.CreatedBy AS CreatedBy, nf.Updated AS Updated, nf.UpdatedBy AS UpdatedBy, nf.Bill_Location_ID AS Bill_Location_ID, nf.BPName AS BPName, nf.C_BPartner_ID AS C_BPartner_ID, nf.C_BPartner_Location_ID AS C_BPartner_Location_ID, nf.C_DocType_ID AS C_DocType_ID, nf.C_DocTypeTarget_ID AS C_DocTypeTarget_ID, nf.C_Invoice_ID AS C_Invoice_ID, nf.C_Order_ID AS C_Order_ID, nf.C_PaymentTerm_ID AS C_PaymentTerm_ID, nf.DateDoc AS DateDoc, nf.DateTrx AS DateTrx, nf.DeliveryViaRule AS DeliveryViaRule, nf.Description AS Description, nf.DiscountAmt AS DiscountAmt, nf.DocStatus AS DocStatus, nf.DocumentNo AS DocumentNo, nf.FreightAmt AS FreightAmt, nf.FreightCostRule AS FreightCostRule, nf.GrandTotal AS GrandTotal, nf.IsCancelled AS IsCancelled, nf.IsPrinted AS IsPrinted, nf.IsSOTrx AS IsSOTrx, nf.LBR_BillNote AS LBR_BillNote, nf.LBR_BPAddress1 AS LBR_BPAddress1, nf.LBR_BPAddress2 AS LBR_BPAddress2, nf.LBR_BPAddress3 AS LBR_BPAddress3, nf.LBR_BPAddress4 AS LBR_BPAddress4, nf.LBR_BPCity AS LBR_BPCity, nf.LBR_BPCityCode AS LBR_BPCityCode, nf.LBR_BPCNPJ AS LBR_BPCNPJ, nf.LBR_BPCountry AS LBR_BPCountry, nf.LBR_BPCountryCode AS LBR_BPCountryCode, nf.LBR_BPDeliveryAddress1 AS LBR_BPDeliveryAddress1, nf.LBR_BPDeliveryAddress2 AS LBR_BPDeliveryAddress2, nf.LBR_BPDeliveryAddress3 AS LBR_BPDeliveryAddress3, nf.LBR_BPDeliveryAddress4 AS LBR_BPDeliveryAddress4, nf.LBR_BPDeliveryCity AS LBR_BPDeliveryCity, nf.LBR_BPDeliveryCityCode AS LBR_BPDeliveryCityCode, nf.LBR_BPDeliveryCNPJ AS LBR_BPDeliveryCNPJ, nf.LBR_BPDeliveryCountry AS LBR_BPDeliveryCountry, nf.LBR_BPDeliveryIE AS LBR_BPDeliveryIE, nf.LBR_BPDeliveryPostal AS LBR_BPDeliveryPostal, nf.LBR_BPDeliveryRegion AS LBR_BPDeliveryRegion, nf.LBR_BPIE AS LBR_BPIE, nf.LBR_BPInvoiceAddress1 AS LBR_BPInvoiceAddress1, nf.LBR_BPInvoiceAddress2 AS LBR_BPInvoiceAddress2, nf.LBR_BPInvoiceAddress3 AS LBR_BPInvoiceAddress3, nf.LBR_BPInvoiceAddress4 AS LBR_BPInvoiceAddress4, nf.LBR_BPInvoiceCity AS LBR_BPInvoiceCity, nf.LBR_BPInvoiceCNPJ AS LBR_BPInvoiceCNPJ, nf.LBR_BPInvoiceCountry AS LBR_BPInvoiceCountry, nf.LBR_BPInvoiceIE AS LBR_BPInvoiceIE, nf.LBR_BPInvoicePostal AS LBR_BPInvoicePostal, nf.LBR_BPInvoiceRegion AS LBR_BPInvoiceRegion, nf.LBR_BPPhone AS LBR_BPPhone, nf.LBR_BPPostal AS LBR_BPPostal, nf.LBR_BPRegion AS LBR_BPRegion, nf.LBR_BPShipperAddress AS LBR_BPShipperAddress, nf.LBR_BPShipperAddress1 AS LBR_BPShipperAddress1, nf.LBR_BPShipperAddress2 AS LBR_BPShipperAddress2, nf.LBR_BPShipperAddress3 AS LBR_BPShipperAddress3, nf.LBR_BPShipperAddress4 AS LBR_BPShipperAddress4, nf.LBR_BPShipperCity AS LBR_BPShipperCity, nf.LBR_BPShipperCNPJ AS LBR_BPShipperCNPJ, nf.LBR_BPShipperCountry AS LBR_BPShipperCountry, nf.LBR_BPShipperIE AS LBR_BPShipperIE, nf.LBR_BPShipperLicensePlate AS LBR_BPShipperLicensePlate, nf.LBR_BPShipperName AS LBR_BPShipperName, nf.LBR_BPShipperPostal AS LBR_BPShipperPostal, nf.LBR_BPShipperRegion AS LBR_BPShipperRegion, nf.LBR_BPSuframa AS LBR_BPSuframa, nf.LBR_BPTypeBR AS LBR_BPTypeBR, nf.LBR_Brand AS LBR_Brand, nf.LBR_CFOPNote AS LBR_CFOPNote, nf.LBR_CNPJ AS LBR_CNPJ, nf.LBR_DateInOut AS LBR_DateInOut, nf.LBR_DE_ID AS LBR_DE_ID, nf.LBR_Delivery_Location_ID AS LBR_Delivery_Location_ID, nf.LBR_FinNFe AS LBR_FinNFe, nf.LBR_FiscalOBS AS LBR_FiscalOBS, nf.LBR_FreightCostRule AS LBR_FreightCostRule, nf.LBR_GrossWeight AS LBR_GrossWeight, nf.LBR_IE AS LBR_IE, nf.LBR_IndIEDest AS LBR_IndIEDest, nf.LBR_IndPres AS LBR_IndPres, nf.LBR_InsuranceAmt AS LBR_InsuranceAmt, nf.LBR_IsOwnDocument AS LBR_IsOwnDocument, nf.LBR_MotivoCancel AS LBR_MotivoCancel, nf.LBR_NetWeight AS LBR_NetWeight, nf.LBR_NFeDesc AS LBR_NFeDesc, nf.LBR_NFeEnv AS LBR_NFeEnv, nf.LBR_NFeID AS LBR_NFeID, nf.LBR_NFeLot_ID AS LBR_NFeLot_ID, nf.LBR_NFENo AS LBR_NFENo, nf.LBR_NFeStatus AS LBR_NFeStatus, nf.LBR_NFModel AS LBR_NFModel, nf.LBR_NFSerie AS LBR_NFSerie, nf.LBR_NFType AS LBR_NFType, nf.LBR_OrgAddress1 AS LBR_OrgAddress1, nf.LBR_OrgAddress2 AS LBR_OrgAddress2, nf.LBR_OrgAddress3 AS LBR_OrgAddress3, nf.LBR_OrgAddress4 AS LBR_OrgAddress4, nf.LBR_OrgCCM AS LBR_OrgCCM, nf.LBR_OrgCity AS LBR_OrgCity, nf.LBR_OrgCountry AS LBR_OrgCountry, nf.LBR_OrgName AS LBR_OrgName, nf.LBR_OrgPhone AS LBR_OrgPhone, nf.LBR_OrgPostal AS LBR_OrgPostal, nf.LBR_OrgRegion AS LBR_OrgRegion, nf.LBR_OtherChargesAmt AS LBR_OtherChargesAmt, nf.LBR_PackingType AS LBR_PackingType, nf.LBR_ServiceTotalAmt AS LBR_ServiceTotalAmt, nf.LBR_Ship_Location_ID AS LBR_Ship_Location_ID, nf.LBR_ShipNote AS LBR_ShipNote, nf.LBR_TimeInOut AS LBR_TimeInOut, nf.LBR_TotalCIF AS LBR_TotalCIF, nf.LBR_TotalSISCOMEX AS LBR_TotalSISCOMEX, nf.LBR_TPEmis AS LBR_TPEmis, nf.LBR_TransactionType AS LBR_TransactionType, nf.M_InOut_ID AS M_InOut_ID, nf.M_Shipper_ID AS M_Shipper_ID, nf.NoPackages AS NoPackages, nf.Org_Location_ID AS Org_Location_ID, nf.TotalLines AS TotalLines, icms.LBR_TaxAmt AS ICMS_TaxAmt, icms.LBR_TaxBaseAmt AS ICMS_TaxBaseAmt, pis.LBR_TaxAmt AS PIS_TaxAmt, pis.LBR_TaxBaseAmt AS PIS_TaxBaseAmt, cofins.LBR_TaxAmt AS COFINS_TaxAmt, cofins.LBR_TaxBaseAmt AS COFINS_TaxBaseAmt, ipi.LBR_TaxAmt AS IPI_TaxAmt, ipi.LBR_TaxBaseAmt AS IPI_TaxBaseAmt, icmsst.LBR_TaxAmt AS ICMSST_TaxAmt, icmsst.LBR_TaxBaseAmt  AS ICMSST_TaxBaseAmt , difal.LBR_TaxAmt AS DIFAL_TaxAmt, difal.LBR_TaxBaseAmt AS DIFAL_TaxBaseAmt, difalo.LBR_TaxAmt AS DIFALO_TaxAmt, difalo.LBR_TaxBaseAmt AS DIFALO_TaxBaseAmt, fcp.LBR_TaxAmt AS FCP_TaxAmt, fcp.LBR_TaxBaseAmt AS FCP_TaxBaseAmt FROM LBR_NotaFiscal nf 
LEFT JOIN LBR_NFTax_v icms ON (nf.LBR_NotaFiscal_ID=icms.LBR_NotaFiscal_ID AND icms.TaxIndicator='ICMS')
LEFT JOIN LBR_NFTax_v pis ON (nf.LBR_NotaFiscal_ID=pis.LBR_NotaFiscal_ID AND pis.TaxIndicator='PIS')
LEFT JOIN LBR_NFTax_v cofins ON (nf.LBR_NotaFiscal_ID=cofins.LBR_NotaFiscal_ID AND cofins.TaxIndicator='COFINS')
LEFT JOIN LBR_NFTax_v ipi ON (nf.LBR_NotaFiscal_ID=ipi.LBR_NotaFiscal_ID AND ipi.TaxIndicator='IPI')
LEFT JOIN LBR_NFTax_v icmsst ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='ICMSST')
LEFT JOIN LBR_NFTax_v difal ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='ICMSDIFAL')
LEFT JOIN LBR_NFTax_v difalo ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='ICMSDIFALORIG')
LEFT JOIN LBR_NFTax_v fcp ON (nf.LBR_NotaFiscal_ID=icmsst.LBR_NotaFiscal_ID AND icmsst.TaxIndicator='FCP')
;

-- 22/05/2018 10h22min5s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122457,0,0,'Y',TO_DATE('2018-05-22 10:22:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:04','YYYY-MM-DD HH24:MI:SS'),100,'difal_taxamt','difal_taxamt','difal_taxamt','LBRA','fcfb14a7-7cb0-4894-8970-648692e2693b')
;

-- 22/05/2018 10h22min5s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130252,0.0,'difal_taxamt',1120567,'difal_taxamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:04','YYYY-MM-DD HH24:MI:SS'),100,1122457,'N','N','LBRA','N','927adba3-bc6b-4894-be23-c227edeec2df','N')
;

-- 22/05/2018 10h22min5s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122458,0,0,'Y',TO_DATE('2018-05-22 10:22:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:05','YYYY-MM-DD HH24:MI:SS'),100,'difal_taxbaseamt','difal_taxbaseamt','difal_taxbaseamt','LBRA','cd1f0ae9-20c7-400b-a7e6-9044d7fd7a48')
;

-- 22/05/2018 10h22min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130253,0.0,'difal_taxbaseamt',1120567,'difal_taxbaseamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:05','YYYY-MM-DD HH24:MI:SS'),100,1122458,'N','N','LBRA','N','fd41fb94-fc41-4267-b52e-cfde23fd1db3','N')
;

-- 22/05/2018 10h22min6s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122459,0,0,'Y',TO_DATE('2018-05-22 10:22:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:06','YYYY-MM-DD HH24:MI:SS'),100,'difalo_taxamt','difalo_taxamt','difalo_taxamt','LBRA','90af0a4b-1a5e-4d4e-a3be-fa3bc1078afb')
;

-- 22/05/2018 10h22min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130254,0.0,'difalo_taxamt',1120567,'difalo_taxamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:06','YYYY-MM-DD HH24:MI:SS'),100,1122459,'N','N','LBRA','N','dcdfd0af-79c8-4b71-b812-29555440bde8','N')
;

-- 22/05/2018 10h22min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122460,0,0,'Y',TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,'difalo_taxbaseamt','difalo_taxbaseamt','difalo_taxbaseamt','LBRA','479c68aa-83ab-4ba1-a93e-258e8c0a4331')
;

-- 22/05/2018 10h22min7s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130255,0.0,'difalo_taxbaseamt',1120567,'difalo_taxbaseamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,1122460,'N','N','LBRA','N','81140db0-b26f-4cef-a497-d163c5662bbb','N')
;

-- 22/05/2018 10h22min7s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122461,0,0,'Y',TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,'fcp_taxamt','fcp_taxamt','fcp_taxamt','LBRA','c274cdb6-56aa-4911-adc9-68a37e7b388c')
;

-- 22/05/2018 10h22min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130256,0.0,'fcp_taxamt',1120567,'fcp_taxamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:07','YYYY-MM-DD HH24:MI:SS'),100,1122461,'N','N','LBRA','N','1497c18b-b3b9-4d89-b2d3-c680646da126','N')
;

-- 22/05/2018 10h22min8s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122462,0,0,'Y',TO_DATE('2018-05-22 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,'fcp_taxbaseamt','fcp_taxbaseamt','fcp_taxbaseamt','LBRA','2a81a6d0-32f0-49f4-ac5f-483540ba44f4')
;

-- 22/05/2018 10h22min8s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1130257,0.0,'fcp_taxbaseamt',1120567,'fcp_taxbaseamt',131089,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-05-22 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-05-22 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,1122462,'N','N','LBRA','N','6f8eb81d-c8ba-4920-8ec0-5c1b1d6c228e','N')
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='COFINS', PrintName='COFINS',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121874
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='cofins_taxamt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxamt', Name='COFINS', Description=NULL, Help=NULL, AD_Element_ID=1121874 WHERE UPPER(ColumnName)='COFINS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxamt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_InfoColumn SET ColumnName='cofins_taxamt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Field SET Name='COFINS', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121874) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='COFINS', Name='COFINS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121874)
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='COFINS Base', PrintName='COFINS Base',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121871
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='cofins_taxbaseamt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxbaseamt', Name='COFINS Base', Description=NULL, Help=NULL, AD_Element_ID=1121871 WHERE UPPER(ColumnName)='COFINS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='cofins_taxbaseamt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_InfoColumn SET ColumnName='cofins_taxbaseamt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Field SET Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121871) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='COFINS Base', Name='COFINS Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121871)
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='DIFAL', PrintName='DIFAL',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122457
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='difal_taxamt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxamt', Name='DIFAL', Description=NULL, Help=NULL, AD_Element_ID=1122457 WHERE UPPER(ColumnName)='DIFAL_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxamt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_InfoColumn SET ColumnName='difal_taxamt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Field SET Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122457) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFAL', Name='DIFAL' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122457)
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='DIFAL Base', PrintName='DIFAL Base',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122458
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='difal_taxbaseamt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxbaseamt', Name='DIFAL Base', Description=NULL, Help=NULL, AD_Element_ID=1122458 WHERE UPPER(ColumnName)='DIFAL_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difal_taxbaseamt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_InfoColumn SET ColumnName='difal_taxbaseamt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Field SET Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122458) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFAL Base', Name='DIFAL Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122458)
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='DIFALO', PrintName='DIFALO',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122459
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='difalo_taxamt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxamt', Name='DIFALO', Description=NULL, Help=NULL, AD_Element_ID=1122459 WHERE UPPER(ColumnName)='DIFALO_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxamt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_InfoColumn SET ColumnName='difalo_taxamt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Field SET Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122459) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFALO', Name='DIFALO' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122459)
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Element SET Name='DIFALO Base', PrintName='DIFALO Base',Updated=TO_DATE('2018-05-22 10:30:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122460
;

-- 22/05/2018 10h30min30s BRT
UPDATE AD_Column SET ColumnName='difalo_taxbaseamt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxbaseamt', Name='DIFALO Base', Description=NULL, Help=NULL, AD_Element_ID=1122460 WHERE UPPER(ColumnName)='DIFALO_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='difalo_taxbaseamt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='difalo_taxbaseamt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122460) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='DIFALO Base', Name='DIFALO Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122460)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='FCP', PrintName='FCP',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122461
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='fcp_taxamt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxamt', Name='FCP', Description=NULL, Help=NULL, AD_Element_ID=1122461 WHERE UPPER(ColumnName)='FCP_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxamt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='fcp_taxamt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='FCP', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122461) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='FCP', Name='FCP' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122461)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='FCP Base', PrintName='FCP Base',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122462
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='fcp_taxbaseamt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxbaseamt', Name='FCP Base', Description=NULL, Help=NULL, AD_Element_ID=1122462 WHERE UPPER(ColumnName)='FCP_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='fcp_taxbaseamt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='fcp_taxbaseamt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122462) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='FCP Base', Name='FCP Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122462)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='ICMS', PrintName='ICMS',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121864
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='icms_taxamt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxamt', Name='ICMS', Description=NULL, Help=NULL, AD_Element_ID=1121864 WHERE UPPER(ColumnName)='ICMS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxamt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='icms_taxamt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='ICMS', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121864) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS', Name='ICMS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121864)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='ICMS Base', PrintName='ICMS Base',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121861
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='icms_taxbaseamt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxbaseamt', Name='ICMS Base', Description=NULL, Help=NULL, AD_Element_ID=1121861 WHERE UPPER(ColumnName)='ICMS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icms_taxbaseamt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='icms_taxbaseamt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121861) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMS Base', Name='ICMS Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121861)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='ICMSST', PrintName='ICMSST',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121879
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='icmsst_taxamt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxamt', Name='ICMSST', Description=NULL, Help=NULL, AD_Element_ID=1121879 WHERE UPPER(ColumnName)='ICMSST_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxamt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_InfoColumn SET ColumnName='icmsst_taxamt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Field SET Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121879) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST', Name='ICMSST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121879)
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Element SET Name='ICMSST Base', PrintName='ICMSST Base',Updated=TO_DATE('2018-05-22 10:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121876
;

-- 22/05/2018 10h30min31s BRT
UPDATE AD_Column SET ColumnName='icmsst_taxbaseamt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxbaseamt', Name='ICMSST Base', Description=NULL, Help=NULL, AD_Element_ID=1121876 WHERE UPPER(ColumnName)='ICMSST_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='icmsst_taxbaseamt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='icmsst_taxbaseamt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121876) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='ICMSST Base', Name='ICMSST Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121876)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='II', PrintName='II',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121887
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='ii_taxamt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ii_taxamt', Name='II', Description=NULL, Help=NULL, AD_Element_ID=1121887 WHERE UPPER(ColumnName)='II_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ii_taxamt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='ii_taxamt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='II', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121887) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='II', Name='II' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121887)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='II Base', PrintName='II Base',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121885
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='ii_taxbaseamt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ii_taxbaseamt', Name='II Base', Description=NULL, Help=NULL, AD_Element_ID=1121885 WHERE UPPER(ColumnName)='II_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ii_taxbaseamt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='ii_taxbaseamt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='II Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121885) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='II Base', Name='II Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121885)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='IPI', PrintName='IPI',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121883
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='ipi_taxamt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxamt', Name='IPI', Description=NULL, Help=NULL, AD_Element_ID=1121883 WHERE UPPER(ColumnName)='IPI_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxamt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='ipi_taxamt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='IPI', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121883) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='IPI', Name='IPI' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121883)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='IPI Base', PrintName='IPI Base',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121881
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='ipi_taxbaseamt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxbaseamt', Name='IPI Base', Description=NULL, Help=NULL, AD_Element_ID=1121881 WHERE UPPER(ColumnName)='IPI_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='ipi_taxbaseamt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='ipi_taxbaseamt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121881) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='IPI Base', Name='IPI Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121881)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='PIS', PrintName='PIS',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121869
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='pis_taxamt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxamt', Name='PIS', Description=NULL, Help=NULL, AD_Element_ID=1121869 WHERE UPPER(ColumnName)='PIS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxamt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='pis_taxamt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='PIS', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121869) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='PIS', Name='PIS' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121869)
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Element SET Name='PIS Base', PrintName='PIS Base',Updated=TO_DATE('2018-05-22 10:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121866
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Column SET ColumnName='pis_taxbaseamt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxbaseamt', Name='PIS Base', Description=NULL, Help=NULL, AD_Element_ID=1121866 WHERE UPPER(ColumnName)='PIS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Process_Para SET ColumnName='pis_taxbaseamt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_InfoColumn SET ColumnName='pis_taxbaseamt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_Field SET Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121866) AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h30min32s BRT
UPDATE AD_PrintFormatItem SET PrintName='PIS Base', Name='PIS Base' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121866)
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Element SET ColumnName='COFINS_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121874
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Column SET ColumnName='COFINS_TaxAmt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxAmt', Name='COFINS', Description=NULL, Help=NULL, AD_Element_ID=1121874 WHERE UPPER(ColumnName)='COFINS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxAmt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_InfoColumn SET ColumnName='COFINS_TaxAmt', Name='COFINS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121874 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Element SET ColumnName='COFINS_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121871
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Column SET ColumnName='COFINS_TaxBaseAmt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxBaseAmt', Name='COFINS Base', Description=NULL, Help=NULL, AD_Element_ID=1121871 WHERE UPPER(ColumnName)='COFINS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='COFINS_TaxBaseAmt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_InfoColumn SET ColumnName='COFINS_TaxBaseAmt', Name='COFINS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121871 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Element SET ColumnName='DIFAL_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122457
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Column SET ColumnName='DIFAL_TaxAmt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxAmt', Name='DIFAL', Description=NULL, Help=NULL, AD_Element_ID=1122457 WHERE UPPER(ColumnName)='DIFAL_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxAmt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFAL_TaxAmt', Name='DIFAL', Description=NULL, Help=NULL WHERE AD_Element_ID=1122457 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Element SET ColumnName='DIFAL_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122458
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Column SET ColumnName='DIFAL_TaxBaseAmt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxBaseAmt', Name='DIFAL Base', Description=NULL, Help=NULL, AD_Element_ID=1122458 WHERE UPPER(ColumnName)='DIFAL_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_Process_Para SET ColumnName='DIFAL_TaxBaseAmt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min16s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFAL_TaxBaseAmt', Name='DIFAL Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122458 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='DIFALO_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122459
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='DIFALO_TaxAmt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxAmt', Name='DIFALO', Description=NULL, Help=NULL, AD_Element_ID=1122459 WHERE UPPER(ColumnName)='DIFALO_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxAmt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFALO_TaxAmt', Name='DIFALO', Description=NULL, Help=NULL WHERE AD_Element_ID=1122459 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='DIFALO_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122460
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='DIFALO_TaxBaseAmt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxBaseAmt', Name='DIFALO Base', Description=NULL, Help=NULL, AD_Element_ID=1122460 WHERE UPPER(ColumnName)='DIFALO_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='DIFALO_TaxBaseAmt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='DIFALO_TaxBaseAmt', Name='DIFALO Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122460 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='FCP_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122461
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='FCP_TaxAmt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxAmt', Name='FCP', Description=NULL, Help=NULL, AD_Element_ID=1122461 WHERE UPPER(ColumnName)='FCP_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxAmt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='FCP_TaxAmt', Name='FCP', Description=NULL, Help=NULL WHERE AD_Element_ID=1122461 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='FCP_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122462
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='FCP_TaxBaseAmt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxBaseAmt', Name='FCP Base', Description=NULL, Help=NULL, AD_Element_ID=1122462 WHERE UPPER(ColumnName)='FCP_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='FCP_TaxBaseAmt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='FCP_TaxBaseAmt', Name='FCP Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1122462 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='ICMS_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121864
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='ICMS_TaxAmt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxAmt', Name='ICMS', Description=NULL, Help=NULL, AD_Element_ID=1121864 WHERE UPPER(ColumnName)='ICMS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxAmt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_TaxAmt', Name='ICMS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121864 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='ICMS_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121861
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='ICMS_TaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL, AD_Element_ID=1121861 WHERE UPPER(ColumnName)='ICMS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMS_TaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMS_TaxBaseAmt', Name='ICMS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121861 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='ICMSST_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121879
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='ICMSST_TaxAmt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxAmt', Name='ICMSST', Description=NULL, Help=NULL, AD_Element_ID=1121879 WHERE UPPER(ColumnName)='ICMSST_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxAmt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_TaxAmt', Name='ICMSST', Description=NULL, Help=NULL WHERE AD_Element_ID=1121879 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='ICMSST_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121876
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='ICMSST_TaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL, AD_Element_ID=1121876 WHERE UPPER(ColumnName)='ICMSST_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='ICMSST_TaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='ICMSST_TaxBaseAmt', Name='ICMSST Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121876 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='II_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121887
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='II_TaxAmt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxAmt', Name='II', Description=NULL, Help=NULL, AD_Element_ID=1121887 WHERE UPPER(ColumnName)='II_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxAmt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='II_TaxAmt', Name='II', Description=NULL, Help=NULL WHERE AD_Element_ID=1121887 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='II_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121885
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='II_TaxBaseAmt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxBaseAmt', Name='II Base', Description=NULL, Help=NULL, AD_Element_ID=1121885 WHERE UPPER(ColumnName)='II_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='II_TaxBaseAmt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='II_TaxBaseAmt', Name='II Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121885 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='IPI_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121883
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='IPI_TaxAmt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxAmt', Name='IPI', Description=NULL, Help=NULL, AD_Element_ID=1121883 WHERE UPPER(ColumnName)='IPI_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxAmt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='IPI_TaxAmt', Name='IPI', Description=NULL, Help=NULL WHERE AD_Element_ID=1121883 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='IPI_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121881
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='IPI_TaxBaseAmt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxBaseAmt', Name='IPI Base', Description=NULL, Help=NULL, AD_Element_ID=1121881 WHERE UPPER(ColumnName)='IPI_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='IPI_TaxBaseAmt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='IPI_TaxBaseAmt', Name='IPI Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121881 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='PIS_TaxAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121869
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='PIS_TaxAmt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxAmt', Name='PIS', Description=NULL, Help=NULL, AD_Element_ID=1121869 WHERE UPPER(ColumnName)='PIS_TAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxAmt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='PIS_TaxAmt', Name='PIS', Description=NULL, Help=NULL WHERE AD_Element_ID=1121869 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Element SET ColumnName='PIS_TaxBaseAmt',Updated=TO_DATE('2018-05-22 10:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121866
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Column SET ColumnName='PIS_TaxBaseAmt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxBaseAmt', Name='PIS Base', Description=NULL, Help=NULL, AD_Element_ID=1121866 WHERE UPPER(ColumnName)='PIS_TAXBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_Process_Para SET ColumnName='PIS_TaxBaseAmt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866 AND IsCentrallyMaintained='Y'
;

-- 22/05/2018 10h32min17s BRT
UPDATE AD_InfoColumn SET ColumnName='PIS_TaxBaseAmt', Name='PIS Base', Description=NULL, Help=NULL WHERE AD_Element_ID=1121866 AND IsCentrallyMaintained='Y'
;

SELECT Register_Migration_Script ('201805221030_DIFAL_RV_LBR_NotaFiscal.sql') FROM DUAL
;
