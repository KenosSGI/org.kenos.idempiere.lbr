-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16 de abr de 2020 23:37:29 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,Help,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (1120163,'Simple Order (Other Out)','Enter and change simple orders (other out)','The Simple Order Window allows you to enter and modify Simple Orders. Only Out Operation.',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:37:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:37:28','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N','N','f7c14fb8-3f9e-4869-a4bb-e9965b986775')
;

-- 16 de abr de 2020 23:38:02 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,AD_Process_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120365,'Order','Order Header','The Order Header Tab defines the parameters of an Order. Changing the Organization, Business Partner, Warehouse, Date Promised, etc. changes these values on all the lines. ',1120163,10,'Y',259,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:02','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','C_Order.IsSOTrx=''Y''',110,'N',0,'N','LBRA','Y','N','dd83bea4-5557-4610-a6b8-b9d27dfbf915','B')
;

-- 16 de abr de 2020 23:38:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128892,'Weight','Weight of a product','The Weight indicates the weight  of the product in the Weight UOM of the Client',1120365,15900,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3b3133c-1b42-4547-b1b2-ec1be5eeaeb0','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:03 BRT
INSERT INTO AD_Field (AD_FieldSELECT Register_Migration_Script ('202005261800_NewWindowSimpleOtherInOut.sql') FROM DUAL
;_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128893,'Referenced Order','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120365,10926,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','754b1c49-5170-4730-8d54-d799e61cc170','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128894,'Send EMail','Enable sending Document EMail','Send emails with document attached (e.g. Invoice, Delivery Note, etc.)',1120365,8166,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b6dafa47-ec8f-449d-8ece-9e33377d9d71','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128895,'Approved','Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.',1120365,2175,'N','@OrderType@=''SO'' ',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','fa8e86fe-38f9-4bf3-9370-ef532c3d13b2','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128896,'Transferred','Transferred to General Ledger (i.e. accounted)','The transferred checkbox indicates if the transactions associated with this document should be transferred to the General Ledger.',1120365,2180,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:04','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','15c2d916-48fb-42c6-88e9-094ec88b8555','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128897,'Credit Approved','Credit  has been approved','Credit Approved indicates if the credit approval was successful for Orders',1120365,2176,'N','@OrderType@=''SO''',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:05','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','e34aa596-44d5-4da3-9c61-66e5d66aeb23','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128898,'Printed','Indicates if this document / line is printed','The Printed checkbox indicates if this document or line will included when printing.',1120365,2179,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:05','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','bb44e16f-a129-4b8c-8e8e-0b0c40097450','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128899,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120365,2164,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60b87cea-b922-47f2-b09b-85058c907260','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128900,'Processed On','The date+time (expressed in decimal format) when the document has been processed','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.',1120365,59038,'N',20,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c55448ab-ac0c-49a5-837b-572b69ad9d8b','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128901,'Volume','Volume of a product','The Volume indicates the volume of the product in the Volume UOM of the Client',1120365,15899,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','239ada1a-cd66-4804-9a82-59c44091fa6b','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128902,'Date printed','Date the document was printed.','Indicates the Date that a document was printed.',1120365,3719,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1c519595-cb87-4502-8996-fca5756845d4','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128903,'POS Terminal','Point of Sales Terminal','The POS Terminal defines the defaults and functions available for the POS Form',1120365,52070,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','908490b1-c067-4fe7-a80c-e880490d0a82','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128904,'AmountRefunded',1120365,52065,'N',22,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','667a5bf5-4adf-4f14-af6e-f54e5e8516a8','N',4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128905,'Process Now',1120365,2453,'N',23,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5f40e048-e55b-4d43-8c6b-9bfc2038666e','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128906,'Cash Journal Line','Cash Journal Line','The Cash Journal Line indicates a unique line in a cash journal.',1120365,5349,'N',26,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e74e2953-bb60-41b7-baa2-4f499e4c9bcb','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128907,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120365,2183,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','69edcbd5-7c45-44f9-aaf8-5a01612b97d2','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128908,'Payment BPartner','Business Partner responsible for the payment',1120365,10925,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','19a730a7-f1f3-4b5f-91be-aabcc6e5db9b','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128909,'Payment Location','Location of the Business Partner responsible for the payment',1120365,10924,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bb0f720e-909a-4678-8582-215feeada311','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128910,'AmountTendered',1120365,52064,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90207c97-7f2e-4df1-9574-3fe411a85980','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128911,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120365,2161,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0f9dc5c5-9ef4-4820-bdcb-2e4e4f48ef78','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128912,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120365,5348,'N',26,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a93fd051-0eff-4c80-9595-2cfbc9419939','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128913,'Linked Order','This field links a sales order to the purchase order that is generated from it.',1120365,55322,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6fa57d86-da76-4b5b-9115-d6b430217856','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128914,'C_Order_UU',1120365,60715,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8ec9f29f-0e76-45c0-aefc-e5be56e81298','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128915,'Delivered',1120365,2177,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','684629d1-eca7-4fec-a8ca-ac66d64c6be9','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128916,'Invoiced','Is this invoiced?','If selected, invoices are created',1120365,2178,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','58870984-1e35-4473-a040-e7b03b356214','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128917,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120365,3718,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4be1ddb0-9182-4f5f-ae4a-da64a49da067','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128918,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120365,3398,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d8a009b7-8dae-496b-9c40-8b98370da3c6','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128919,'Selected',1120365,4699,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d257226c-caae-44f9-8d81-0293025006f4','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128920,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120365,4651,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','964567a1-cea4-44c0-860c-d1bd5866194e','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128921,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120365,2162,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','735373b1-4910-474f-b9dd-2ef96de85d5a','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128922,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120365,2163,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8a833d4a-f887-4919-bd69-cf0defb18c80','Y','Y',10,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128923,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120365,2169,'Y',20,30,-1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2da4f115-3dac-408d-b1e5-8155f41eb6fd','N','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128924,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',1120365,3045,'Y',11,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e9e83242-b001-4d88-9267-0d2c8c48566d','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128925,'Description','Optional short description of the record','A description is limited to 255 characters.',1120365,2174,'Y',60,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','47b3bcf3-7a50-46ce-a24f-92cc3c609587','N',0,1,5,3,'N','N','N')
;

