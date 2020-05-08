SET SQLBLANKLINES ON
SET DEFINE OFF

DELETE FROM adempiere.AD_Field WHERE AD_Column_ID=202144 AND AD_Tab_ID=1120200 AND AD_Field_ID<>1129365;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 7 de mai de 2020 23:04:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1129365,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120200,202144,'Y',14,25,0,'N','N','N','N',0,0,'Y',TO_DATE('2020-05-07 23:04:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2020-05-07 23:04:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c654465d-5575-4f3d-8039-ebe2c0bba1a1','Y',30,1,2,1,'N','N','N')
;

SELECT Register_Migration_Script ('202005071800_AddFieldTabShipper.sql') FROM DUAL
;
