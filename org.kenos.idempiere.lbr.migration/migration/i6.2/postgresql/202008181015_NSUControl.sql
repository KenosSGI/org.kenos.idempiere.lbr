-- 18 de ago de 2020 08:36:32 AMT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120695,'NSU','LBR_NSU',0,'3',0,0,'Y',TO_TIMESTAMP('2020-08-18 08:36:31','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-18 08:36:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','d1fceb4e-2384-45ab-8d49-af5aae328fc3','N','N','N','N')
;

-- 18 de ago de 2020 08:36:32 AMT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NSU',1000000,'N','N','Table LBR_NSU','Y','Y',0,0,TO_TIMESTAMP('2020-08-18 08:36:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-18 08:36:32','YYYY-MM-DD HH24:MI:SS'),100,1153941,'Y',1000000,1,200000,'c2dcb9d2-6629-4ea0-9c23-7dcd64152ec6')
;

-- 18 de ago de 2020 08:38:05 AMT
UPDATE AD_Table SET Name='NSU Control', TableName='LBR_NSUControl',Updated=TO_TIMESTAMP('2020-08-18 08:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120695
;

-- 18 de ago de 2020 08:38:06 AMT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_NSUControl',1000000,'N','N','Table LBR_NSUControl','Y','Y',0,0,TO_TIMESTAMP('2020-08-18 08:38:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-18 08:38:05','YYYY-MM-DD HH24:MI:SS'),100,1153942,'Y',1000000,1,200000,'ab054b20-4336-4fb2-9891-95d1159fb6c7')
;

-- 18 de ago de 2020 08:38:22 AMT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1132532,0,'Partner Doc Fiscal',1120695,'LBR_PartnerDFe_ID',10,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_TIMESTAMP('2020-08-18 08:38:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-18 08:38:21','YYYY-MM-DD HH24:MI:SS'),100,1121790,'N','N','LBRA','N','N','N','Y','993f67e7-e958-4483-a5ad-db31084c81b0','Y',0,'N','N','N')
;

-- 18 de ago de 2020 08:38:38 AMT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1132533,0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120695,'LBR_NSU',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2020-08-18 08:38:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2020-08-18 08:38:37','YYYY-MM-DD HH24:MI:SS'),100,1122885,'Y','N','LBRA','N','N','N','Y','a4d2c1c3-74f3-49f3-a609-b6b7310fe8a0','Y',0,'N','N','N','N')
;

-- 18 de ago de 2020 08:39:21 AMT
UPDATE AD_Column SET FKConstraintName='LBRPartnerDFe_LBRNSUControl', FKConstraintType='N',Updated=TO_TIMESTAMP('2020-08-18 08:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1132532
;

-- 18 de ago de 2020 08:39:21 AMT
CREATE TABLE LBR_NSUControl (LBR_NSU VARCHAR(60) DEFAULT NULL , LBR_PartnerDFe_ID NUMERIC(10) DEFAULT NULL )
;

-- 18 de ago de 2020 08:39:21 AMT
ALTER TABLE LBR_NSUControl ADD CONSTRAINT LBRPartnerDFe_LBRNSUControl FOREIGN KEY (LBR_PartnerDFe_ID) REFERENCES lbr_partnerdfe(lbr_partnerdfe_id) DEFERRABLE INITIALLY DEFERRED
;

-- 18 de ago de 2020 08:40:07 AMT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120004,'8d175b84-51b3-4619-a69b-42f8a9723fa2',TO_TIMESTAMP('2020-08-18 08:40:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NSUControl',TO_TIMESTAMP('2020-08-18 08:40:07','YYYY-MM-DD HH24:MI:SS'),100,1120695,'N','Y','N','N','N')
;

-- 18 de ago de 2020 08:40:19 AMT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120011,'fd3b8b29-246b-47f1-a66a-2825071bf3b8',TO_TIMESTAMP('2020-08-18 08:40:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-18 08:40:18','YYYY-MM-DD HH24:MI:SS'),100,1132532,1120004,1)
;