-- 16 de abr de 2020 23:38:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128926,'Transaction Type','Defines the Transaction Type','Defines the Transaction Type',1120365,1000469,'Y',3,51,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7712202c-e72c-43f5-96cf-999227371abb','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128927,'Indicação de Atendimento Presencial','Indicador de presença do comprador no estabelecimento comercial no momento da operação',1120365,1126445,'Y','@lbr_TransactionType@ = ''END''',22,52,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0380752f-9c49-4666-95f0-fbcbcc519dec','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128928,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120365,2173,'Y',14,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e477b37-13b4-491c-bc6c-78c283f44e5b','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128929,'Self-Service','This is a Self-Service entry or this entry can be changed via Self-Service','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.',1120365,8832,'N',1,80,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ad41d97b-febb-437d-a828-04d3fb0406a6','N','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128930,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120365,2181,'Y',14,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0ec4e66c-b612-4e52-8ac5-80f6927c89a1','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128931,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120365,2182,'Y','@OrderType@=''OB'' | @OrderType@=''SO''',14,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','95eff438-091f-4c6d-ac91-7d1109626407','Y',50,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128932,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120365,2762,'Y',26,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a90c93a7-49bd-41a4-b046-97355582d360','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128933,'Invoice Partner','Business Partner to be invoiced','If empty the shipment business partner will be invoiced',1120365,8764,'Y',14,120,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1d159a00-062c-4d83-ae2e-ad6782dffe97','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128934,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120365,3400,'Y',14,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','45812f53-a9a3-42a6-bcb5-573fb4128a06','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128935,'Invoice Location','Business Partner Location for invoicing',1120365,8766,'Y',14,140,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e73ffe10-db3c-465b-b7b1-6111f970a41c','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128936,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1120365,2763,'Y',14,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','41f15899-0820-401d-8d15-e0e9daabce37','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128937,'Order Source',1120365,58409,'Y',160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b43e63a-0efa-4ae5-af91-6a8a46b2988f','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128938,'Invoice Contact','Business Partner Contact for invoicing',1120365,8763,'Y',14,160,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c5c291e6-384a-4e8e-8e8f-cb18e4dec057','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128939,'Delivery Rule','Defines the timing of Delivery','The Delivery Rule indicates when an order should be delivered. For example should the order be delivered when the entire order is complete, when a line is complete or as the products become available.',1120365,3721,'Y','@OrderType@=''SO''',14,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','4829204c-1b67-4230-8cef-04da9a8ae4b3','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128940,'Priority','Priority of a document','The Priority indicates the importance (high, medium, low) of this document',1120365,2198,'Y','@OrderType@=''SO''',14,180,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','f79f2636-0e38-42d6-91a5-c963e084cd75','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128941,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120365,2202,'Y',14,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','8703dbc3-a4b4-4ecd-b360-5261ab9d317f','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128942,'Drop Shipment','Drop Shipments are sent from the Vendor directly to the Customer','Drop Shipments do not cause any Inventory reservations or movements as the Shipment is from the Vendor''s inventory. The Shipment of the Vendor to the Customer must be confirmed.',1120365,11580,'Y','@OrderType@=''SO'' ',1,200,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','4877dd75-0803-4bf2-8709-96885a2860ca','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128943,'Drop Ship Business Partner','Business Partner to ship to','If empty the business partner will be shipped to.',1120365,55314,'Y','@IsDropShip@=''Y''',14,201,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','c9b32f30-c4a5-4422-9c27-7ca9f877d243','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128944,'Drop Shipment Location','Business Partner Location for shipping to',1120365,55315,'Y','@IsDropShip@=''Y''',14,210,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','0e609de1-436b-44a1-8d5a-4f4a283f1af4','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128945,'Drop Shipment Contact','Business Partner Contact for drop shipment',1120365,55316,'Y','@IsDropShip@=''Y''',14,215,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','f0d1281b-d1f7-4aa9-b39c-9f1ab2a4513c','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128946,'Delivery Via','How the order will be delivered','The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.',1120365,2196,'Y','@OrderType@=''SO''',14,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','670132ef-658f-44f0-92ba-f55098fe01ae','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128947,'Shipper','Method or manner of product delivery','The Shipper indicates the method of delivering product',1120365,2197,'Y','@DeliveryViaRule@=''S'' & @OrderType@=''SO''',14,225,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','34dd7334-a31d-4415-9910-2ad6265fbb62','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128948,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120365,3722,'Y','@OrderType@=''SO''',14,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','d8516f7a-caa8-4ccd-8be0-4c49f660eaf5','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128949,'Freight Category','Category of the Freight','Freight Categories are used to calculate the Freight for the Shipper selected',1120365,56376,'Y','@DeliveryViaRule@=''S'' & @OrderType@=''SO''',14,240,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','1517b710-905f-42d8-9eef-ce89ae6ef592','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128950,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',1120365,2195,'Y','@OrderType@=''SO'' & @FreightCostRule@=''F''',26,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','389433df-54bc-4be6-b43e-78ed912bcc59','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128951,'Priviledged Rate',1120365,208596,'Y','@OrderType@=''SO'' & @FreightCostRule@=''C''',1,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','00c01d41-09a0-4221-b575-286527242994','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128952,'Rate Inquiry',1120365,206766,'Y','@DeliveryViaRule@=''S'' & @OrderType@=''SO''',1,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','28425f48-5e11-4d04-905e-c9b20faf5073','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128953,'Invoice Rule','Frequency and method of invoicing ','The Invoice Rule defines how a Business Partner is invoiced and the frequency of invoicing.',1120365,2192,'Y','@OrderType@=''SO'' | @OrderType@=''WP''',14,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','7f090ba6-0721-42e3-80db-9b49b13e3a4e','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128954,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120365,1123946,'Y',1,301,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','847d345c-b00a-4371-bd1e-bdca8ba22c3d','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128955,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120365,2204,'Y',14,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','fd7ef017-569d-42c2-b1ab-dc6a08091f90','Y',90,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128956,'Has Withhold','Defines if the Tax, has Withhold','Defines if the Tax, has Withhold',1120365,1126616,'Y',14,315,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','335a0fbc-fa4b-4969-a0c2-df4148bdaf04','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128957,'Promotion Code','User entered promotion code at sales time','If present, user entered the promotion code at sales time to get this promotion',1120365,57127,'Y',20,320,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8d1ef813-46ab-4b36-9731-96d6fb035299','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128958,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120365,2191,'Y',14,325,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',131,'LBRA','566eb406-f75a-43be-a068-5e487ecaf356','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128959,'Currency Type','Currency Conversion Rate Type','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',1120365,10297,'Y','@C_Currency_ID@!@$C_Currency_ID@',14,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','fd55c5e6-a5d4-4976-9ab1-f954674fbf32','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128960,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120365,2186,'Y',14,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d9139a3c-7797-4278-8c7b-5dcc2b6e462a','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128961,'Discount Printed','Print Discount on Invoice and Order','The Discount Printed Checkbox indicates if the discount will be printed on the document.',1120365,4298,'Y',1,350,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cdb1264f-4ec4-4752-b822-afc3ef984ed1','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128962,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120365,3046,'Y','@HasCharges@=''Y''',14,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','81f9c1eb-b4a9-4860-b2ab-885fd3f9c016','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128963,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120365,3047,'Y','@HasCharges@=''Y''',26,370,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fd72a9b4-ee04-4847-bfad-9c919dfc91d6','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128964,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120365,4019,'Y',23,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','11e9aeef-a8a1-437a-a54a-347afbee186e','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128965,'Payment Term','The terms of Payment (timing, discount)','Payment Terms identify the method and timing of payment.',1120365,2187,'Y','@PaymentRule@=''P'' | @PaymentRule@=''D''',14,390,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e5111d8c-d16a-423f-a585-970a9e23ee2f','Y',100,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128966,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120365,3402,'Y','@$Element_PJ@=''Y''',14,410,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','490c3256-42b5-4643-b7ec-1a7ba90e7706','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128967,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120365,3403,'Y','@$Element_AY@=''Y''',14,420,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','3c66cb24-598d-4059-8170-8b4443fd34b5','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128968,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120365,2454,'Y','@$Element_MC@=Y',14,430,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','1f1bcb3f-e337-45e1-92b5-df03a2e81376','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128969,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120365,9331,'Y','@$Element_OT@=Y',14,440,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','593f6644-28ea-4fda-ab4e-064b3f6b2b21','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128970,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120365,9569,'Y','@$Element_U1@=Y',14,450,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','ccf26b5b-14b1-43e5-8b4a-91740677763f','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128971,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120365,9568,'Y','@$Element_U2@=Y',14,460,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','fb869315-8409-4e17-989b-0750c654f0ff','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128972,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',1120365,2200,'Y',26,470,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','eade8221-6450-4362-b65d-6a2851cb4fb0','N','Y',110,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128973,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120365,2201,'Y',26,480,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','18fd9032-2963-4adc-8f19-a1c9c189dcf4','N','Y',120,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128974,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120365,2170,'Y',14,490,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','614878bb-59aa-4142-98b8-7c0e7d07428d','N','Y',130,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128975,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120365,2172,'Y',14,500,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','009fcc12-2141-4013-a3ac-e7293a9891f9','N','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128976,'Pay Schedule valid','Is the Payment Schedule is valid','Payment Schedules allow to have multiple due dates.',1120365,60152,'Y',1,510,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','781bc6bf-6cad-45ef-9107-537ae9ccf699','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128977,'Copy From','Copy From Record','Copy From Record',1120365,8765,'Y',23,520,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','4d29cdaa-1dd0-45ec-bb02-625a67047406','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128978,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120365,2171,'Y',23,530,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','c5d2373f-397d-465a-859d-3449b9d05ccb','N','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128979,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120365,4650,'Y','@Processed@=Y & @#ShowAcct@=Y',23,550,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','862b4d86-30c2-4809-8c31-4bfaaddc7847','N','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128980,'Order Type','Type of Order: MRP records grouped by source (Sales Order, Purchase Order, Distribution Order, Requisition)',1120365,52063,'N',510,550,'N','N','N','N',0,0,'N',TO_TIMESTAMP('2020-04-16 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6b4a3c25-20f7-47ab-8e62-a9b0d829a0ac','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128981,'Quotation','Quotation used for generating this order',1120365,200819,'Y','@QuotationOrder_ID@>0',10,570,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','68ed8dd7-01b2-46e5-842a-70900797cf42','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128982,'Cash Plan Line',1120365,60237,'Y',20,10630,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fcace166-12b4-475c-b147-854ff5678ab8','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128983,'Withhold Order','Defines the Withhold Order','Defines the Withhold Order',1120365,1000672,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','70276d24-8bb5-4833-bc79-abd8c96663a7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128984,'Create PO','Process to Create PO Lines from Requisition','Process to Create PO Lines from Requisition',1120365,1000729,'N',1,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7094ef68-5ae4-4d32-b839-1c5dd2541ec1','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128985,'Customer NF Number','Number of the Customer NF','Number of the Customer NF',1120365,1001053,'N',25,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','031ab9f5-4d42-49a0-957f-2a489244ffbd','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128986,'CNPJ/CPF','CNPJ ou CPF do cliente',1120365,1129796,'Y','@OrderType@=''WR''',14,20100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','71155c26-8f84-421a-9c2c-212c57bcf858','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128987,'Convert Quote',1120365,1129507,'Y','@OrderType@=''ON'' & @DocStatus@=''CO''',23,20455,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','74001442-c929-40bd-9c2c-8bc7c042ac41','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128988,'Create lines from','Process which will generate a new document lines based on an existing document','The Create From process will create a new document based on information in an existing document selected by the user.',1120365,1000955,'Y',1,20460,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','073a9489-e8ef-4b29-86c7-55576e54f342','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128989,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120365,1000905,'Y',1,20490,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','8e3d7a7f-1bb3-4912-adb0-06a87f606733','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128990,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120365,1000906,'Y','@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D''',22,20500,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','096d13ca-8ce5-488a-835a-cc680da5ed6a','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128991,'Nota Fiscal Description','Description Printed on Nota Fiscal','Description Printed on Nota Fiscal',1120365,1000593,'Y',255,20510,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','1f0aaeda-260e-423f-8516-eebbe12a98ea','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128992,'Bill Note','Bill Note','Bill Note',1120365,1001070,'Y',255,20520,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','55b268f3-b817-4caf-beb0-8ce8903330b3','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128993,'Shipment Note','Extra Shipment Information ','Extra Shipment Information',1120365,1001069,'Y',255,20530,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','b187907d-c7fa-44c6-b0a9-6c2098aa9781','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128994,'Insurance Amt','Defines the Insurance Amt','Defines the Insurance Amt',1120365,1123605,'Y',13,20540,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','bfe0b4a7-3839-4a4b-b98a-09f39242b3a7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128995,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',1120365,1123599,'Y',13,20550,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','8cee7211-b999-4490-b5d0-5b5f5ac9f2d9','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:46 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120366,'Order Line','Order Line','The Order Line Tab defines the individual line items that comprise an Order.',1120163,20,'Y',260,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N',1,'N','LBRA','@Processed@=Y','Y','N','05a67997-1a6d-40cc-848c-564ece37d127','B')
;

-- 16 de abr de 2020 23:38:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128996,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120366,2208,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e83a1681-47ec-43ce-bed4-80775c8ee911','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128997,'Revenue Recognition Amt','Revenue Recognition Amount','The amount for revenue recognition calculation.  If empty, the complete invoice amount is used.  The difference between Revenue Recognition Amount and Invoice Line Net Amount is immediately recognized as revenue.',1120366,15460,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0a94b6fc-9916-453d-af15-a9bdfe4a19cb','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128998,'Date Delivered','Date when the product was delivered',1120366,2218,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','2707d899-6b9b-4e63-9633-7164debf7787','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1128999,'Referenced Order Line','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120366,7812,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','7ce38e28-d577-4e33-9c77-4f3f793e00dd','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129000,'Cost Price','Price per Unit of Measure including all indirect costs (Freight, etc.)','Optional Purchase Order Line cost price.',1120366,14200,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b0f0e076-9e56-4d87-a871-63844a328f9d','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129001,'Project Task','Actual Project Task in a Phase','A Project Task in a Project Phase represents the actual work.',1120366,15458,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d83566c0-d752-4fad-a775-70b92b95c31a','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129002,'Project Phase','Phase of a Project',1120366,15457,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9541e88c-7221-4a9d-8478-45c3b2c077df','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129003,'Revenue Recognition Start','Revenue Recognition Start Date','The date the revenue recognition starts.',1120366,15459,'N',7,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dd479298-b85c-4415-b792-67642e6cf724','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129004,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120366,2205,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0c6da204-00fc-469b-a623-8e6673535250','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129005,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120366,2230,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',103,'LBRA','8ea2d3c7-e692-4922-833a-cc7155ca32d7','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129006,'Date Invoiced','Date printed on Invoice','The Date Invoice indicates the date printed on the invoice.',1120366,2219,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','3bc4059f-bec4-46d6-8b13-1ef98e8a98ff','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129007,'Limit Price','Lowest price for a product','The Price Limit indicates the lowest price for a product stated in the Price List Currency.',1120366,4022,'N',26,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',103,'LBRA','d7716f3f-0807-4c9d-80d5-7035e0a0f26f','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129008,'Description Only','if true, the line is just description and no transaction','If a line is Description Only, e.g. Product Inventory is not corrected. No accounting transactions are created and the amount or totals are not included in the document.  This for including descriptive detail lines, e.g. for an Work Order.',1120366,9868,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fdf681e9-986d-4ff5-b2f5-72f65df157d2','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129009,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120366,2206,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:52','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','fc0830a6-17b0-4b4e-b017-88773c1879a1','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129010,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120366,2207,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:52','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','bc19c89f-243a-4544-aa10-fc2a7df865f5','Y','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129011,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120366,2213,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','27b2d6d0-121b-4538-a816-efd573858959','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129012,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120366,2764,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @OrderType@=''WP'' | @Processed@=''Y''
',26,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1d612384-9f73-4b08-9538-e7f4655ca55c','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129013,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120366,3404,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @OrderType@=''WP'' | @Processed@=''Y''',14,50,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fce45f2f-1049-47b8-9f21-041d5ebb963d','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129014,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120366,2217,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @OrderType@=''WP''',14,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b0508894-14e1-4fc3-b553-7da20a3514de','Y',50,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129015,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120366,2216,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @OrderType@=''WP''',14,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:54','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a43abd68-e77d-4a2f-907e-d3b9fa136ed1','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129016,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120366,2214,'Y',11,80,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','54a05dcd-84a8-4401-9ea0-c89263a196c6','N','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129017,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120366,2223,'Y','@DirectShip@=''N'' & @OrderType@=''OB'' | @OrderType@=''SO'' | @Processed@=''Y''',14,90,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1c6031dd-4ef4-4256-a4cc-18c6b8ecab9a','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129018,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120366,2221,'Y',26,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4453842c-37af-41f2-b4fe-20b3e68ba884','Y',20,1,2,1,'N','Y','N')
;

