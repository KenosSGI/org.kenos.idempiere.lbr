SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de abr de 2022 15:09:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133772,0,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',333,167,'C_BPartner_Location_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2022-04-19 15:09:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-19 15:09:28','YYYY-MM-DD HH24:MI:SS'),100,189,'Y','N','LBRA','N','N','N','Y','ab0e5b23-2371-4e9f-aba7-88f1727e8839','Y',0,'N','N','N')
;

-- 19 de abr de 2022 15:09:36 BRT
UPDATE AD_Column SET FKConstraintName='CBPartnerLocation_CInvoiceLine', FKConstraintType='N',Updated=TO_DATE('2022-04-19 15:09:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133772
;

-- 19 de abr de 2022 15:09:36 BRT
ALTER TABLE C_InvoiceLine ADD C_BPartner_Location_ID NUMBER(10) DEFAULT NULL 
;

-- 19 de abr de 2022 15:09:36 BRT
ALTER TABLE C_InvoiceLine ADD CONSTRAINT CBPartnerLocation_CInvoiceLine FOREIGN KEY (C_BPartner_Location_ID) REFERENCES c_bpartner_location(c_bpartner_location_id) DEFERRABLE INITIALLY DEFERRED
;

-- 19 de abr de 2022 15:09:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131720,'Partner Location','Identifies the (ship to) address for this Business Partner','The Partner address indicates the location of a Business Partner',270,1133772,'Y',22,20360,'N','N','N','N',0,0,'Y',TO_DATE('2022-04-19 15:09:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2022-04-19 15:09:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b07d34d0-b374-476b-98f7-8e138bc7c903','Y',370,2)
;

-- 19 de abr de 2022 15:11:03 BRT
UPDATE AD_Field SET SeqNo=35, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2022-04-19 15:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131720
;

-- 19 de abr de 2022 15:11:03 BRT
SELECT Register_Migration_Script ('202204191511_LocationOfService.sql') FROM DUAL
;