-- 18 de ago de 2020 08:40:28 AMT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120012,'3562264b-c8e5-4035-8b6f-d959d03c0f0d',TO_TIMESTAMP('2020-08-18 08:40:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-18 08:40:27','YYYY-MM-DD HH24:MI:SS'),100,1132533,1120004,2)
;

-- 18 de ago de 2020 08:40:58 AMT
UPDATE AD_TableIndex SET Name='LBR_NSUControl_Unq',Updated=TO_TIMESTAMP('2020-08-18 08:40:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_TableIndex_ID=1120004
;

-- 18 de ago de 2020 08:41:00 AMT
CREATE UNIQUE INDEX LBR_NSUControl_Unq ON LBR_NSUControl (LBR_PartnerDFe_ID,LBR_NSU)
;

-- 18 de ago de 2020 09:32:14 AMT
UPDATE AD_ViewComponent SET FromClause='FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) 
          FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu 
         WHERE nsu.LBR_NSU IS NOT NULL 
           AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID
      GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID)',Updated=TO_TIMESTAMP('2020-08-18 09:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ViewComponent_ID=1120010
;

-- 18 de ago de 2020 09:32:24 AMT
CREATE OR REPLACE VIEW LBR_MissingNSU(AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, IsActive, LBR_NSU, LBR_FixMissingNSU, DateDoc) AS SELECT AD_Client_ID AS AD_Client_ID, AD_Org_ID AS AD_Org_ID, NOW() AS Created, 0 AS CreatedBy, NOW() AS Updated, 0 AS UpdatedBy, CAST ('Y' AS TEXT) AS IsActive, LPAD (CAST (s.ID AS TEXT), 15, '0') AS LBR_NSU, CAST ('N' AS TEXT) AS LBR_FixMissingNSU, CAST (NULL AS TIMESTAMP) AS DateDoc FROM (SELECT dfe.AD_Client_ID, dfe.AD_Org_ID, GENERATE_SERIES (MIN(CAST (nsu.LBR_NSU AS INT)), MAX(CAST (nsu.LBR_NSU AS INT))) FROM LBR_PartnerDFe dfe, LBR_NSUControl nsu WHERE nsu.LBR_NSU IS NOT NULL AND nsu.LBR_PartnerDFe_ID=dfe.LBR_PartnerDFe_ID GROUP BY dfe.AD_Client_ID, dfe.AD_Org_ID) s (AD_Client_ID, AD_Org_ID, ID) WHERE NOT EXISTS (SELECT 1 FROM LBR_PartnerDFe WHERE LBR_NSU IS NOT NULL AND CAST (LBR_NSU AS INT)=s.ID)
;

-- 18 de ago de 2020 09:51:30 AMT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120005,'0ecf14d9-e53e-49eb-9c0d-3f1ed3824d9c',TO_TIMESTAMP('2020-08-18 09:51:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_PartnerDFe_LBR_NFeID',TO_TIMESTAMP('2020-08-18 09:51:29','YYYY-MM-DD HH24:MI:SS'),100,1120461,'N','N','N','N','N')
;

-- 18 de ago de 2020 09:51:45 AMT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120013,'5c7af16f-0ecf-406a-b548-9425da1552be',TO_TIMESTAMP('2020-08-18 09:51:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_TIMESTAMP('2020-08-18 09:51:44','YYYY-MM-DD HH24:MI:SS'),100,1126791,1120005,1)
;

-- 18 de ago de 2020 09:51:49 AMT
CREATE INDEX LBR_PartnerDFe_LBR_NFeID ON LBR_PartnerDFe (lbr_NFeID)
;

INSERT INTO LBR_NSUControl (LBR_PartnerDFe_ID, LBR_NSU)
SELECT DISTINCT COALESCE((SELECT MAX (xml.LBR_PartnerDFe_ID) 
          FROM LBR_PartnerDFe xml 
         WHERE xml.LBR_NFeID=dfe.LBR_NFeID
           AND xml.LBR_IsXMLValid='Y'), dfe.LBR_PartnerDFe_ID), dfe.LBR_NSU 
  FROM LBR_PartnerDFe dfe
 WHERE dfe.LBR_NSU IS NOT NULL
;

SELECT Register_Migration_Script ('202008181015_NSUControl.sql') FROM DUAL
;