-- 16 de abr de 2020 23:38:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129019,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120366,3050,'Y',14,120,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e2233637-17df-4b2f-88d8-fc300f1e17a2','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129020,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120366,8767,'Y',26,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','72a4440d-c3dc-4f04-ba14-cdc916c271d7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129021,'Resource Assignment','Resource Assignment',1120366,6775,'Y',14,140,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a156c921-9afa-432b-b6ed-c20953dd3ae3','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129022,'Description','Optional short description of the record','A description is limited to 255 characters.',1120366,2220,'Y',60,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','40566015-2ff1-4a9e-8cb8-af852d71bbe7','N',0,1,5,3,'N','N','N')
;

-- 16 de abr de 2020 23:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129023,'Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document',1120366,1130204,'Y',22,152,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','510240ea-711e-46e8-8d48-65a895928ffe','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129024,'Quantity','The Quantity Entered is based on the selected UoM','The Quantity Entered is converted to base product UoM quantity',1120366,12876,'Y',26,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',102,'LBRA','ade1f296-0e40-4839-879a-2ffaa67abac8','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129025,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1120366,2222,'Y',14,170,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',102,'LBRA','e42f04c7-9572-497d-b7e0-6f2eebb1c477','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:38:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129026,'Ordered Quantity','Ordered Quantity','The Ordered Quantity indicates the quantity of a product that was ordered.',1120366,2224,'Y','@UOMConversion@=Y | @Processed@=''Y''',26,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:59','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','675f6b3d-8385-4529-8fb5-1f87e808b420','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129027,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120366,2226,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @Processed@=''Y''',26,190,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:38:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:38:59','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','1d73db62-24d2-4fce-807a-747448400f96','N','Y',90,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129028,'Reserved Quantity','Reserved Quantity','The Reserved Quantity indicates the quantity of a product that is currently reserved.',1120366,2225,'Y','@OrderType@=''OB'' | @OrderType@=''SO'' | @Processed@=''Y''',26,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','4aaebff8-117e-44ae-8cb8-e81fea3ea772','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129029,'Quantity Invoiced','Invoiced Quantity','The Invoiced Quantity indicates the quantity of a product that have been invoiced.',1120366,2227,'Y','@OrderType@=''SO'' | @Processed@=Y',26,210,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','af702297-9ea9-4234-8968-3afb8dccbab0','N','Y',100,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:01 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129030,'Shipper','Method or manner of product delivery','The Shipper indicates the method of delivering product',1120366,2229,'Y','@DeliveryViaRule@=''S''',14,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8455a843-84ab-4589-932f-d6285d54a6e7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129031,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120366,12875,'Y',26,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','a4ada704-5dfe-4775-ada1-5e40ac8ade97','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129032,'Unit Price','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.',1120366,2232,'Y',26,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','bde3dbbb-7998-4192-a51f-5539a5d2d44b','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129033,'List Price','List Price','The List Price is the official List Price in the document currency.',1120366,2231,'Y',26,250,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','f0ebd1fd-354c-4da5-bc0c-a68887ea372f','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129034,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',1120366,3049,'Y','@FreightCostRule@=''L''',26,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','7c4b649f-1090-4bec-95e3-1fd5a245421d','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129035,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',1120366,2235,'Y',14,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9d4b3924-34b5-4cba-87b5-15c4fa241c4f','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129036,'Discount %','Discount in percent','The Discount indicates the discount applied or taken as a percentage.',1120366,4031,'Y',26,280,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','26b493d4-c4f1-4763-9b17-87c891b2fa9a','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129037,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120366,14092,'Y','@$Element_PJ@=''Y''',10,290,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','33c8e882-01af-4def-9496-29bba2be05e8','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129038,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120366,15848,'Y','@$Element_AY@=''Y''',10,300,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','fe41763d-c558-4879-a991-93f717001cc2','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129039,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120366,15847,'Y','@$Element_MC@=''Y''',10,310,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','2552bc77-3dcf-4b10-b27e-c2b0ffaf5082','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129040,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120366,15861,'Y','@$Element_OT@=Y',10,320,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','0ff83351-2045-4ae2-ba05-0ca838d1aa77','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129041,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120366,15849,'Y','@$Element_U1@=''Y''',10,330,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','e44cf8e2-ac00-47b0-9411-76428bfa1654','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129042,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120366,15850,'Y','@$Element_U2@=''Y''',10,340,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','79eb3fd1-a42c-407e-8d01-ee85ca1106c0','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129043,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',1120366,3723,'Y',26,350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','400b28e4-299b-48ec-ba38-d2a02c11054c','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129044,'Lost Sales Qty','Quantity of potential sales','When an order is closed and there is a difference between the ordered quantity and the delivered (invoiced) quantity is the Lost Sales Quantity.  Note that the Lost Sales Quantity is 0 if you void an order, so close the order if you want to track lost opportunities.  [Void = data entry error - Close = the order is finished]',1120366,14206,'Y','@Processed@=Y',22,360,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:08','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','af4bb4a7-8e5c-478d-b961-99f7db3aef8e','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129045,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120366,12069,'Y','1=2',1,370,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7e56279a-410b-4d76-bc7b-b406eaa308a1','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129046,'Create Shipment',1120366,200253,'Y','@Processed@=Y',1,370,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','20b45b88-f70d-4ea8-b7a9-5ea451968add','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129047,'Create Production',1120366,200252,'Y','@Processed@=Y & @M_Product_ID.IsBOM@=Y',1,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6820da50-44ae-444c-8726-14db67652cc2','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129048,'Recalculate Tax',1120366,1106001,'N',0,20000,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e78eb5d6-b010-4552-ae22-656db8aa4df6','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129049,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',1120366,1123600,'Y',13,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96d0e562-29b2-4ee0-b02b-71fba016c09d','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129050,'Production Line','Document Line representing a production','The Production Line indicates the production document line (if applicable) for this transaction',1120366,1000958,'N',10,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f0263030-be82-4f4f-a286-c6d5a74167dd','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129051,'Locator','Warehouse Locator','The Locator indicates where in a Warehouse a product is located.',1120366,1000952,'N',10,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','94008108-5171-4945-abc5-4e3d1419fd14','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129052,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',1120366,1125207,'Y',0,20149,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','15e2e18a-355e-48cf-9869-ae8f871539a2','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129053,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120366,1000421,'Y',22,20380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',111,'LBRA','987a9327-0650-4cec-9281-8e8e385c200f','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129054,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120366,1000420,'Y',22,20390,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',111,'LBRA','92be46dd-526a-4698-8c40-928ef2b70cf1','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129055,'Legal Message','Defines the Legal Message','Primary key table LBR_LegalMessage',1120366,1000655,'Y',22,20400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','74b6fba6-f737-41f8-aa3d-20876b52118d','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129056,'Tax Status','Defines the Tax Status','Defines the Tax Status',1120366,1000654,'Y',3,20410,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d2950cc6-6256-48e7-910d-0d92461f471a','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129057,'C_OrderLine_UU',1120366,60716,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7bfbba93-d17d-4f5f-b6a6-b7e6648b3823','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:15 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (1120367,'Order Line Tax','Order Tax','The Order Tax Tab displays the tax amount for an Order based on the lines entered.',1120163,25,'Y',1000007,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:14','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',1000220,'N',2,'N','LBRA','N','N',1000420,'b21ef297-c582-4696-9afd-564b33fad41d','B')
;

-- 16 de abr de 2020 23:39:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129058,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120367,1000220,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f09c4481-a401-48c7-be20-dff2124f1931','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129059,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120367,1000214,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ea5ec4de-48f8-4064-a3ce-fb02e14079a0','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129060,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120367,1000213,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3e8e9cb2-a2d2-47ff-bd32-756c9a1c6ab2','Y','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129061,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120367,1000215,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3c7c709-10a8-4477-afe7-0ebbc1eb90ca','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129062,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120367,1000221,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','2fd04f50-0cd4-463f-b58a-4d435d580723','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129063,'Tax Status',1120367,1106067,'Y',10,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','601e1a22-0b6d-45fa-b115-d15c5d628760','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129064,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120367,1000222,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5f6242fb-4d32-44e5-8098-63bf10ca1a1c','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129065,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120367,1000225,'Y',10,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5e8ca4a1-5e1d-4f5a-912e-0b791eb2f6ff','Y',40,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129066,'Tax Base Type',1120367,1123535,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','7fffe314-ae58-4734-a7a7-14a27cc65ec2','Y',50,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129067,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120367,1000471,'Y',10,60,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','0b4237d5-0a51-4928-bb18-121491e972e0','Y',60,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129068,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120367,1000223,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','19809ca8-0ae9-41d2-bd61-2c457ec57615','Y',70,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129069,'Legal Message','Defines the Legal Message','Primary key table LBR_LegalMessage',1120367,1106066,'Y',60,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','44e892d6-40e4-4613-b5dc-5a09be18b812','Y',80,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129070,'Post Tax','Indicates if the Tax should be Posted','Indicates if the Tax should be Posted',1120367,1000224,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:19','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','742a4dab-f9de-441e-8bbe-7913b6f5b5a6','Y',90,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129071,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120367,1106005,'Y',1,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','099689ed-7b37-46b1-a7b3-6c40a1d5e06e','Y',100,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129072,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120367,1123516,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d453f5ba-b80e-4f70-a917-520a9e14d173','Y',110,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129073,'Tax List Amt','Valor da taxa Fixa estipulado pelo governo.',1120367,1123517,'Y',13,120,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','cc19ce0f-6c25-446f-89fc-3536253829b5','Y',120,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129074,'Tax Line','Primary key table LBR_TaxLine','Primary key table LBR_TaxLine',1120367,1000212,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e9398f29-767f-4ef4-b08e-c349e0dee12c','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:22 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120368,'Order Tax','Order Tax','The Order Tax Tab displays the tax amount for an Order based on the lines entered.',1120163,30,'Y',314,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:21','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',3355,'N',1,'N','LBRA','N','N','9a540a38-3a7d-4e34-85d8-06c455ce5259','B')
;

-- 16 de abr de 2020 23:39:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129075,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120368,12061,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','81450293-b697-4c1d-a6a2-d3b97569d554','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129076,'C_OrderTax_UU',1120368,60719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3b6a7f09-6495-4032-8bff-ec82e5fdc3cc','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129077,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120368,3350,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0bc3c7e3-858c-4093-9ac6-bcce1093cf73','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129078,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120368,3348,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','e10088b7-0059-44a7-b998-c364fd2c5d26','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129079,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120368,3349,'Y',14,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7283bb64-b99e-4660-8544-469fdc8bd92b','Y','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129080,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120368,3355,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','b47caa71-a5bf-4db6-8138-1d9eb3ab788e','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129081,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',1120368,3356,'Y',14,40,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','699cbc8b-d596-42bb-ab43-dc654c39c117','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129082,'Tax Provider',1120368,210725,'Y',22,50,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','be47870a-6e01-452e-807c-6342c33564ab','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129083,'Tax Amount','Tax Amount for a document','The Tax Amount displays the total tax amount for a document.',1120368,3767,'Y',26,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','903e0787-2486-4779-b4ab-7a05fe48a044','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129084,'Tax base Amount','Base for calculating the tax amount','The Tax Base Amount indicates the base amount used for calculating the tax amount.',1120368,3766,'Y',26,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','88111766-c808-4540-bf65-d3c16cc44ca5','Y',30,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129085,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120368,13041,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d3882fd0-70ab-4559-89ac-863d057a56fa','Y',40,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:27 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120369,'Payment Schedule','Order Payment Schedule',1120163,40,'Y',53296,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',60137,'N','N',1,'N','LBRA','Y','N','3eefc1b0-eb04-4e64-92d9-f792100229f3','B')
;

