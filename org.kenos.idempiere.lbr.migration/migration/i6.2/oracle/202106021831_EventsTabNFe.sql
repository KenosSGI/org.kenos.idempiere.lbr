SET SQLBLANKLINES ON
SET DEFINE OFF

-- 2 de jun de 2021 18:14:35 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,AD_Column_ID,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,Parent_Column_ID,AD_Tab_UU,TreeDisplayedOn) VALUES (1120507,'Events',1000019,70,'N',1120461,0,0,'Y',TO_DATE('2021-06-02 18:14:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:14:34','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N',1126791,'N','N',1,'N','LBRA','N','N',1100064,'1f0119fe-f3c1-404b-8f2c-e87688a447fa','B')
;

-- 2 de jun de 2021 18:16:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133732,0,'Valid','Element is valid','The element passed the validation check',1120461,'IsValid','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2021-06-02 18:16:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:02','YYYY-MM-DD HH24:MI:SS'),100,2002,'Y','N','LBRA','N','N','N','Y','077a32d4-a229-44bb-b9da-62419cfa00d8','N',0,'N','N','N')
;

-- 2 de jun de 2021 18:16:06 BRT
ALTER TABLE LBR_PartnerDFe ADD IsValid CHAR(1) DEFAULT 'N' CHECK (IsValid IN ('Y','N')) NOT NULL
;

-- 2 de jun de 2021 18:16:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131551,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120507,1126784,'N',22,0,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7979bc91-557b-42d5-8573-46cef7888fa2','N','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131552,'NF Status','NF Status',1120507,1126793,'N',22,0,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9629a68a-0253-4818-a5cf-937b71a66a08','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131553,'BP Name',1120507,1126779,'N',60,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13540b9d-0ad0-4c8a-b2a5-3ceb26c5a25b','N',0,1,5,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131554,'Digest Value',1120507,1126788,'N',22,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6cad610c-9933-4bb4-88de-2f45147e7692','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131555,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120507,1126774,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','136955ca-9ec9-4b5c-8596-776c4f1876dc','N',0,2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131556,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120507,1126789,'N',22,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c1d03bf3-2871-4518-91f3-a64a81e458a6','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131557,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120507,1126772,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','a00fc8af-3ec6-409d-ba86-580985b12926','Y',10,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131558,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120507,1126773,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','79e7fa08-b2a6-4d6b-9ecc-0cda87e9d378','Y','Y',20,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131559,'NFe ID','Identification of NFe',1120507,1126791,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','83dd164c-3373-43df-b1a9-9005f15f7d52','Y',30,1,5,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131560,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120507,1126786,'Y',22,40,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9de6992a-51e2-4705-a78d-3375d4a03e27','Y',40,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131561,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120507,1126787,'Y',22,50,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f89f1d37-eaa3-478e-9a2c-fb3cc66e8e6c','Y',50,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131562,'Description','Optional short description of the record','A description is limited to 255 characters.',1120507,1126782,'Y',60,60,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','83d9cbb6-5694-487f-b792-d76368b7bb97','Y',60,1,5,3,'N','N','N')
;

-- 2 de jun de 2021 18:16:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131563,'Document Type','Document Type',1120507,1126790,'Y',22,70,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','003bb088-5f93-4b82-b232-674de98ddcad','Y',70,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131564,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120507,1126780,'Y',22,80,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b0c2bd9d-4a92-40ab-bdf5-e09408a1b9c4','Y',80,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131565,'Document Note','Additional information for a Document','The Document Note is used for recording any additional information regarding this product.',1120507,1126783,'Y',60,90,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ba9e00ef-81e1-4b60-93f5-d7e8b6f29f8a','Y',90,1,5,3,'N','N','N')
;

