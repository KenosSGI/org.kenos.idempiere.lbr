-- 05/04/2022 14h44min25s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1133769,1122099,0,17,1120235,1000012,'LBR_IndIEDest',TO_DATE('2022-04-05 14:44:25','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário','LBRA',1,'Indicador da IE do Destinatário','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicador da IE',0,TO_DATE('2022-04-05 14:44:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/04/2022 14h44min25s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1133769 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/04/2022 14h44min26s BRT
ALTER TABLE LBR_CFOPLine ADD LBR_IndIEDest CHAR(1) DEFAULT NULL 
;

-- 05/04/2022 14h44min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1133769,1131709,0,1000008,TO_DATE('2022-04-05 14:44:54','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário',1,'LBRA','Indicador da IE do Destinatário','Y','Y','Y','N','N','N','N','N','Indicador da IE',TO_DATE('2022-04-05 14:44:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/04/2022 14h44min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1131709 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/04/2022 14h44min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128699,1131710,0,1000008,TO_DATE('2022-04-05 14:44:54','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Regime',TO_DATE('2022-04-05 14:44:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/04/2022 14h44min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1131710 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/04/2022 14h45min48s BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1131709
;

-- 05/04/2022 14h45min48s BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1131710
;

-- 05/04/2022 14h45min48s BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000137
;

-- 05/04/2022 14h45min48s BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000438
;

-- 05/04/2022 14h45min48s BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000437
;

-- 05/04/2022 14h45min54s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2022-04-05 14:45:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131709
;

-- 05/04/2022 14h46min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1133769,1131711,0,1106001,TO_DATE('2022-04-05 14:46:08','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário',1,'LBRA','Indicador da IE do Destinatário','Y','Y','Y','N','N','N','N','N','Indicador da IE',TO_DATE('2022-04-05 14:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/04/2022 14h46min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1131711 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/04/2022 14h46min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000642,1131712,0,1106001,TO_DATE('2022-04-05 14:46:08','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2022-04-05 14:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/04/2022 14h46min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1131712 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/04/2022 14h46min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000632,1131713,0,1106001,TO_DATE('2022-04-05 14:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Status',2,'LBRA','Defines the Tax Status','Y','Y','Y','N','N','N','N','N','Tax Status',TO_DATE('2022-04-05 14:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/04/2022 14h46min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1131713 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1131712
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1131713
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1125691
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106019
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106018
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106017
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106020
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106021
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106022
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106023
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1106024
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1106025
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1131711
;

-- 05/04/2022 14h46min50s BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1106026
;

-- 05/04/2022 14h46min57s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2022-04-05 14:46:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131711
;

-- 05/04/2022 14h46min57s BRT
SELECT Register_Migration_Script ('202204051452_CFOPByIndIEDest.sql') FROM DUAL
;