-- 16 de abr de 2020 23:39:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129086,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120369,60148,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b74a860a-0e1e-4d3e-b6bb-ec2a0479dd4e','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129087,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120369,60135,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','f3bc66d4-9f35-45fa-b1d9-d1844eaa60b2','N',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129088,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120369,60136,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','b8ea80f9-905f-4a0e-9d80-1818fcb6ac06','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129089,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120369,60137,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','787a0777-3411-4ce2-b4b4-ec5028f7a76e','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129090,'Payment Schedule','Payment Schedule Template','Information when parts of the payment are due',1120369,60139,'Y',14,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','aaeee760-55be-4f00-8567-667858396804','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129091,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120369,60146,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3a0e9282-13e0-415f-81e1-ab4dbf9e6aac','Y',50,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129092,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120369,60145,'Y',14,60,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90d6cd3f-e00d-4481-92d9-ff6980d6bf73','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129093,'Amount due','Amount of the payment due','Full amount of the payment due',1120369,60144,'Y',26,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','26f48fbe-ca2f-4efc-9f20-f288218784ee','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129094,'Discount Date','Last Date for payments with discount','Last Date where a deduction of the payment discount is allowed',1120369,60143,'Y',14,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','53a78901-e64a-419d-82ff-b31e866fd1eb','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129095,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120369,60142,'Y',26,90,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','700d454e-9cc7-4449-ad82-960eb72b88a4','Y',90,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129096,'Process Now',1120369,60149,'Y',23,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fad460b9-40a9-427a-8b5c-9f95c8d062e7','Y',100,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129097,'Valid','Element is valid','The element passed the validation check',1120369,60147,'Y',1,110,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','6922dddf-04fd-4f13-b2ab-e7eacea3d240','Y',110,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129098,'Order Payment Schedule',1120369,60138,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bfd24578-5ac0-4b89-b0d4-7616cd1b4711','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129099,'C_OrderPaySchedule_UU',1120369,60717,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b7b2c06e-10b9-4704-83af-305bbeca086b','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:33 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,DisplayLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120370,'POS Payment',1120163,50,'Y',200016,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:32','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',200442,'N','N',1,'N','LBRA','@PaymentRule@=M','Y','N','a46bad9d-75b8-4900-9611-2e13e34e4cea','B')
;

-- 16 de abr de 2020 23:39:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129100,'C_POSPayment_UU',1120370,200435,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1b0e55ea-0722-4793-8570-43af81fc4ac0','N',0,1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129101,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120370,200427,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:33','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d36dc265-f7c1-4774-8dc1-e37206f73003','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129102,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120370,200428,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cb156a58-33eb-4157-aa8a-eca5ff42293a','Y','Y',10,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129103,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120370,200442,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a9f9a916-1f50-43c6-b402-2dfd3cc6b651','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129104,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120370,200443,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','87cbda8b-b877-43ae-a479-4f03fd8483c9','Y',30,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129105,'POS Tender Type',1120370,200448,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','69aba7e8-d2ee-4484-9b28-ac8337acbee0','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129106,'Tender type','Method of Payment','The Tender Type indicates the method of payment (ACH or Direct Deposit, Credit Card, Check, Direct Debit)',1120370,200454,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','fab1c9c1-094a-4d4e-9496-3f8051b16953','Y',50,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129107,'Payment amount','Amount being paid','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.',1120370,200451,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','45b774af-3fd3-42a7-90aa-8822d518b333','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129108,'Account Name','Name on Credit Card or Account holder','The Name of the Credit Card or Account holder.',1120370,200432,'Y','@TenderType@=C | @TenderType@=K',60,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','221ad891-8ee9-4778-9417-ff785cedb6d6','Y',120,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129109,'Routing No','Bank Routing Number','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.',1120370,200453,'Y','@TenderType@=A | @TenderType@=K',20,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b63edbdd-622c-4308-8640-dec8a6afb4a0','Y',130,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129110,'Check No','Check Number','The Check Number indicates the number on the check.',1120370,200440,'Y','@TenderType@=K',20,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','99150247-1a73-4283-a656-449f43438a17','Y',140,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129111,'Account No','Account Number','The Account Number indicates the Number assigned to this bank account. ',1120370,200431,'Y','@TenderType@=A | @TenderType@=K',20,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ccccd2a1-7312-4e17-ad38-06f2afb5f935','Y',150,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129112,'Micr','Combination of routing no, account and check no','The Micr number is the combination of the bank routing number, account number and check number',1120370,200450,'Y','@TenderType@=K',20,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','72784d14-b1b9-4cc9-9c22-2c2d6561544a','Y',160,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129113,'Post Dated',1120370,200449,'Y','@TenderType@=K',1,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','689c2444-4f69-483b-93c0-84473164d4f7','Y',100,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129114,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120370,200445,'Y','@TenderType@=K & @IsPostDated@=Y',10,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a4d72546-ce8c-48eb-b06d-8e7ea53b57b3','Y',110,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129115,'Check Status',1120370,200441,'Y','@TenderType@=K & @IsPostDated@=Y',1,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','096a2d0b-6640-4263-aac8-f9c3030618ff','Y',170,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129116,'Credit Card','Credit Card (Visa, MC, AmEx)','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.',1120370,200444,'Y','@TenderType@=C',1,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e6c0437d-1b52-4962-9127-c8599aedd1b4','Y',180,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,ObscureType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129117,'Number','Credit Card Number ','The Credit Card number indicates the number on the credit card, without blanks or spaces.',1120370,200436,'Y','@TenderType@=C',20,170,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','904','c3b7616a-3aa4-46ff-bdfe-d67f2faa4d01','Y',190,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129118,'Voice authorization code','Voice Authorization Code from credit card company','The Voice Authorization Code indicates the code received from the Credit Card Company.',1120370,200439,'Y','@TenderType@=C',20,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2b12f6f-8f34-4df2-82bd-041827ed8b0b','Y',200,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129119,'Deposit Group',1120370,200446,'Y',20,190,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6687603a-fbf2-4488-a8e8-833e5a75346b','Y',210,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129120,'Comment/Help','Comment or Hint','The Help field contains a hint, comment or help about the use of this item.',1120370,200447,'Y',2000,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7f200e87-3117-48c4-a530-427cd68541a9','Y',70,1,5,3,'N','N','N')
;

-- 16 de abr de 2020 23:39:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129121,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120370,200452,'Y',1,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','8bfab7ba-a5fd-4384-8719-57d951956a90','Y',80,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129122,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120370,200433,'Y',1,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','639cb45a-b23f-4a5e-b491-4ef4b06b4bb8','Y',90,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:39:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129123,'POS Payment',1120370,200434,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:39:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:39:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','184adac8-216c-4ca1-9cb3-17a204121a85','N',1,1,1,'N','N','N')
;