-- 2 de jun de 2021 18:16:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131566,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120507,1126795,'Y',22,100,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ff374e17-ceba-4c22-b113-92061ea9a29e','N','Y',100,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131567,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120507,1126781,'Y',22,110,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','64ef042a-c4b7-4231-baf4-2ccd9573f01b','Y',110,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,AD_Reference_Value_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131568,'Event Type',1120507,1126797,'Y',22,120,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA',17,1120225,'eec4d2ec-5c08-4147-84fd-d1965ebfe903','Y',120,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131569,'NFe Protocol',1120507,1126796,'Y',22,130,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3d8fcf3a-75ff-4fb3-92bd-0d5de1fa1bb9','Y',130,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131570,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120507,1131527,'Y',10,150,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','65f7c1de-dad7-4eda-9b8c-25ae35efba34','Y',1,1,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131571,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120507,1126794,'Y',22,160,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','de97ae89-90a1-40e7-a339-ed46f16562bb','N','Y',140,2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131572,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120507,1126829,'N',1,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ef6cba3e-dfa2-49b7-96f1-1b4e0a10124a','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131573,'Manifested',1120507,1126831,'N',1,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','89ead24b-e089-4498-b4ae-16cbdf595004','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131574,'XML Valid',1120507,1126828,'N',1,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bc3eca45-6148-4d37-a6d0-c0d7694363f0','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131575,'Partner Doc Fiscal',1120507,1126771,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e24c3231-3239-4aa8-9c91-c96c15af9246','N',1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131576,'Process Now',1120507,1126830,'N',1,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9fb81646-1f50-41c7-b1de-96f370c4b1ea','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:16:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131577,'Cancelled','The transaction was cancelled',1120507,1129814,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','36fe7d15-cbd5-4d04-950d-bc135f5a955f','Y',150,2,2)
;

-- 2 de jun de 2021 18:16:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131578,'NFe Status','Status of NFe',1120507,1130473,'Y',3,180,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b13f43ac-96c4-4b4b-b8b2-a5b641a55209','Y',160,2)
;

-- 2 de jun de 2021 18:16:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131579,'NFe Environment',1120507,1133510,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b60e8ce8-b7af-408f-9fc7-0204da08287d','Y',170,2)
;

-- 2 de jun de 2021 18:16:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131580,'Manifest Tries',1120507,1133729,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b8c6556b-dd44-4758-82dc-42a21637410a','Y',180,2)
;

-- 2 de jun de 2021 18:16:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131581,'Valid','Element is valid','The element passed the validation check',1120507,1133732,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:16:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5ad2dad0-d396-4799-bb9e-e6846ace894f','Y',190,2,2)
;

-- 2 de jun de 2021 18:18:02 BRT
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131570
;

-- 2 de jun de 2021 18:18:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131579
;

-- 2 de jun de 2021 18:18:02 BRT
UPDATE AD_Field SET SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131571
;

-- 2 de jun de 2021 18:18:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=3, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131577
;

-- 2 de jun de 2021 18:18:02 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131581
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131580
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131573
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131578
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131575
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131576
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131572
;

-- 2 de jun de 2021 18:18:03 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2021-06-02 18:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131574
;

-- 2 de jun de 2021 18:18:09 BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2021-06-02 18:18:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133732
;

-- 2 de jun de 2021 18:27:54 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120508,'Eventos',1000015,90,'Y',1120461,0,0,'Y',TO_DATE('2021-06-02 18:27:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:27:54','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','682bcd6c-9c48-4a5d-8c85-65e303a610bc','B')
;

-- 2 de jun de 2021 18:28:11 BRT
UPDATE AD_Tab SET AD_Column_ID=1126791, TabLevel=1, IsInsertRecord='N', Parent_Column_ID=1100064,Updated=TO_DATE('2021-06-02 18:28:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120508
;

-- 2 de jun de 2021 18:28:26 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131582,'Partner Doc Fiscal',1120508,1126771,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:25','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fe89734b-3d66-4691-afbb-84534616b787','N',1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131583,'NF Status','NF Status',1120508,1126793,'N',22,0,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:26','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','44e75212-6ba3-4ff8-811f-aeba2581347b','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131584,'BP Name',1120508,1126779,'N',60,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8edd92f6-bb25-4bd0-889c-a44673ee135a','N',0,1,5,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:27 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131585,'Digest Value',1120508,1126788,'N',22,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','484e02de-7835-4e4d-9dcb-a0d250a06a75','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131586,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120508,1126774,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9fee1b3b-3d7b-4ff0-a847-56df2e19bfd8','N',0,2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131587,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120508,1126789,'N',22,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f7b8c301-23b0-4192-9dd0-e24368e9a2a7','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:28 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131588,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120508,1126784,'N',22,0,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7c0d1f72-c5fe-4812-a791-df7c6eff5077','N','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131589,'Manifest Tries',1120508,1133729,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','656e6f87-3652-4f82-bbc5-faf40ead5657','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131590,'NFe Status','Status of NFe',1120508,1130473,'N',3,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','310a67bf-ff42-4c93-b435-4e29db7978ef','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131591,'Process Now',1120508,1126830,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','76606542-c954-4fe9-8ba1-70e8d5285233','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131592,'Sales Transaction','This is a Sales Transaction','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',1120508,1126829,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c355bf2e-ab47-4666-8ddf-bea7ed0d96b6','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131593,'Manifested',1120508,1126831,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b0468822-2537-43b0-a6f0-389e79ebb41e','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131594,'XML Valid',1120508,1126828,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9af768ed-24e6-4775-916f-8864a3ed3f98','N',2,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131595,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120508,1126772,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:31','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','621356a1-492a-45ab-86d0-d8c635e98bb3','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131596,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120508,1126773,'Y',22,20,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','be115e48-064b-41bc-83c6-04c3d038fe18','Y','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131597,'NFe ID','Identification of NFe',1120508,1126791,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a3879b3-1be7-403d-98a2-533228a02df4','N',0,1,5,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131598,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120508,1126786,'Y',22,40,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b788e26-ace4-427e-bd16-d86031659a0c','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131599,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120508,1126787,'Y',22,50,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2c54b05-c160-4bb2-aa82-b5770b4f861c','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131600,'Description','Optional short description of the record','A description is limited to 255 characters.',1120508,1126782,'Y',60,60,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','898a4aee-b523-48ec-a51a-56f5b4bd9263','N',0,1,5,3,'N','N','N')
;

