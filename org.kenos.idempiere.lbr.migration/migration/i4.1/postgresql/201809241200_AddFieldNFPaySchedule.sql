-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1125497
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1125486
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1125488
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1125489
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1127499
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1125491
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1125498
;

-- 24/09/2018 11h3min34s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1125499
;

-- 24/09/2018 11h3min41s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1125486
;

-- 24/09/2018 11h3min42s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1125486
;

-- 24/09/2018 11h3min59s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1127504,'Nota Fiscal Payment Schedule',1120196,1130434,'Y',0,120,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-09-24 11:03:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-09-24 11:03:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','366a6077-7ba3-47b4-afd6-cea53260e1ae','N',30,1,1,1,'N','N','N')
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127504
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1125488
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1125489
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1127499
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1125491
;

-- 24/09/2018 11h4min10s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1125493
;

-- 24/09/2018 11h4min11s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1125494
;

-- 24/09/2018 11h4min11s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1125495
;

-- 24/09/2018 11h4min11s BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1125496
;

-- 24/09/2018 11h4min11s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1125498
;

-- 24/09/2018 11h4min11s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1125499
;

SELECT Register_Migration_Script ('201809241200_AddFieldNFPaySchedule.sql') FROM DUAL
;