-- 16 de abr de 2020 23:45:40 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,Help,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,IsBetaFunctionality,AD_Window_UU) VALUES (1120164,'Simple Order (Other In)','Enter and change simple orders (other In)','The Simple Order Window allows you to enter and modify Simple Orders. Only In Operation.',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:45:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:45:40','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','N','N','N','4498e5b7-41d4-4a99-8f47-b44f7b03ba4c')
;

-- 16 de abr de 2020 23:47:06 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,AD_Process_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120371,'Purchase Order','Order Header','The Order Header Tab defines the parameters of an order.  The field values defined will determine how the Order Lines are processed.',1120164,10,'Y',259,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:05','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','C_Order.IsSOTrx=''N''',110,'N',0,'N','LBRA','Y','N','7855ca12-0ebb-4036-a1dc-cd0c5ea39622','B')
;

-- 16 de abr de 2020 23:47:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129124,'Process Now',1120371,2453,'N',23,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1b71589-6df9-47e9-8b3d-34ee6dcef757','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129125,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120371,3718,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','62bca0de-a14b-40a6-a092-f46bbebbfa92','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129126,'Selected',1120371,4699,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','deff051b-a83c-41cb-9537-99820cc166ef','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129127,'Send EMail','Enable sending Document EMail','Send emails with document attached (e.g. Invoice, Delivery Note, etc.)',1120371,8166,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2eff1c05-cf52-439e-872c-2544c19c2aa4','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129128,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120371,2183,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6fd7101e-cadd-40ff-a412-1d7df4c2c5be','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129129,'Invoice Rule','Frequency and method of invoicing ','The Invoice Rule defines how a Business Partner is invoiced and the frequency of invoicing.',1120371,2192,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','de236dcb-940c-4628-9b8b-3291effd1ebc','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129130,'Payment BPartner','Business Partner responsible for the payment',1120371,10925,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e6b13fc3-2fe3-47ff-bf2e-fc562d5736bd','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129131,'Payment Location','Location of the Business Partner responsible for the payment',1120371,10924,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e5e113b0-5f87-4969-9ef3-b67e304ae43e','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129132,'Cash Journal Line','Cash Journal Line','The Cash Journal Line indicates a unique line in a cash journal.',1120371,5349,'N',26,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e6db3297-3c0d-433a-871e-5e2f83614660','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129133,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120371,5348,'N',26,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13a421e9-5233-4b59-a665-17789ba6628d','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129134,'Self-Service','This is a Self-Service entry or this entry can be changed via Self-Service','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.',1120371,8832,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','258fc7d1-1cc6-487f-afee-cd0ff96bf756','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129135,'Referenced Order','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120371,10926,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','baa49ab3-78ce-4cc0-8b9a-d950cb5b9316','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129136,'Date printed','Date the document was printed.','Indicates the Date that a document was printed.',1120371,3719,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','731fd95e-442b-4bc2-882b-6af7fb712096','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129137,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120371,2161,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fb440b1a-4c46-470d-aa7b-8c9da19c5f81','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129138,'Delivery Rule','Defines the timing of Delivery','The Delivery Rule indicates when an order should be delivered. For example should the order be delivered when the entire order is complete, when a line is complete or as the products become available.',1120371,3721,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f964995e-4fa5-4b15-9e3b-9763d982daa4','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129139,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120371,3398,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fad56d68-5ad0-48b9-9431-9d4a20280572','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129140,'Transferred','Transferred to General Ledger (i.e. accounted)','The transferred checkbox indicates if the transactions associated with this document should be transferred to the General Ledger.',1120371,2180,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','3054d8f4-a083-4d79-8d1a-a11278f5424b','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129141,'Delivered',1120371,2177,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','6dea2380-6e6d-4700-8e8b-93ceab1e3b2e','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129142,'Invoiced','Is this invoiced?','If selected, invoices are created',1120371,2178,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5c71555b-8597-4b23-8eb9-2e89dc16b05d','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129143,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120371,4651,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60ae0f4a-84a9-4a76-bc59-582469344077','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129144,'Approved','Indicates if this document requires approval','The Approved checkbox indicates if this document requires approval before it can be processed.',1120371,2175,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','aaf9a585-cbeb-4456-a1f3-ce6a56054c20','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129145,'Credit Approved','Credit  has been approved','Credit Approved indicates if the credit approval was successful for Orders',1120371,2176,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','df70efff-f0bf-46ca-b35e-0fa11280b4e6','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129146,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120371,2164,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f2959954-6c5d-452c-9b73-032fd007232e','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129147,'Printed','Indicates if this document / line is printed','The Printed checkbox indicates if this document or line will included when printing.',1120371,2179,'N',1,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','0050c265-fcd2-4daf-b5a3-18bb4736fbfe','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129148,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120371,2162,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5825a0f9-d474-49eb-82b2-6c69121142dd','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129149,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120371,2163,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b872984-9d8e-48a8-b34c-1ef675c446fd','Y','Y',10,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129150,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120371,2169,'Y',20,30,-1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9043fadf-0e3b-4b56-b187-cdf2f4a49766','N','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129151,'Order Reference','Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.',1120371,3045,'Y',11,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','75d4baea-277e-4d4a-8724-f3b86a783772','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129152,'Description','Optional short description of the record','A description is limited to 255 characters.',1120371,2174,'Y',60,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8abf6efb-c649-4f5c-9888-f0e222c0bacc','N',0,1,5,3,'N','N','N')
;

-- 16 de abr de 2020 23:47:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129153,'Transaction Type','Defines the Transaction Type','Defines the Transaction Type',1120371,1000469,'Y',3,51,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c0db9553-58c2-4b53-a5b0-a85a1c96de78','Y',50,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129154,'Target Document Type','Target document type for conversing documents','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.',1120371,2173,'Y',14,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3d96d4c-2077-45ce-8956-4b90e8baab1b','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129155,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120371,2181,'Y',14,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e162509-5a61-4f39-8304-c6f99ca06c3c','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129156,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120371,2182,'Y',14,80,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7cd2065c-333c-4ba0-87c5-8cb718509879','Y',60,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129157,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120371,2762,'Y',26,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','15ad580c-3f16-4341-8efb-042bf1202170','Y',70,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129158,'Invoice Partner','Business Partner to be invoiced','If empty the shipment business partner will be invoiced',1120371,8764,'Y',14,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA',30,'d36650ff-f9ba-4c75-a924-c8c704da00ea','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129159,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120371,3400,'Y',14,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','da8750be-64b4-4fbd-afa8-d44262aa1f09','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129160,'Invoice Location','Business Partner Location for invoicing',1120371,8766,'Y',14,120,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2587d0b-2958-4a5a-99cf-b7c5c2cadb74','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129161,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1120371,2763,'Y',14,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','18dac01c-baba-4afe-9c96-d5ec7dea4381','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129162,'Invoice Contact','Business Partner Contact for invoicing',1120371,8763,'Y',14,140,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d61a703b-9c10-4859-952e-79e2de2fd753','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129163,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120371,2202,'Y',14,150,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','0f4f50eb-f4b7-4822-8c10-56063636880d','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129164,'Drop Shipment','Drop Shipments are sent from the Vendor directly to the Customer','Drop Shipments do not cause any Inventory reservations or movements as the Shipment is from the Vendor''s inventory. The Shipment of the Vendor to the Customer must be confirmed.',1120371,11580,'Y',1,160,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','78390116-2e72-4edd-9369-e31bfc708ed3','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129165,'Drop Ship Business Partner','Business Partner to ship to','If empty the business partner will be shipped to.',1120371,55314,'Y','@IsDropShip@=''Y''',14,170,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','41312c41-5bdb-4adb-8e25-af6488adee66','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129166,'Drop Shipment Location','Business Partner Location for shipping to',1120371,55315,'Y','@IsDropShip@=''Y''',14,180,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','76f27f4b-cc14-412c-afe3-c2d25ee279ff','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129167,'Drop Shipment Contact','Business Partner Contact for drop shipment',1120371,55316,'Y','@IsDropShip@=''Y''',14,190,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','84bc260f-4f96-415a-87e4-49112b4828a5','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129168,'Delivery Via','How the order will be delivered','The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.',1120371,2196,'Y','@OrderType@=''SO'' | @OrderType@=''PO''',14,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','ae57b731-c998-43d1-ada4-3049a48a8fc7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129169,'Shipper','Method or manner of product delivery','The Shipper indicates the method of delivering product',1120371,2197,'Y','@DeliveryViaRule@=''S''',14,210,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','75334317-c9a3-4026-983c-90392c37877d','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129170,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120371,3722,'Y','@OrderType@=''SO'' | @OrderType@=''PO''',14,220,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','e1750036-45e7-4837-8a36-af38b0f935d3','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129171,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',1120371,2195,'Y','@OrderType@=''SO'' | @OrderType@=''PO'' & @FreightCostRule@=''F''',26,230,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','dbb51af3-2470-4638-a07d-181e6632e870','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129172,'Priority','Priority of a document','The Priority indicates the importance (high, medium, low) of this document',1120371,2198,'Y',14,240,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','22b7d15d-3677-4f8e-b0ec-d92e91014ec4','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129173,'Price List','Unique identifier of a Price List','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.',1120371,2204,'Y',14,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','e028c673-2016-4c56-ac11-89a6091a71db','Y',90,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129174,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120371,2191,'Y',14,260,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',131,'LBRA','4af86efd-a0cf-4d77-98e6-d31f568e9b46','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129175,'Currency Type','Currency Conversion Rate Type','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.',1120371,10297,'Y','@C_Currency_ID@!@$C_Currency_ID@',14,270,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',131,'LBRA','777ee8ac-d634-4e03-8103-e7df9aa413f8','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129176,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120371,2186,'Y',14,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','78d2b268-e5ab-45f0-917b-8b8049f51bba','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129177,'Discount Printed','Print Discount on Invoice and Order','The Discount Printed Checkbox indicates if the discount will be printed on the document.',1120371,4298,'Y',1,290,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','43e75f14-8a2f-4fdd-bf2f-d54977dc655d','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129178,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120371,3046,'Y','@HasCharges@=''Y''',14,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6d3fbfc1-4750-4b94-804d-ee8ace6063e7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129179,'Charge amount','Charge Amount','The Charge Amount indicates the amount for an additional charge.',1120371,3047,'Y','@HasCharges@=''Y''',26,310,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','312ac5db-8acc-4b7a-8bff-4d00a91a2407','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129180,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120371,4019,'Y',23,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5f4e0a01-a8f7-431d-868c-c2cc78104f16','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129181,'Payment Term','The terms of Payment (timing, discount)','Payment Terms identify the method and timing of payment.',1120371,2187,'Y','@PaymentRule@=''P''',14,330,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ebac4999-61bf-4a37-ba23-44e45a2ac257','Y',100,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129182,'Freight Cost Rule','Method for charging Freight','The Freight Cost Rule indicates the method used when charging for freight.',1120371,1123946,'Y',1,331,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','035800a9-7fb2-488a-ad39-d1efbb63f114','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129183,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120371,3402,'Y','@$Element_PJ@=''Y''',14,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','60226a68-f990-4cdb-bdbf-7d510d0031e7','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129184,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120371,3403,'Y','@$Element_AY@=''Y''',14,350,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','a8dee5bd-2101-43a3-b652-06a2655706cb','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129185,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120371,2454,'Y','@$Element_MC@=''Y''',14,360,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','4f425fd1-76fc-4d11-9666-5b9c8ac5e746','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129186,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120371,9331,'Y','@$Element_OT@=Y',14,370,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','fc0fa941-e68c-4d90-af9c-6d5403a6dcde','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129187,'Cash Plan Line',1120371,60237,'Y',20,375,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','8f1995ae-01d7-45b7-9fbc-620b10042dce','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129188,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120371,9569,'Y','@$Element_U1@=Y',14,380,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','6bceb98c-5eb8-4ac6-b570-20b1e5371ff6','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129189,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120371,9568,'Y','@$Element_U2@=Y',14,390,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','d42d826f-8a28-45ef-95b5-c58a1bad4d03','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129190,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120371,2170,'Y',14,400,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','d47315b6-b72f-436a-86a3-a786500e0bc5','N','Y',150,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129191,'Document Type','Document type or rules','The Document Type determines document sequence and processing rules',1120371,2172,'Y',14,410,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:33','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','99718d72-9d3d-4b65-8473-9d1f1c022687','N','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129192,'Total Lines','Total of all document lines','The Total amount displays the total of all lines in document currency',1120371,2200,'Y',26,420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','74e3d846-a52f-4c94-bf7e-e21f93440173','N','Y',130,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129193,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120371,2201,'Y',26,430,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','e7987144-0dd0-4954-b6ba-86c7af2fadc3','N','Y',140,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129194,'Pay Schedule valid','Is the Payment Schedule is valid','Payment Schedules allow to have multiple due dates.',1120371,60152,'Y',1,440,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','de4a89ee-a51a-418c-80ab-a30c92b7b976','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129195,'Copy From','Copy From Record','Copy From Record',1120371,8765,'Y',23,450,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','ca3d0487-2a33-46c3-a6f2-04bb42cc7bc5','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129196,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120371,2171,'Y',23,460,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','9b0d16da-a800-4b17-bdbd-14a74e4ac87f','N','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129197,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120371,4650,'Y','@Processed@=Y & @#ShowAcct@=Y',23,480,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',101,'LBRA','b08de69a-3198-4890-9ce8-7298a2ef4290','N','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129198,'Nota Fiscal Description','Description Printed on Nota Fiscal','Description Printed on Nota Fiscal',1120371,1000593,'N',255,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3bee9669-fa63-4743-847c-f7e9491e55aa','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129199,'Payment Rule','How you pay the invoice','The Payment Rule indicates the method of invoice payment.',1120371,1000905,'N',1,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','630ce0cd-b835-4d55-98d6-0ed68ac9c0fd','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129200,'Order Type','Type of Order: MRP records grouped by source (Sales Order, Purchase Order, Distribution Order, Requisition)',1120371,52063,'N',510,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','47cfca2b-dee7-488a-8d1a-e114235d15fd','N',0,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129201,'POS Terminal','Point of Sales Terminal','The POS Terminal defines the defaults and functions available for the POS Form',1120371,52070,'N',10,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','319f54db-5b73-44b4-839b-b6acecc039d5','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129202,'Weight','Weight of a product','The Weight indicates the weight  of the product in the Weight UOM of the Client',1120371,15900,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9601eef2-f733-463b-8855-f5f8a5ac7c66','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129203,'Volume','Volume of a product','The Volume indicates the volume of the product in the Volume UOM of the Client',1120371,15899,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c86b123c-6461-4ee1-890f-f9e1909365a0','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129204,'Withhold Order','Defines the Withhold Order','Defines the Withhold Order',1120371,1000672,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4ba8c9ea-f16d-4fce-9bfe-493020181ac6','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129205,'AmountTendered',1120371,52064,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8c03ffa2-fa23-40f7-a01f-b678d00ed7b3','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129206,'Bank Account','Account at the Bank','The Bank Account identifies an account at this Bank.',1120371,1000906,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','29bb87c1-86bb-49eb-97c2-b838c7e7f4c3','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129207,'AmountRefunded',1120371,52065,'N',22,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5c9fe5b5-3cd0-4bc3-bad1-72b1787a2bb9','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129208,'Freight Terms',1120371,1129889,'Y','@lbr_TransactionType@=''IMP''',14,20225,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',130,'LBRA','aa9155a0-0eab-4d9e-a84c-186feef51cb5','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129209,'Create PO','Process to Create PO Lines from Requisition','Process to Create PO Lines from Requisition',1120371,1000729,'Y',1,20420,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c5dfe1c-117c-4b68-bd5c-87f1c186d9f7','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129210,'Create lines from','Process which will generate a new document lines based on an existing document','The Create From process will create a new document based on information in an existing document selected by the user.',1120371,1000955,'Y',1,20430,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','46d63b75-a7a3-4305-9b85-794e0a8a43d2','N',0,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129211,'Insurance Amt','Defines the Insurance Amt','Defines the Insurance Amt',1120371,1123605,'Y',13,20500,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','03a1eef0-502e-4d0c-90fe-f5065b3883e4','Y',110,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129212,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',1120371,1123599,'Y',13,20510,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','5c99ff45-e310-419e-986d-b5db675cd940','Y',120,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129213,'C_Order_UU',1120371,60715,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dfdcfe34-30e1-4a3c-b179-4c54d4d57330','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:43 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,TabLevel,IsSortTab,EntityType,ReadOnlyLogic,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120372,'PO Line','Purchase Order Line','The Purchase Order Line Tab defines the individual items in an order.',1120164,20,'Y',260,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:43','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N',1,'N','LBRA','@Processed@=Y','Y','N','744b3832-4d16-48b4-969a-91ca1a8ad0aa','B')
;

-- 16 de abr de 2020 23:47:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129214,'Project Phase','Phase of a Project',1120372,15457,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5ea73edf-585d-46a5-b3cb-9f00ae3e4dc1','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129215,'Date Delivered','Date when the product was delivered',1120372,2218,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1511209e-a952-4019-ac3b-b5d4351237bc','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129216,'Project Task','Actual Project Task in a Phase','A Project Task in a Project Phase represents the actual work.',1120372,15458,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e2d2985a-92c9-48ee-913e-9ae243b36c7b','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129217,'Lost Sales Qty','Quantity of potential sales','When an order is closed and there is a difference between the ordered quantity and the delivered (invoiced) quantity is the Lost Sales Quantity.  Note that the Lost Sales Quantity is 0 if you void an order, so close the order if you want to track lost opportunities.  [Void = data entry error - Close = the order is finished]',1120372,14206,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','df647be9-7a94-4733-a0f4-599a38ac859b','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129218,'Revenue Recognition Amt','Revenue Recognition Amount','The amount for revenue recognition calculation.  If empty, the complete invoice amount is used.  The difference between Revenue Recognition Amount and Invoice Line Net Amount is immediately recognized as revenue.',1120372,15460,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3a1c482f-638d-4f67-bcc6-aad5284a8727','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129219,'Resource Assignment','Resource Assignment',1120372,6775,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2fdb3482-0d26-46ff-9e31-2858e75f3797','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129220,'Referenced Order Line','Reference to corresponding Sales/Purchase Order','Reference of the Sales Order Line to the corresponding Purchase Order Line or vice versa.',1120372,7812,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','b0d8310b-a0a9-4df7-9c8e-73e7e860851b','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129221,'Date Invoiced','Date printed on Invoice','The Date Invoice indicates the date printed on the invoice.',1120372,2219,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','f827ed01-da38-4208-8735-ee1a76a18ac7','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129222,'Revenue Recognition Start','Revenue Recognition Start Date','The date the revenue recognition starts.',1120372,15459,'N',7,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eb67021b-ada6-4fcd-a44e-6114101b6879','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129223,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120372,2205,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b340de9b-24d5-43ba-a3f3-4e8dc560c4e6','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129224,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120372,2208,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a563ce88-9725-4598-a7c3-4663d75a43ac','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129225,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120372,12069,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d6a7de3c-c08e-4920-8004-e22670a7930e','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129226,'Description Only','if true, the line is just description and no transaction','If a line is Description Only, e.g. Product Inventory is not corrected. No accounting transactions are created and the amount or totals are not included in the document.  This for including descriptive detail lines, e.g. for an Work Order.',1120372,9868,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a4a94de0-3433-4aad-bb18-1386882dfb8c','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129227,'Limit Price','Lowest price for a product','The Price Limit indicates the lowest price for a product stated in the Price List Currency.',1120372,4022,'N',26,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',103,'LBRA','cefa35d8-af73-49ae-bf0e-31826f0617e0','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129228,'Currency','The Currency for this record','Indicates the Currency to be used when processing or reporting on this record',1120372,2230,'N',14,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',103,'LBRA','97a77509-f342-4472-b641-fdc12d2a226d','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129229,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120372,2206,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','f5e1e0ca-e924-4280-84c8-a873db4ea317','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129230,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120372,2207,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','6557d895-3f33-4a8b-adac-f98aa7ce7d56','Y','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129231,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120372,2213,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ebd872b0-d3e8-4cdb-866d-bc815523c715','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129232,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120372,2764,'Y',26,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','302d2612-80bb-4da9-9722-e03f0102df0c','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129233,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',1120372,3404,'Y',14,50,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d0878c08-504f-43b6-8a87-86bb585c7e43','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129234,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120372,2217,'Y',14,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','db91873d-93c9-4bc4-8a35-3af6f2466d57','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129235,'Date Ordered','Date of Order','Indicates the Date an item was ordered.',1120372,2216,'Y',14,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cc7d2ba5-8e95-4340-8fad-f2a95127c731','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129236,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120372,2214,'Y',11,80,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f436cc4a-708e-4f43-9b9f-225b092d41ee','N','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129237,'Warehouse','Storage Warehouse and Service Point','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.',1120372,2223,'Y','@DirectShip@=''N''',14,90,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','daae21ac-d11d-4e62-aa65-201d08446ca8','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129238,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120372,2221,'Y',26,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9f64417a-3cd5-494f-ab81-486fa4ebac52','Y',20,1,2,1,'N','Y','N')
;

-- 16 de abr de 2020 23:47:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129239,'Charge','Additional document charges','The Charge indicates a type of Charge (Handling, Shipping, Restocking)',1120372,3050,'Y',14,110,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e4c8012e-792a-41bc-821d-77a7a40e1486','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129240,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120372,8767,'Y',26,120,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','349dc4e4-b820-4596-bb5b-c3ce236d922f','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129241,'Description','Optional short description of the record','A description is limited to 255 characters.',1120372,2220,'Y',60,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bb07f10e-3d19-4efd-b747-de1642bb9520','N',0,1,5,3,'N','N','N')
;

-- 16 de abr de 2020 23:47:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129242,'Quantity','The Quantity Entered is based on the selected UoM','The Quantity Entered is converted to base product UoM quantity',1120372,12876,'Y',26,140,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',102,'LBRA','30b480a6-048d-49a2-959f-b33d338fae37','Y',50,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129243,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1120372,2222,'Y',14,150,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',102,'LBRA','af4ecfe3-2841-4ba5-82fb-966585bfa68b','Y',30,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129244,'Ordered Quantity','Ordered Quantity','The Ordered Quantity indicates the quantity of a product that was ordered.',1120372,2224,'Y',26,160,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','91eaaa62-0777-4fb4-8cda-991886ae1e53','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129245,'Delivered Quantity','Delivered Quantity','The Delivered Quantity indicates the quantity of a product that has been delivered.',1120372,2226,'Y',26,170,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','f7bd23b0-9226-43a0-a143-7e69aa71f897','N','Y',100,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129246,'Reserved Quantity','Reserved Quantity','The Reserved Quantity indicates the quantity of a product that is currently reserved.',1120372,2225,'Y',26,180,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','70024248-9c4e-405b-a12e-53b474460edc','N','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129247,'Quantity Invoiced','Invoiced Quantity','The Invoiced Quantity indicates the quantity of a product that have been invoiced.',1120372,2227,'Y',26,190,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',102,'LBRA','2b5d9047-3b20-4f24-a56a-3093901da3e8','N','Y',110,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129248,'Shipper','Method or manner of product delivery','The Shipper indicates the method of delivering product',1120372,2229,'Y','@DeliveryViaRule@=''S''',14,200,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e3d77372-8b7e-4646-b879-69bcebceb976','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129249,'Price','Price Entered - the price based on the selected/base UoM','The price entered is converted to the actual price based on the UoM conversion',1120372,12875,'Y',26,210,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','ff8b8989-876d-4ade-9605-3c54409f53fc','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129250,'Cost Price','Price per Unit of Measure including all indirect costs (Freight, etc.)','Optional Purchase Order Line cost price.',1120372,14200,'Y',22,220,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','768149d0-6c59-4ff2-9125-49e93ca42282','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:47:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129251,'Unit Price','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.',1120372,2232,'Y',26,230,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','44242188-713a-413f-b094-71e38e27da52','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129252,'List Price','List Price','The List Price is the official List Price in the document currency.',1120372,2231,'Y',26,240,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:47:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:47:59','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','659150e4-c2a7-4082-9712-dc5f2804ec0b','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129253,'Freight Amount','Freight Amount ','The Freight Amount indicates the amount charged for Freight in the document currency.',1120372,3049,'Y','@FreightCostRule@=''L''',26,250,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','fb0ed382-c337-4945-8a63-9da103dbf6de','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:00 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129254,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',1120372,2235,'Y',14,260,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','611b81dd-7361-4a49-a3f8-fdde320fd415','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129255,'Discount %','Discount in percent','The Discount indicates the discount applied or taken as a percentage.',1120372,4031,'Y',26,270,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:00','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',103,'LBRA','fd7728ac-b36c-4b34-84c5-a61dbfd02d57','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:02 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129256,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120372,14092,'Y','@$Element_PJ@=''Y''',10,280,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','c419f245-3747-4234-b08b-9f8f67ef54c8','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129257,'Activity','Business Activity','Activities indicate tasks that are performed and used to utilize Activity based Costing',1120372,15848,'Y','@$Element_AY@=''Y''',10,290,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','ef20d7fb-eba7-4b3c-b1c5-acaa5f328ecc','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:04 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129258,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120372,15847,'Y','@$Element_MC@=''Y''',10,300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','fdc42084-1217-4841-9abe-2a5c834da418','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129259,'Trx Organization','Performing or initiating organization','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',1120372,15861,'Y','@$Element_OT@=Y',10,310,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','33bd6c19-293e-4b6f-afd2-d7c87b32199a','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:05 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129260,'User Element List 1','User defined list element #1','The user defined element displays the optional elements that have been defined for this account combination.',1120372,15849,'Y','@$Element_U1@=''Y''',10,320,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','52390c25-8b65-4d20-a87f-94cb99f4b259','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129261,'User Element List 2','User defined list element #2','The user defined element displays the optional elements that have been defined for this account combination.',1120372,15850,'Y','@$Element_U2@=''Y''',10,330,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',104,'LBRA','bf426f80-a062-45be-8faf-3adf32385a02','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129262,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',1120372,3723,'Y',26,340,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:06','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',101,'LBRA','19b5d563-361e-42a7-b491-9f69613814b9','Y',90,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129263,'Recalculate Tax',1120372,1106001,'N',0,20000,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fcfb8116-d1c0-41ab-8d18-d482eda936eb','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129264,'Other Charges Amount','Valor Total para Outras Despesas Acessórias
',1120372,1123600,'Y',13,20000,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f26f3026-a660-4ebd-85e2-513552c254af','Y',120,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129265,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120372,1000421,'Y',22,20350,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',111,'LBRA','55fe45e4-8829-42d9-86ce-e89dbae79929','Y',70,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129266,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120372,1000420,'Y',22,20360,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',111,'LBRA','7b762443-f41b-4336-9c2e-9d9551822b4c','Y',80,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129267,'Declaracao de Importacao',1120372,1120456,'Y','@lbr_TransactionType@=''IMP''',22,30000,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','926b3600-b8f9-4332-a7e3-991c5d924bf0','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129268,'Item da Adição',1120372,1120457,'Y','@lbr_TransactionType@=''IMP''',22,30010,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:08','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','f5b1e440-8bdf-4d08-b38b-9ecbd7ff9d66','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129269,'Insurance Amt','Defines the Insurance Amt','Defines the Insurance Amt',1120372,1120462,'Y',22,30020,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','73a78e6d-4d6e-4d6d-96ec-c1de708d7c36','Y',130,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129270,'SISCOMEX Amt',1120372,1120463,'Y',22,30030,0,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3fb26cae-0c46-45ad-a924-07023b12bad6','Y',140,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129271,'C_OrderLine_UU',1120372,60716,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d951046a-66c9-471a-a771-6fc3f0852fda','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:10 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (1120373,'Order Line Tax','Order Line Tax','The Order Tax Tab displays the tax associated with the Order Lines.',1120164,25,'Y',1000007,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:10','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',1000220,'N',2,'N','LBRA','N','N',1000420,'b208afee-b07a-4e76-828f-9620ad1dc762','B')
;

-- 16 de abr de 2020 23:48:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129272,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120373,1000213,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0154770f-eca3-40a4-8972-17ba4c4143ac','Y','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129273,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120373,1000214,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','bda3c122-0e4d-4d0b-bf35-d50f23e7b056','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129274,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120373,1000215,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96aa4874-2c71-4e4b-87f8-56bd8447b6f4','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129275,'Brazilian Tax','Primary key table LBR_Tax','Primary key table LBR_Tax',1120373,1000220,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b6aeb09-54d0-4f31-8106-889f69a27cd9','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129276,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120373,1000221,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','dae4403d-abeb-4dab-8181-1f78f0fc5435','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129277,'Tax Status',1120373,1106067,'Y',10,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','65bd8180-f24e-495c-bf42-94d3ec2df956','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129278,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120373,1000222,'Y',10,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','698b5a71-6b28-4ca5-84d3-f879ca4eddc8','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129279,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120373,1000225,'Y',10,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c1aae5d7-b6b5-498d-9de6-7bf9ff5a707f','Y',40,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129280,'Tax Base Type',1120373,1123535,'Y',10,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4bfc6e6b-0fe3-4156-9a5e-2b5725bb74ad','Y',50,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129281,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120373,1000471,'Y',10,60,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4cd6a462-521c-4e44-8f23-76575dc1efd8','Y',60,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129282,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120373,1000223,'Y',10,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','9495ac8a-19e4-495b-a083-464467db5418','Y',70,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129283,'Legal Message','Defines the Legal Message','Primary key table LBR_LegalMessage',1120373,1106066,'Y',60,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','f8b6a5d3-4f52-4d87-a723-9ed7607166ef','Y',80,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129284,'Post Tax','Indicates if the Tax should be Posted','Indicates if the Tax should be Posted',1120373,1000224,'Y',1,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4e880a37-735c-4548-803d-b61db6575e3c','Y',90,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129285,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120373,1106005,'Y',1,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','3455df3a-c49c-475a-b852-4861b89eb506','Y',100,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129286,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120373,1123516,'Y',1,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','59a7cc40-d130-4d4c-814f-d0e4d400ae4e','Y',110,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129287,'Tax List Amt','Valor da taxa Fixa estipulado pelo governo.',1120373,1123517,'Y',13,120,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a35c40b3-4b4e-4a20-8ff5-83b70d806992','Y',120,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129288,'Tax Line','Primary key table LBR_TaxLine','Primary key table LBR_TaxLine',1120373,1000212,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','07926e1e-ca37-49f8-89fc-ff6503ae4fe7','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:17 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120374,'Matching','Material Receipt or Invoice Lines matched to this Purchse Order Line',1120164,30,'Y',473,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:17','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',6522,'N','N',2,'N','LBRA','N','N','6b64d00f-67c7-4d50-bc87-445fd249e756','B')
;

-- 16 de abr de 2020 23:48:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129289,'Account Date','Accounting Date','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.',1120374,13201,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e44ba290-2371-40dd-bea9-f1acd5369c21','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129290,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120374,6527,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','093031b7-3129-441d-b18c-89dafc8335d8','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129291,'Match PO','Match Purchase Order to Shipment/Receipt and Invoice','The matching record is usually created automatically.  If price matching is enabled on business partner group level, the matching might have to be approved.',1120374,6513,'N',14,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c4ce014b-d874-4469-b526-661e55b2177c','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129292,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120374,6516,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3dad92bb-4b67-44b0-885b-f414364ea7fd','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129293,'Process Now',1120374,6526,'N',23,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c78b0ed8-6211-413f-99e1-b738f088e5b1','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129294,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120374,6514,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c0ad626b-a781-4ece-871c-00a40b985729','N',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129295,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120374,6515,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:20','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','9341cb3e-baea-42b2-8369-7366499b4602','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129296,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120374,6522,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','7f694f68-f208-45a2-8a85-078b7cb205d4','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:21 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129297,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120374,13087,'Y',20,40,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ebdfe351-c2d6-470e-ab2c-ff7c8541ab80','N','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129298,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120374,6524,'Y',14,50,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','65d1d62b-29c0-49db-be50-6a53460ea0e8','Y',50,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:22 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129299,'Shipment/Receipt Line','Line on Shipment or Receipt document','The Shipment/Receipt Line indicates a unique line in a Shipment/Receipt document',1120374,6521,'Y',26,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1efb2c76-28e0-4ea8-a815-5f161fc6c9cc','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129300,'Invoice Line','Invoice Detail Line','The Invoice Line uniquely identifies a single line of an Invoice.',1120374,6770,'Y',26,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a799a473-0216-451d-b5ce-285afa55b406','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129301,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120374,6530,'Y',26,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','87092e2f-84c3-4124-974a-880b86b969ce','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129302,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120374,6523,'Y',26,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','2c5b0839-0bb1-4ee1-8103-bc9bd3d43001','Y',90,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129303,'Attribute Set Instance','Product Attribute Set Instance','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.',1120374,14199,'Y',10,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d34afaca-67ab-463c-aa34-3b4edb0f29f1','Y',100,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129304,'Posted','Posting status','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ',1120374,6528,'Y','@Processed@=Y & @#ShowAcct@=Y',23,110,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2e9bc0ac-d7b4-419c-8224-fe34a7db73c5','N','Y',110,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:25 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129305,'M_MatchPO_UU',1120374,60909,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e2260f0-3a7a-428d-9a8b-3ec978615831','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:25 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120375,'Requisition Lines','Related Purchase Requisition Lines',1120164,40,'Y',703,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:25','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',11768,'N','N',2,'N','LBRA','N','N','811a2a7e-450d-4f54-a38d-47f84fecab05','B')
;