-- 2 de jun de 2021 18:28:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131601,'Document Type','Document Type',1120508,1126790,'Y',22,70,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3b4cf5c3-cc93-47ff-b97e-1af5a32efce8','N',0,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131602,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120508,1126780,'Y',22,80,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','692585da-ae1b-4c1f-b360-532598c36f38','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131603,'Document Note','Additional information for a Document','The Document Note is used for recording any additional information regarding this product.',1120508,1126783,'Y',60,90,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2f5cb4c5-2d43-4e2e-8b09-aec890edf286','N',0,1,5,3,'N','N','N')
;

-- 2 de jun de 2021 18:28:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131604,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120508,1126795,'Y',22,100,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4bc5ee1f-0ba4-4de5-8339-d44c7637b3fd','N','Y',20,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131605,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120508,1126781,'Y',22,110,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3ac2cf41-8ee2-4165-95a1-b9b0c90825ef','Y',10,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Reference_ID,AD_Reference_Value_ID,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131606,'Event Type',1120508,1126797,'Y',22,120,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA',17,1120225,'a40da256-53d2-406a-bc54-386be59e68c4','Y',30,1,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131607,'NFe Protocol',1120508,1126796,'Y',22,130,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6f52c4b6-9e12-4c9c-aa69-bbad47b3338e','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131608,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120508,1131527,'Y',10,140,0,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','525783a9-867f-407d-b2ea-f6d197dc6d7d','N',0,1,1,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131609,'NFe Environment',1120508,1133510,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9123e170-3d15-4212-9ea9-665448a53006','N',0,4,2,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131610,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120508,1126794,'Y',22,160,'Y','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1d1c5c76-eb9e-465e-b08c-adbb994f10da','N','N',0,2,1,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131611,'Cancelled','The transaction was cancelled',1120508,1129814,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','13bfeb0c-a2f3-4c47-80e4-961c5a9b1fa2','N',0,3,1,1,'N','N','N')
;

-- 2 de jun de 2021 18:28:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131612,'Valid','Element is valid','The element passed the validation check',1120508,1133732,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-06-02 18:28:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5b8b634e-71d7-4f2e-ac3c-89125ac1d2a0','Y',40,5,1,1,'N','N','N')
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131555
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131560
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131561
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131577
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131559
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131564
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131562
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131554
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131557
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131556
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131580
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131573
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131576
;

-- 2 de jun de 2021 18:29:03 BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131579
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131578
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=160,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131570
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=170,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131553
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=180,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131565
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=190,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131558
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=200,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131575
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=210,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131571
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=220,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131569
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=230,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131552
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=240,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131563
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=250,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131551
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=260,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131572
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=270,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131574
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=280,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131567
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=290,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131566
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=300,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131568
;

-- 2 de jun de 2021 18:29:04 BRT
UPDATE AD_Field SET SeqNoGrid=310,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131581
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131560
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131561
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131577
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131559
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131564
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131562
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131554
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131557
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131556
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131580
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131573
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131576
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131579
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131578
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131570
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131553
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131565
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131558
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131575
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131571
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131569
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131552
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131563
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131551
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131572
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131574
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131555
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131567
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131566
;

-- 2 de jun de 2021 18:29:16 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131568
;

-- 2 de jun de 2021 18:29:17 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1131581
;

-- 2 de jun de 2021 18:29:17 BRT
SELECT Register_Migration_Script ('202106021831_EventsTabNFe.sql') FROM DUAL
;

