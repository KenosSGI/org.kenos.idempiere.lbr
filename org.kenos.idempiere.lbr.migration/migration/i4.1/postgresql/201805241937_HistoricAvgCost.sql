-- Historic on AVG Cost
-- 24/05/2018 19h25min42s BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,WhereClause,OrderByClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120286,'Historic',1120009,40,'Y',1120020,0,0,'Y',TO_TIMESTAMP('2018-05-24 19:25:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:25:41','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1120300,'LBR_AverageCostLine.lbr_AvgCostType=''H''','M_Product_ID','N','N',1,'N','LBRA','N','N','9890f096-e9ac-4b1f-9a2a-6c61ab959980','B')
;

-- 24/05/2018 19h26min17s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127346,'AvgCost - Line',1120286,1120292,'N',22,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','07d757c4-1738-4d74-921b-d2167ba9ac34','N',1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min17s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127347,'AvgCost Type',1120286,1120302,'N',1,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','112d485e-6002-4cd7-9539-fda13b024ac8','N',0,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min18s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127348,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120286,1120293,'Y',22,10,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','05805074-e4a9-4f99-89c3-be17ff1ba649','Y',10,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min18s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127349,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120286,1120294,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b564582-6f89-457e-b45e-923e57f0f81a','Y','Y',20,4,2,1,'N','N','N')
;

-- 24/05/2018 19h26min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127350,'Average Cost','Defines the Average Cost',1120286,1120300,'Y',22,30,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5fe15d02-c675-41e6-b326-9974c6c354d4','Y',30,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127351,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120286,1120295,'Y',1,40,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90648f3f-5c79-4804-9697-2351421684bb','Y',40,5,2,1,'N','N','N')
;

-- 24/05/2018 19h26min19s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127352,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120286,1120301,'Y',22,50,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','259c4e3b-a338-4c90-a5b3-dce16b216bf3','Y',50,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min20s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127353,'Description','Optional short description of the record','A description is limited to 255 characters.',1120286,1120303,'Y',255,60,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','3b2de8e3-e8e0-49a2-a2d6-9fae1d80168a','Y',60,1,5,8,'N','N','N')
;

-- 24/05/2018 19h26min20s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127354,'Current Cost Price','The currently used cost price',1120286,1120306,'Y',22,70,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','99593a48-b847-4b53-972e-216f828fbf18','Y',70,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min20s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127355,'Current Quantity','Current Quantity',1120286,1120309,'Y',22,80,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','e83cdf78-7696-46da-b88c-9be205efeab1','Y',80,4,2,1,'N','N','N')
;

-- 24/05/2018 19h26min21s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127356,'Accumulated Amt','Total Amount','Sum of all amounts',1120286,1120304,'Y',22,90,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','ddceadf5-c1ad-404c-b678-63915ef3f7b8','Y',90,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min21s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127357,'Accumulated Qty','Total Quantity','Sum of the quantities',1120286,1120305,'Y',22,100,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','29993c37-4742-4e97-82ff-9c2f13bb4d28','Y',100,4,2,1,'N','N','N')
;

-- 24/05/2018 19h26min21s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127358,'Landed Cost Amt',1120286,1130239,'Y',0,110,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fb35e2ac-1673-418c-acec-6069d66c89ae','Y',130,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127359,'Landed Cost Qty',1120286,1130240,'Y',0,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:21','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6cf0671e-b590-41c9-9369-c0a1fe9df5fb','Y',140,4,2,1,'N','N','N')
;

-- 24/05/2018 19h26min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127360,'Future Cost Price',1120286,1120307,'Y',22,130,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','ca4e6a16-3bf6-45e5-a11d-a7383b349c2a','Y',110,1,2,1,'N','N','N')
;

-- 24/05/2018 19h26min22s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127361,'AvgCost - Zoom',1120286,1120308,'Y',1,140,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:26:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',106,'LBRA','a14de561-11f9-492b-823d-ae18bfe65a36','Y',120,5,2,1,'N','N','N')
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127356
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127357
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127358
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127359
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127360
;

-- 24/05/2018 19h27min27s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1127361
;

-- 24/05/2018 19h28min26s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1121842,'Historic',1120024,'H',0,0,'Y',TO_TIMESTAMP('2018-05-24 19:28:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-05-24 19:28:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','40f36af5-cca7-4078-b1a8-3cf16141aa6c')
;

-- 24/05/2018 19h33min53s BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127343
;

-- 24/05/2018 19h33min53s BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127344
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120245
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120239
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120236
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120237
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120235
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1120234
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120238
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120240
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120241
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120244
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120242
;

-- 24/05/2018 19h34min27s BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y' WHERE AD_Field_ID=1120243
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127357
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127360
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127361
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127358
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127359
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127356
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127349
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127350
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127351
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N' WHERE AD_Field_ID=1127348
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127352
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127354
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127355
;

-- 24/05/2018 19h34min54s BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y' WHERE AD_Field_ID=1127353
;

SELECT Register_Migration_Script ('201805241937_HistoricAvgCost.sql') FROM DUAL
;