-- 16 de abr de 2020 23:48:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129306,'Sales Order Line','Sales Order Line','The Sales Order Line is a unique identifier for a line in an order.',1120375,11768,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a508d072-28cb-4fff-8fb3-7801cb24140c','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129307,'Requisition Line','Material Requisition Line',1120375,11495,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2e313ca0-74b3-44ad-8590-c86da0decffe','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129308,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120375,11503,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d7b7e17a-6027-4207-acb4-b53f183a81fd','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129309,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120375,11498,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','4123cb92-ab69-4620-9fa1-b700eee2f203','N',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129310,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120375,11494,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','cab5c944-2578-43b1-b088-24d81bbdd769','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129311,'Requisition','Material Requisition',1120375,11499,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','2687acd4-c80d-476e-95df-d15252c4b67d','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129312,'Line No','Unique line for this document','Indicates the unique line for a document.  It will also control the display order of the lines within a document.',1120375,11500,'Y',22,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','91896834-ed0d-4887-a590-5bccf54f90b0','N','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129313,'Description','Optional short description of the record','A description is limited to 255 characters.',1120375,11492,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','917f56e4-b823-4fbd-8661-37cb2bfb5c65','Y',50,1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129314,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120375,11501,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','be370ca1-80e8-45ab-9df4-485e44532d5b','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129315,'UOM','Unit of Measure','The UOM defines a unique non monetary Unit of Measure',1120375,57955,'Y',10,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5f2251c4-e3f9-46fc-a315-a6b21241e865','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129316,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120375,11493,'Y',22,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a56f1f50-f2d3-4ff7-8a17-525abd8f8317','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129317,'Unit Price','Actual Price ','The Actual or Unit Price indicates the Price for a product in source currency.',1120375,11490,'Y',22,90,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','0a21ee0f-fc26-4157-87f4-fa95000b887b','Y',90,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129318,'Line Amount','Line Extended Amount (Quantity * Actual Price) without Freight and Charges','Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.',1120375,11491,'Y',22,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','81bcb230-c664-4629-b083-1d1fe0b23220','Y',100,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129319,'M_RequisitionLine_UU',1120375,60947,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9ab1fdf0-63ff-4bc1-aa62-0a848cb5e565','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129320,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120375,56816,'N',10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1ac24ca2-0996-46c9-95e9-46faf7d8b0cb','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:32 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,Help,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120376,'Order Tax','Order Tax','The Order Tax Tab displays the tax associated with the Order Lines.',1120164,50,'Y',314,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:31','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y',3355,'N',1,'N','LBRA','N','N','11d76e01-94da-4403-ab6f-946efd1728a5','B')
;

