-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 24/11/2017 15h35min6s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1122418,0,0,'Y',TO_TIMESTAMP('2017-11-24 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-11-24 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,'lbr_IsAutomaticNF','Automatic NF','Identifies if this Document generates Eletronic NF automatically','Identifies if this Document generates Eletronic NF automatically. It Should be NF-e, NFC-e, NFS-e or Others','Automatic NF','LBRA','4dce3f5c-fd76-463f-b097-c721ddfd1ac5')
;

-- 24/11/2017 15h39min0s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,IsToolbarButton,IsSecure) VALUES (1129895,0,'Automatic NF','Identifies if this Document generates Eletronic NF automatically','Identifies if this Document generates Eletronic NF automatically. It Should be NF-e, NFC-e, NFS-e or Others',217,'lbr_IsAutomaticNF','''N''',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2017-11-24 15:38:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-11-24 15:38:59','YYYY-MM-DD HH24:MI:SS'),100,1122418,'Y','N','LBRA','N','N','N','Y','60bc0c82-376b-492f-adfe-db3149e3faa3','Y','N','N')
;

-- 24/11/2017 15h39min14s BRST
ALTER TABLE C_DocType ADD COLUMN lbr_IsAutomaticNF CHAR(1) DEFAULT 'N' CHECK (lbr_IsAutomaticNF IN ('Y','N')) NOT NULL
;

-- 24/11/2017 15h40min52s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLogic,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127216,'Automatic NF','Identifies if this Document generates Eletronic NF automatically','Identifies if this Document generates Eletronic NF automatically. It Should be NF-e, NFC-e, NFS-e or Others',167,1129895,'Y','@DocBaseType@=''SOO'' &  @DocSubTypeSO@!''WP'' & @DocSubTypeSO@!''WR''',1,20425,'Y','N','N','N',0,0,'Y',TO_TIMESTAMP('2017-11-24 15:40:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-11-24 15:40:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1000000,'LBRA','54a331cb-e73a-4470-99d9-d86c06b477fe','Y',330,5,2,1,'N','N','N')
;

-- 24/11/2017 15h41min34s BRST
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-11-24 15:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127216
;

-- 24/11/2017 15h44min14s BRST
UPDATE AD_Field SET SeqNo=20361, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=361, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-11-24 15:44:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127216
;

-- 24/11/2017 15h48min11s BRST
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''ARI'' | @DocBaseType@=''API'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARC''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2017-11-24 15:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127216
;

SELECT Register_Migration_Script ('201711241548_GenerateNFAut.sql') FROM DUAL
;