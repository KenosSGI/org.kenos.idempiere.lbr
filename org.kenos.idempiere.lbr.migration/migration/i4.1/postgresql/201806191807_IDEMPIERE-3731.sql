-- 19/06/2018 16h17min32s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,PrintName,EntityType,AD_Element_UU) VALUES (203219,0,0,'Y',TO_TIMESTAMP('2018-06-19 16:17:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-19 16:17:31','YYYY-MM-DD HH24:MI:SS'),100,'ValueDate','Value','Date Value','Value','D','9c0fddc0-1104-4736-88df-39dfacb29f5a')
;

-- 19/06/2018 16h18min16s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure) VALUES (213528,0,'Value','Date Value',561,'ValueDate',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_TIMESTAMP('2018-06-19 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-19 16:18:16','YYYY-MM-DD HH24:MI:SS'),100,203219,'Y','N','D','N','N','N','Y','a17b9233-674a-4a5b-933e-846c5597083f','Y',0,'N','N')
;

-- 19/06/2018 16h18min21s BRT
ALTER TABLE M_AttributeInstance ADD COLUMN ValueDate TIMESTAMP DEFAULT NULL 
;

-- 19/06/2018 15h53min3s BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (200412,'Date',326,'D',0,0,'Y',TO_TIMESTAMP('2018-06-19 15:53:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-19 15:53:02','YYYY-MM-DD HH24:MI:SS'),100,'D','dfe18fde-6db4-4c57-9021-d22b1aacd0f9')
;

-- 19/06/2018 15h53min3s BRT
SELECT Register_Migration_Script ('201806191807_IDEMPIERE-3731.sql') FROM DUAL
;