-- 16 de abr de 2020 23:48:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129321,'C_OrderTax_UU',1120376,60719,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1d9e748b-1c72-419c-92b5-cf5a8a573c51','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129322,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120376,3350,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a22d16d5-23cf-46b1-af45-e96921c34143','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129323,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120376,12061,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','60c76068-91d4-4f7a-906b-85e4ac66182f','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129324,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120376,3348,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','7a94d491-e554-4db4-89f7-c708e04192cf','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129325,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120376,3349,'Y',14,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','02de20fd-e3b1-4c79-a0fa-757aee90bc21','Y','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129326,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120376,3355,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','6426d878-8984-4de0-9165-60ff7357052d','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129327,'Tax','Tax identifier','The Tax indicates the type of tax used in document line.',1120376,3356,'Y',14,40,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96ce5721-def2-45fe-b7f3-11ba0e277e2c','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129328,'Tax Provider',1120376,210725,'Y',22,50,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5b28d6a5-37cf-4116-b362-807b66d3f412','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129329,'Tax Amount','Tax Amount for a document','The Tax Amount displays the total tax amount for a document.',1120376,3767,'Y',26,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','3df1f605-f406-4b11-b949-aec3f78a1ae7','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129330,'Tax base Amount','Base for calculating the tax amount','The Tax Base Amount indicates the base amount used for calculating the tax amount.',1120376,3766,'Y',26,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','83c4f33b-70e6-41ce-a0a2-f7f33f04b6a6','Y',30,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129331,'Price includes Tax','Tax is included in the price ','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.',1120376,13041,'Y',1,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','5f69c217-cb8f-4138-ba60-aa6f67e9487d','Y',40,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:37 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120377,'Payment Schedule','Order Payment Schedule',1120164,60,'Y',53296,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:36','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',60137,'N','N',1,'N','LBRA','Y','N','38aecc34-c944-4bb0-a418-101bf3b275b0','B')
;

-- 16 de abr de 2020 23:48:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129332,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120377,60148,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0d58be98-3747-4cae-9b84-913c4d308236','N','N',0,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129333,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120377,60135,'Y',14,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','6ac13852-4c7f-4222-b011-715da0ec4d17','N',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129334,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120377,60136,'Y',14,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','824d2212-60fa-4d60-bde0-ec5bce67812e','Y','Y',20,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129335,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120377,60137,'Y',26,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:38','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a8871fdc-450c-4a0e-871d-3c785bed4afb','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129336,'Payment Schedule','Payment Schedule Template','Information when parts of the payment are due',1120377,60139,'Y',14,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c0d4c3cd-8b30-4ac9-9a4b-ff3ba59208c6','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129337,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120377,60146,'Y',1,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e95f2a18-b5f7-4db9-b78c-f82e5c3d939f','Y',50,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129338,'Due Date','Date when the payment is due','Date when the payment is due without deductions or discount',1120377,60145,'Y',14,60,1,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3c3d511-476b-4ee6-aa52-36d42dfd8957','Y',60,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129339,'Amount due','Amount of the payment due','Full amount of the payment due',1120377,60144,'Y',26,70,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d0b41487-b601-40a4-ae4a-c04e166b43bb','Y',70,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129340,'Discount Date','Last Date for payments with discount','Last Date where a deduction of the payment discount is allowed',1120377,60143,'Y',14,80,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4a0f2a1d-1a15-4f84-83e3-d9051f50631b','Y',80,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129341,'Discount Amount','Calculated amount of discount','The Discount Amount indicates the discount amount for a document or line.',1120377,60142,'Y',26,90,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bcabd888-011b-48ed-aead-e0a18a66f465','Y',90,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129342,'Process Now',1120377,60149,'Y',23,100,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:41','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5fbffdbe-da86-43a1-bb74-7609ae244365','Y',100,2,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129343,'Valid','Element is valid','The element passed the validation check',1120377,60147,'Y',1,110,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','ef04add2-92ec-4459-acff-560b07d0b621','Y',110,5,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:42 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129344,'C_OrderPaySchedule_UU',1120377,60717,'N',36,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0560c8d8-bd06-4fb8-8c7e-899c06bdab6b','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129345,'Order Payment Schedule',1120377,60138,'N',22,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:42','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','587567a6-212d-4f16-bdb2-7dfea8023f4d','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:43 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120378,'Estimated Landed Cost',1120164,70,'Y',200103,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','92f24b43-3c86-4fc7-b7b6-86fdb0e5ff03','B')
;

-- 16 de abr de 2020 23:48:43 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129346,'Estimated Landed Cost',1120378,210787,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d92480dd-a351-4a7b-a27d-26245842e986','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129347,'C_OrderLandedCost_UU',1120378,210790,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4cc0c096-ba89-4a1b-a900-82093b854c95','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:44 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129348,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120378,210788,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','518c8b59-f7dd-461c-bd93-29b489774a02','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129349,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120378,210789,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c2a9fe6-8333-4cea-a8e2-02fe002132b6','Y','Y',4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129350,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120378,210798,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','75c0cc3b-7414-4179-930d-8a1fb5ac39ff','Y',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:45 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129351,'Cost Element','Product Cost Element',1120378,210795,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e8f0303-eda3-453e-ba16-8f545ddbf244','Y',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129352,'Description','Optional short description of the record','A description is limited to 255 characters.',1120378,210793,'Y',255,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b602986-c991-4f7c-b1ce-6b501624d116','Y',1,5,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:46 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129353,'Cost Distribution','Landed Cost Distribution','How landed costs are distributed to material receipts',1120378,210794,'Y',1,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8b5b5493-1810-4c0c-b9c2-cf3edc5ee5d1','Y',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:47 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129354,'Amount','Amount','Amount',1120378,210799,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:46','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','65b929a2-91af-4941-9b51-71594f5d28f9','Y',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:47 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120379,'Estimated Landed Cost Allocation',1120164,80,'Y',200104,0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:47','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',2,'N','LBRA','Y','N','b120e76d-4b33-4ed3-a423-fa454d2a4c3f','B')
;

-- 16 de abr de 2020 23:48:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129355,'C_OrderLandedCostAllocation_UU',1120379,210807,'N',36,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:47','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:47','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1e92c612-fbc5-4a02-925e-61de3133a43f','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129356,'Estimated Landed Cost Allocation',1120379,210802,'N',10,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1a3d3e13-5450-492a-ba03-0559f897e0f7','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129357,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120379,210803,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3df149d0-0421-4b79-8407-290c8c0b95d6','N',1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129358,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120379,210804,'Y',22,20,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7e68080c-f235-48a4-a516-a814440e8af8','Y','N',0,4,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129359,'Estimated Landed Cost',1120379,210813,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b3b82c24-ef06-4389-9266-c7b8a434d724','N',0,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129360,'Purchase Order Line','Purchase Order Line','The Purchase Order Line is a unique identifier for a line in an order.',1120379,210815,'Y',10,40,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:49','YYYY-MM-DD HH24:MI:SS'),100,'N','N','LBRA','c66caeaa-89b2-4906-912c-26449b1f1fcd','Y',10,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129361,'Base','Calculation Base',1120379,210806,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','d343f9c7-b8d4-419b-8199-3b4396d0aea5','Y',20,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129362,'Quantity','Quantity','The Quantity indicates the number of a specific product or item for this document.',1120379,210810,'Y',22,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','c405e0f7-3d7f-46e4-a876-0f8e85f5ed30','Y',30,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:48:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129363,'Amount','Amount','Amount',1120379,210805,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-16 23:48:50','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','fd1dbdf9-3b9a-49bf-af82-869d90022460','Y',40,1,2,1,'N','N','N')
;

-- 16 de abr de 2020 23:56:49 BRT
UPDATE AD_Tab SET Name='Other In', Description='Other In Header', Help='The Other In Header Tab defines the parameters of an Other In.  The field values defined will determine how the Other In Lines are processed.',Updated=TO_TIMESTAMP('2020-04-16 23:56:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120371
;

-- 16 de abr de 2020 23:57:54 BRT
UPDATE AD_Tab SET Name='Other In Line',Updated=TO_TIMESTAMP('2020-04-16 23:57:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120372
;

-- 16 de abr de 2020 23:58:15 BRT
UPDATE AD_Tab SET Description='Other In Line', Help='The Other In Line Tab defines the individual items in an order.',Updated=TO_TIMESTAMP('2020-04-16 23:58:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120372
;

-- 17 de abr de 2020 00:13:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (1122994,0,0,'Y',TO_TIMESTAMP('2020-04-17 00:13:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:13:31','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IsSalesPurchaseOperation','Sales/Purchase Operation','Used to set Sales/Purchase Operation','Sales/Purchase Operation','LBRA','889aa156-d4b5-44be-bf86-c9fc65dfd04f')
;

-- 17 de abr de 2020 00:19:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure,IsHtml) VALUES (1131894,0,'Sales/Purchase Operation','Used to set Sales/Purchase Operation',217,'LBR_IsSalesPurchaseOperation','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2020-04-17 00:19:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:19:53','YYYY-MM-DD HH24:MI:SS'),100,1122994,'Y','N','LBRA','N','N','N','Y','d426250d-225f-40b7-ad47-aee66604d683','Y','N','N','N')
;

-- 17 de abr de 2020 00:20:21 BRT
ALTER TABLE C_DocType ADD COLUMN LBR_IsSalesPurchaseOperation CHAR(1) DEFAULT 'Y' CHECK (LBR_IsSalesPurchaseOperation IN ('Y','N'))
;

-- 17 de abr de 2020 00:20:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129364,'Sales/Purchase Operation','Used to set Sales/Purchase Operation',167,1131894,'Y',4,20300,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2020-04-17 00:20:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:20:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','42b5f805-1607-4754-b7e4-507bf5f9a69c','Y',310,1,2,1,'N','N','N')
;

-- 17 de abr de 2020 00:23:39 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120168,'C_DocTypeTarget Others Operation (In or Out)','Target Document Type for Others Operation (In or Out)','S','C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx=''@IsSOTrx@'' AND COALESCE(C_DocType.DocSubTypeSO,'' '')<>''RM'' AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.LBR_IsSalesPurchaseOperation = ''N''',0,0,'Y',TO_TIMESTAMP('2020-04-17 00:23:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:23:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','aee6df3b-41ef-4159-b742-18697146209a')
;

-- 17 de abr de 2020 00:25:22 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Description,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120169,'C_DocTypeTarget SO or PO Operation','Target Document Type for SO or PO Operation','S','C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx=''@IsSOTrx@'' AND COALESCE(C_DocType.DocSubTypeSO,'' '')<>''RM'' AND C_DocType.AD_Client_ID=@#AD_Client_ID@ AND C_DocType.LBR_IsSalesPurchaseOperation = ''Y''',0,0,'Y',TO_TIMESTAMP('2020-04-17 00:25:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:25:21','YYYY-MM-DD HH24:MI:SS'),100,'U','68343089-7218-40b3-9948-eb66c5860a41')
;

-- 17 de abr de 2020 00:25:43 BRT
UPDATE AD_Field SET AD_Reference_ID=18, AD_Reference_Value_ID=170, AD_Val_Rule_ID=1120168,Updated=TO_TIMESTAMP('2020-04-17 00:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129154
;

-- 17 de abr de 2020 00:26:42 BRT
UPDATE AD_Field SET AD_Reference_ID=18, AD_Reference_Value_ID=170, AD_Val_Rule_ID=1120169,Updated=TO_TIMESTAMP('2020-04-17 00:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128927
;

-- 17 de abr de 2020 00:27:22 BRT
UPDATE AD_Field SET AD_Reference_ID=NULL, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-04-17 00:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128927
;

-- 17 de abr de 2020 00:28:04 BRT
UPDATE AD_Field SET AD_Reference_ID=18, AD_Reference_Value_ID=170, AD_Val_Rule_ID=1120168,Updated=TO_TIMESTAMP('2020-04-17 00:28:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128928
;

-- 17 de abr de 2020 00:29:22 BRT
UPDATE AD_Field SET AD_Reference_ID=18, AD_Reference_Value_ID=170, AD_Val_Rule_ID=1120169,Updated=TO_TIMESTAMP('2020-04-17 00:29:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1085
;

-- 17 de abr de 2020 00:49:42 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120359,'Others Operations',0,0,'Y',TO_TIMESTAMP('2020-04-17 00:49:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 00:49:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','LBRA','N','867bbebd-9992-47b1-abb1-10527becd07e')
;

-- 17 de abr de 2020 00:49:42 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120359, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120359)
;

-- 17 de abr de 2020 01:36:34 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120360,'Simple Order (Other In)','W',1120164,0,0,'Y',TO_TIMESTAMP('2020-04-17 01:36:34','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 01:36:34','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','LBRA','Y','20750b7d-4997-4532-8596-2dc1987a032f')
;

-- 17 de abr de 2020 01:36:34 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120360, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120360)
;

-- 17 de abr de 2020 01:37:04 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,"action",AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120361,'Simple Order (Other Out)','W',1120163,0,0,'Y',TO_TIMESTAMP('2020-04-17 01:37:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-04-17 01:37:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','cdc7abc9-6a2b-49fe-90e5-083dadad0ed7')
;

-- 17 de abr de 2020 01:37:04 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120361, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120361)
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 17 de abr de 2020 01:37:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:37:38 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 17 de abr de 2020 01:38:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 17 de abr de 2020 01:39:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:39:28 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:39:56 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:39:56 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:40:11 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:40:11 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:40:15 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120360
;

-- 17 de abr de 2020 01:40:15 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120359, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120361
;

-- 17 de abr de 2020 01:44:53 BRT
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2020-04-17 01:44:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1129364
;

-- 17 de abr de 2020 18:12:45 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''N'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocTypeTarget_ID AND C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx = C_Order.IsSOTrx AND C_DocType.LBR_IsSalesPurchaseOperation = ''N'')',Updated=TO_TIMESTAMP('2020-04-17 18:12:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120371
;

-- 17 de abr de 2020 18:13:11 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''Y'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocTypeTarget_ID AND C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx = C_Order.IsSOTrx AND C_DocType.LBR_IsSalesPurchaseOperation = ''N'')',Updated=TO_TIMESTAMP('2020-04-17 18:13:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120365
;

-- 17 de abr de 2020 18:13:37 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''N'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocTypeTarget_ID AND C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx = C_Order.IsSOTrx AND C_DocType.LBR_IsSalesPurchaseOperation = ''Y'')',Updated=TO_TIMESTAMP('2020-04-17 18:13:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=294
;

-- 17 de abr de 2020 18:14:45 BRT
UPDATE AD_Tab SET WhereClause='C_Order.IsSOTrx=''Y'' AND EXISTS (SELECT 1 FROM C_DocType WHERE C_DocType.C_DocType_ID = C_Order.C_DocTypeTarget_ID AND C_DocType.DocBaseType IN (''SOO'', ''POO'') AND C_DocType.IsSOTrx = C_Order.IsSOTrx AND C_DocType.LBR_IsSalesPurchaseOperation = ''Y'')',Updated=TO_TIMESTAMP('2020-04-17 18:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=186
;

SELECT Register_Migration_Script ('202005261800_NewWindowSimpleOtherInOut.sql') FROM DUAL
;