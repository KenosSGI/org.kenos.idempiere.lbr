SET SQLBLANKLINES ON
SET DEFINE OFF

CREATE TABLE LBR_SeFaz
( 
    LBR_SeFaz_ID              NUMBER(10,0) NOT NULL,
    LBR_SeFaz_UU              VARCHAR2(36) NULL,
    AD_Client_ID              NUMBER(10,0) NOT NULL,
    AD_Org_ID                 NUMBER(10,0) NOT NULL,
    IsActive                  CHAR(1) NOT NULL DEFAULT 'Y',
    Created                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CreatedBy                 NUMBER(10,0) NOT NULL,
    Updated                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy                 NUMBER(10,0) NOT NULL,
    Name                      VARCHAR2(255) NOT NULL,
    Description               VARCHAR2(512) NULL,
    URL                       VARCHAR2(255) NULL,
    PRIMARY KEY (LBR_SeFaz_ID)
);

CREATE TABLE LBR_SeFazURL
( 
    LBR_SeFazURL_ID           NUMBER(10,0) NOT NULL,
    LBR_SeFazURL_UU           VARCHAR2(36) NULL,
    AD_Client_ID              NUMBER(10,0) NOT NULL,
    AD_Org_ID                 NUMBER(10,0) NOT NULL,
    IsActive                  CHAR(1) NOT NULL DEFAULT 'Y',
    Created                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CreatedBy                 NUMBER(10,0) NOT NULL,
    Updated                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy                 NUMBER(10,0) NOT NULL,
    LBR_SeFaz_ID              NUMBER(10,0) NOT NULL,
    Description               VARCHAR2(512) NULL,
    URL                       VARCHAR2(255) NULL,
    LBR_NFeEnv                VARCHAR2(1) NOT NULL,
    VersionNo                 VARCHAR2(6) NOT NULL,
    LBR_URLScope              VARCHAR2(1) NOT NULL,
    LBR_EndpointName          VARCHAR2(3) NOT NULL,
    PRIMARY KEY (LBR_SeFazURL_ID)
);

CREATE TABLE LBR_CTeConfig
( 
    LBR_CTeConfig_ID          NUMBER(10,0) NOT NULL,
    LBR_CTeConfig_UU          VARCHAR2(36) NULL,
    AD_Client_ID              NUMBER(10,0) NOT NULL,
    AD_Org_ID                 NUMBER(10,0) NOT NULL,
    IsActive                  CHAR(1) NOT NULL DEFAULT 'Y',
    Created                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CreatedBy                 NUMBER(10,0) NOT NULL,
    Updated                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy                 NUMBER(10,0) NOT NULL,
    Description               VARCHAR2(512) NULL,
    LBR_NFeEnv                VARCHAR2(1) NOT NULL,
    VersionNo                 VARCHAR2(6) NOT NULL,
    PRIMARY KEY (LBR_CTeConfig_ID)
);

CREATE TABLE LBR_CTeConfigSeFaz
(
    LBR_CTeConfigSeFaz_ID     NUMBER(10,0) NOT NULL,
    LBR_CTeConfigSeFaz_UU     VARCHAR2(36) NULL,
    AD_Client_ID              NUMBER(10,0) NOT NULL,
    AD_Org_ID                 NUMBER(10,0) NOT NULL,
    IsActive                  CHAR(1) NOT NULL DEFAULT 'Y',
    Created                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CreatedBy                 NUMBER(10,0) NOT NULL,
    Updated                   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy                 NUMBER(10,0) NOT NULL,
    LBR_CTeConfig_ID          NUMBER(10,0) NOT NULL,
    LBR_SeFaz_ID              NUMBER(10,0) NOT NULL,
    ValidFrom                 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Description               VARCHAR2(512) NULL,
    PRIMARY KEY (LBR_CTeConfigSeFaz_ID)
);

CREATE TABLE LBR_CTe (
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    LBR_CTe_UU             VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    I_IsImported           CHAR(1) DEFAULT 'N' NOT NULL,
    LBR_NSU                VARCHAR2(30 CHAR),
    LBR_ChCTe              VARCHAR2(44 CHAR) NOT NULL,
    LBR_CUF                VARCHAR2(2 CHAR),
    LBR_CFOP_ID            NUMBER(10, 0) NULL,
    LBR_NatOP              VARCHAR2(255 CHAR),
    lbr_NFModel            VARCHAR2(2 CHAR) NOT NULL,
    lbr_NFSerie            VARCHAR2(3 CHAR) NOT NULL,
    DocumentNo             VARCHAR2(30 CHAR) NOT NULL,
    DateDoc                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    DocStatus              CHAR(2) NOT NULL,
    DocAction              CHAR(2) NOT NULL,
    Processed              CHAR(1) DEFAULT 'N' NOT NULL,
    lbr_DANFEFormat        VARCHAR2(1 CHAR),
    LBR_TPEmis             VARCHAR2(1 CHAR),
    lbr_NFeEnv             VARCHAR2(1 CHAR),
    LBR_CTeType            VARCHAR2(1 CHAR),
    LBR_ShipmentType       VARCHAR2(2 CHAR),
    LBR_CTeServiceType     VARCHAR2(1 CHAR),
    LBR_CTeConsignee       VARCHAR2(100 CHAR),
    LBR_CNPJ               VARCHAR2(14 CHAR),
    LBR_CPF                VARCHAR2(11 CHAR),
    LBR_IE                 VARCHAR2(20 CHAR),
    LBR_IndIEDest          VARCHAR2(1 CHAR),
    GrandTotal             NUMBER(18, 2) NOT NULL,
    C_Region_ID            NUMBER(10, 0),
    To_Region_ID           NUMBER(10, 0),
    ProductName            VARCHAR2(255 CHAR),
    LBR_NFeProt            VARCHAR2(15 CHAR),
    PRIMARY KEY (LBR_CTe_ID)
);

CREATE TABLE LBR_CTePartner (
    LBR_CTePartner_ID      NUMBER(10, 0) NOT NULL,
    LBR_CTePartner_UU      VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    Name                   VARCHAR2(60 CHAR) NOT NULL,
    Name2                  VARCHAR2(60 CHAR),
    LBR_CNPJ               VARCHAR2(14 CHAR),
    LBR_IE                 VARCHAR2(20 CHAR),
    Address1               VARCHAR2(255 CHAR) NOT NULL,
    Address2               VARCHAR2(255 CHAR),
    Address3               VARCHAR2(255 CHAR),
    Address4               VARCHAR2(255 CHAR),
    City                   VARCHAR2(100 CHAR) NOT NULL,
    Postal                 VARCHAR2(10 CHAR),
    CountryName            VARCHAR2(60 CHAR),
    LBR_CTePartnerType     VARCHAR2(1 CHAR),
    PRIMARY KEY (LBR_CTePartner_ID),
    FOREIGN KEY (LBR_CTe_ID) REFERENCES LBR_CTe(LBR_CTe_ID)
);

CREATE TABLE LBR_CTeICMS (
    LBR_CTeICMS_ID         NUMBER(10, 0) NOT NULL,
    LBR_CTeICMS_UU         VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    LBR_TaxName_ID         NUMBER(10, 0),
    LBR_TaxStatus_ID       NUMBER(10, 0),
    LBR_TaxBaseAmt         NUMBER(18, 2),
    LBR_TaxBase            NUMBER(10),
    LBR_TaxAmt             NUMBER(18, 2),
    LBR_TaxCreditAmt       NUMBER(18, 2),
    PRIMARY KEY (LBR_CTeICMS_ID),
    FOREIGN KEY (LBR_CTe_ID) REFERENCES LBR_CTe(LBR_CTe_ID)
);

CREATE TABLE LBR_CTeICMSFim (
    LBR_CTeICMSFim_ID      NUMBER(10, 0) NOT NULL,
    LBR_CTeICMSFim_UU      VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    LBR_TaxName_ID         NUMBER(10, 0),
    LBR_TaxStatus_ID       NUMBER(10, 0),
    LBR_TaxBaseAmt         NUMBER(18, 2),
    LBR_TaxBase            NUMBER(10),
    LBR_TaxAmt             NUMBER(18, 2),
    LBR_TaxCreditAmt       NUMBER(18, 2),
    PRIMARY KEY (LBR_CTeICMSFim_ID),
    FOREIGN KEY (LBR_CTe_ID) REFERENCES LBR_CTe(LBR_CTe_ID)
);

CREATE TABLE LBR_CTeDocNFe (
    LBR_CTeDocNFe_ID       NUMBER(10, 0) NOT NULL,
    LBR_CTeDocNFe_UU       VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    LBR_NotaFiscal_ID      NUMBER(10, 0),
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    LBR_NFeID              VARCHAR2(44 CHAR),
    LBR_SUFRAMAPIN         VARCHAR2(9 CHAR),
    DatePromised           TIMESTAMP,
    PRIMARY KEY (LBR_CTeDocNFe_ID),
    FOREIGN KEY (LBR_CTe_ID) REFERENCES LBR_CTe(LBR_CTe_ID)
);

CREATE TABLE LBR_CTeEvent (
    LBR_CTeEvent_ID        NUMBER(10, 0) NOT NULL,
    LBR_CTeEvent_UU        VARCHAR2(36 CHAR) DEFAULT NULL,
    AD_Client_ID           NUMBER(10, 0) NOT NULL,
    AD_Org_ID              NUMBER(10, 0) NOT NULL,
    Created                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CreatedBy              NUMBER(10, 0) NOT NULL,
    Updated                TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    UpdatedBy              NUMBER(10, 0) NOT NULL,
    IsActive               CHAR(1) DEFAULT 'Y' NOT NULL,
    I_IsImported           CHAR(1) DEFAULT 'N' NOT NULL,
    LBR_CTe_ID             NUMBER(10, 0) NOT NULL,
    LBR_NSU                VARCHAR2(30 CHAR),
    LBR_ChCTe              VARCHAR2(44 CHAR),
    DateTrx                TIMESTAMP NOT NULL,
    SeqNo                  NUMBER(10, 0),
    lbr_NFeEnv             VARCHAR2(1 CHAR),
    lbr_CNPJ               VARCHAR2(14 CHAR),
    LBR_EventType          VARCHAR2(6 CHAR),
    DocStatus              CHAR(2) NOT NULL,
    DocAction              CHAR(2) NOT NULL,
    Processed              CHAR(1) DEFAULT 'N' NOT NULL,
    DateDoc                TIMESTAMP,
    Description            VARCHAR2(255 CHAR),
    PRIMARY KEY (LBR_CTeEvent_ID),
    FOREIGN KEY (LBR_CTe_ID) REFERENCES LBR_CTe(LBR_CTe_ID)
);

-- 19 de jun de 2024 11:06:59 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120766,'SeFaz Config','LBR_SeFazConfig',0,'3',0,0,'Y',TO_DATE('2024-06-19 11:06:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:06:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','3065f7e4-2a54-4303-9bd1-2f0825bcf6f3','N','N','N','N')
;

-- 19 de jun de 2024 11:06:59 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SeFazConfig',1000000,'N','N','Table LBR_SeFazConfig','Y','Y',0,0,TO_DATE('2024-06-19 11:06:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:06:59','YYYY-MM-DD HH24:MI:SS'),100,1154040,'Y',1000000,1,200000,'f5b752d8-787c-4866-a266-3ab96efaa6bb')
;

-- 19 de jun de 2024 11:20:24 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120409,'LBR_URLScope','L',0,0,'Y',TO_DATE('2024-06-19 11:20:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:20:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','de629edd-6aa8-43ee-aba3-2b8bec369b7d')
;

-- 19 de jun de 2024 11:20:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123039,'NF-e',1120409,'0',0,0,'Y',TO_DATE('2024-06-19 11:20:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:20:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','b3647322-9470-4b55-8066-f0e59c1424e2')
;

-- 19 de jun de 2024 11:20:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123040,'CT-e',1120409,'1',0,0,'Y',TO_DATE('2024-06-19 11:20:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:20:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','382d5be3-8048-4062-bef5-bf01d21fc96c')
;

-- 19 de jun de 2024 11:21:12 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120410,'LBR_EndpointName','L',0,0,'Y',TO_DATE('2024-06-19 11:21:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:21:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','c922fce4-b144-411a-9a33-401b93e7de15')
;

-- 19 de jun de 2024 11:29:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123041,'NFeAutorizacao',1120410,'000',0,0,'Y',TO_DATE('2024-06-19 11:29:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ec105aa3-043b-4c8e-9807-44dbde270692')
;

-- 19 de jun de 2024 11:29:47 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123042,'NfeConsultaCadastro',1120410,'001',0,0,'Y',TO_DATE('2024-06-19 11:29:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','e137cc93-01d9-4257-afa9-7daa9bc3a9c6')
;

-- 19 de jun de 2024 11:29:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123043,'NfeConsultaProtocolo',1120410,'002',0,0,'Y',TO_DATE('2024-06-19 11:29:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','c7944e5f-976f-4231-b7bd-120eecb9b198')
;

-- 19 de jun de 2024 11:29:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123044,'NFeDistribuicaoDFe',1120410,'003',0,0,'Y',TO_DATE('2024-06-19 11:29:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','5990317d-07b8-40ca-80fb-615d711e4f77')
;

-- 19 de jun de 2024 11:29:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123045,'NfeInutilizacao',1120410,'004',0,0,'Y',TO_DATE('2024-06-19 11:29:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d9672ba3-2bcc-40e1-914d-ea637a2bce8c')
;

-- 19 de jun de 2024 11:29:49 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123046,'NFeRetAutorizacao',1120410,'005',0,0,'Y',TO_DATE('2024-06-19 11:29:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','03b78a24-10b5-4375-a651-cfc1eb28c9b4')
;

-- 19 de jun de 2024 11:29:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123047,'NfeStatusServico',1120410,'006',0,0,'Y',TO_DATE('2024-06-19 11:29:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','be566b32-82f1-4efa-be13-8703a53c1dd6')
;

-- 19 de jun de 2024 11:29:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123048,'RecepcaoEvento',1120410,'007',0,0,'Y',TO_DATE('2024-06-19 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','637a9950-1a78-4884-b87d-488acbc8c7d8')
;

-- 19 de jun de 2024 11:29:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123049,'CTeConsultaV4',1120410,'100',0,0,'Y',TO_DATE('2024-06-19 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','09d57090-c19d-47f9-bd55-43a7b9d1552e')
;

-- 19 de jun de 2024 11:29:51 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123050,'CTeDistribuicaoDFe',1120410,'101',0,0,'Y',TO_DATE('2024-06-19 11:29:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','a6535ad2-14f9-4b1f-bf84-7a0da233a03a')
;

-- 19 de jun de 2024 11:29:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123051,'CTeRecepcaoEventoV4',1120410,'102',0,0,'Y',TO_DATE('2024-06-19 11:29:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','4eff196c-d8d9-4b2f-9c2d-38be66e54dbe')
;

-- 19 de jun de 2024 11:29:52 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123052,'CTeRecepcaoGTVeV4',1120410,'103',0,0,'Y',TO_DATE('2024-06-19 11:29:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','61e8fa3a-7623-4294-b14e-81029f1772a1')
;

-- 19 de jun de 2024 11:29:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123053,'CTeRecepcaoOSV4',1120410,'104',0,0,'Y',TO_DATE('2024-06-19 11:29:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d84c1ec9-d4f4-440f-9481-935cd0aaa688')
;

-- 19 de jun de 2024 11:29:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123054,'CTeRecepcaoSincV4',1120410,'105',0,0,'Y',TO_DATE('2024-06-19 11:29:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','76a85e03-79a4-4c79-a6f9-d4c6a43ca915')
;

-- 19 de jun de 2024 11:29:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123055,'CTeStatusServicoV4',1120410,'106',0,0,'Y',TO_DATE('2024-06-19 11:29:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','aefba132-8a9c-40cc-b878-ec7423ad4303')
;

-- 19 de jun de 2024 11:29:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123056,'QRCode',1120410,'107',0,0,'Y',TO_DATE('2024-06-19 11:29:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:29:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9ab4c9ac-b5e6-4f36-91b8-97bf5a63520b')
;

-- 19 de jun de 2024 11:31:08 BRT
UPDATE AD_Reference SET Description='Endpoint of SeFaz', Help='The key first digit represents the Scope
0 = NF-e
1 = CT-e',Updated=TO_DATE('2024-06-19 11:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120410
;

-- 19 de jun de 2024 11:32:10 BRT
UPDATE AD_Table SET Name='SeFaz', TableName='LBR_SeFaz',Updated=TO_DATE('2024-06-19 11:32:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120766
;

-- 19 de jun de 2024 11:32:10 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SeFaz',1000000,'N','N','Table LBR_SeFaz','Y','Y',0,0,TO_DATE('2024-06-19 11:32:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:10','YYYY-MM-DD HH24:MI:SS'),100,1154041,'Y',1000000,1,200000,'c35d7111-819c-452f-89c6-5bdd5c0acef4')
;

-- 19 de jun de 2024 11:32:17 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123416,0,0,'Y',TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SeFaz_ID','SeFaz','SeFaz','LBRA','15e51bdb-6355-4370-8230-6526c6a985d1')
;

-- 19 de jun de 2024 11:32:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133962,0.0,'SeFaz',1120766,'LBR_SeFaz_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,1123416,'N','N','LBRA','N','0491d507-66fc-49e0-8ff2-bcbb64913b71','N')
;

-- 19 de jun de 2024 11:32:18 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123417,0,0,'Y',TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SeFaz_UU','LBR_SeFaz_UU','LBR_SeFaz_UU','LBRA','9c4fba8d-6825-42f0-a0cc-9b21c32bdec3')
;

-- 19 de jun de 2024 11:32:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133963,0.0,'LBR_SeFaz_UU',1120766,'LBR_SeFaz_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:17','YYYY-MM-DD HH24:MI:SS'),100,1123417,'N','N','LBRA','N','31cccd07-f28d-4d07-9c98-4326bd6865bc','N')
;

-- 19 de jun de 2024 11:32:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133964,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120766,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 11:32:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:18','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','be287cba-a6c1-4f64-978d-7ad9e36ad935','N','D')
;

-- 19 de jun de 2024 11:32:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133965,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120766,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 11:32:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:19','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','18755fdc-3066-4573-a86e-cc6339e5a88e','N','D')
;

-- 19 de jun de 2024 11:32:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133966,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120766,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 11:32:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:19','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','ae5204be-adf0-41f9-b18b-decc3a0616c0','N')
;

-- 19 de jun de 2024 11:32:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133967,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120766,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','fe74a8b3-f5dc-4b86-8236-d3871c954741','N')
;

-- 19 de jun de 2024 11:32:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133968,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120766,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','6e8e995e-59d7-4606-934b-833289045550','N','D')
;

-- 19 de jun de 2024 11:32:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133969,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120766,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:20','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','6a8ddb31-23b6-4aae-a1b6-1682add0f237','N')
;

-- 19 de jun de 2024 11:32:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133970,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120766,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','4af8a059-28ee-448e-a3b1-e019c550d819','N','D')
;

-- 19 de jun de 2024 11:32:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133971,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120766,'Name',255,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2024-06-19 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:21','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','132f54d7-72a3-4e6b-b660-5ae8f610c13f',10,'N')
;

-- 19 de jun de 2024 11:32:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133972,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120766,'Description',512,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:32:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:22','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','bbdfca44-eabc-4953-9495-5bfceec7976d',20,'N')
;

-- 19 de jun de 2024 11:32:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133973,0.0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120766,'URL',255,'N','N','N','N','N','N',40,0,0,'Y',TO_DATE('2024-06-19 11:32:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:32:22','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','47d886da-f3af-4a26-93a7-50d16e13d442','N')
;

-- 19 de jun de 2024 11:33:17 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120767,'SeFaz URL','LBR_SeFazURL',0,'3',0,0,'Y',TO_DATE('2024-06-19 11:33:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','fc47e82d-1e5a-469c-b2de-17f46fd53d92','N','N','N','N')
;

-- 19 de jun de 2024 11:33:17 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_SeFazURL',1000000,'N','N','Table LBR_SeFazURL','Y','Y',0,0,TO_DATE('2024-06-19 11:33:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:17','YYYY-MM-DD HH24:MI:SS'),100,1154042,'Y',1000000,1,200000,'3a4a95a7-ec17-462f-bd3d-2f70f8799331')
;

-- 19 de jun de 2024 11:33:23 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123418,0,0,'Y',TO_DATE('2024-06-19 11:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:22','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SeFazURL_ID','SeFaz URL','SeFaz URL','LBRA','1a118271-115c-4065-a07c-aa67fc06d397')
;

-- 19 de jun de 2024 11:33:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133974,0.0,'SeFaz URL',1120767,'LBR_SeFazURL_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-19 11:33:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:22','YYYY-MM-DD HH24:MI:SS'),100,1123418,'N','N','LBRA','N','cce05ccc-7def-4986-9987-c43cf513f2e0','N')
;

-- 19 de jun de 2024 11:33:24 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123419,0,0,'Y',TO_DATE('2024-06-19 11:33:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SeFazURL_UU','LBR_SeFazURL_UU','LBR_SeFazURL_UU','LBRA','5cc3411d-0ca9-4630-9247-81b737dcf86e')
;

-- 19 de jun de 2024 11:33:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133975,0.0,'LBR_SeFazURL_UU',1120767,'LBR_SeFazURL_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:33:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:23','YYYY-MM-DD HH24:MI:SS'),100,1123419,'N','N','LBRA','N','a5018a36-384f-4f86-8d92-71a9bc221ef0','N')
;

-- 19 de jun de 2024 11:33:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133976,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120767,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 11:33:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:24','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','179e143d-a284-4c9b-a7c3-62b57ac633bf','N','D')
;

-- 19 de jun de 2024 11:33:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133977,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120767,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 11:33:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:24','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','21f85d7b-7c33-4958-8aef-bcc2cd71bd96','N','D')
;

-- 19 de jun de 2024 11:33:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133978,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120767,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 11:33:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:25','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','1be25772-2efd-48e2-9878-40b11f3cc28a','N')
;

-- 19 de jun de 2024 11:33:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133979,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120767,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 11:33:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:25','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','f1314726-a3bc-40d5-b000-b79bf3f16cc3','N')
;

-- 19 de jun de 2024 11:33:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133980,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120767,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 11:33:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:26','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','d540438f-ff23-4cd7-8681-a30b33c2b162','N','D')
;

-- 19 de jun de 2024 11:33:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133981,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120767,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 11:33:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:26','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','5a9fe2f5-7aa3-43c5-b544-42977de200a7','N')
;

-- 19 de jun de 2024 11:33:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133982,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120767,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','0ce35e78-33b6-4af5-adab-82eba2587af5','N','D')
;

-- 19 de jun de 2024 11:33:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133983,0.0,'SeFaz',1120767,'LBR_SeFaz_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,1123416,'N','N','LBRA','N','a4fb60bb-ba7c-4cc9-9b20-b69ece365fcf','N','N')
;

-- 19 de jun de 2024 11:33:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1133984,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120767,'Description',512,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:27','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','10a20cf9-0ce0-4a9d-8ad8-4e99194319eb',10,'N')
;

-- 19 de jun de 2024 11:33:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133985,0.0,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120767,'URL',255,'N','N','N','N','N','N',40,0,0,'Y',TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,983,'Y','N','LBRA','N','6208aa64-fb7b-4ef4-81da-4d3f0646e1a6','N')
;

-- 19 de jun de 2024 11:33:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133986,0.0,'NFe Environment',1120767,'lbr_NFeEnv',255,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,1100011,'N','N','LBRA','N','a3c29a5f-b346-4402-b687-e0cdcd22338c','N')
;

-- 19 de jun de 2024 11:33:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133987,0.0,'Version No','Version Number',1120767,'VersionNo',255,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:28','YYYY-MM-DD HH24:MI:SS'),100,1949,'N','N','LBRA','N','27cb6e75-a902-47f7-b0eb-928e732000ef','N')
;

-- 19 de jun de 2024 11:33:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123420,0,0,'Y',TO_DATE('2024-06-19 11:33:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:29','YYYY-MM-DD HH24:MI:SS'),100,'lbr_urlscope','lbr_urlscope','lbr_urlscope','LBRA','df71e55e-e86b-40b6-9a61-2402ed7ef1ca')
;

-- 19 de jun de 2024 11:33:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133988,0.0,'lbr_urlscope',1120767,'lbr_urlscope',1,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:33:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:29','YYYY-MM-DD HH24:MI:SS'),100,1123420,'Y','N','LBRA','N','e30b52b9-55d8-46f0-b543-c1fb57cb1be6','N')
;

-- 19 de jun de 2024 11:33:30 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123421,0,0,'Y',TO_DATE('2024-06-19 11:33:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:30','YYYY-MM-DD HH24:MI:SS'),100,'lbr_endpointname','lbr_endpointname','lbr_endpointname','LBRA','5b963c0c-2f54-45aa-a75b-0cf251d91f22')
;

-- 19 de jun de 2024 11:33:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133989,0.0,'lbr_endpointname',1120767,'lbr_endpointname',3,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 11:33:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:33:30','YYYY-MM-DD HH24:MI:SS'),100,1123421,'Y','N','LBRA','N','e1d641f0-0700-4792-8b22-a1daca16ba6e','N')
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_Element SET ColumnName='LBR_EndpointName', Name='Endpoint Name', PrintName='Endpoint Name',Updated=TO_DATE('2024-06-19 11:34:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123421
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_Column SET ColumnName='LBR_EndpointName', Name='Endpoint Name', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123421
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_EndpointName', Name='Endpoint Name', Description=NULL, Help=NULL, AD_Element_ID=1123421 WHERE UPPER(ColumnName)='LBR_ENDPOINTNAME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_EndpointName', Name='Endpoint Name', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123421 AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_EndpointName', Name='Endpoint Name', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123421 AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_Field SET Name='Endpoint Name', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123421) AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:34:07 BRT
UPDATE AD_PrintFormatItem SET PrintName='Endpoint Name', Name='Endpoint Name' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123421)
;

-- 19 de jun de 2024 11:35:03 BRT
UPDATE AD_Element SET ColumnName='LBR_URLScope', Name='URL Scope', PrintName='URL Scope',Updated=TO_DATE('2024-06-19 11:35:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123420
;

-- 19 de jun de 2024 11:35:03 BRT
UPDATE AD_Column SET ColumnName='LBR_URLScope', Name='URL Scope', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123420
;

-- 19 de jun de 2024 11:35:04 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_URLScope', Name='URL Scope', Description=NULL, Help=NULL, AD_Element_ID=1123420 WHERE UPPER(ColumnName)='LBR_URLSCOPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19 de jun de 2024 11:35:04 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_URLScope', Name='URL Scope', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123420 AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:35:04 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_URLScope', Name='URL Scope', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123420 AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:35:04 BRT
UPDATE AD_Field SET Name='URL Scope', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123420) AND IsCentrallyMaintained='Y'
;

-- 19 de jun de 2024 11:35:04 BRT
UPDATE AD_PrintFormatItem SET PrintName='URL Scope', Name='URL Scope' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123420)
;

-- 19 de jun de 2024 11:36:54 BRT
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2024-06-19 11:36:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120767
;

-- 19 de jun de 2024 11:37:00 BRT
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2024-06-19 11:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120766
;

-- 19 de jun de 2024 11:37:06 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120184,'SeFaz',0,0,'Y',TO_DATE('2024-06-19 11:37:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:37:05','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','ee55e581-3ea2-47e5-99d7-f5ee9637afd1')
;

-- 19 de jun de 2024 11:38:16 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120521,'SeFaz',1120184,10,'Y',1120766,0,0,'Y',TO_DATE('2024-06-19 11:38:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:16','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','2a18fc97-6508-4fe8-bbb1-f2497491753b','B')
;

-- 19 de jun de 2024 11:38:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131946,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120521,1133964,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','98fb097b-9bd1-47dd-a4ee-44f2dd4ce996','Y',10,2)
;

-- 19 de jun de 2024 11:38:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (1131947,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120521,1133965,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d83389ad-dd7d-4ef9-b5d6-7215e52047eb','Y','N',4,2)
;

-- 19 de jun de 2024 11:38:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131948,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120521,1133971,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37586845-8583-4d13-98d3-da72a5c549d3','Y',20,5)
;

-- 19 de jun de 2024 11:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131949,'Description','Optional short description of the record','A description is limited to 255 characters.',1120521,1133972,'Y',512,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cb2afa93-fced-445b-9065-37ea251398f7','Y',30,5)
;

-- 19 de jun de 2024 11:38:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131950,'SeFaz',1120521,1133962,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b27712cc-9f39-422d-8552-1ccd5844308d','N',2)
;

-- 19 de jun de 2024 11:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131951,'LBR_SeFaz_UU',1120521,1133963,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3200ad4e-8ecb-4e75-acb4-4cc91bd2e776','N',2)
;

-- 19 de jun de 2024 11:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131952,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120521,1133973,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dbfe0eec-1389-4f5c-9b49-77ad7842a1b0','Y',40,5)
;

-- 19 de jun de 2024 11:38:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131953,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120521,1133966,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:38:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:38:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d72bb517-7f84-49c9-bb96-5b1d7704039a','Y',50,2,2)
;

-- 19 de jun de 2024 11:39:21 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131949
;

-- 19 de jun de 2024 11:39:21 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131951
;

-- 19 de jun de 2024 11:39:21 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131950
;

-- 19 de jun de 2024 11:39:51 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-19 11:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133983
;

-- 19 de jun de 2024 11:40:26 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120522,'NF-e URL',1120184,20,'Y',1120767,0,0,'Y',TO_DATE('2024-06-19 11:40:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:26','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','1eb33172-350f-4c06-b6be-8607262b4250','B')
;

-- 19 de jun de 2024 11:40:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131954,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120522,1133976,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ffa04b4f-8a24-4ac2-8937-b89dfaea5e12','Y',10,2)
;

-- 19 de jun de 2024 11:40:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (1131955,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120522,1133977,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7402a29c-4bb6-44db-8a79-f91c5f8cff65','Y','N',4,2)
;

-- 19 de jun de 2024 11:40:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131956,'Description','Optional short description of the record','A description is limited to 255 characters.',1120522,1133984,'Y',512,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a5f17231-4b2f-40e8-9429-b6dd16f5c855','Y',20,5)
;

-- 19 de jun de 2024 11:40:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131957,'SeFaz URL',1120522,1133974,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b3ce6de0-b637-48da-835f-0822d2dd2f35','N',2)
;

-- 19 de jun de 2024 11:40:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131958,'LBR_SeFazURL_UU',1120522,1133975,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e20606d1-c81d-41b8-973e-a9a2acee9798','N',2)
;

-- 19 de jun de 2024 11:40:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131959,'SeFaz',1120522,1133983,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4ff82c38-dba3-4cf2-85d2-29a3baeaa367','Y',30,2)
;

-- 19 de jun de 2024 11:40:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131960,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120522,1133985,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','153a06e0-f322-4dfc-a420-743c2c84a46f','Y',40,5)
;

-- 19 de jun de 2024 11:40:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131961,'NFe Environment',1120522,1133986,'Y',255,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0b273103-175b-4362-8491-7a6b5163da0a','Y',50,2,5)
;

-- 19 de jun de 2024 11:40:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131962,'Version No','Version Number',1120522,1133987,'Y',255,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f81ba6d8-2eb3-4bf4-811c-d5d7827c26da','Y',60,5)
;

-- 19 de jun de 2024 11:40:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131963,'URL Scope',1120522,1133988,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','36a764e2-dde1-42d0-9ba4-28000b469fe7','Y',70,2)
;

-- 19 de jun de 2024 11:40:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131964,'Endpoint Name',1120522,1133989,'Y',3,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ab42e827-d21e-4ee0-ad8c-8d30964ad98c','Y',80,2)
;

-- 19 de jun de 2024 11:40:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131965,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120522,1133978,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:40:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:40:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','133543ee-15ff-4dc8-947e-37253e852480','Y',90,2,2)
;

-- 19 de jun de 2024 11:41:32 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131963
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, ColumnSpan=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131962
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131964
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131959
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131960
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, NumLines=3, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131956
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=2, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131965
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131961
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131958
;

-- 19 de jun de 2024 11:41:33 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131957
;

-- 19 de jun de 2024 11:43:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1133990,0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120767,'ValidFrom',7,'N','N','Y','N','N',0,'N',15,0,0,'Y',TO_DATE('2024-06-19 11:43:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:43:18','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','N','N','Y','096a3eb8-ba49-46c0-965f-1351353f7a01','Y',0,'N','N','N')
;

-- 19 de jun de 2024 11:43:21 BRT
ALTER TABLE LBR_SeFazURL ADD ValidFrom DATE NOT NULL
;

-- 19 de jun de 2024 11:43:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131966,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120522,1133990,'Y',7,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:43:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:43:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b94efb66-2b3f-4af0-b049-147ef6bec7af','Y',100,2)
;

-- 19 de jun de 2024 11:43:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131966
;

-- 19 de jun de 2024 11:43:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, ColumnSpan=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131961
;

-- 19 de jun de 2024 11:43:49 BRT
UPDATE AD_Field SET SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131960
;

-- 19 de jun de 2024 11:43:50 BRT
UPDATE AD_Field SET SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131956
;

-- 19 de jun de 2024 11:43:50 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131965
;

-- 19 de jun de 2024 11:44:10 BRT
UPDATE AD_Field SET SeqNo=6, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131962
;

-- 19 de jun de 2024 11:44:41 BRT
UPDATE AD_Column SET FieldLength=6,Updated=TO_DATE('2024-06-19 11:44:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133987
;

-- 19 de jun de 2024 11:45:05 BRT
UPDATE AD_Field SET SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:45:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131962
;

-- 19 de jun de 2024 11:46:21 BRT
UPDATE AD_Column SET FieldLength=1, AD_Reference_ID=17, AD_Reference_Value_ID=1100001, IsUpdateable='Y',Updated=TO_DATE('2024-06-19 11:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133986
;

-- 19 de jun de 2024 11:46:24 BRT
ALTER TABLE LBR_SeFazURL MODIFY lbr_NFeEnv CHAR(1)
;

-- 19 de jun de 2024 11:46:51 BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2024-06-19 11:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133985
;

-- 19 de jun de 2024 11:46:52 BRT
ALTER TABLE LBR_SeFazURL MODIFY URL VARCHAR2(255)
;

-- 19 de jun de 2024 11:46:52 BRT
ALTER TABLE LBR_SeFazURL MODIFY URL NOT NULL
;

-- 19 de jun de 2024 11:47:03 BRT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2024-06-19 11:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133988
;

-- 19 de jun de 2024 11:48:17 BRT
UPDATE AD_Field SET IsReadOnly='Y', DefaultValue='0', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:48:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131963
;

-- 19 de jun de 2024 11:48:35 BRT
UPDATE AD_Tab SET WhereClause='LBR_URLScope=''0''',Updated=TO_DATE('2024-06-19 11:48:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120522
;

-- 19 de jun de 2024 11:49:43 BRT
UPDATE AD_Tab SET WhereClause='LBR_SeFazURL.LBR_URLScope=''0''', OrderByClause='LBR_SeFazURL.VersionNo, LBR_SeFazURL.ValidFrom, LBR_SeFazURL.LBR_EndpointName',Updated=TO_DATE('2024-06-19 11:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120522
;

-- 19 de jun de 2024 11:49:52 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,OrderByClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120523,'CT-e URL',1120184,30,'Y',1120767,0,0,'Y',TO_DATE('2024-06-19 11:49:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:49:51','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','LBR_SeFazURL.LBR_URLScope=''0''','LBR_SeFazURL.VersionNo, LBR_SeFazURL.ValidFrom, LBR_SeFazURL.LBR_EndpointName','N','N',1,'N','U','Y','N','1da8d039-32b8-4904-9524-941c94c9dd1f','B')
;

-- 19 de jun de 2024 11:50:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131967,'LBR_SeFazURL_UU',1120523,1133975,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','41ac52e0-5706-4298-bd3a-a1f7f6866585','N',1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:06 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131968,'SeFaz URL',1120523,1133974,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','7d23c2c4-ff67-47d9-9d27-aa9ac09b7b0f','N',1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131969,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120523,1133976,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','64e8979b-69cb-42f1-9bd4-ce1ebf6d702d','Y',10,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:07 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131970,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120523,1133977,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','551d44a3-b877-4f4f-9150-6eb6e604c5ab','Y','N',4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131971,'URL Scope',1120523,1133988,'Y',1,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:07','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','U','0','258f976e-dda8-440e-8236-aa748133bb55','Y',70,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131972,'Version No','Version Number',1120523,1133987,'Y',255,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','ea1e6c34-a197-4350-b641-1f888d2e57f6','Y',60,4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131973,'Endpoint Name',1120523,1133989,'Y',3,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','64101b4d-ab48-41f6-b1ad-5eb2b8e478b5','Y',80,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131974,'SeFaz',1120523,1133983,'Y',10,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','ff27184c-d683-41b4-a77b-e60154ee1f49','Y',30,4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131975,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120523,1133990,'Y',7,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','d8a402e3-ce4b-46a2-be77-8c435c19d2e5','Y',100,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131976,'NFe Environment',1120523,1133986,'Y',255,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','945f50d9-0669-4f1d-a656-b8db81012e08','Y',50,5,1,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131977,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120523,1133985,'Y',255,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','5ee6b04e-1ca5-4720-96d4-8433d120964a','Y',40,1,5,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131978,'Description','Optional short description of the record','A description is limited to 255 characters.',1120523,1133984,'Y',512,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','ee2c26d3-1da5-4092-919c-c9e53de7d96b','Y',20,1,5,3,'N','N','N')
;

-- 19 de jun de 2024 11:50:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131979,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120523,1133978,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:50:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:50:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','5bc7294a-21cd-4e36-a83c-2fcb92bbaeef','Y',90,2,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:50:21 BRT
UPDATE AD_Tab SET WhereClause='LBR_SeFazURL.LBR_URLScope=''1''',Updated=TO_DATE('2024-06-19 11:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120523
;

-- 19 de jun de 2024 11:50:30 BRT
UPDATE AD_Field SET DefaultValue='1', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131971
;

-- 19 de jun de 2024 11:51:09 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120429,'SeFaz','W',1120184,0,0,'Y',TO_DATE('2024-06-19 11:51:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:51:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','1a660666-865f-4b4c-81ad-3c339c5a812c')
;

-- 19 de jun de 2024 11:51:09 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120429, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120429)
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120423
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de jun de 2024 11:52:12 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120429
;

-- 19 de jun de 2024 11:52:39 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,OrderByClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120524,'MDF-e URL',1120184,40,'Y',1120767,0,0,'Y',TO_DATE('2024-06-19 11:52:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:39','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','LBR_SeFazURL.LBR_URLScope=''1''','LBR_SeFazURL.VersionNo, LBR_SeFazURL.ValidFrom, LBR_SeFazURL.LBR_EndpointName','N','N',1,'N','LBRA','Y','N','4559efd1-f4a8-4827-8af5-01b77bd5d63a','B')
;

-- 19 de jun de 2024 11:52:46 BRT
UPDATE AD_Tab SET WhereClause='LBR_SeFazURL.LBR_URLScope=''2''',Updated=TO_DATE('2024-06-19 11:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120524
;

-- 19 de jun de 2024 11:52:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131980,'LBR_SeFazURL_UU',1120524,1133975,'N',36,0,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','aa018a20-e5ce-4be7-8ee9-2b4a410b34de','N',1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131981,'SeFaz URL',1120524,1133974,'N',10,0,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eed9efbb-4510-4517-a8a4-df3c330b6436','N',1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131982,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120524,1133976,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8b7e6d96-9ba5-4f24-b5b7-b88543610276','Y',10,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131983,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120524,1133977,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1362f465-9923-4693-846e-047ae222fcb8','Y','N',4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,DefaultValue,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131984,'URL Scope',1120524,1133988,'Y',1,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA','1','6ac1e18b-7eba-4b72-8bff-c158d093f12a','Y',70,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131985,'Version No','Version Number',1120524,1133987,'Y',255,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c372484a-cb36-4f4e-85cf-2d4d5a8e830b','Y',60,4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131986,'Endpoint Name',1120524,1133989,'Y',3,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9a40fcaa-4c8a-476a-9a81-682b2ae3fb8c','Y',80,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131987,'SeFaz',1120524,1133983,'Y',10,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4e29c9f0-4000-4aa1-a30d-0e062d17fe67','Y',30,4,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131988,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120524,1133990,'Y',7,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e97e873c-391b-4af3-82b9-00c0ad0004af','Y',100,1,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131989,'NFe Environment',1120524,1133986,'Y',255,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e1a83f5-23a3-4147-81a7-0531b40b2400','Y',50,5,1,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131990,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120524,1133985,'Y',255,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e94c3d8-549f-4bf9-a2a7-4ba0c32a9544','Y',40,1,5,1,'N','N','N')
;

-- 19 de jun de 2024 11:52:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131991,'Description','Optional short description of the record','A description is limited to 255 characters.',1120524,1133984,'Y',512,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4f5e1e70-2845-4d02-a658-90b05f8d32f0','Y',20,1,5,3,'N','N','N')
;

-- 19 de jun de 2024 11:52:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField) VALUES (1131992,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120524,1133978,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 11:52:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:52:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e8b7773-3724-40d5-9553-708c6ac2c8c6','Y',90,2,2,1,'N','N','N')
;

-- 19 de jun de 2024 11:53:10 BRT
UPDATE AD_Field SET DefaultValue='2', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 11:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131984
;

-- 19 de jun de 2024 11:53:34 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123057,'MDF-e',1120409,'2',0,0,'Y',TO_DATE('2024-06-19 11:53:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 11:53:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','2c34fd77-cf11-4fc0-9422-823e837a16cc')
;

-- 19 de jun de 2024 13:28:04 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120768,'CTe Config','LBR_CTeConfig',0,'3',0,0,'Y',TO_DATE('2024-06-19 13:28:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:28:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','aef21e47-89ce-4428-8a9c-fd8345f2c844','N','N','N','N')
;

-- 19 de jun de 2024 13:28:04 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeConfig',1000000,'N','N','Table LBR_CTeConfig','Y','Y',0,0,TO_DATE('2024-06-19 13:28:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:28:04','YYYY-MM-DD HH24:MI:SS'),100,1154043,'Y',1000000,1,200000,'84d8e33e-3ecc-46b4-b825-20fb7a727d13')
;

-- 19 de jun de 2024 13:48:47 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123422,0,0,'Y',TO_DATE('2024-06-19 13:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeConfig_ID','CTe Config','CTe Config','LBRA','5259f0fa-2912-4b3e-918d-efc78198243b')
;

-- 19 de jun de 2024 13:48:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133991,0.0,'CTe Config',1120768,'LBR_CTeConfig_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-19 13:48:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:46','YYYY-MM-DD HH24:MI:SS'),100,1123422,'N','N','LBRA','N','a08f2614-fda4-4b09-8bb5-b5264ed3e08b','N')
;

-- 19 de jun de 2024 13:48:48 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123423,0,0,'Y',TO_DATE('2024-06-19 13:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeConfig_UU','LBR_CTeConfig_UU','LBR_CTeConfig_UU','LBRA','60a562aa-dc96-4529-97f7-13c80bb4356c')
;

-- 19 de jun de 2024 13:48:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133992,0.0,'LBR_CTeConfig_UU',1120768,'LBR_CTeConfig_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 13:48:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:48','YYYY-MM-DD HH24:MI:SS'),100,1123423,'N','N','LBRA','N','3bc89e0c-5e88-41bd-a8ee-317eb94612b1','N')
;

-- 19 de jun de 2024 13:48:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133993,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120768,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','29289b0c-82f1-471c-a222-8bef149dcb6a','N','D')
;

-- 19 de jun de 2024 13:48:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133994,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120768,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','0a2df8ea-06da-466f-9739-9e3524d26cd8','N','D')
;

-- 19 de jun de 2024 13:48:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133995,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120768,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:49','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','01cedb78-e659-4271-a3f3-6e62e42ec4f8','N')
;

-- 19 de jun de 2024 13:48:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133996,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120768,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 13:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:50','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','cc46d0b8-65c8-4bcb-8059-1beba16eeb6a','N')
;

-- 19 de jun de 2024 13:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133997,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120768,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 13:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:50','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','369c94ee-eef5-4990-b605-466fa2ad6091','N','D')
;

-- 19 de jun de 2024 13:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1133998,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120768,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','e77ab8dd-4a22-4643-9d0d-3d3c35cb6e4b','N')
;

-- 19 de jun de 2024 13:48:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1133999,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120768,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','2e747e76-d2fa-4af6-aaf9-b36ef3549088','N','D')
;

-- 19 de jun de 2024 13:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134000,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120768,'Description',512,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:51','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','96c906f3-4800-4f3f-98d7-e6efdceb6dd3',10,'N')
;

-- 19 de jun de 2024 13:48:52 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134001,0.0,'NFe Environment',1120768,'lbr_NFeEnv',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 13:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:52','YYYY-MM-DD HH24:MI:SS'),100,1100011,'N','N','LBRA','N','0d565c88-260f-45f4-aea5-bb4f5c1e7470','N')
;

-- 19 de jun de 2024 13:48:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134002,0.0,'Version No','Version Number',1120768,'VersionNo',6,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 13:48:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:48:52','YYYY-MM-DD HH24:MI:SS'),100,1949,'N','N','LBRA','N','194a127c-3a9e-4ea5-a798-983b1898c37b','N')
;

-- 19 de jun de 2024 13:49:29 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120769,'LBR_CTeConfigSeFaz','LBR_CTeConfigSeFaz',0,'3',0,0,'Y',TO_DATE('2024-06-19 13:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','5a3c476c-6e96-48e0-bb3b-c7245b133010','N','N','N','N')
;

-- 19 de jun de 2024 13:49:29 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeConfigSeFaz',1000000,'N','N','Table LBR_CTeConfigSeFaz','Y','Y',0,0,TO_DATE('2024-06-19 13:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:29','YYYY-MM-DD HH24:MI:SS'),100,1154044,'Y',1000000,1,200000,'dc8c2640-7912-4f6a-905b-a79eda96d20d')
;

-- 19 de jun de 2024 13:49:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123424,0,0,'Y',TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeConfigSeFaz_ID','LBR_CTeConfigSeFaz','LBR_CTeConfigSeFaz','LBRA','d881a9df-2ecf-43bf-8198-f561d6458148')
;

-- 19 de jun de 2024 13:49:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134003,0.0,'LBR_CTeConfigSeFaz',1120769,'LBR_CTeConfigSeFaz_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,1123424,'N','N','LBRA','N','2c76a1a5-d387-488a-9043-69bf89003d22','N')
;

-- 19 de jun de 2024 13:49:36 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123425,0,0,'Y',TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeConfigSeFaz_UU','LBR_CTeConfigSeFaz_UU','LBR_CTeConfigSeFaz_UU','LBRA','3f6acbdb-aa3a-401d-b658-a88082f14550')
;

-- 19 de jun de 2024 13:49:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134004,0.0,'LBR_CTeConfigSeFaz_UU',1120769,'LBR_CTeConfigSeFaz_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:35','YYYY-MM-DD HH24:MI:SS'),100,1123425,'N','N','LBRA','N','64b613d5-010e-4f33-8bbb-22eed096f615','N')
;

-- 19 de jun de 2024 13:49:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134005,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120769,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:49:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:36','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','9e0a7082-dc9f-451a-bc1b-7fae5bfdc6af','N','D')
;

-- 19 de jun de 2024 13:49:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134006,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120769,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9a2af0b1-058e-485e-b9da-ceaecca05512','N','D')
;

-- 19 de jun de 2024 13:49:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134007,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120769,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','b996a92f-0ac0-49ce-8472-1682c525e10d','N')
;

-- 19 de jun de 2024 13:49:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134008,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120769,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:37','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','22a28381-b83d-4853-be58-71733023415f','N')
;

-- 19 de jun de 2024 13:49:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134009,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120769,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','c82c5d64-2666-400a-a36e-45eb4b81d7c9','N','D')
;

-- 19 de jun de 2024 13:49:38 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134010,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120769,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','cded899f-a6c9-4c87-894f-62b598c76880','N')
;

-- 19 de jun de 2024 13:49:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134011,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120769,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:38','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','82ee592c-8528-4fd7-97e5-7bbd0fffd9ea','N','D')
;

-- 19 de jun de 2024 13:49:39 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134012,0.0,'CTe Config',1120769,'LBR_CTeConfig_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:49:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:39','YYYY-MM-DD HH24:MI:SS'),100,1123422,'N','N','LBRA','N','12b2da20-1ee8-4264-868f-3b1c8a6b19d8','N','N')
;

-- 19 de jun de 2024 13:49:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134013,0.0,'SeFaz',1120769,'LBR_SeFaz_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-19 13:49:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:39','YYYY-MM-DD HH24:MI:SS'),100,1123416,'N','N','LBRA','N','fb87e03b-9a37-4640-8a0b-1757c8400912','N','N')
;

-- 19 de jun de 2024 13:49:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134014,0.0,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120769,'ValidFrom',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2024-06-19 13:49:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:40','YYYY-MM-DD HH24:MI:SS'),100,617,'Y','N','LBRA','N','cdbac143-099c-40cb-8ed2-cc7514013151','N')
;

-- 19 de jun de 2024 13:49:40 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134015,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120769,'Description',512,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-19 13:49:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:40','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','c8cdd65e-ba2c-4eec-9e14-ae68ce443785',10,'N')
;

-- 19 de jun de 2024 13:49:57 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120185,'CTe Configuration',0,0,'Y',TO_DATE('2024-06-19 13:49:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:49:57','YYYY-MM-DD HH24:MI:SS'),100,'M','N','LBRA','Y','N',0,0,'N','47ca90df-2b6b-4209-98b8-a15268b67691')
;

-- 19 de jun de 2024 13:50:07 BRT
UPDATE AD_Window SET Name='CT-e Configuration',Updated=TO_DATE('2024-06-19 13:50:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120185
;

-- 19 de jun de 2024 13:50:31 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120525,'Configuration',1120185,10,'Y',1120768,0,0,'Y',TO_DATE('2024-06-19 13:50:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:31','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','df434a5b-7ace-4da3-8afd-95908bc1f84d','B')
;

-- 19 de jun de 2024 13:50:41 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-19 13:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134012
;

-- 19 de jun de 2024 13:50:48 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131993,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120525,1133993,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7a96f43a-83c3-4f01-9c3b-a50fb26bcc0c','N',2)
;

-- 19 de jun de 2024 13:50:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131994,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120525,1133994,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fa195b56-4abf-49bc-91a9-1baf52f2048b','Y','Y',10,4,2)
;

-- 19 de jun de 2024 13:50:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131995,'Description','Optional short description of the record','A description is limited to 255 characters.',1120525,1134000,'Y',512,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','da53de64-ef3b-47e4-8854-b659f1f38365','Y',20,5)
;

-- 19 de jun de 2024 13:50:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131996,'CTe Config',1120525,1133991,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','da62792e-e2aa-4a0f-a2b1-d1ea831d6f5d','N',2)
;

-- 19 de jun de 2024 13:50:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1131997,'LBR_CTeConfig_UU',1120525,1133992,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3ecffbfb-b50c-45d5-bcde-682bd5ecfa8e','N',2)
;

-- 19 de jun de 2024 13:50:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1131998,'NFe Environment',1120525,1134001,'Y',1,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','155f5001-5751-420a-9dc8-61c28f9f3118','Y',30,2,2)
;

-- 19 de jun de 2024 13:50:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1131999,'Version No','Version Number',1120525,1134002,'Y',6,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6b44a0e3-9a4b-47d4-b7f4-db65dee1dd9e','Y',40,2)
;

-- 19 de jun de 2024 13:50:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132000,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120525,1133995,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:50:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','95eb7de3-1756-4eee-9fca-d3e8b803a612','Y',50,2,2)
;

-- 19 de jun de 2024 13:51:19 BRT
UPDATE AD_Field SET SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131999
;

-- 19 de jun de 2024 13:51:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131998
;

-- 19 de jun de 2024 13:51:19 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, NumLines=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131995
;

-- 19 de jun de 2024 13:51:19 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131996
;

-- 19 de jun de 2024 13:51:19 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131997
;

-- 19 de jun de 2024 13:51:54 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1100001, IsUpdateable='Y',Updated=TO_DATE('2024-06-19 13:51:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134001
;

-- 19 de jun de 2024 13:52:21 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120526,'SeFaz',1120185,20,'Y',1120767,0,0,'Y',TO_DATE('2024-06-19 13:52:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:21','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','cc574ad8-4df5-4666-a0d5-313b9de548c1','B')
;

-- 19 de jun de 2024 13:52:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132001,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120526,1133976,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4ff1912b-6013-4dea-a3d8-64e46ee4830c','Y',10,2)
;

-- 19 de jun de 2024 13:52:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,XPosition,ColumnSpan) VALUES (1132002,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120526,1133977,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','34c90b56-b698-4100-b488-16b51f772f38','Y','N',4,2)
;

-- 19 de jun de 2024 13:52:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132003,'Description','Optional short description of the record','A description is limited to 255 characters.',1120526,1133984,'Y',512,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','64b51bef-33f1-4b43-908d-05a06e42918d','Y',20,5)
;

-- 19 de jun de 2024 13:52:30 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132004,'SeFaz URL',1120526,1133974,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','54588d17-4595-4c2c-89ab-a751fa073b00','N',2)
;

-- 19 de jun de 2024 13:52:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132005,'LBR_SeFazURL_UU',1120526,1133975,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','01c38a8d-2e1e-4be7-bfd2-8fad7384f33a','N',2)
;

-- 19 de jun de 2024 13:52:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132006,'SeFaz',1120526,1133983,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','754574c3-a86a-4d3f-a8ba-c40c6e8172cf','Y',30,2)
;

-- 19 de jun de 2024 13:52:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132007,'URL','Full URL address - e.g. http://www.idempiere.org','The URL defines an fully qualified web address like http://www.idempiere.org',1120526,1133985,'Y',255,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b061fe8-2733-4769-8d2f-dc10a95d7887','Y',40,5)
;

-- 19 de jun de 2024 13:52:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132008,'NFe Environment',1120526,1133986,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','17be3308-5d99-465d-8849-744ab3c005e6','Y',50,2)
;

-- 19 de jun de 2024 13:52:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132009,'Version No','Version Number',1120526,1133987,'Y',6,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ae59134a-84b9-45f9-a541-1e3793003e67','Y',60,2)
;

-- 19 de jun de 2024 13:52:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132010,'URL Scope',1120526,1133988,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3ba33bad-00e7-445a-bb2c-51e98d44acda','Y',70,2)
;

-- 19 de jun de 2024 13:52:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132011,'Endpoint Name',1120526,1133989,'Y',3,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8f72e777-670b-415e-881a-a1b8aafdcdd7','Y',80,2)
;

-- 19 de jun de 2024 13:52:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132012,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120526,1133990,'Y',7,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9d0e19cd-b867-4256-b1a6-07267c4f74c1','Y',90,2)
;

-- 19 de jun de 2024 13:52:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132013,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120526,1133978,'Y',1,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:52:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','68678516-11eb-4606-9409-02e55f6c9abe','Y',100,2,2)
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132004
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132005
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132001
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132002
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132003
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132006
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132007
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132008
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132009
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132010
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132011
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132012
;

-- 19 de jun de 2024 13:52:47 BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132013
;

-- 19 de jun de 2024 13:52:55 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132004
;

-- 19 de jun de 2024 13:52:55 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132004
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132005
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132005
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132001
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132001
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132002
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132002
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132003
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132003
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132006
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132006
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132007
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132007
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132008
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132008
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132009
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132009
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132010
;

-- 19 de jun de 2024 13:52:56 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132010
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132011
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132011
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132012
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132012
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1132013
;

-- 19 de jun de 2024 13:52:59 BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1132013
;

-- 19 de jun de 2024 13:53:08 BRT
UPDATE AD_Tab SET AD_Table_ID=1120769,Updated=TO_DATE('2024-06-19 13:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120526
;

-- 19 de jun de 2024 13:53:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132014,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120526,1134005,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9b460455-21ec-468a-bdd6-e83b171d5abc','N',2)
;

-- 19 de jun de 2024 13:53:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132015,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120526,1134006,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dbe4cd6b-1ee6-468c-8b00-5c6991659937','Y','Y',10,4,2)
;

-- 19 de jun de 2024 13:53:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132016,'Description','Optional short description of the record','A description is limited to 255 characters.',1120526,1134015,'Y',512,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f63d1ae2-a3c0-489c-96d2-2656134c1526','Y',20,5)
;

-- 19 de jun de 2024 13:53:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132017,'LBR_CTeConfigSeFaz',1120526,1134003,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5597a34d-e9c8-4ed1-97c9-ebb6fe742722','N',2)
;

-- 19 de jun de 2024 13:53:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132018,'LBR_CTeConfigSeFaz_UU',1120526,1134004,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d6856361-95e0-49ea-9911-d9dd0b460b95','N',2)
;

-- 19 de jun de 2024 13:53:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132019,'CTe Config',1120526,1134012,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','68d89677-71f4-4093-91fc-2b54c535c8c1','Y',30,2)
;

-- 19 de jun de 2024 13:53:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132020,'SeFaz',1120526,1134013,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','9930a056-f300-44b8-9277-8f74efd1fe23','Y',40,2)
;

-- 19 de jun de 2024 13:53:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132021,'Valid from','Valid from including this date (first day)','The Valid From date indicates the first day of a date range',1120526,1134014,'Y',29,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','db212361-8267-464e-b6cc-e1833c02b89f','Y',50,2)
;

-- 19 de jun de 2024 13:53:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132022,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120526,1134007,'Y',1,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-19 13:53:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:53:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b8198d56-9fdb-4728-b1ce-216aa2e560bf','Y',60,2,2)
;

-- 19 de jun de 2024 13:53:21 BRT
UPDATE AD_Tab SET IsSingleRow='N',Updated=TO_DATE('2024-06-19 13:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120526
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132019
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132022
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132016
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132020
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132017
;

-- 19 de jun de 2024 13:53:40 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-19 13:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132018
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132019
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132016
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132015
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132022
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132021
;

-- 19 de jun de 2024 13:53:53 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132020
;

-- 19 de jun de 2024 13:53:58 BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2024-06-19 13:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120526
;

-- 19 de jun de 2024 13:54:29 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120430,'CT-e',0,0,'Y',TO_DATE('2024-06-19 13:54:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:54:29','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','N','LBRA','N','43042212-76ac-4edb-8119-449a75da7ba5')
;

-- 19 de jun de 2024 13:54:29 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120430, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120430)
;

-- 19 de jun de 2024 13:54:51 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120431,'CT-e Config','W',1120185,0,0,'Y',TO_DATE('2024-06-19 13:54:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-19 13:54:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','97710ada-b4e4-42c1-935a-18387b4edb27')
;

-- 19 de jun de 2024 13:54:51 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120431, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120431)
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120430
;

-- 19 de jun de 2024 13:54:59 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120423
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de jun de 2024 13:55:34 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120429
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120368
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120430
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120423
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120202
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120245
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120412
;

-- 19 de jun de 2024 13:55:47 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120429
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 19 de jun de 2024 16:01:56 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120410,Updated=TO_DATE('2024-06-19 16:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133989
;

-- 19 de jun de 2024 16:02:13 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120409,Updated=TO_DATE('2024-06-19 16:02:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1133988
;


-- 24 de jun de 2024 17:59:07 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120770,'CT-e','LBR_CTe',0,'3',0,0,'Y',TO_DATE('2024-06-24 17:59:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 17:59:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','35d15245-ec99-4ad9-a6ea-d5289bd6b3d8','N','N','N','N')
;

-- 24 de jun de 2024 17:59:07 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTe',1000000,'N','N','Table LBR_CTe','Y','Y',0,0,TO_DATE('2024-06-24 17:59:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 17:59:07','YYYY-MM-DD HH24:MI:SS'),100,1154045,'Y',1000000,1,200000,'fbca0912-2b48-4bb2-990b-c53838f83df0')
;

-- 24 de jun de 2024 18:00:13 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120771,'CT-e Partner','LBR_CTePartner',0,'3',0,0,'Y',TO_DATE('2024-06-24 18:00:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','d8594974-a779-4408-8952-e37f336170db','N','N','N','N')
;

-- 24 de jun de 2024 18:00:14 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTePartner',1000000,'N','N','Table LBR_CTePartner','Y','Y',0,0,TO_DATE('2024-06-24 18:00:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:13','YYYY-MM-DD HH24:MI:SS'),100,1154046,'Y',1000000,1,200000,'a02897fe-b702-4c48-9ec3-93be7617b3d2')
;

-- 24 de jun de 2024 18:00:27 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120772,'CT-e ICMS','LBR_CTeICMS',0,'3',0,0,'Y',TO_DATE('2024-06-24 18:00:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:27','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','53365089-9bae-4481-9c79-68f452f0eb57','N','N','N','N')
;

-- 24 de jun de 2024 18:00:28 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeICMS',1000000,'N','N','Table LBR_CTeICMS','Y','Y',0,0,TO_DATE('2024-06-24 18:00:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:27','YYYY-MM-DD HH24:MI:SS'),100,1154047,'Y',1000000,1,200000,'8977bc80-19e3-4f4f-a311-38271c570377')
;

-- 24 de jun de 2024 18:00:38 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120773,'CT-e ICMS Fim','LBR_CTeICMSFim',0,'3',0,0,'Y',TO_DATE('2024-06-24 18:00:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','388d1453-7e00-4ed4-99b5-ae9c1026796f','N','N','N','N')
;

-- 24 de jun de 2024 18:00:38 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeICMSFim',1000000,'N','N','Table LBR_CTeICMSFim','Y','Y',0,0,TO_DATE('2024-06-24 18:00:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:38','YYYY-MM-DD HH24:MI:SS'),100,1154048,'Y',1000000,1,200000,'a555282e-efe6-48e3-97e5-890c6748655d')
;

-- 24 de jun de 2024 18:00:54 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120774,'CT-e Document','LBR_CTeDocNFe',0,'3',0,0,'Y',TO_DATE('2024-06-24 18:00:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','e3e95b58-b703-41ff-b253-6839699eebc0','N','N','N','N')
;

-- 24 de jun de 2024 18:00:54 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeDocNFe',1000000,'N','N','Table LBR_CTeDocNFe','Y','Y',0,0,TO_DATE('2024-06-24 18:00:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:00:54','YYYY-MM-DD HH24:MI:SS'),100,1154049,'Y',1000000,1,200000,'122aae5d-2713-44eb-ba82-e4073918cd66')
;

-- 24 de jun de 2024 18:01:11 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120775,'CT-e Event','LBR_CTeEvent',0,'3',0,0,'Y',TO_DATE('2024-06-24 18:01:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','ee7d5510-da0b-4776-a4a5-f312d9a544b4','N','N','N','N')
;

-- 24 de jun de 2024 18:01:11 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeEvent',1000000,'N','N','Table LBR_CTeEvent','Y','Y',0,0,TO_DATE('2024-06-24 18:01:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:11','YYYY-MM-DD HH24:MI:SS'),100,1154050,'Y',1000000,1,200000,'3dc77c65-76e0-43ca-95bb-5ac8670e391c')
;

-- 24 de jun de 2024 18:01:20 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123426,0,0,'Y',TO_DATE('2024-06-24 18:01:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:20','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTe_ID','CT-e','CT-e','LBRA','3d4dac22-8394-47e0-9198-32e32ba1fe2f')
;

-- 24 de jun de 2024 18:01:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134016,0.0,'CT-e',1120770,'LBR_CTe_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:01:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:20','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','f9af6a8a-d429-4a9e-a27d-da07c7cd394b','N')
;

-- 24 de jun de 2024 18:01:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134017,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120770,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:21','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','f9525c88-4210-492f-8ba6-c9e9fc9d7d5d','N','D')
;

-- 24 de jun de 2024 18:01:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134018,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120770,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:21','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','55bfab55-ae3d-427d-be51-033684de138d','N','D')
;

-- 24 de jun de 2024 18:01:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134019,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120770,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:01:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:22','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','1510b80f-a68c-404d-96dc-8107e967820c','N')
;

-- 24 de jun de 2024 18:01:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134020,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120770,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:01:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:22','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','de57246a-0f17-41d0-80f9-7cc096d5150e','N','D')
;

-- 24 de jun de 2024 18:01:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134021,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120770,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','59df2112-5ee4-4127-abc7-4cfc9f0adcd3','N')
;

-- 24 de jun de 2024 18:01:23 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134022,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120770,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','8862dfe0-1606-4182-8536-af2005936b7a','N','D')
;

-- 24 de jun de 2024 18:01:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134023,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120770,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:23','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','6aeb7375-3e9f-4266-8f7f-90374b2eaf75','N')
;

-- 24 de jun de 2024 18:01:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134024,0.0,'Imported','Has this import been processed','The Imported check box indicates if this import has been processed.',1120770,'I_IsImported',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,913,'Y','N','LBRA','N','c6146719-1158-4a68-8b4d-5fc8482d0cf5','N')
;

-- 24 de jun de 2024 18:01:24 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134025,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120770,'LBR_NSU',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,1122885,'Y','N','LBRA','N','c02d2304-8b3b-409b-a85e-3574da42f652','N','N')
;

-- 24 de jun de 2024 18:01:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123427,0,0,'Y',TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,'lbr_chcte','lbr_chcte','lbr_chcte','LBRA','69bd1e29-e669-449e-b96b-21059be0b128')
;

-- 24 de jun de 2024 18:01:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134026,0.0,'lbr_chcte',1120770,'lbr_chcte',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:24','YYYY-MM-DD HH24:MI:SS'),100,1123427,'Y','N','LBRA','N','9d9c28ad-7b45-4cb6-a0d5-41047616364a','N')
;

-- 24 de jun de 2024 18:01:25 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123428,0,0,'Y',TO_DATE('2024-06-24 18:01:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:25','YYYY-MM-DD HH24:MI:SS'),100,'lbr_cuf','lbr_cuf','lbr_cuf','LBRA','f78915a2-d6ab-4787-b008-5406c2da426a')
;

-- 24 de jun de 2024 18:01:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134027,0.0,'lbr_cuf',1120770,'lbr_cuf',2,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:25','YYYY-MM-DD HH24:MI:SS'),100,1123428,'Y','N','LBRA','N','93227a32-4da5-49ca-93a2-981eceb1a262','N')
;

-- 24 de jun de 2024 18:01:26 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134028,0.0,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120770,'LBR_CFOP_ID',10,'N','N','Y','N','N','N',30,1000016,0,0,'Y',TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,1000137,'Y','N','LBRA','N','1675bf14-3941-4258-81ce-f224df7d1c58','N','N')
;

-- 24 de jun de 2024 18:01:27 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123429,0,0,'Y',TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,'lbr_natop','lbr_natop','lbr_natop','LBRA','5eb43f7e-ed90-42a7-81eb-758ba17f4798')
;

-- 24 de jun de 2024 18:01:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134029,0.0,'lbr_natop',1120770,'lbr_natop',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:26','YYYY-MM-DD HH24:MI:SS'),100,1123429,'Y','N','LBRA','N','69574049-b4b3-4e67-b877-bcb8b7f2f728','N')
;

-- 24 de jun de 2024 18:01:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134030,0.0,'NF Model','Identifies the model of Nota Fiscal',1120770,'lbr_NFModel',2,'N','N','N','N','N','N',17,1120009,0,0,'Y',TO_DATE('2024-06-24 18:01:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:27','YYYY-MM-DD HH24:MI:SS'),100,1100009,'Y','N','LBRA','N','dba32759-20c6-48fd-86bf-9154779729f1','N')
;

-- 24 de jun de 2024 18:01:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134031,0.0,'NF Serie',1120770,'lbr_NFSerie',3,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,1100010,'Y','N','LBRA','N','d7c01ed2-f3ff-4d5d-9c49-80f16c2931d3','N')
;

-- 24 de jun de 2024 18:01:28 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134032,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120770,'DocumentNo',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N','fdec65e3-c3cf-4589-9f42-a392d5178180',10,'N')
;

-- 24 de jun de 2024 18:01:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134033,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120770,'DateDoc','@#Date@',29,'N','N','Y','N','N','N',15,0,0,'Y',TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:28','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','8db3dd6e-b2cd-4fd3-b1d8-6069776203a7','N')
;

-- 24 de jun de 2024 18:01:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134034,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120770,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','06d6c26a-1b71-45b7-b9ac-869e3757dcd9','N')
;

-- 24 de jun de 2024 18:01:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU) VALUES (1134035,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120770,'DocAction','CO',2,'N','N','N','N','N','N',28,135,0,0,'Y',TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','3bd18415-36f3-46de-9010-30a074762e9b')
;

-- 24 de jun de 2024 18:01:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134036,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120770,'Processed',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:29','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','24f920f5-dd66-4ba9-8ffd-0be5816e748b','N')
;

-- 24 de jun de 2024 18:01:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134037,0.0,'DANFE Format',1120770,'lbr_DANFEFormat','1',1,'N','N','N','N','N','N',17,1100002,0,0,'Y',TO_DATE('2024-06-24 18:01:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:30','YYYY-MM-DD HH24:MI:SS'),100,1100012,'Y','N','LBRA','N','9e82322a-30f4-431b-9bc2-7176c385259d','N')
;

-- 24 de jun de 2024 18:01:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134038,0.0,'Tipo de Emissão','Indicar o Tipo de Emissão da NF-e.','Indicar se o  Tipo de Emissão da NF-e é Normal ou uma das opções de Contingência',1120770,'LBR_TPEmis','1',1,'N','N','N','N','N','N',17,1120246,0,0,'Y',TO_DATE('2024-06-24 18:01:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:30','YYYY-MM-DD HH24:MI:SS'),100,1122250,'Y','N','@IsManual@!Y','LBRA','N','6c52aebd-85b8-4d48-ae34-cae115356648','N')
;

-- 24 de jun de 2024 18:01:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134039,0.0,'NFe Environment',1120770,'lbr_NFeEnv',1,'N','N','N','N','N','N',17,1100001,0,0,'Y',TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,1100011,'Y','N','LBRA','N','a7cb3dc1-236b-4a7b-9843-2f4276b98c52','N','N')
;

-- 24 de jun de 2024 18:01:31 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123430,0,0,'Y',TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,'lbr_ctetype','lbr_ctetype','lbr_ctetype','LBRA','6c29a2d5-0172-4df2-81d6-03e681670323')
;

-- 24 de jun de 2024 18:01:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134040,0.0,'lbr_ctetype',1120770,'lbr_ctetype',1,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:31','YYYY-MM-DD HH24:MI:SS'),100,1123430,'Y','N','LBRA','N','665491ad-e676-412f-b005-4ac2d49f61c1','N')
;

-- 24 de jun de 2024 18:01:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134041,0.0,'Shipment Type',1120770,'LBR_ShipmentType','1',1,'N','N','N','N','N','N',17,1120172,0,0,'Y',TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,1121470,'Y','N','LBRA','N','183ab895-fd1c-4f95-8d4d-c12482820d95','N')
;

-- 24 de jun de 2024 18:01:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123431,0,0,'Y',TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,'lbr_cteservicetype','lbr_cteservicetype','lbr_cteservicetype','LBRA','64dac9dd-5781-42e3-b936-c97afd946bb6')
;

-- 24 de jun de 2024 18:01:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134042,0.0,'lbr_cteservicetype',1120770,'lbr_cteservicetype',1,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:32','YYYY-MM-DD HH24:MI:SS'),100,1123431,'Y','N','LBRA','N','cc9d775a-4a4e-4767-98da-1062a530550a','N')
;

-- 24 de jun de 2024 18:01:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123432,0,0,'Y',TO_DATE('2024-06-24 18:01:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:33','YYYY-MM-DD HH24:MI:SS'),100,'lbr_cteconsignee','lbr_cteconsignee','lbr_cteconsignee','LBRA','fcb4309c-d407-4de6-bc4c-f0c7ed33ca34')
;

-- 24 de jun de 2024 18:01:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134043,0.0,'lbr_cteconsignee',1120770,'lbr_cteconsignee',100,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:33','YYYY-MM-DD HH24:MI:SS'),100,1123432,'Y','N','LBRA','N','da2a6ed5-e826-4516-993c-05d091793ce0','N')
;

-- 24 de jun de 2024 18:01:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134044,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120770,'lbr_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','N','623c0fd7-2174-47df-bac5-048c9da5dd7f','N')
;

-- 24 de jun de 2024 18:01:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134045,0.0,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120770,'lbr_CPF',11,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,1000010,'Y','N','LBRA','N','2a3413cf-99cf-4f8d-80b2-e22b2f162fb6','N')
;

-- 24 de jun de 2024 18:01:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134046,0.0,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120770,'lbr_IE',20,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,1000014,'Y','N','LBRA','N','b6f1a993-5ec4-4450-8e0b-b78264739c36','N')
;

-- 24 de jun de 2024 18:01:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134047,0.0,'Indicador da IE','Indicador da IE do Destinatário','Indicador da IE do Destinatário',1120770,'LBR_IndIEDest','1',1,'N','N','N','N','N','N',17,1120235,0,0,'Y',TO_DATE('2024-06-24 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,1122099,'Y','N','LBRA','N','1da1ccb3-dc21-4917-8a4e-124092f8873f','N')
;

-- 24 de jun de 2024 18:01:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134048,0.0,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120770,'GrandTotal',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:35','YYYY-MM-DD HH24:MI:SS'),100,316,'N','N','LBRA','N','a7ebbdde-9020-4d2c-ae67-e8965f60e8cb','N')
;

-- 24 de jun de 2024 18:01:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134049,0.0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120770,1000003,'C_Region_ID',10,'N','N','N','N','N','N',18,157,0,0,'Y',TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','8702383f-1a3b-4271-988d-def731a005cf','N','N')
;

-- 24 de jun de 2024 18:01:36 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134050,0.0,'To','Receiving Region','The To Region indicates the receiving region on a document',1120770,155,'To_Region_ID',10,'N','N','N','N','N','N',18,157,0,0,'Y',TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,595,'Y','N','LBRA','N','a0ddaacb-f906-4e0b-9d31-b5670c312591','N','N')
;

-- 24 de jun de 2024 18:01:37 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134051,0.0,'Product Name','Name of the Product',1120770,'ProductName',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:36','YYYY-MM-DD HH24:MI:SS'),100,2659,'N','Y','LBRA','N','8eb21827-d7ca-4f32-973b-4fbc8e4cdb5b',20,'N')
;

-- 24 de jun de 2024 18:01:52 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123433,0,0,'Y',TO_DATE('2024-06-24 18:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeDocNFe_ID','CT-e Document','CT-e Document','LBRA','387af173-4681-44a4-b8c7-96f583ac58c4')
;

-- 24 de jun de 2024 18:01:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134052,0.0,'CT-e Document',1120774,'LBR_CTeDocNFe_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:01:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:52','YYYY-MM-DD HH24:MI:SS'),100,1123433,'N','N','LBRA','N','88c50acc-ebdd-4450-8680-44a44f81f5bf','N')
;

-- 24 de jun de 2024 18:01:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134053,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120774,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:01:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:53','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','df4716e6-8683-435b-b1b5-bd9e8e0ee7cb','N','D')
;

-- 24 de jun de 2024 18:01:53 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134054,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120774,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:01:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:53','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','9cd8e2eb-8609-4d73-ad9c-f33a35a1d3e1','N','D')
;

-- 24 de jun de 2024 18:01:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134055,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120774,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','b9863c81-c003-42a8-a26b-52f779e920f8','N')
;

-- 24 de jun de 2024 18:01:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134056,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120774,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','cccb7520-2116-442b-818e-6f11bbd2168d','N','D')
;

-- 24 de jun de 2024 18:01:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134057,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120774,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:54','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','756c736e-8f7f-48cc-9a5b-aaa3dbefd6ea','N')
;

-- 24 de jun de 2024 18:01:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134058,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120774,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:01:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:55','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','429658b7-9fd6-474c-b1cb-b6c739849925','N','D')
;

-- 24 de jun de 2024 18:01:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134059,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120774,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:01:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:55','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','da461667-1396-4add-8754-bcc7e000fd4b','N')
;

-- 24 de jun de 2024 18:01:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134060,0.0,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120774,'LBR_NotaFiscal_ID',10,'N','N','N','N','N','N',30,0,0,'Y',TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,1000177,'N','N','LBRA','N','07e98173-a02b-48d5-a88d-2a6fddfcb2a6','N','N')
;

-- 24 de jun de 2024 18:01:56 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134061,0.0,'CT-e',1120774,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','ba399b25-f32a-41e9-a059-50d4330a65fd','N','N')
;

-- 24 de jun de 2024 18:01:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134062,0.0,'NFe ID','Identification of NFe',1120774,'lbr_NFeID',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:56','YYYY-MM-DD HH24:MI:SS'),100,1100017,'Y','N','LBRA','N','172be1db-82d1-4864-9186-fa23d5ee8e03','N','N')
;

-- 24 de jun de 2024 18:01:57 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123434,0,0,'Y',TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,'lbr_suframapin','lbr_suframapin','lbr_suframapin','LBRA','eeedf40f-9f4a-415b-9fbd-3284806652cb')
;

-- 24 de jun de 2024 18:01:57 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134063,0.0,'lbr_suframapin',1120774,'lbr_suframapin',9,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,1123434,'Y','N','LBRA','N','93476aa8-52f3-49b3-bcf1-cb1ecf2598d7','N')
;

-- 24 de jun de 2024 18:01:58 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134064,0.0,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120774,'DatePromised',29,'N','N','N','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:01:57','YYYY-MM-DD HH24:MI:SS'),100,269,'N','N','LBRA','N','748b8790-2200-4f4f-9cac-ba7cbdc3257f','N')
;

-- 24 de jun de 2024 18:02:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123435,0,0,'Y',TO_DATE('2024-06-24 18:02:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeEvent_ID','CT-e Event','CT-e Event','LBRA','cc734cb4-9f0b-4877-8f21-3a0dcf4e2790')
;

-- 24 de jun de 2024 18:02:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134065,0.0,'CT-e Event',1120775,'LBR_CTeEvent_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:02:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:09','YYYY-MM-DD HH24:MI:SS'),100,1123435,'N','N','LBRA','N','631e3e01-06e3-4b44-a974-c54f5200d50b','N')
;

-- 24 de jun de 2024 18:02:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134066,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120775,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','ef8fdc72-fc62-4acf-8422-5808c956bc14','N','D')
;

-- 24 de jun de 2024 18:02:10 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134067,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120775,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','18a080f8-807d-4cac-9394-14fefe377f1a','N','D')
;

-- 24 de jun de 2024 18:02:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134068,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120775,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:10','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','45364ad5-6473-4a2d-96bc-7bfc42209881','N')
;

-- 24 de jun de 2024 18:02:11 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134069,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120775,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:11','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','4d6d36ef-6221-47fc-a040-92a5caf8af9c','N','D')
;

-- 24 de jun de 2024 18:02:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134070,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120775,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:11','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','5143fccb-3f39-453b-943b-dbd4ab0225d1','N')
;

-- 24 de jun de 2024 18:02:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134071,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120775,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','d2c6688e-f818-4b5d-a078-d73e1d6132c6','N','D')
;

-- 24 de jun de 2024 18:02:12 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134072,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120775,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','2d0f3177-2742-48f0-a2a9-48c6c8a613cc','N')
;

-- 24 de jun de 2024 18:02:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134073,0.0,'Imported','Has this import been processed','The Imported check box indicates if this import has been processed.',1120775,'I_IsImported',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:12','YYYY-MM-DD HH24:MI:SS'),100,913,'Y','N','LBRA','N','354b4627-2a86-4a3c-8235-3048220b0ab8','N')
;

-- 24 de jun de 2024 18:02:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134074,0.0,'CT-e',1120775,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','cb42ee42-ee3e-4a42-9851-16cb222afc97','N','N')
;

-- 24 de jun de 2024 18:02:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134075,0.0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120775,'LBR_NSU',30,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,1122885,'Y','N','LBRA','N','c7341d24-8dce-48de-92d1-807c31cf9ef1','N','N')
;

-- 24 de jun de 2024 18:02:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134076,0.0,'lbr_chcte',1120775,'lbr_chcte',44,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:13','YYYY-MM-DD HH24:MI:SS'),100,1123427,'Y','N','LBRA','N','236ec976-aba1-44d7-9539-8089b054dc94','N','N')
;

-- 24 de jun de 2024 18:02:14 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134077,0.0,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120775,'DateTrx',13,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2024-06-24 18:02:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:14','YYYY-MM-DD HH24:MI:SS'),100,1297,'N','N','LBRA','N','0a9c7071-58bf-4342-a089-e53978826868','N')
;

-- 24 de jun de 2024 18:02:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134078,0.0,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120775,'SeqNo',10,'N','N','N','N','N','N',11,0,0,'Y',TO_DATE('2024-06-24 18:02:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:14','YYYY-MM-DD HH24:MI:SS'),100,566,'Y','N','LBRA','N','eb12d9bc-e871-42a8-979e-ef6a17c4a858','N')
;

-- 24 de jun de 2024 18:02:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134079,0.0,'NFe Environment',1120775,'lbr_NFeEnv',1,'N','N','N','N','N','N',17,1100001,0,0,'Y',TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,1100011,'Y','N','LBRA','N','3bbaa8e3-74ba-47c5-a19c-89e10a31bcb9','N','N')
;

-- 24 de jun de 2024 18:02:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134080,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120775,'lbr_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','N','ac271d30-9c0e-4105-9fe4-e437f1b811f8','N')
;

-- 24 de jun de 2024 18:02:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134081,0.0,'Event Type',1120775,'LBR_EventType',6,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:15','YYYY-MM-DD HH24:MI:SS'),100,1121791,'Y','N','LBRA','N','6f28b824-6922-4cd7-a160-c0da0741aee6','N')
;

-- 24 de jun de 2024 18:02:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134082,0.0,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120775,'DocStatus','DR',2,'N','N','N','N','N','N',17,131,0,0,'Y',TO_DATE('2024-06-24 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,289,'Y','N','LBRA','N','c2df46af-9d62-4309-8257-04ca3966592f','N')
;

-- 24 de jun de 2024 18:02:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU) VALUES (1134083,0.0,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120775,'DocAction','CO',2,'N','N','N','N','N','N',28,135,0,0,'Y',TO_DATE('2024-06-24 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:16','YYYY-MM-DD HH24:MI:SS'),100,287,'Y','N','LBRA','N','d41c3c0f-ff9e-4cf3-9275-6c1d32f2f419')
;

-- 24 de jun de 2024 18:02:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134084,0.0,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120775,'Processed',1,'N','N','N','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,1047,'Y','N','LBRA','N','91fd9e30-7fed-45e6-9e97-c03a384533f3','N')
;

-- 24 de jun de 2024 18:02:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134085,0.0,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120775,'DateDoc',29,'N','N','N','N','N','N',15,0,0,'Y',TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,265,'Y','N','LBRA','N','207bc168-6cf8-4f1b-a33d-5e0957aae0bf','N')
;

-- 24 de jun de 2024 18:02:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134086,0.0,'Description','Optional short description of the record','A description is limited to 255 characters.',1120775,'Description',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:17','YYYY-MM-DD HH24:MI:SS'),100,275,'Y','Y','LBRA','N','aeef5f9d-2630-4500-b1cc-0c46670c7dc2',10,'N')
;

-- 24 de jun de 2024 18:02:29 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123436,0,0,'Y',TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeICMS_ID','CT-e ICMS','CT-e ICMS','LBRA','e937a301-8dc7-48c8-950c-3cd8d304c3db')
;

-- 24 de jun de 2024 18:02:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134087,0.0,'CT-e ICMS',1120772,'LBR_CTeICMS_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,1123436,'N','N','LBRA','N','2afe5998-f6be-4dae-b57c-d75f8048323e','N')
;

-- 24 de jun de 2024 18:02:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134088,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120772,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:29','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','f1dcc453-3f39-4f6f-87ca-7da116297dea','N','D')
;

-- 24 de jun de 2024 18:02:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134089,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120772,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','f3cb0f5d-ee3f-4751-8b56-441eb41b0a22','N','D')
;

-- 24 de jun de 2024 18:02:30 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134090,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120772,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','d9300991-6038-4a62-bc58-c70b8c0c4e0a','N')
;

-- 24 de jun de 2024 18:02:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134091,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120772,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:30','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','84ab19e5-0f46-441e-9e9d-b169b3f4faa6','N','D')
;

-- 24 de jun de 2024 18:02:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134092,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120772,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:31','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','dd42fddc-6536-4130-ba6f-c81178147b83','N')
;

-- 24 de jun de 2024 18:02:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134093,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120772,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:31','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','cfdd923b-2f9b-4c37-ae52-d235e8f45a57','N','D')
;

-- 24 de jun de 2024 18:02:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134094,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120772,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','97c0b8dc-f40a-439f-8dcd-2964fc824a49','N')
;

-- 24 de jun de 2024 18:02:32 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134095,0.0,'CT-e',1120772,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','3f255b41-ee5d-4a8a-bff7-321c9b45af86','N','N')
;

-- 24 de jun de 2024 18:02:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134096,0.0,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120772,'LBR_TaxName_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,1000169,'Y','Y','LBRA','N','36354435-6ff2-4f47-b59d-5ed97c3e7340',10,'N')
;

-- 24 de jun de 2024 18:02:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134097,0.0,'Tax Status',1120772,'LBR_TaxStatus_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:33','YYYY-MM-DD HH24:MI:SS'),100,1106004,'N','N','LBRA','N','428c4980-b07e-461d-a64c-a8b6f5a0d779','N')
;

-- 24 de jun de 2024 18:02:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134098,0.0,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120772,'lbr_TaxBaseAmt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:33','YYYY-MM-DD HH24:MI:SS'),100,1000175,'Y','N','@IsManual@!Y','LBRA','N','973ac928-253f-4635-97e9-21f1f6781414','N')
;

-- 24 de jun de 2024 18:02:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134099,0.0,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120772,'lbr_TaxBase',10,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,1000128,'Y','N','LBRA','N','fe6460ad-acf9-40bc-b448-9ffd12f7c1d8','N')
;

-- 24 de jun de 2024 18:02:34 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134100,0.0,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120772,'lbr_TaxAmt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,1000130,'Y','N','@IsManual@!Y','LBRA','N','daa37f4a-58f2-4920-a1dc-b5a5ab827223','N')
;

-- 24 de jun de 2024 18:02:35 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123437,0,0,'Y',TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,'lbr_taxcreditamt','lbr_taxcreditamt','lbr_taxcreditamt','LBRA','c294d89c-1b5d-4d56-9be4-51f6c991069d')
;

-- 24 de jun de 2024 18:02:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134101,0.0,'lbr_taxcreditamt',1120772,'lbr_taxcreditamt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:34','YYYY-MM-DD HH24:MI:SS'),100,1123437,'Y','N','LBRA','N','45e83f14-c9ea-4f0b-aad4-39274cc75dc0','N')
;

-- 24 de jun de 2024 18:02:44 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123438,0,0,'Y',TO_DATE('2024-06-24 18:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:44','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeICMSFim_ID','CT-e ICMS Fim','CT-e ICMS Fim','LBRA','5f613b14-ad99-44a6-89ee-1435f0f15de0')
;

-- 24 de jun de 2024 18:02:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134102,0.0,'CT-e ICMS Fim',1120773,'LBR_CTeICMSFim_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:02:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:44','YYYY-MM-DD HH24:MI:SS'),100,1123438,'N','N','LBRA','N','2c4e7519-8063-4c21-8220-909f31eea4d7','N')
;

-- 24 de jun de 2024 18:02:45 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134103,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120773,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:45','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','8ea651a8-277f-43ef-baf7-f2c6d17d990d','N','D')
;

-- 24 de jun de 2024 18:02:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134104,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120773,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:45','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','c492782c-e3bf-492b-b5dc-9d809b50d9dc','N','D')
;

-- 24 de jun de 2024 18:02:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134105,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120773,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','9f655f22-51d9-4638-a0c3-8995e8742f43','N')
;

-- 24 de jun de 2024 18:02:46 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134106,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120773,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','38ce09c6-db04-461b-93c1-3ec2c217c427','N','D')
;

-- 24 de jun de 2024 18:02:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134107,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120773,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:46','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','622f7133-40f6-4924-9229-8f20af7fe5af','N')
;

-- 24 de jun de 2024 18:02:47 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134108,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120773,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:47','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','fc661c36-62c2-4fc4-887f-145b0ae11b36','N','D')
;

-- 24 de jun de 2024 18:02:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134109,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120773,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:02:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:47','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','58996996-81e0-42d6-b144-f8892924ebba','N')
;

-- 24 de jun de 2024 18:02:48 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134110,0.0,'CT-e',1120773,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:48','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','f933bdad-1570-4e59-843d-9ce6bb31257c','N','N')
;

-- 24 de jun de 2024 18:02:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134111,0.0,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120773,'LBR_TaxName_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:48','YYYY-MM-DD HH24:MI:SS'),100,1000169,'Y','Y','LBRA','N','f74879bd-f0b9-484f-a592-83d7c2849708',10,'N')
;

-- 24 de jun de 2024 18:02:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134112,0.0,'Tax Status',1120773,'LBR_TaxStatus_ID',10,'N','N','N','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,1106004,'N','N','LBRA','N','150bd4cc-c065-46b1-b2f8-0aebb668ea80','N')
;

-- 24 de jun de 2024 18:02:49 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134113,0.0,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120773,'lbr_TaxBaseAmt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,1000175,'Y','N','@IsManual@!Y','LBRA','N','a8ab03ae-50dc-4a6b-9c5c-c3b3785b982c','N')
;

-- 24 de jun de 2024 18:02:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134114,0.0,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120773,'lbr_TaxBase',10,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:49','YYYY-MM-DD HH24:MI:SS'),100,1000128,'Y','N','LBRA','N','891a62bc-f24d-4d3e-a383-d001ddf0bfd2','N','N')
;

-- 24 de jun de 2024 18:02:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,ReadOnlyLogic,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134115,0.0,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120773,'lbr_TaxAmt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:50','YYYY-MM-DD HH24:MI:SS'),100,1000130,'Y','N','@IsManual@!Y','LBRA','N','1c81cfb6-8c8d-4f25-aebc-ac0d71e043ec','N')
;

-- 24 de jun de 2024 18:02:51 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134116,0.0,'lbr_taxcreditamt',1120773,'lbr_taxcreditamt',18,'N','N','N','N','N','N',12,0,0,'Y',TO_DATE('2024-06-24 18:02:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:02:50','YYYY-MM-DD HH24:MI:SS'),100,1123437,'Y','N','LBRA','N','564406b3-dce6-4b73-a620-8f2111569e5b','N','N')
;

-- 24 de jun de 2024 18:03:00 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123439,0,0,'Y',TO_DATE('2024-06-24 18:03:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:00','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTePartner_ID','CT-e Partner','CT-e Partner','LBRA','f3a9050a-1f83-45fc-88f9-697edf0b2f4f')
;

-- 24 de jun de 2024 18:03:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134117,0.0,'CT-e Partner',1120771,'LBR_CTePartner_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-06-24 18:03:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:00','YYYY-MM-DD HH24:MI:SS'),100,1123439,'N','N','LBRA','N','c01ee0fa-1233-41d9-9285-77d2492d758d','N')
;

-- 24 de jun de 2024 18:03:01 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134118,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120771,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:03:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:01','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','a9114a4a-2ef5-4dcf-b264-32769fb04681','N','D')
;

-- 24 de jun de 2024 18:03:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134119,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120771,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:03:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:01','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','f4aed558-3bc7-4882-9c26-6d46961d7f20','N','D')
;

-- 24 de jun de 2024 18:03:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134120,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120771,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','46057e58-6c4c-422f-84bc-0d5961870c6e','N')
;

-- 24 de jun de 2024 18:03:02 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134121,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120771,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','e555c157-6e0e-423e-8d4e-4d8ef3f233e9','N','D')
;

-- 24 de jun de 2024 18:03:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134122,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120771,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:02','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','2d0b55d5-f66f-4979-b8fb-5a4ae688f0dc','N')
;

-- 24 de jun de 2024 18:03:03 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134123,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120771,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-06-24 18:03:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:03','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','d6393850-d437-4376-beb1-ccf8ad905f0a','N','D')
;

-- 24 de jun de 2024 18:03:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134124,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120771,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-06-24 18:03:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:03','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','ab2ec74b-fef8-41e5-b758-3531d8273ef1','N')
;

-- 24 de jun de 2024 18:03:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134125,0.0,'CT-e',1120771,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-06-24 18:03:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:04','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','0c5b8f3f-7bc4-44fe-91ee-312612bd9dd8','N','N')
;

-- 24 de jun de 2024 18:03:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134126,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120771,'Name',60,'N','N','N','N','Y','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:04','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','4be495c6-d47a-4eb1-868e-3c64ed5dcc29',10,'N')
;

-- 24 de jun de 2024 18:03:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134127,0.0,'Name 2','Additional Name',1120771,'Name2',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,1111,'N','Y','LBRA','N','f51509ae-977b-487a-afa2-f884414e5f83',20,'N')
;

-- 24 de jun de 2024 18:03:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134128,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120771,'lbr_CNPJ',14,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,1000009,'Y','N','LBRA','N','8a337fbd-1d1f-4749-baa8-eeb0da414fcc','N')
;

-- 24 de jun de 2024 18:03:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134129,0.0,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120771,'lbr_IE',20,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:05','YYYY-MM-DD HH24:MI:SS'),100,1000014,'Y','N','LBRA','N','97c12e9e-6958-45b3-8646-5fa8a99b50f8','N')
;

-- 24 de jun de 2024 18:03:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134130,0.0,'Address 1','Address line 1 for this location','The Address 1 identifies the address for an entity''s location',1120771,'Address1',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,156,'N','N','LBRA','N','c880b025-87de-416d-9f93-792229556cdb','N')
;

-- 24 de jun de 2024 18:03:06 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134131,0.0,'Address 2','Address line 2 for this location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120771,'Address2',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,157,'N','N','LBRA','N','8131e3b2-d256-434b-95b6-a70c124417e9','N')
;

-- 24 de jun de 2024 18:03:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134132,0.0,'Address 3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120771,'Address3',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:06','YYYY-MM-DD HH24:MI:SS'),100,2555,'N','N','LBRA','N','b93ba761-ea53-485f-b5e9-14deb763725c','N')
;

-- 24 de jun de 2024 18:03:07 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134133,0.0,'Address 4','Address Line 4 for the location','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120771,'Address4',255,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:07','YYYY-MM-DD HH24:MI:SS'),100,2556,'N','N','LBRA','N','24733d73-5b3f-463a-8d9e-e04593a1adef','N')
;

-- 24 de jun de 2024 18:03:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134134,0.0,'City','Identifies a City','The City identifies a unique City for this Country or Region.',1120771,'City',100,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:07','YYYY-MM-DD HH24:MI:SS'),100,225,'N','N','LBRA','N','940df004-bda8-410a-94a5-5a7593268fb9','N')
;

-- 24 de jun de 2024 18:03:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134135,0.0,'ZIP','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.',1120771,'Postal',10,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,512,'Y','N','LBRA','N','63bcf46c-1201-42ce-9a1e-eef38fc4bc00','N')
;

-- 24 de jun de 2024 18:03:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134136,0.0,'Country','Country Name',1120771,'CountryName',60,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,2585,'N','Y','LBRA','N','82e2fd4e-0734-4e3a-a528-dcc93d8b8f32',30,'N')
;

-- 24 de jun de 2024 18:03:09 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123440,0,0,'Y',TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,'lbr_ctepartnertype','lbr_ctepartnertype','lbr_ctepartnertype','LBRA','5ae7d544-f837-4d28-a33c-1f10c6ae54e1')
;

-- 24 de jun de 2024 18:03:09 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134137,0.0,'lbr_ctepartnertype',1120771,'lbr_ctepartnertype',1,'N','N','Y','N','N','N',10,0,0,'Y',TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:08','YYYY-MM-DD HH24:MI:SS'),100,1123440,'Y','N','LBRA','N','8a172b2b-1d5b-4d30-93a2-7a65b63ede7a','N')
;

-- 24 de jun de 2024 18:03:43 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120186,'CT-e',0,0,'Y',TO_DATE('2024-06-24 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:03:42','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','3e0b426c-bfdb-4ad8-94b7-1ccc3cd14f24')
;

-- 24 de jun de 2024 18:04:02 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120527,'CT-e',1120186,10,'Y',1120770,0,0,'Y',TO_DATE('2024-06-24 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:02','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','9f94e909-72be-4aad-b383-01b5cfc1b5d5','B')
;

-- 24 de jun de 2024 18:04:08 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132023,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120527,1134017,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','663f1b45-e04c-45e7-b659-82bfb2a4b1f6','N',2)
;

-- 24 de jun de 2024 18:04:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132024,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120527,1134018,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9bf3e03-6963-4d8b-903a-17ed81df091f','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:04:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132025,'CT-e',1120527,1134016,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9caddfd-2f3a-4f16-9775-de9757289418','N',2)
;

-- 24 de jun de 2024 18:04:09 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132026,'Imported','Has this import been processed','The Imported check box indicates if this import has been processed.',1120527,1134024,'Y',1,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','840629a1-d6ff-441c-86ca-33ead47e5373','Y',20,2,2)
;

-- 24 de jun de 2024 18:04:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132027,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120527,1134025,'Y',30,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','90c3ce35-6027-46f7-b9cc-ac48c15b607c','Y',30,2)
;

-- 24 de jun de 2024 18:04:10 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132028,'lbr_chcte',1120527,1134026,'Y',44,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fe31788d-d7ed-4e9e-b010-1b11459e1468','Y',40,2)
;

-- 24 de jun de 2024 18:04:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132029,'lbr_cuf',1120527,1134027,'Y',2,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','52f4d564-c287-48a4-b3c7-9085217b9699','Y',50,2)
;

-- 24 de jun de 2024 18:04:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132030,'CFOP','Primary key table LBR_CFOP','Primary key table LBR_CFOP',1120527,1134028,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a32d7b1f-7437-4421-9ef5-46d87e72430e','Y',60,2)
;

-- 24 de jun de 2024 18:04:11 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132031,'lbr_natop',1120527,1134029,'Y',255,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2572c8bc-5b8c-44bb-9005-418dc4a51827','Y',70,5)
;

-- 24 de jun de 2024 18:04:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132032,'NF Model','Identifies the model of Nota Fiscal',1120527,1134030,'Y',2,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1823ff8f-f777-4358-b8a8-67353e5b0887','Y',80,2)
;

-- 24 de jun de 2024 18:04:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132033,'NF Serie',1120527,1134031,'Y',3,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','730c7265-7567-4a7c-985c-dcb2e8248cdf','Y',90,2)
;

-- 24 de jun de 2024 18:04:12 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132034,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120527,1134032,'Y',30,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','2646b9bb-b1fc-4070-95d2-b6c8d49edfd2','Y',100,2)
;

-- 24 de jun de 2024 18:04:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132035,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120527,1134033,'Y',29,120,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dea4ccba-240c-48fe-ae19-44ccf1ca22f4','Y',110,2)
;

-- 24 de jun de 2024 18:04:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132036,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120527,1134034,'Y',2,130,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e1c0530-e126-42a8-884c-6d487afe5295','Y',120,2)
;

-- 24 de jun de 2024 18:04:13 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132037,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120527,1134035,'Y',2,140,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f20523ad-a622-436f-8b2a-753f21de9bca','Y',130,2,2)
;

-- 24 de jun de 2024 18:04:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132038,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120527,1134036,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','68bb315c-dea0-48f7-81c6-9f40dd9f06bf','Y',140,2,2)
;

-- 24 de jun de 2024 18:04:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132039,'DANFE Format',1120527,1134037,'Y',1,160,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a5cdda2-1a91-47f7-8ca6-b6e363663912','Y',150,2)
;

-- 24 de jun de 2024 18:04:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132040,'Tipo de Emissão','Indicar o Tipo de Emissão da NF-e.','Indicar se o  Tipo de Emissão da NF-e é Normal ou uma das opções de Contingência',1120527,1134038,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d6c89e6d-f114-4409-bfed-e7fc18bd55c7','Y',160,2)
;

-- 24 de jun de 2024 18:04:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132041,'NFe Environment',1120527,1134039,'Y',1,180,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','469cc565-8036-442d-85a0-752ae9d21ae2','Y',170,2)
;

-- 24 de jun de 2024 18:04:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132042,'lbr_ctetype',1120527,1134040,'Y',1,190,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3b129072-35b3-4c19-b11d-3b6de6548cc2','Y',180,2)
;

-- 24 de jun de 2024 18:04:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132043,'Shipment Type',1120527,1134041,'Y',1,200,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d0a0f9c4-243e-4d1b-896a-451dc2db14cc','Y',190,2)
;

-- 24 de jun de 2024 18:04:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132044,'lbr_cteservicetype',1120527,1134042,'Y',1,210,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','710ca5d6-6852-4cfc-807a-e4abcd86065d','Y',200,2)
;

-- 24 de jun de 2024 18:04:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132045,'lbr_cteconsignee',1120527,1134043,'Y',100,220,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','17c97fee-606b-4bad-92d8-c58f2585eeec','Y',210,5)
;

-- 24 de jun de 2024 18:04:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132046,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120527,1134044,'Y',14,230,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','17fbb28a-be5c-4134-8edf-a91e31efb557','Y',220,2)
;

-- 24 de jun de 2024 18:04:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132047,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120527,1134045,'Y',11,240,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f0c64613-21da-498e-b3fe-2d72a73ca4d6','Y',230,2)
;

-- 24 de jun de 2024 18:04:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132048,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120527,1134046,'Y',20,250,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5a8e1901-b3f9-48f4-aa0f-aa7452882cf4','Y',240,2)
;

-- 24 de jun de 2024 18:04:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132049,'Indicador da IE','Indicador da IE do Destinatário','Indicador da IE do Destinatário',1120527,1134047,'Y',1,260,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8cfa8b6c-7632-47a3-a7fb-886796a936c8','Y',250,2)
;

-- 24 de jun de 2024 18:04:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132050,'Grand Total','Total amount of document','The Grand Total displays the total amount including Tax and Freight in document currency',1120527,1134048,'Y',18,270,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3e1522e-f0f4-4e9b-b18c-3d855c53e87d','Y',260,2)
;

-- 24 de jun de 2024 18:04:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132051,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120527,1134049,'Y',10,280,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a3ec325f-ccee-4734-91ff-b0292773bb58','Y',270,2)
;

-- 24 de jun de 2024 18:04:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132052,'To','Receiving Region','The To Region indicates the receiving region on a document',1120527,1134050,'Y',10,290,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','aca157f8-6058-4bb0-ae56-be53648e2cd5','Y',280,2)
;

-- 24 de jun de 2024 18:04:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132053,'Product Name','Name of the Product',1120527,1134051,'Y',255,300,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1784efb6-fa53-4e59-b4ec-e0a09345ceab','Y',290,5)
;

-- 24 de jun de 2024 18:04:20 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132054,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120527,1134023,'Y',1,310,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:20','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','65524a73-640d-4b9a-958e-671e644ac6d4','Y',300,2,2)
;

-- 24 de jun de 2024 18:04:47 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120528,'CT-e Partner',1120186,20,'Y',1120771,0,0,'Y',TO_DATE('2024-06-24 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:46','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','351728b4-722d-400d-8a07-42da2f05fad9','B')
;

-- 24 de jun de 2024 18:04:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132055,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120528,1134118,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:52','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a96614fb-2b8f-45f9-ac58-450bc690b8e0','N',2)
;

-- 24 de jun de 2024 18:04:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132056,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120528,1134119,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','02a23ccb-e184-43a9-a7e4-94625785d510','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:04:53 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132057,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120528,1134126,'Y',60,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f4502c8c-d5c5-436e-a33b-79166235407e','Y',20,5)
;

-- 24 de jun de 2024 18:04:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132058,'CT-e Partner',1120528,1134117,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:53','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','00497480-7dff-49f7-8ad7-8e3a7216ebfa','N',2)
;

-- 24 de jun de 2024 18:04:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132059,'CT-e',1120528,1134125,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','188eda12-7b2e-455b-a99f-7c4bd1f102e5','Y',30,2)
;

-- 24 de jun de 2024 18:04:54 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132060,'Name 2','Additional Name',1120528,1134127,'Y',60,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','471701bb-ee8a-4f3f-bcb7-22a02d40c303','Y',40,5)
;

-- 24 de jun de 2024 18:04:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132061,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120528,1134128,'Y',14,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ea1223b5-990e-4991-9ca5-d01b5412f889','Y',50,2)
;

-- 24 de jun de 2024 18:04:55 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132062,'IE','Used to Identify the IE (State Tax ID)','Used to Identify the IE (State Tax ID)',1120528,1134129,'Y',20,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','3043530d-ce64-4cbc-959e-5c8e2f1ff8fb','Y',60,2)
;

-- 24 de jun de 2024 18:04:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132063,'Address 1','Address line 1 for this location','The Address 1 identifies the address for an entity''s location',1120528,1134130,'Y',255,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:55','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1dbf039-3db9-4bab-b3e2-c3615d6054ec','Y',70,5)
;

-- 24 de jun de 2024 18:04:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132064,'Address 2','Address line 2 for this location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120528,1134131,'Y',255,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c3ef5bcc-926b-401e-b788-7fd3408c6eab','Y',80,5)
;

-- 24 de jun de 2024 18:04:56 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132065,'Address 3','Address Line 3 for the location','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120528,1134132,'Y',255,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a47b637f-c12b-42cb-b80e-67815f0feb01','Y',90,5)
;

-- 24 de jun de 2024 18:04:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132066,'Address 4','Address Line 4 for the location','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.',1120528,1134133,'Y',255,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a61568bc-9d6c-4e8b-82ae-8f241b5a3576','Y',100,5)
;

-- 24 de jun de 2024 18:04:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132067,'City','Identifies a City','The City identifies a unique City for this Country or Region.',1120528,1134134,'Y',100,120,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5d626698-6e81-4263-902a-ad7c33198e5b','Y',110,5)
;

-- 24 de jun de 2024 18:04:57 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132068,'ZIP','Postal code','The Postal Code or ZIP identifies the postal code for this entity''s address.',1120528,1134135,'Y',10,130,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','eff9d590-aa81-4336-9a2f-e913adb18b15','Y',120,2)
;

-- 24 de jun de 2024 18:04:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132069,'Country','Country Name',1120528,1134136,'Y',60,140,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:57','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','86fc539c-80f4-4e06-b740-16b6a0195291','Y',130,5)
;

-- 24 de jun de 2024 18:04:58 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132070,'lbr_ctepartnertype',1120528,1134137,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6e85f568-7c28-4914-a7d1-50c5804387bc','Y',140,2)
;

-- 24 de jun de 2024 18:04:59 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132071,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120528,1134124,'Y',1,160,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:04:58','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','19b0a0ac-7c6c-4590-9371-1203da30c34d','Y',150,2,2)
;

-- 24 de jun de 2024 18:05:44 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120529,'CT-e Document',1120186,30,'Y',1120774,0,0,'Y',TO_DATE('2024-06-24 18:05:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:44','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','22b14e41-71e6-4e4b-ac6f-f3f95a5971a3','B')
;

-- 24 de jun de 2024 18:05:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132072,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120529,1134053,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','41a2922a-04d2-4c9e-b01b-ef539efc9cf6','N',2)
;

-- 24 de jun de 2024 18:05:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132073,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120529,1134054,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','240377a5-4d12-4644-ae0e-66058c8aa568','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:05:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132074,'CT-e Document',1120529,1134052,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','25d0b21c-9af0-4608-8f26-96b25ff9f08f','N',2)
;

-- 24 de jun de 2024 18:05:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132075,'Nota Fiscal','Primary key table LBR_NotaFiscal','Primary key table LBR_NotaFiscal',1120529,1134060,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','46ca3693-9114-4eb7-9bac-7a458133cb71','Y',20,2)
;

-- 24 de jun de 2024 18:05:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132076,'CT-e',1120529,1134061,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','de585bc4-8d59-4196-bbea-86ef7960fbdf','Y',30,2)
;

-- 24 de jun de 2024 18:05:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132077,'NFe ID','Identification of NFe',1120529,1134062,'Y',44,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','08d33194-e7de-4430-8779-8acb27afb888','Y',40,2)
;

-- 24 de jun de 2024 18:05:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132078,'lbr_suframapin',1120529,1134063,'Y',9,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','654e55e4-ed0d-4d3f-bbbf-db22e4262dcf','Y',50,2)
;

-- 24 de jun de 2024 18:05:51 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132079,'Date Promised','Date Order was promised','The Date Promised indicates the date, if any, that an Order was promised for.',1120529,1134064,'Y',29,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','d58bca42-ee9f-4886-910c-fc58745068fd','Y',60,2)
;

-- 24 de jun de 2024 18:05:52 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132080,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120529,1134059,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:05:51','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','429e5141-653b-4f2d-8a70-16bceec90400','Y',70,2,2)
;

-- 24 de jun de 2024 18:06:09 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120530,'CT-e ICMS',1120186,40,'Y',1120772,0,0,'Y',TO_DATE('2024-06-24 18:06:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:09','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','276721fa-85ad-43b3-b5c2-6281da31671f','B')
;

-- 24 de jun de 2024 18:06:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132081,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120530,1134088,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a383c9b2-71f6-4f6c-a19d-fbcfb3f51727','N',2)
;

-- 24 de jun de 2024 18:06:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132082,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120530,1134089,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','de6fb2c5-510e-45b1-879e-05ef91e4bf33','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:06:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132083,'CT-e ICMS',1120530,1134087,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ac250658-af15-45d2-b57f-0de12fd53106','N',2)
;

-- 24 de jun de 2024 18:06:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132084,'CT-e',1120530,1134095,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0a84b367-304c-4704-ad36-dc9fc6f033dc','Y',20,2)
;

-- 24 de jun de 2024 18:06:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132085,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120530,1134096,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f5082b16-3f2c-43dd-af60-9b68e466a386','Y',30,2)
;

-- 24 de jun de 2024 18:06:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132086,'Tax Status',1120530,1134097,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7da09504-45b5-483e-8bcb-64c7150b98a3','Y',40,2)
;

-- 24 de jun de 2024 18:06:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132087,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120530,1134098,'Y',18,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e1eaee66-dafd-45cd-80a5-4d993a6e1013','Y',50,2)
;

-- 24 de jun de 2024 18:06:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132088,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120530,1134099,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','38255a3d-7648-4b79-b12d-8601a8de56a9','Y',60,2)
;

-- 24 de jun de 2024 18:06:18 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132089,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120530,1134100,'Y',18,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dc2598c7-88d7-433c-91f9-c7ebb97fac8c','Y',70,2)
;

-- 24 de jun de 2024 18:06:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132090,'lbr_taxcreditamt',1120530,1134101,'Y',18,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:18','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1b2eda52-6715-47d9-80be-db7e014d5160','Y',80,2)
;

-- 24 de jun de 2024 18:06:19 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132091,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120530,1134094,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','96f51f3b-2866-4efc-ad9d-fc36763c21b6','Y',90,2,2)
;

-- 24 de jun de 2024 18:06:32 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120531,'CT-e ICMS Fim',1120186,50,'Y',1120773,0,0,'Y',TO_DATE('2024-06-24 18:06:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:32','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','LBRA','Y','N','c2e11b0b-8e62-468a-be58-005009f02f52','B')
;

-- 24 de jun de 2024 18:06:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132092,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120531,1134103,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cdba41a2-e76c-439b-a237-8a6a999dfb78','N',2)
;

-- 24 de jun de 2024 18:06:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132093,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120531,1134104,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ded987d4-7870-418d-9262-10fda24ad0ff','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:06:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132094,'CT-e ICMS Fim',1120531,1134102,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','407eccc1-cf82-469a-a1d7-7b5982b4835f','N',2)
;

-- 24 de jun de 2024 18:06:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132095,'CT-e',1120531,1134110,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c731b456-148f-4da9-b945-0914b333236f','Y',20,2)
;

-- 24 de jun de 2024 18:06:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132096,'Tax Name','Primary key table LBR_TaxName','Primary key table LBR_TaxName',1120531,1134111,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a29dde40-0ecc-405b-8795-3f3be54f6bc3','Y',30,2)
;

-- 24 de jun de 2024 18:06:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132097,'Tax Status',1120531,1134112,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0176a314-3016-4d5a-b71f-e114e9a65354','Y',40,2)
;

-- 24 de jun de 2024 18:06:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132098,'Tax Base Amount','Defines the Tax Base Amount','Defines the Tax Base Amount',1120531,1134113,'Y',18,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a0b968be-ff73-4a49-a492-e4364076c24e','Y',50,2)
;

-- 24 de jun de 2024 18:06:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132099,'Tax Base Reduction','Indicates the Tax Base Reduction','Indicates the Tax Base Reduction',1120531,1134114,'Y',10,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55ca8e00-0fc8-4cd7-bc6f-e092173f3102','Y',60,2)
;

-- 24 de jun de 2024 18:06:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132100,'Tax Amount','Defines the Tax Amount','Defines the Tax Amount',1120531,1134115,'Y',18,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','37e38d9a-09e0-4a2f-a398-28f6b972fdd8','Y',70,2)
;

-- 24 de jun de 2024 18:06:40 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132101,'lbr_taxcreditamt',1120531,1134116,'Y',18,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','effdeb9e-9bf6-40b8-8957-b9e553836bc5','Y',80,2)
;

-- 24 de jun de 2024 18:06:41 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132102,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120531,1134109,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:06:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','65bf9a16-7902-47b4-8dd7-1598fa3f8ac5','Y',90,2,2)
;

-- 24 de jun de 2024 18:07:09 BRT
INSERT INTO AD_Window (AD_Window_ID,Name,Description,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,WindowType,Processing,EntityType,IsSOTrx,IsDefault,WinHeight,WinWidth,IsBetaFunctionality,AD_Window_UU) VALUES (1120187,'LBR_CTeEvent','CT-e Event',0,0,'Y',TO_DATE('2024-06-24 18:07:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:07:09','YYYY-MM-DD HH24:MI:SS'),100,'T','N','LBRA','Y','N',0,0,'N','cb83cb6f-9deb-4e87-a0f4-93e7b59e0410')
;

-- 24 de jun de 2024 18:07:22 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120532,'Event',1120187,10,'Y',1120775,0,0,'Y',TO_DATE('2024-06-24 18:07:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:07:22','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',0,'N','U','Y','N','9daeb157-7b8d-4882-b5da-6ae68eff59d6','B')
;

-- 24 de jun de 2024 18:07:34 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-24 18:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134061
;

-- 24 de jun de 2024 18:07:50 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-24 18:07:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134095
;

-- 24 de jun de 2024 18:08:00 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-24 18:08:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134110
;

-- 24 de jun de 2024 18:08:15 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-06-24 18:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134125
;

-- 24 de jun de 2024 18:08:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132103,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120532,1134066,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','80118501-3579-4e9c-9e82-c3e882076662','N',2)
;

-- 24 de jun de 2024 18:08:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132104,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120532,1134067,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','4bbee766-4500-4186-bae2-4d5a782ed4ec','Y','Y',10,4,2)
;

-- 24 de jun de 2024 18:08:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132105,'Description','Optional short description of the record','A description is limited to 255 characters.',1120532,1134086,'Y',255,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','7ae79efc-39fa-4baf-9ab7-e928e7f2c8ac','Y',20,5)
;

-- 24 de jun de 2024 18:08:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132106,'CT-e Event',1120532,1134065,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','86cd0122-e66a-4a3b-9083-fb768d24e760','N',2)
;

-- 24 de jun de 2024 18:08:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132107,'Imported','Has this import been processed','The Imported check box indicates if this import has been processed.',1120532,1134073,'Y',1,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','18d31ee7-6c8d-4a99-ba1d-8fce154b688a','Y',30,2,2)
;

-- 24 de jun de 2024 18:08:33 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132108,'CT-e',1120532,1134074,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1024bca4-8848-46e0-aa71-96d87a1ff815','Y',40,2)
;

-- 24 de jun de 2024 18:08:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132109,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120532,1134075,'Y',30,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:33','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8d99a8bb-70fc-411c-8530-b6dbcd41ced9','Y',50,2)
;

-- 24 de jun de 2024 18:08:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132110,'lbr_chcte',1120532,1134076,'Y',44,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','55216fd9-0a4e-4216-b8f5-f9f9f0c4e8a4','Y',60,2)
;

-- 24 de jun de 2024 18:08:34 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132111,'Transaction Date','Transaction Date','The Transaction Date indicates the date of the transaction.',1120532,1134077,'Y',13,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','1c3874f2-8785-4a5f-90fa-3887bb48d3d7','Y',70,2)
;

-- 24 de jun de 2024 18:08:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132112,'Sequence','Method of ordering records; lowest number comes first','The Sequence indicates the order of records',1120532,1134078,'Y',10,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:34','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a8fd8662-e74b-4970-ab0b-bce1b1cd814e','Y',80,2)
;

-- 24 de jun de 2024 18:08:35 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132113,'NFe Environment',1120532,1134079,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f14ba5e9-f97f-493f-af77-a8480d0a2984','Y',90,2)
;

-- 24 de jun de 2024 18:08:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132114,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120532,1134080,'Y',14,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:35','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','156dc432-4520-453a-b43f-c8c9a7372117','Y',100,2)
;

-- 24 de jun de 2024 18:08:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132115,'Event Type',1120532,1134081,'Y',1,120,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','44c32d98-ba0c-4f99-ada8-90004fd638bf','Y',110,2)
;

-- 24 de jun de 2024 18:08:36 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132116,'Document Status','The current status of the document','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',1120532,1134082,'Y',2,130,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','23c44a10-242b-4983-8d85-8b6866cc9a6b','Y',120,2)
;

-- 24 de jun de 2024 18:08:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132117,'Document Action','The targeted status of the document','You find the current status in the Document Status field. The options are listed in a popup',1120532,1134083,'Y',2,140,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:36','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','efeafc21-b774-48d6-9c21-6ce11c0f7276','Y',130,2,2)
;

-- 24 de jun de 2024 18:08:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132118,'Processed','The document has been processed','The Processed checkbox indicates that a document has been processed.',1120532,1134084,'Y',1,150,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','88a7f994-c280-48b2-90c0-8939c44833c7','Y',140,2,2)
;

-- 24 de jun de 2024 18:08:37 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132119,'Document Date','Date of the Document','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.',1120532,1134085,'Y',29,160,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bbf1a3a5-0ff0-4e2a-baa4-567990c13053','Y',150,2)
;

-- 24 de jun de 2024 18:08:38 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132120,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120532,1134072,'Y',1,170,'N','N','N','N',0,0,'Y',TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:08:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c2a78cae-da6b-4ece-9ffd-fa696f3c7052','Y',160,2,2)
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132116
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132118
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132114
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132112
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132113
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132108
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132119
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132115
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, NumLines=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132105
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132109
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132107
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132117
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132111
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132120
;

-- 24 de jun de 2024 18:10:49 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-06-24 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132106
;

-- 24 de jun de 2024 18:10:57 BRT
UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_DATE('2024-06-24 18:10:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120532
;

-- 24 de jun de 2024 18:13:06 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120432,'CT-e','W',1120186,0,0,'Y',TO_DATE('2024-06-24 18:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:13:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','0edb63bf-b003-4185-856e-2d192a8a9125')
;

-- 24 de jun de 2024 18:13:06 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120432, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120432)
;

-- 24 de jun de 2024 18:13:41 BRT
UPDATE AD_Window SET Name='CT-e Event',Updated=TO_DATE('2024-06-24 18:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120187
;

-- 24 de jun de 2024 18:13:51 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Window_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120433,'CT-e Event','W',1120187,0,0,'Y',TO_DATE('2024-06-24 18:13:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-06-24 18:13:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','LBRA','Y','893d5fe2-b0c9-4c1c-9814-cb21cb150aaa')
;

-- 24 de jun de 2024 18:13:51 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120433, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120433)
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 24 de jun de 2024 18:14:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 24 de jun de 2024 18:14:27 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_Element SET ColumnName='LBR_ChCTe', Name='CT-e Key', PrintName='CT-e Key',Updated=TO_DATE('2024-06-24 21:30:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123427
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_Column SET ColumnName='LBR_ChCTe', Name='CT-e Key', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123427
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ChCTe', Name='CT-e Key', Description=NULL, Help=NULL, AD_Element_ID=1123427 WHERE UPPER(ColumnName)='LBR_CHCTE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ChCTe', Name='CT-e Key', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123427 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_ChCTe', Name='CT-e Key', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123427 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_Field SET Name='CT-e Key', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123427) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:30:52 BRT
UPDATE AD_PrintFormatItem SET PrintName='CT-e Key', Name='CT-e Key' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123427)
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_Element SET ColumnName='LBR_CTeConsignee', Name='CT-e Consignee', PrintName='CT-e Consignee',Updated=TO_DATE('2024-06-24 21:31:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123432
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_Column SET ColumnName='LBR_CTeConsignee', Name='CT-e Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeConsignee', Name='CT-e Consignee', Description=NULL, Help=NULL, AD_Element_ID=1123432 WHERE UPPER(ColumnName)='LBR_CTECONSIGNEE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeConsignee', Name='CT-e Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTeConsignee', Name='CT-e Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_Field SET Name='CT-e Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123432) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:12 BRT
UPDATE AD_PrintFormatItem SET PrintName='CT-e Consignee', Name='CT-e Consignee' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123432)
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_Element SET Name='Consignee', PrintName='Consignee',Updated=TO_DATE('2024-06-24 21:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123432
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_Column SET ColumnName='LBR_CTeConsignee', Name='Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeConsignee', Name='Consignee', Description=NULL, Help=NULL, AD_Element_ID=1123432 WHERE UPPER(ColumnName)='LBR_CTECONSIGNEE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeConsignee', Name='Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTeConsignee', Name='Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123432 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_Field SET Name='Consignee', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123432) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:31:30 BRT
UPDATE AD_PrintFormatItem SET PrintName='Consignee', Name='Consignee' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123432)
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_Element SET ColumnName='LBR_CTePartnerType', Name='Partner Type', PrintName='Partner Type',Updated=TO_DATE('2024-06-24 21:32:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123440
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_Column SET ColumnName='LBR_CTePartnerType', Name='Partner Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123440
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTePartnerType', Name='Partner Type', Description=NULL, Help=NULL, AD_Element_ID=1123440 WHERE UPPER(ColumnName)='LBR_CTEPARTNERTYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTePartnerType', Name='Partner Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123440 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTePartnerType', Name='Partner Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123440 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_Field SET Name='Partner Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123440) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:04 BRT
UPDATE AD_PrintFormatItem SET PrintName='Partner Type', Name='Partner Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123440)
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_Element SET ColumnName='LBR_CTeServiceType', Name='Service Type', PrintName='Service Type',Updated=TO_DATE('2024-06-24 21:32:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123431
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_Column SET ColumnName='LBR_CTeServiceType', Name='Service Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123431
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeServiceType', Name='Service Type', Description=NULL, Help=NULL, AD_Element_ID=1123431 WHERE UPPER(ColumnName)='LBR_CTESERVICETYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeServiceType', Name='Service Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123431 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTeServiceType', Name='Service Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123431 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_Field SET Name='Service Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123431) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:32:34 BRT
UPDATE AD_PrintFormatItem SET PrintName='Service Type', Name='Service Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123431)
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_Element SET ColumnName='LBR_SUFRAMAPin', Name='SUFRAMA Pin', PrintName='SUFRAMA Pin',Updated=TO_DATE('2024-06-24 21:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123434
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_Column SET ColumnName='LBR_SUFRAMAPin', Name='SUFRAMA Pin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123434
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_SUFRAMAPin', Name='SUFRAMA Pin', Description=NULL, Help=NULL, AD_Element_ID=1123434 WHERE UPPER(ColumnName)='LBR_SUFRAMAPIN' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_SUFRAMAPin', Name='SUFRAMA Pin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123434 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_SUFRAMAPin', Name='SUFRAMA Pin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123434 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_Field SET Name='SUFRAMA Pin', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123434) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:11 BRT
UPDATE AD_PrintFormatItem SET PrintName='SUFRAMA Pin', Name='SUFRAMA Pin' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123434)
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_Element SET ColumnName='LBR_CTeType', Name='CT-e Type', PrintName='CT-e Type',Updated=TO_DATE('2024-06-24 21:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123430
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_Column SET ColumnName='LBR_CTeType', Name='CT-e Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123430
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeType', Name='CT-e Type', Description=NULL, Help=NULL, AD_Element_ID=1123430 WHERE UPPER(ColumnName)='LBR_CTETYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CTeType', Name='CT-e Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123430 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CTeType', Name='CT-e Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123430 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_Field SET Name='CT-e Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123430) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:31 BRT
UPDATE AD_PrintFormatItem SET PrintName='CT-e Type', Name='CT-e Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123430)
;

-- 24 de jun de 2024 21:33:58 BRT
UPDATE AD_Element SET ColumnName='LBR_TaxCreditAmt', Name='Tax Credit Amt', PrintName='Tax Credit Amt',Updated=TO_DATE('2024-06-24 21:33:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123437
;

-- 24 de jun de 2024 21:33:58 BRT
UPDATE AD_Column SET ColumnName='LBR_TaxCreditAmt', Name='Tax Credit Amt', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123437
;

-- 24 de jun de 2024 21:33:58 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxCreditAmt', Name='Tax Credit Amt', Description=NULL, Help=NULL, AD_Element_ID=1123437 WHERE UPPER(ColumnName)='LBR_TAXCREDITAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:33:58 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxCreditAmt', Name='Tax Credit Amt', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123437 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:59 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_TaxCreditAmt', Name='Tax Credit Amt', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123437 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:59 BRT
UPDATE AD_Field SET Name='Tax Credit Amt', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123437) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:33:59 BRT
UPDATE AD_PrintFormatItem SET PrintName='Tax Credit Amt', Name='Tax Credit Amt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123437)
;

-- 24 de jun de 2024 21:34:36 BRT
UPDATE AD_Element SET ColumnName='LBR_NatOp', Name='Operation Type', PrintName='Operation Type',Updated=TO_DATE('2024-06-24 21:34:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123429
;

-- 24 de jun de 2024 21:34:36 BRT
UPDATE AD_Column SET ColumnName='LBR_NatOp', Name='Operation Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123429
;

-- 24 de jun de 2024 21:34:36 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NatOp', Name='Operation Type', Description=NULL, Help=NULL, AD_Element_ID=1123429 WHERE UPPER(ColumnName)='LBR_NATOP' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:34:37 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_NatOp', Name='Operation Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123429 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:34:37 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_NatOp', Name='Operation Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123429 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:34:37 BRT
UPDATE AD_Field SET Name='Operation Type', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123429) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:34:37 BRT
UPDATE AD_PrintFormatItem SET PrintName='Operation Type', Name='Operation Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123429)
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_Element SET ColumnName='LBR_CUF', Name='UF Code', PrintName='UF Code',Updated=TO_DATE('2024-06-24 21:35:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1123428
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_Column SET ColumnName='LBR_CUF', Name='UF Code', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123428
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CUF', Name='UF Code', Description=NULL, Help=NULL, AD_Element_ID=1123428 WHERE UPPER(ColumnName)='LBR_CUF' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_Process_Para SET ColumnName='LBR_CUF', Name='UF Code', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123428 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_InfoColumn SET ColumnName='LBR_CUF', Name='UF Code', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Element_ID=1123428 AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_Field SET Name='UF Code', Description=NULL, Help=NULL, Placeholder=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1123428) AND IsCentrallyMaintained='Y'
;

-- 24 de jun de 2024 21:35:22 BRT
UPDATE AD_PrintFormatItem SET PrintName='UF Code', Name='UF Code' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1123428)
;

-- 15 de jul de 2024 15:04:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134138,0,'NFe Protocol',1120770,'lbr_NFeProt',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-07-15 15:04:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:04:28','YYYY-MM-DD HH24:MI:SS'),100,1100027,'Y','N','LBRA','N','N','N','Y','109a0c27-c7c7-4f8a-8bb0-04abcedde243','Y',0,'N','N','N')
;

-- 15 de jul de 2024 15:25:26 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123441,0,0,'Y',TO_DATE('2024-07-15 15:25:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:25:25','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTe_UU','LBR_CTe_UU','LBR_CTe_UU','LBRA','44f70672-348e-44e7-94b9-9804d01572a0')
;

-- 15 de jul de 2024 15:25:27 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134139,0.0,'LBR_CTe_UU',1120770,'LBR_CTe_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:25:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:25:25','YYYY-MM-DD HH24:MI:SS'),100,1123441,'N','N','LBRA','N','97a6e377-4fd6-4958-af4d-27972d1773b5','N')
;

-- 15 de jul de 2024 15:25:49 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123442,0,0,'Y',TO_DATE('2024-07-15 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTePartner_UU','LBR_CTePartner_UU','LBR_CTePartner_UU','LBRA','8b6e5c07-2a33-4a30-9d9a-769cbafb6106')
;

-- 15 de jul de 2024 15:25:50 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134140,0.0,'LBR_CTePartner_UU',1120771,'LBR_CTePartner_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:25:49','YYYY-MM-DD HH24:MI:SS'),100,1123442,'N','N','LBRA','N','07253229-be70-4d18-8991-1bec26b416bf','N')
;

-- 15 de jul de 2024 15:26:04 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123443,0,0,'Y',TO_DATE('2024-07-15 15:26:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:04','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeICMS_UU','LBR_CTeICMS_UU','LBR_CTeICMS_UU','LBRA','e215ea41-8726-4247-8e95-142c6699a8df')
;

-- 15 de jul de 2024 15:26:04 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134141,0.0,'LBR_CTeICMS_UU',1120772,'LBR_CTeICMS_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:26:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:04','YYYY-MM-DD HH24:MI:SS'),100,1123443,'N','N','LBRA','N','97b34194-235b-4ac8-8c02-92e48b5dbad1','N')
;

-- 15 de jul de 2024 15:26:12 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123444,0,0,'Y',TO_DATE('2024-07-15 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeICMSFim_UU','LBR_CTeICMSFim_UU','LBR_CTeICMSFim_UU','LBRA','dca3e10d-e910-4aa4-80e2-55e622dafab7')
;

-- 15 de jul de 2024 15:26:13 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134142,0.0,'LBR_CTeICMSFim_UU',1120773,'LBR_CTeICMSFim_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,1123444,'N','N','LBRA','N','eb7fcaf4-dc10-4ec1-a73a-ac7a8eee57d8','N')
;

-- 15 de jul de 2024 15:26:33 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123445,0,0,'Y',TO_DATE('2024-07-15 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeDocNFe_UU','LBR_CTeDocNFe_UU','LBR_CTeDocNFe_UU','LBRA','a5d00202-50ac-44cd-b912-a569f4c63b73')
;

-- 15 de jul de 2024 15:26:33 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134143,0.0,'LBR_CTeDocNFe_UU',1120774,'LBR_CTeDocNFe_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,1123445,'N','N','LBRA','N','7f0f8f55-d772-4b72-b30c-b88ed3db89b8','N')
;

-- 15 de jul de 2024 15:26:41 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123446,0,0,'Y',TO_DATE('2024-07-15 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeEvent_UU','LBR_CTeEvent_UU','LBR_CTeEvent_UU','LBRA','529bcb87-a07c-404e-885f-b8d66c000e0e')
;

-- 15 de jul de 2024 15:26:41 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134144,0.0,'LBR_CTeEvent_UU',1120775,'LBR_CTeEvent_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,1123446,'N','N','LBRA','N','6c7ada88-0101-4db8-b691-2d037a283cde','N')
;

-- 15 de jul de 2024 15:32:15 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134145,0,'NFe Protocol',1120775,'lbr_NFeProt',15,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-07-15 15:32:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:32:13','YYYY-MM-DD HH24:MI:SS'),100,1100027,'Y','N','LBRA','N','N','N','Y','de90a5ad-d50e-4522-bb98-0f5a187c3194','Y',0,'N','N','N')
;

-- 15 de jul de 2024 15:32:17 BRT
ALTER TABLE LBR_CTeEvent ADD lbr_NFeProt VARCHAR2(15) DEFAULT NULL 
;

-- 15 de jul de 2024 15:32:29 BRT
UPDATE AD_Table SET AD_Window_ID=1120187,Updated=TO_DATE('2024-07-15 15:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120775
;

-- 15 de jul de 2024 15:32:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132121,'LBR_CTeEvent_UU',1120532,1134144,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:32:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:32:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','fdd5144a-6d7b-4c83-90c8-08b0bd3c17d6','N',2)
;

-- 15 de jul de 2024 15:32:39 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132122,'NFe Protocol',1120532,1134145,'Y',15,170,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:32:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:32:39','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','33755d3f-22f1-4125-98f0-85d6f864fd56','Y',170,2)
;

-- 15 de jul de 2024 15:32:56 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:32:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132122
;

-- 15 de jul de 2024 15:32:56 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:32:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132121
;

-- 15 de jul de 2024 15:33:23 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132123,'NFe Protocol',1120527,1134138,'Y',15,320,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:33:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:33:23','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ac90d191-bf1d-46d0-a4ea-d7fdb79ff6ef','Y',310,2)
;

-- 15 de jul de 2024 15:33:24 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132124,'LBR_CTe_UU',1120527,1134139,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:33:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:33:24','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','6a44c09f-d0b4-43b5-94a5-3d5b3be64f74','N',2)
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132024
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132038
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132026
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132027
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132028
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132029
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132036
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132032
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132044
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132030
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132042
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132043
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132051
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=150, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132034
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132033
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132035
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132037
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132052
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132039
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132040
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132041
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132045
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132046
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132047
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132049
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132048
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132050
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132053
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=10, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132123
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132054
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132025
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132023
;

-- 15 de jul de 2024 15:35:54 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132124
;

-- 15 de jul de 2024 15:36:05 BRT
UPDATE AD_Tab SET IsInsertRecord='N',Updated=TO_DATE('2024-07-15 15:36:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120527
;

-- 15 de jul de 2024 15:36:35 BRT
UPDATE AD_Tab SET IsReadOnly='Y',Updated=TO_DATE('2024-07-15 15:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120527
;

-- 15 de jul de 2024 15:46:08 BRT
UPDATE AD_Table SET AD_Window_ID=1120185,Updated=TO_DATE('2024-07-15 15:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120768
;

-- 15 de jul de 2024 15:46:25 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134146,0,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120768,'LBR_NSU',30,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-07-15 15:46:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:46:23','YYYY-MM-DD HH24:MI:SS'),100,1122885,'Y','N','LBRA','N','N','N','Y','3dc9b86c-6c4e-4472-ae01-d4b063f6868c','Y',0,'N','N','N','N')
;

-- 15 de jul de 2024 15:46:28 BRT
ALTER TABLE LBR_CTeConfig ADD LBR_NSU VARCHAR2(30) DEFAULT NULL 
;

-- 15 de jul de 2024 15:47:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134147,0,'DF-e Auto Retrieve',1120768,'LBR_DFeAutoRetrieve','N',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2024-07-15 15:47:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:47:07','YYYY-MM-DD HH24:MI:SS'),100,1123401,'Y','N','LBRA','N','N','N','Y','0a34b6e8-285d-4e9f-8a35-b4e2f30eb030','Y',0,'N','N','N','N')
;

-- 15 de jul de 2024 15:47:10 BRT
ALTER TABLE LBR_CTeConfig ADD LBR_DFeAutoRetrieve CHAR(1) DEFAULT 'N' CHECK (LBR_DFeAutoRetrieve IN ('Y','N')) NOT NULL
;

-- 15 de jul de 2024 15:47:54 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134148,0,'Frequency','Frequency of events','The frequency is used in conjunction with the frequency type in determining an event. Example: If the Frequency Type is Week and the Frequency is 2 - it is every two weeks.',1120768,'Frequency','2',22,'N','N','Y','N','N',0,'N',11,0,0,'Y',TO_DATE('2024-07-15 15:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:47:53','YYYY-MM-DD HH24:MI:SS'),100,1506,'Y','N','LBRA','N','N','N','Y','9338053d-61fe-42fd-b6f7-e990ff07b66f','Y',0,'N','N','N')
;

-- 15 de jul de 2024 15:47:56 BRT
ALTER TABLE LBR_CTeConfig ADD Frequency NUMBER(10) DEFAULT 2 NOT NULL
;

-- 15 de jul de 2024 15:48:11 BRT
UPDATE AD_Column SET ValueMin='2', ValueMax='24',Updated=TO_DATE('2024-07-15 15:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134148
;

-- 15 de jul de 2024 15:48:49 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132125,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120525,1134146,'Y',30,70,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:48:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','08a77672-a4c3-4beb-abf9-b12f4bf50e23','Y',60,2)
;

-- 15 de jul de 2024 15:48:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132126,'DF-e Auto Retrieve',1120525,1134147,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:48:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:48:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ad12f8c5-6b74-4830-b61d-33d61b1e10f7','Y',70,2,2)
;

-- 15 de jul de 2024 15:48:50 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132127,'Frequency','Frequency of events','The frequency is used in conjunction with the frequency type in determining an event. Example: If the Frequency Type is Week and the Frequency is 2 - it is every two weeks.',1120525,1134148,'Y',22,90,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 15:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 15:48:50','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b02bcc94-8f74-4518-bfbe-78fb27354459','Y',80,2)
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131998
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=8, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132000
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, ColumnSpan=8, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1131995
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET SeqNo=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132126
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132127
;

-- 15 de jul de 2024 15:49:45 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 15:49:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132125
;

-- 15 de jul de 2024 16:31:30 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120333,0,0,'Y',TO_DATE('2024-07-15 16:31:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:31:29','YYYY-MM-DD HH24:MI:SS'),100,'Get Partner CT-e DF-e','Get DFe fot CT-e','Consult NF Issued to you on government SeFaz','N','LBR_CTeGetDFe','N','org.kenos.idempiere.cte.process.GetDFe','3','U',0,0,'N','N','Y','N','a1d27e97-296a-42cd-b2c3-03f304349c86')
;

-- 15 de jul de 2024 16:31:47 BRT
UPDATE AD_Process SET Description='Get DFe', Help='Consult NF Issued to you on government SeFaz', ProcedureName=NULL, IsReport='N', IsDirectPrint='N', AD_ReportView_ID=NULL, Classname='org.adempierelbr.process.GetDFe', AccessLevel='3', AD_PrintFormat_ID=NULL, AD_Workflow_ID=NULL, IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_Form_ID=NULL,Updated=TO_DATE('2024-07-15 16:31:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120333
;

-- 15 de jul de 2024 16:31:47 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120649,0,0,'Y',TO_DATE('2024-07-15 16:31:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:31:47','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120333,10,19,'N',202,0,'Y','AD_Org_ID','Y','U',113,'456f981d-ebf7-4d6e-ae04-7157903007ae')
;

-- 15 de jul de 2024 16:31:48 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120650,0,0,'Y',TO_DATE('2024-07-15 16:31:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:31:47','YYYY-MM-DD HH24:MI:SS'),100,'NSU','Unic Sequencial Number used on Manifest of Fiscal Documento','Unic Sequencial Number used on Manifest of Fiscal Documento',1120333,30,10,'N',60,'N','LBR_NSU','Y','U',1122885,'5311ac0e-4747-4f3b-a19e-2806420f18ee')
;

-- 15 de jul de 2024 16:31:48 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120651,0,0,'Y',TO_DATE('2024-07-15 16:31:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:31:48','YYYY-MM-DD HH24:MI:SS'),100,'Force Execution',1120333,40,20,'N',0,'N','N','LBR_ForceExec','Y','U',1123218,'867a5cb2-7ded-4989-a7af-449b2ca06d03')
;

-- 15 de jul de 2024 16:31:49 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120652,0,0,'Y',TO_DATE('2024-07-15 16:31:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:31:48','YYYY-MM-DD HH24:MI:SS'),100,'NFe Environment',1120333,50,17,1100001,'N',0,'Y','1','lbr_NFeEnv','Y','U',1100011,'903cca44-83d9-4e79-a572-3d893aedc2ab')
;

-- 15 de jul de 2024 16:31:55 BRT
UPDATE AD_Process SET Classname='org.kenos.idempiere.cte.process.GetDFe',Updated=TO_DATE('2024-07-15 16:31:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120333
;

-- 15 de jul de 2024 16:32:03 BRT
UPDATE AD_Process SET Help='Consult CT-e Issued to you on government SeFaz',Updated=TO_DATE('2024-07-15 16:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120333
;

-- 15 de jul de 2024 16:33:10 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120435,'Get Partner CT-e DF-e','P',0,0,'Y',TO_DATE('2024-07-15 16:33:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:33:10','YYYY-MM-DD HH24:MI:SS'),100,'N',1120333,'Y','N','LBRA','Y','969705a3-9f71-486b-a671-2fe13d703045')
;

-- 15 de jul de 2024 16:33:10 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120435, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120435)
;

-- 15 de jul de 2024 16:33:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de jul de 2024 16:33:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de jul de 2024 16:33:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de jul de 2024 16:33:24 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 15 de jul de 2024 16:33:25 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120435
;

-- 15 de jul de 2024 16:52:55 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120000,'93b21286-e3b6-4deb-86ad-2da7e2434b78',0,0,'Y',TO_DATE('2024-07-15 16:52:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:52:54','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Mato Grosso - (MT)')
;

-- 15 de jul de 2024 16:55:56 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120000,'fcf34ba5-644a-4b0f-99a4-dfb4b81c2910',0,0,'Y',TO_DATE('2024-07-15 16:55:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:55:55','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeConsultaV4?wsdl','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:19 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120001,'056f3e5a-729f-4d3b-8bef-1d6380eba7a6',0,0,'Y',TO_DATE('2024-07-15 16:57:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:18','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeDistribuicaoDFe?wsdl','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:19 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120002,'763cea94-8bbd-4caf-b123-3cb1967fea2c',0,0,'Y',TO_DATE('2024-07-15 16:57:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:19','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeRecepcaoEventoV4?wsdl','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:20 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120003,'c727fece-28b2-48d3-b601-be473552d6ea',0,0,'Y',TO_DATE('2024-07-15 16:57:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:20','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeRecepcaoGTVeV4?wsdl','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:21 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120004,'a8658919-3444-46fd-8615-f7e9dfe2ccef',0,0,'Y',TO_DATE('2024-07-15 16:57:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:20','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews/services/CTeRecepcaoOSV4?wsdl','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:21 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120005,'a22fb298-f52d-44c5-a907-97a0fce3f57b',0,0,'Y',TO_DATE('2024-07-15 16:57:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:21','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeRecepcaoSincV4?wsdl','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:22 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120006,'25f49a0b-231b-4f1f-9bf0-5fc3eed17d65',0,0,'Y',TO_DATE('2024-07-15 16:57:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:21','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://cte.sefaz.mt.gov.br/ctews2/services/CTeStatusServicoV4?wsdl','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:22 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120007,'6112c3f7-3420-4b1b-9fd7-a65f8ecb554c',0,0,'Y',TO_DATE('2024-07-15 16:57:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:22','YYYY-MM-DD HH24:MI:SS'),100,1120000,'https://www.sefaz.mt.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:23 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120001,'cee39c7e-2783-4660-a5b1-e08bafb41506',0,0,'Y',TO_DATE('2024-07-15 16:57:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:22','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Mato Grosso do Sul - (MS)')
;

-- 15 de jul de 2024 16:57:23 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120008,'59cf3b64-7492-4cef-9fa5-638e1c261a24',0,0,'Y',TO_DATE('2024-07-15 16:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:23','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeConsultaV4','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:24 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120009,'fcc92c08-04eb-454d-9326-b1f893664450',0,0,'Y',TO_DATE('2024-07-15 16:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:23','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeDistribuicaoDFe','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:24 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120010,'a680a451-412e-4eff-9b23-e714e36a9d7c',0,0,'Y',TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeRecepcaoEventoV4','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:24 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120011,'96bc7133-9170-4f75-9efd-afe2d17dc398',0,0,'Y',TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeRecepcaoGTVeV4','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:25 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120012,'f67eae07-dfd9-4b72-a077-2af784bbb679',0,0,'Y',TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:24','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeRecepcaoOSV4','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:25 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120013,'b25a7737-8e58-41a6-81b9-e6461e780215',0,0,'Y',TO_DATE('2024-07-15 16:57:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:25','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeRecepcaoSincV4','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:26 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120014,'f7e00a33-6320-46a0-ae0f-68b18421f05c',0,0,'Y',TO_DATE('2024-07-15 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,1120001,'https://producao.cte.ms.gov.br/ws/CTeStatusServicoV4','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:27 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120015,'55223191-cc7c-498a-aa0d-e4c90ab9da91',0,0,'Y',TO_DATE('2024-07-15 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,1120001,'http://www.dfe.ms.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:27 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120002,'359dc381-5717-4f6f-ab17-cf9f52529dae',0,0,'Y',TO_DATE('2024-07-15 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Minas Gerais - (MG)')
;

-- 15 de jul de 2024 16:57:28 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120016,'abfd628c-85e5-4fc7-aa6b-9b900a526b17',0,0,'Y',TO_DATE('2024-07-15 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:27','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeConsultaV4','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:28 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120017,'ec0dd58d-50aa-491a-91c1-9f731a629a7a',0,0,'Y',TO_DATE('2024-07-15 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeDistribuicaoDFe','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:28 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120018,'b8bd5517-a609-42e4-a20a-0464dfec7bac',0,0,'Y',TO_DATE('2024-07-15 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:28','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeRecepcaoEventoV4','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:29 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120019,'14ba2d1f-ee9f-460b-9653-349ba6809f91',0,0,'Y',TO_DATE('2024-07-15 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeRecepcaoGTVeV4','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:30 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120020,'9a983ca3-cb44-4e42-bd76-0e002a339974',0,0,'Y',TO_DATE('2024-07-15 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:29','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeRecepcaoOSV4','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:30 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120021,'3fd76179-4d79-4f49-92c7-2b4c4566411a',0,0,'Y',TO_DATE('2024-07-15 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeRecepcaoSincV4','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:31 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120022,'4d3fced3-e245-4622-b5d3-46742c2570bf',0,0,'Y',TO_DATE('2024-07-15 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:30','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/cte/services/CTeStatusServicoV4','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:31 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120023,'632ed59d-3a2a-47ec-9c8b-19f36eb37a37',0,0,'Y',TO_DATE('2024-07-15 16:57:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:31','YYYY-MM-DD HH24:MI:SS'),100,1120002,'https://cte.fazenda.mg.gov.br/portalcte/sistema/qrcode.xhtml','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:32 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120003,'415fbf62-be04-47f1-9b03-ab0b96217594',0,0,'Y',TO_DATE('2024-07-15 16:57:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:31','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Paraná - (PR)')
;

-- 15 de jul de 2024 16:57:32 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120024,'c5726fdb-2562-44b5-a5ef-1e922c336d22',0,0,'Y',TO_DATE('2024-07-15 16:57:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:32','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeConsultaV4?wsdl','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:33 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120025,'bfd64db4-307f-4ea7-a59e-333a0757d8f2',0,0,'Y',TO_DATE('2024-07-15 16:57:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:33','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeDistribuicaoDFe?wsdl','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:34 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120026,'3b3a3cc1-ab22-4994-a6d0-64476d990997',0,0,'Y',TO_DATE('2024-07-15 16:57:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:33','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeRecepcaoEventoV4?wsdl','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:34 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120027,'036c04f4-d728-440f-8119-9ebb524ab4f3',0,0,'Y',TO_DATE('2024-07-15 16:57:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:34','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeRecepcaoGTVeV4?wsdl','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:35 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120028,'081cd5b6-2adb-4d38-a7f3-115997aaa37e',0,0,'Y',TO_DATE('2024-07-15 16:57:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:35','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeRecepcaoOSV4?wsdl','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:35 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120029,'de13ea9c-f49a-44d3-adf9-657a95316079',0,0,'Y',TO_DATE('2024-07-15 16:57:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:35','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeRecepcaoSincV4?wsdl','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:36 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120030,'9804a0a4-a4d5-43b7-b5ba-1e72e2580094',0,0,'Y',TO_DATE('2024-07-15 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,1120003,'https://cte.fazenda.pr.gov.br/cte4/CTeStatusServicoV4?wsdl','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:36 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120031,'a31ec5f5-12dd-46a6-98be-8cfb33139245',0,0,'Y',TO_DATE('2024-07-15 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,1120003,'http://www.fazenda.pr.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:37 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120004,'30cae905-54de-4129-8157-4642398381d1',0,0,'Y',TO_DATE('2024-07-15 16:57:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:37','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Rio de Janeiro - (RJ)')
;

-- 15 de jul de 2024 16:57:37 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120032,'c3e3d15f-3f43-47b2-8fc3-cc2627ece2c2',0,0,'Y',TO_DATE('2024-07-15 16:57:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:37','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeConsultaV4/CTeConsultaV4.asmx','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:38 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120033,'799460ea-b1cb-41ad-9f0b-2692d393788c',0,0,'Y',TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeDistribuicaoDFe/CTeDistribuicaoDFe.asmx','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:38 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120034,'5a07f4dc-7843-4ab9-b4e6-b9ca4f1e7f48',0,0,'Y',TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeRecepcaoEventoV4/CTeRecepcaoEventoV4.asmx','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:39 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120035,'8d4aa6a5-69cb-4de5-a0ea-021290c2fada',0,0,'Y',TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:38','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeRecepcaoGTVeV4/CTeRecepcaoGTVeV4.asmx','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:39 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120036,'4c7b5327-04e4-4a55-8abc-30db4b62a08c',0,0,'Y',TO_DATE('2024-07-15 16:57:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:39','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeRecepcaoOSV4/CTeRecepcaoOSV4.asmx','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:40 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120037,'46c506e8-8b58-4580-ba2c-167c5a736184',0,0,'Y',TO_DATE('2024-07-15 16:57:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:39','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeRecepcaoSincV4/CTeRecepcaoSincV4.asmx','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:40 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120038,'7ba21888-c35b-4a9f-bc99-c2f072b0668f',0,0,'Y',TO_DATE('2024-07-15 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,1120004,'https://cte.fazenda.rj.gov.br/CTeStatusServicoV4/CTeStatusServicoV4.asmx','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:41 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120039,'fda32bc7-4b39-4c83-a120-ac85197f60d8',0,0,'Y',TO_DATE('2024-07-15 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,1120004,'http://www.fazenda.rj.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:41 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120005,'7ea1cacb-8a2d-472e-ae7b-d2b6bf33818b',0,0,'Y',TO_DATE('2024-07-15 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz Rio Grande do Sul - (RS)')
;

-- 15 de jul de 2024 16:57:42 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120040,'f58ad410-8ec3-478a-9334-b1e772077016',0,0,'Y',TO_DATE('2024-07-15 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeConsultaV4','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:42 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120041,'b1a6111f-1dda-4474-b056-6fb1db825852',0,0,'Y',TO_DATE('2024-07-15 16:57:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:42','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeDistribuicaoDFe','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:43 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120042,'3567fcf7-f570-4c2f-ae3b-ae254b6a7712',0,0,'Y',TO_DATE('2024-07-15 16:57:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:42','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoEventoV4','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:43 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120043,'200e1641-0c2a-481a-8594-946463e8d937',0,0,'Y',TO_DATE('2024-07-15 16:57:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:43','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoGTVeV4','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:44 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120044,'f4b42093-6501-4e35-a1df-f3afe8c394af',0,0,'Y',TO_DATE('2024-07-15 16:57:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:43','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoOSV4','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:44 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120045,'5870dc1c-e987-4057-8b61-1e22de7b5aba',0,0,'Y',TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoSincV4','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:44 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120046,'fdf4a7aa-f25b-4c8d-9573-799bd9450dc5',0,0,'Y',TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeStatusServicoV4','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:45 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120047,'fccf0b80-6aeb-4ad8-82a9-66fc541edd11',0,0,'Y',TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:44','YYYY-MM-DD HH24:MI:SS'),100,1120005,'https://www.cte.fazenda.rs.gov.br/site/cte/qrcode.aspx','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:45 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120006,'f3d2c9c6-91fb-43ff-aaa2-86601e28bcfa',0,0,'Y',TO_DATE('2024-07-15 16:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz São Paulo - (SP)')
;

-- 15 de jul de 2024 16:57:46 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120048,'c69ae806-3257-4fa0-afc0-f6eb5862acda',0,0,'Y',TO_DATE('2024-07-15 16:57:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:45','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeConsultaV4.asmx','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:46 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120049,'808660c1-6cd9-43ee-b629-d06905120733',0,0,'Y',TO_DATE('2024-07-15 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeDistribuicaoDFe.asmx','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:47 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120050,'ddf95d0e-3f4c-4522-927b-6f594d0cbd9d',0,0,'Y',TO_DATE('2024-07-15 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:46','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoEventoV4.asmx','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:47 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120051,'84984de4-5b26-4f9d-be41-4726300f96f0',0,0,'Y',TO_DATE('2024-07-15 16:57:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:47','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoGTVeV4.asmx','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:48 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120052,'4d68b0c0-76b6-4873-ada8-21fbb2ce283c',0,0,'Y',TO_DATE('2024-07-15 16:57:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:47','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoOSV4.asmx','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:48 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120053,'55998df4-79f0-4bd0-b9f9-5cdf376241b6',0,0,'Y',TO_DATE('2024-07-15 16:57:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:48','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoSincV4.asmx','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:49 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120054,'9f679c0a-2628-4488-82b8-10dee649939a',0,0,'Y',TO_DATE('2024-07-15 16:57:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:48','YYYY-MM-DD HH24:MI:SS'),100,1120006,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeStatusServicoV4.asmx','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:49 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120055,'79b386a2-68c6-4459-8ec7-de34fb2f12b8',0,0,'Y',TO_DATE('2024-07-15 16:57:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:49','YYYY-MM-DD HH24:MI:SS'),100,1120006,'http://nfe.fazenda.sp.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:50 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120007,'273d145c-d51d-4858-bc61-317b8ec2bffa',0,0,'Y',TO_DATE('2024-07-15 16:57:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:49','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz SefazVirtualRS - (SVRS)')
;

-- 15 de jul de 2024 16:57:50 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120056,'916a911c-f3a0-4547-9e56-833e6835e9a8',0,0,'Y',TO_DATE('2024-07-15 16:57:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:50','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeConsultaV4','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:51 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120057,'b705e5aa-52f4-4df6-be83-45e3b5f62800',0,0,'Y',TO_DATE('2024-07-15 16:57:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:50','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeDistribuicaoDFe','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:51 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120058,'90287260-1070-4ab5-b17f-83cde9e6ac30',0,0,'Y',TO_DATE('2024-07-15 16:57:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:51','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoEventoV4','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:52 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120059,'ef50d513-8ce1-4c96-9702-a976f8106354',0,0,'Y',TO_DATE('2024-07-15 16:57:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:51','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoGTVeV4','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:52 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120060,'2301f34b-be6f-4615-9d58-e25b42a18187',0,0,'Y',TO_DATE('2024-07-15 16:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:52','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoOSV4','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:53 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120061,'80c3f0bd-e710-46d6-945e-6e4714486475',0,0,'Y',TO_DATE('2024-07-15 16:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:52','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeRecepcaoSincV4','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:53 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120062,'4ac47ea8-09c3-4030-a97c-931f1e1b7c96',0,0,'Y',TO_DATE('2024-07-15 16:57:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:53','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://cte.svrs.rs.gov.br/ws/ctews4/CTeStatusServicoV4','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:54 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120063,'e862341c-735a-401d-8e96-fde379a8dade',0,0,'Y',TO_DATE('2024-07-15 16:57:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:53','YYYY-MM-DD HH24:MI:SS'),100,1120007,'https://www.cte.fazenda.rs.gov.br/site/cte/qrcode.aspx','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:54 BRT
INSERT INTO LBR_SeFaz (LBR_SeFaz_ID,LBR_SeFaz_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name) VALUES (1120008,'6222d039-aac1-4d4b-a104-895be2069a83',0,0,'Y',TO_DATE('2024-07-15 16:57:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:54','YYYY-MM-DD HH24:MI:SS'),100,'Sefaz SefazVirtualSP - (SVSP)')
;

-- 15 de jul de 2024 16:57:55 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120064,'3277850c-c869-4126-96e3-ea8fb66d6c31',0,0,'Y',TO_DATE('2024-07-15 16:57:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:54','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeConsultaV4.asmx','1','4.00','1','100',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:55 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120065,'c856b56a-d46f-4911-9921-2e2b81957411',0,0,'Y',TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeDistribuicaoDFe.asmx','1','4.00','1','101',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:55 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120066,'3908ceee-d574-4410-9439-70619d287329',0,0,'Y',TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoEventoV4.asmx','1','4.00','1','102',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:56 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120067,'91d7dc39-ccdf-47dc-8c5e-238b6a50c641',0,0,'Y',TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:55','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoGTVeV4.asmx','1','4.00','1','103',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:56 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120068,'cbcf4e09-9428-4cda-8086-30c510063fb8',0,0,'Y',TO_DATE('2024-07-15 16:57:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:56','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoOSV4.asmx','1','4.00','1','104',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:57 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120069,'ae07abc7-5d49-4019-9dc3-ec0a2d0ea917',0,0,'Y',TO_DATE('2024-07-15 16:57:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:56','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeRecepcaoSincV4.asmx','1','4.00','1','105',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:57 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120070,'0a0db6c5-1ba5-45ca-9b93-1efa2946a526',0,0,'Y',TO_DATE('2024-07-15 16:57:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:57','YYYY-MM-DD HH24:MI:SS'),100,1120008,'https://nfe.fazenda.sp.gov.br/cteWEB/services/CTeStatusServicoV4.asmx','1','4.00','1','106',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 16:57:58 BRT
INSERT INTO LBR_SeFazURL (LBR_SeFazURL_ID,LBR_SeFazURL_UU,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,LBR_SeFaz_ID,URL,lbr_NFeEnv,VersionNo,LBR_URLScope,LBR_EndpointName,ValidFrom) VALUES (1120071,'f3e73a68-fe46-4655-9f52-0fb3accac8d7',0,0,'Y',TO_DATE('2024-07-15 16:57:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 16:57:57','YYYY-MM-DD HH24:MI:SS'),100,1120008,'http://nfe.fazenda.sp.gov.br/cte/qrcode','1','4.00','1','107',TO_DATE('2000-01-01','YYYY-MM-DD'))
;

-- 15 de jul de 2024 18:50:11 BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2024-07-15 18:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120529
;

-- 15 de jul de 2024 18:50:14 BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2024-07-15 18:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120530
;

-- 15 de jul de 2024 18:50:17 BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2024-07-15 18:50:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120531
;

-- 15 de jul de 2024 21:37:55 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134149,0,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120771,'RegionName',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-07-15 21:37:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:37:53','YYYY-MM-DD HH24:MI:SS'),100,541,'Y','Y','LBRA','N','N','N','Y','729b1ab3-c0fa-4c9c-a7f8-bda3c2f59149','Y',40,'N','N','N')
;

-- 15 de jul de 2024 21:37:57 BRT
ALTER TABLE LBR_CTePartner ADD RegionName VARCHAR2(40) DEFAULT NULL 
;

-- 15 de jul de 2024 21:38:08 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134150,0,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120771,1000003,'C_Region_ID',10,'N','N','N','N','N',0,'N',18,157,0,0,'Y',TO_DATE('2024-07-15 21:38:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:38:08','YYYY-MM-DD HH24:MI:SS'),100,209,'Y','N','LBRA','N','N','N','Y','cf80d531-7ce5-4e04-9e77-6ae239a6fc00','Y',0,'N','N','N','N')
;

-- 15 de jul de 2024 21:38:09 BRT
UPDATE AD_Column SET FKConstraintName='CRegion_LBRCTePartner', FKConstraintType='N',Updated=TO_DATE('2024-07-15 21:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134150
;

-- 15 de jul de 2024 21:38:09 BRT
ALTER TABLE LBR_CTePartner ADD C_Region_ID NUMBER(10) DEFAULT NULL 
;

-- 15 de jul de 2024 21:38:10 BRT
ALTER TABLE LBR_CTePartner ADD CONSTRAINT CRegion_LBRCTePartner FOREIGN KEY (C_Region_ID) REFERENCES c_region(c_region_id) DEFERRABLE INITIALLY DEFERRED
;

-- 15 de jul de 2024 21:38:22 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134151,0,'Phone','Identifies a telephone number','The Phone field identifies a telephone number',1120771,'Phone',40,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2024-07-15 21:38:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:38:22','YYYY-MM-DD HH24:MI:SS'),100,505,'Y','N','LBRA','N','N','N','Y','10c08ea8-9271-43c0-b103-5b65d681beab','Y',0,'N','N','N')
;

-- 15 de jul de 2024 21:38:24 BRT
ALTER TABLE LBR_CTePartner ADD Phone VARCHAR2(40) DEFAULT NULL 
;

-- 15 de jul de 2024 21:39:05 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134152,0,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120772,'lbr_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2024-07-15 21:39:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:39:05','YYYY-MM-DD HH24:MI:SS'),100,1000127,'Y','N','LBRA','N','N','N','Y','95aff97a-86f8-4063-8b9e-f762d803c504','Y',0,'N','N','N')
;

-- 15 de jul de 2024 21:39:09 BRT
ALTER TABLE LBR_CTeICMS ADD lbr_TaxRate NUMBER DEFAULT NULL 
;

-- 15 de jul de 2024 21:39:35 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml) VALUES (1134153,0,'ICMS CST',1120772,'ICMS_TaxStatus',3,'N','N','N','N','N',0,'N',14,0,0,'Y',TO_DATE('2024-07-15 21:39:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:39:35','YYYY-MM-DD HH24:MI:SS'),100,1121865,'N','N','LBRA','N','N','N','Y','422b84f1-6b0c-40e6-b9cb-d5a6dd4f0ace','Y',0,'N','N','N')
;

-- 15 de jul de 2024 21:39:43 BRT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2024-07-15 21:39:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134153
;

-- 15 de jul de 2024 21:39:44 BRT
ALTER TABLE LBR_CTeICMS ADD ICMS_TaxStatus VARCHAR2(3) DEFAULT NULL 
;

-- 15 de jul de 2024 21:40:29 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134154,0,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120773,'lbr_TaxRate',10,'N','N','N','N','N',0,'N',12,0,0,'Y',TO_DATE('2024-07-15 21:40:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:40:29','YYYY-MM-DD HH24:MI:SS'),100,1000127,'Y','N','LBRA','N','N','N','Y','c38b3037-2230-45e3-8608-8a26e172c34e','Y',0,'N','N','N','N')
;

-- 15 de jul de 2024 21:40:31 BRT
ALTER TABLE LBR_CTeICMSFim ADD lbr_TaxRate NUMBER DEFAULT NULL 
;

-- 15 de jul de 2024 21:44:03 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120411,'LBR_CTeServiceType','L',0,0,'Y',TO_DATE('2024-07-15 21:44:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:44:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','b3663019-bfb4-4ae2-9caf-21e6489333fe')
;

-- 15 de jul de 2024 21:44:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123058,'Normal',1120411,'0',0,0,'Y',TO_DATE('2024-07-15 21:44:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:44:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','47e6480f-e854-4ece-ac62-07ae4286d323')
;

-- 15 de jul de 2024 21:44:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123059,'Subcontratação',1120411,'1',0,0,'Y',TO_DATE('2024-07-15 21:44:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:44:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','cf368c87-cd00-4e0b-adde-7d07656b6bd4')
;

-- 15 de jul de 2024 21:44:40 BRT
UPDATE AD_Ref_List SET Name='Subcontract',Updated=TO_DATE('2024-07-15 21:44:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123059
;

-- 15 de jul de 2024 21:45:29 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123060,'Redespacho',1120411,'2',0,0,'Y',TO_DATE('2024-07-15 21:45:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:45:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8659ca4a-ca6c-4a6d-9c12-dcaab472a519')
;

-- 15 de jul de 2024 21:45:37 BRT
UPDATE AD_Ref_List SET Name='Forwarding',Updated=TO_DATE('2024-07-15 21:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123060
;

-- 15 de jul de 2024 21:45:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123061,'Redespacho Intermediário',1120411,'3',0,0,'Y',TO_DATE('2024-07-15 21:45:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:45:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','69930708-8781-4d47-a4a6-a58643fd5f2c')
;

-- 15 de jul de 2024 21:46:03 BRT
UPDATE AD_Ref_List SET Name='Intermediate Forwarding',Updated=TO_DATE('2024-07-15 21:46:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123061
;

-- 15 de jul de 2024 21:46:13 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123062,'Serviço Vinculado a Multimodal',1120411,'4',0,0,'Y',TO_DATE('2024-07-15 21:46:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:46:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ef1086b5-56e5-4639-9ddf-c1bb3cd861e6')
;

-- 15 de jul de 2024 21:46:19 BRT
UPDATE AD_Ref_List SET Name='Service Linked to Multimodal',Updated=TO_DATE('2024-07-15 21:46:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123062
;

-- 15 de jul de 2024 21:46:30 BRT
UPDATE AD_Ref_List SET Name='Subcontracting',Updated=TO_DATE('2024-07-15 21:46:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123059
;

-- 15 de jul de 2024 21:46:51 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120411,Updated=TO_DATE('2024-07-15 21:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134042
;

-- 15 de jul de 2024 21:48:54 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120412,'LBR_CTeType','L',0,0,'Y',TO_DATE('2024-07-15 21:48:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:48:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','a565c251-e354-4ec9-8681-80efd5acaa48')
;

-- 15 de jul de 2024 21:49:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123063,'CTe Normal',1120412,'0',0,0,'Y',TO_DATE('2024-07-15 21:49:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:49:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','f07d540f-f841-4a66-91c7-90b8bd3e6b2a')
;

-- 15 de jul de 2024 21:49:15 BRT
UPDATE AD_Ref_List SET Name='Standard CTe',Updated=TO_DATE('2024-07-15 21:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123063
;

-- 15 de jul de 2024 21:49:28 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123064,'CTe de Complemento de Valores',1120412,'1',0,0,'Y',TO_DATE('2024-07-15 21:49:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:49:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','0978b6dc-e1ac-4c4f-90fe-b43d0db31971')
;

-- 15 de jul de 2024 21:49:37 BRT
UPDATE AD_Ref_List SET Name='Value Supplement CTe',Updated=TO_DATE('2024-07-15 21:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123064
;

-- 15 de jul de 2024 21:49:48 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123065,'CTe de Substituição',1120412,'3',0,0,'Y',TO_DATE('2024-07-15 21:49:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:49:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','7df7d2be-a812-4c4f-b225-2ba8fafaa0fb')
;

-- 15 de jul de 2024 21:49:53 BRT
UPDATE AD_Ref_List SET Name='Replacement CTe',Updated=TO_DATE('2024-07-15 21:49:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123065
;

-- 15 de jul de 2024 21:50:05 BRT
UPDATE AD_Ref_List SET Name='Standard',Updated=TO_DATE('2024-07-15 21:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123058
;

-- 15 de jul de 2024 21:50:29 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120412,Updated=TO_DATE('2024-07-15 21:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134040
;

-- 15 de jul de 2024 21:51:09 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120413,'LBR_CTe - LBR_ShipmentType','L',0,0,'Y',TO_DATE('2024-07-15 21:51:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:51:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','08a91e4d-78d3-4426-a72b-fcbb05d478a5')
;

-- 15 de jul de 2024 21:51:41 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123066,'Rodoviário',1120413,'01',0,0,'Y',TO_DATE('2024-07-15 21:51:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:51:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','d23d8685-813d-4a54-8cfc-e22a71387b0d')
;

-- 15 de jul de 2024 21:51:45 BRT
UPDATE AD_Ref_List SET Name='Road',Updated=TO_DATE('2024-07-15 21:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123066
;

-- 15 de jul de 2024 21:51:54 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123067,'Aéreo',1120413,'02',0,0,'Y',TO_DATE('2024-07-15 21:51:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:51:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','84409538-fd7a-4a5b-83ac-c455da142de7')
;

-- 15 de jul de 2024 21:52:01 BRT
UPDATE AD_Ref_List SET Name='Air',Updated=TO_DATE('2024-07-15 21:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123067
;

-- 15 de jul de 2024 21:52:24 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123068,'Aquaviário',1120413,'03',0,0,'Y',TO_DATE('2024-07-15 21:52:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:52:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','fde209ff-0617-40e1-8152-7cea05b1978e')
;

-- 15 de jul de 2024 21:52:28 BRT
UPDATE AD_Ref_List SET Name='Marine',Updated=TO_DATE('2024-07-15 21:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123068
;

-- 15 de jul de 2024 21:52:42 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123069,'Ferroviário',1120413,'04',0,0,'Y',TO_DATE('2024-07-15 21:52:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:52:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ccb027da-b267-4ae6-bf13-84588c4003d6')
;

-- 15 de jul de 2024 21:52:49 BRT
UPDATE AD_Ref_List SET Name='Railway',Updated=TO_DATE('2024-07-15 21:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123069
;

-- 15 de jul de 2024 21:53:02 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123070,'Dutoviário',1120413,'05',0,0,'Y',TO_DATE('2024-07-15 21:53:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:53:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','da0f9072-71e1-4d6a-8eed-c80fcccae5e2')
;

-- 15 de jul de 2024 21:53:08 BRT
UPDATE AD_Ref_List SET Name='Pipeline',Updated=TO_DATE('2024-07-15 21:53:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123070
;

-- 15 de jul de 2024 21:53:20 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123071,'Multimodal',1120413,'06',0,0,'Y',TO_DATE('2024-07-15 21:53:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:53:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','60cfe8d8-4b6d-45d6-ba7d-8794f18d524f')
;

-- 15 de jul de 2024 21:53:36 BRT
UPDATE AD_Column SET DefaultValue='01', FieldLength=2, AD_Reference_Value_ID=1120413,Updated=TO_DATE('2024-07-15 21:53:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134041
;

-- 15 de jul de 2024 21:54:49 BRT
INSERT INTO AD_Reference (AD_Reference_ID,Name,ValidationType,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,IsOrderByValue,AD_Reference_UU) VALUES (1120414,'LBR_CTePartnerType','L',0,0,'Y',TO_DATE('2024-07-15 21:54:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:54:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','184de598-afe9-4468-8b1c-ff27d7ca96b3')
;

-- 15 de jul de 2024 21:55:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123072,'Emitente',1120414,'I',0,0,'Y',TO_DATE('2024-07-15 21:55:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:55:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','4122c57e-7a09-4cbd-abec-47f4a858878d')
;

-- 15 de jul de 2024 21:56:00 BRT
UPDATE AD_Ref_List SET Name='Issuer',Updated=TO_DATE('2024-07-15 21:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123072
;

-- 15 de jul de 2024 21:56:26 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123073,'Remetente',1120414,'0',0,0,'Y',TO_DATE('2024-07-15 21:56:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:56:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','8e267f40-27aa-4857-a6fc-2e1605ed2d54')
;

-- 15 de jul de 2024 21:56:31 BRT
UPDATE AD_Ref_List SET Name='Sender',Updated=TO_DATE('2024-07-15 21:56:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123073
;

-- 15 de jul de 2024 21:56:50 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123074,'Expedidor',1120414,'1',0,0,'Y',TO_DATE('2024-07-15 21:56:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:56:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','9e29c9b2-79fc-426f-b1f6-14fb19b92e09')
;

-- 15 de jul de 2024 21:56:59 BRT
UPDATE AD_Ref_List SET Name='Shipper',Updated=TO_DATE('2024-07-15 21:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123074
;

-- 15 de jul de 2024 21:57:08 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123075,'Recebedor',1120414,'2',0,0,'Y',TO_DATE('2024-07-15 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:57:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','950413df-b566-4776-9b7c-840f033de22b')
;

-- 15 de jul de 2024 21:57:13 BRT
UPDATE AD_Ref_List SET Name='Receiver',Updated=TO_DATE('2024-07-15 21:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123075
;

-- 15 de jul de 2024 21:57:35 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123076,'Destinatário',1120414,'3',0,0,'Y',TO_DATE('2024-07-15 21:57:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:57:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','892f4275-ef46-42fa-868f-ca11b2fce6bc')
;

-- 15 de jul de 2024 21:57:43 BRT
UPDATE AD_Ref_List SET Name='Consignee',Updated=TO_DATE('2024-07-15 21:57:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123076
;

-- 15 de jul de 2024 21:57:53 BRT
INSERT INTO AD_Ref_List (AD_Ref_List_ID,Name,AD_Reference_ID,Value,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Ref_List_UU) VALUES (1123077,'Tomador',1120414,'4',0,0,'Y',TO_DATE('2024-07-15 21:57:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 21:57:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','ab4f012b-e4ef-46c7-bc04-dc7e7b515a64')
;

-- 15 de jul de 2024 21:57:59 BRT
UPDATE AD_Ref_List SET Name='Consignor',Updated=TO_DATE('2024-07-15 21:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1123077
;

-- 15 de jul de 2024 21:58:37 BRT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120414,Updated=TO_DATE('2024-07-15 21:58:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134137
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132038
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132037
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132053
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132054
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132123
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132048
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132049
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132047
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132039
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132030
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132031
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132032
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132033
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132029
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132027
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132024
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132026
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132028
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132034
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132035
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132036
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132040
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132041
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132042
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=90,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132043
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=100,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132044
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=110,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132045
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=120,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132046
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=130,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132050
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=140,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132051
;

-- 15 de jul de 2024 22:00:51 BRT
UPDATE AD_Field SET SeqNoGrid=150,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132052
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132068
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132071
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132066
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132065
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132062
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132060
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132059
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132056
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132070
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132061
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132057
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132063
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132064
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=60,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132067
;

-- 15 de jul de 2024 22:01:29 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132069
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132080
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132078
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132076
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132073
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132075
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132077
;

-- 15 de jul de 2024 22:01:45 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132079
;

-- 15 de jul de 2024 22:02:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132128,'LBR_CTeICMS_UU',1120530,1134141,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:02:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:02:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','0ea2eaac-4ad8-4a1d-a2b2-7d0539ceaf67','N',2)
;

-- 15 de jul de 2024 22:02:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132129,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120530,1134152,'Y',10,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:02:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:02:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f97c3b99-f35c-4cd4-ae01-eae14efd78c3','Y',100,2)
;

-- 15 de jul de 2024 22:02:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan,NumLines) VALUES (1132130,'ICMS CST',1120530,1134153,'Y',3,120,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:02:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:02:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f3cb184a-0588-4221-9333-147419769268','Y',110,2,3)
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132091
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132086
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132085
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132084
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132082
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132130
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132087
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132129
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132089
;

-- 15 de jul de 2024 22:02:52 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132090
;

-- 15 de jul de 2024 22:03:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132131,'LBR_CTeICMSFim_UU',1120531,1134142,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a2d0713b-15a2-40bf-99ee-b56ce97742ea','N',2)
;

-- 15 de jul de 2024 22:03:03 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132132,'Tax Rate','Indicates the Tax Rate','Indicates the Tax Rate',1120531,1134154,'Y',10,110,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a77d710b-32f6-4f02-b85b-96e9e6935b12','Y',100,2)
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132102
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132096
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132095
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132093
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132097
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132098
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=30,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132132
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=40,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132100
;

-- 15 de jul de 2024 22:03:22 BRT
UPDATE AD_Field SET SeqNoGrid=50,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132101
;

-- 15 de jul de 2024 22:03:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132133,'LBR_CTePartner_UU',1120528,1134140,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','711a3f34-94b8-4ed8-8087-be3a244d38fe','N',2)
;

-- 15 de jul de 2024 22:03:31 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132134,'Region','Name of the Region','The Region Name defines the name that will print when this region is used in a document.',1120528,1134149,'Y',40,170,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','97476b44-4346-4d58-aa66-c573f8088abf','Y',80,2)
;

-- 15 de jul de 2024 22:03:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132135,'Region','Identifies a geographical Region','The Region identifies a unique Region for this Country.',1120528,1134150,'Y',10,180,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:31','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','670d83df-7ce5-4604-af96-c27f86386aa3','Y',90,2)
;

-- 15 de jul de 2024 22:03:32 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132136,'Phone','Identifies a telephone number','The Phone field identifies a telephone number',1120528,1134151,'Y',40,190,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 22:03:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:03:32','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','8e9b6284-200f-40a7-a1b8-e334033578f6','Y',100,2)
;

-- 15 de jul de 2024 22:03:50 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132136
;

-- 15 de jul de 2024 22:03:50 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132135
;

-- 15 de jul de 2024 22:03:50 BRT
UPDATE AD_Field SET SeqNoGrid=70,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132134
;

-- 15 de jul de 2024 22:03:50 BRT
UPDATE AD_Field SET SeqNoGrid=80,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132069
;

-- 15 de jul de 2024 22:07:28 BRT
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120334,0,0,'Y',TO_DATE('2024-07-15 22:07:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:07:27','YYYY-MM-DD HH24:MI:SS'),100,'Service Status CTe','Check if service is up','Check if service is up an running','N','StatusCTe','N','org.kenos.idempiere.cte.process.AuthorizationServiceCheck','3','LBRA',0,0,'N','N','Y','N','d95377fd-a8f3-4e51-928d-96b3b000905b')
;

-- 15 de jul de 2024 22:07:33 BRT
UPDATE AD_Process SET Help='Check if service is up and running',Updated=TO_DATE('2024-07-15 22:07:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120334
;

-- 15 de jul de 2024 22:07:53 BRT
UPDATE AD_Process SET Description='Check if service is up', Help='Check if service is up an running', ProcedureName=NULL, IsReport='N', IsDirectPrint='N', AD_ReportView_ID=NULL, Classname='org.kenos.idempiere.lbr.mdfe.process.StatusMDFe', AccessLevel='3', AD_PrintFormat_ID=NULL, AD_Workflow_ID=NULL, IsBetaFunctionality='N', IsServerProcess='N', ShowHelp='Y', JasperReport=NULL, AD_Form_ID=NULL,Updated=TO_DATE('2024-07-15 22:07:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120334
;

-- 15 de jul de 2024 22:07:53 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,AD_Val_Rule_ID,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120653,0,0,'Y',TO_DATE('2024-07-15 22:07:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:07:53','YYYY-MM-DD HH24:MI:SS'),100,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120334,10,19,322,'N',202,0,'Y','AD_Org_ID','Y','LBRA',113,'7c046f19-e034-4b0d-8906-6867742acab0')
;

-- 15 de jul de 2024 22:07:54 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120654,0,0,'Y',TO_DATE('2024-07-15 22:07:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:07:53','YYYY-MM-DD HH24:MI:SS'),100,'Communication Type',1120334,20,17,1120173,'N',1,'N','1','LBR_CommType','Y','LBRA',1121471,'92e0bd7f-56b6-4be3-9be4-651a5b514086')
;

-- 15 de jul de 2024 22:07:54 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU) VALUES (1120655,0,0,'Y',TO_DATE('2024-07-15 22:07:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:07:54','YYYY-MM-DD HH24:MI:SS'),100,'NFe Environment',1120334,30,17,1100001,'N',1,'N','1','lbr_NFeEnv','Y','LBRA',1100011,'2db81fa1-4050-4e58-98ce-8be8856cff78')
;

-- 15 de jul de 2024 22:07:59 BRT
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=1120654
;

-- 15 de jul de 2024 22:07:59 BRT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1120654
;

-- 15 de jul de 2024 22:10:10 BRT
INSERT INTO AD_Menu (AD_Menu_ID,Name,Action,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained,AD_Menu_UU) VALUES (1120436,'Service Status CTe','P',0,0,'Y',TO_DATE('2024-07-15 22:10:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 22:10:10','YYYY-MM-DD HH24:MI:SS'),100,'N',1120334,'Y','N','LBRA','Y','2eb4bffe-44ce-4478-8eb3-94e00725cd0a')
;

-- 15 de jul de 2024 22:10:10 BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo, AD_TreeNodeMM_UU) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120436, 0, 999, Generate_UUID() FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120436)
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120359
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120431
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120432
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120433
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120436
;

-- 15 de jul de 2024 22:10:23 BRT
UPDATE AD_TreeNodeMM SET Parent_ID=1120430, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120435
;

-- 15 de jul de 2024 23:16:46 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1123447,0,0,'Y',TO_DATE('2024-07-15 23:16:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:16:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeConsignor','Consignor',NULL,NULL,'Consignor','LBRA','7494afc3-3c7e-41d6-9282-f24e227bc855')
;

-- 15 de jul de 2024 23:17:31 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType,IsHtml) VALUES (1134155,0,'Consignor',1120770,'LBR_CTeConsignor',1,'N','N','Y','N','N',0,'N',17,1120414,0,0,'Y',TO_DATE('2024-07-15 23:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:17:30','YYYY-MM-DD HH24:MI:SS'),100,1123447,'Y','N','LBRA','N','N','N','Y','65d6d75f-373f-48e5-8392-febb9d0a82a7','Y',0,'N','N','N','N')
;

-- 15 de jul de 2024 23:17:39 BRT
ALTER TABLE LBR_CTe ADD LBR_CTeConsignor CHAR(1) NOT NULL
;

-- 15 de jul de 2024 23:18:18 BRT
UPDATE AD_Table SET AD_Window_ID=1120186,Updated=TO_DATE('2024-07-15 23:18:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120770
;

-- 15 de jul de 2024 23:18:29 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132137,'Consignor',1120527,1134155,'Y',1,310,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:18:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:18:28','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5446d584-3c47-47b6-95f1-1d521316a8ca','Y',160,2)
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=7, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132137
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132046
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132047
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132049
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132048
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132050
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132053
;

-- 15 de jul de 2024 23:18:40 BRT
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132123
;

-- 15 de jul de 2024 23:21:14 BRT
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID,AD_Process_Para_UU,IsEncrypted) VALUES (1120656,0,0,'Y',TO_DATE('2024-07-15 23:21:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:21:13','YYYY-MM-DD HH24:MI:SS'),100,'Pre Processing','Process SQL before executing the query','Could be Update/Delete/etc. statement',1120333,60,20,'N',0,'Y','N','PreProcessing','Y','LBRA',2086,'5f604e46-7330-4b6d-beca-b530593d5db1','N')
;

-- 15 de jul de 2024 23:29:10 BRT
UPDATE AD_Tab SET OrderByClause='LBR_CTePartner.LBR_CTePartnerType',Updated=TO_DATE('2024-07-15 23:29:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120528
;

-- 15 de jul de 2024 23:42:08 BRT
INSERT INTO AD_Table (AD_Table_ID,Name,AD_Window_ID,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,AD_Table_UU,Processing,DatabaseViewDrop,CopyComponentsFromView,IsSystemLanguage) VALUES (1120776,'CT-e Amounts',1120186,'LBR_CTeAmt',0,'3',0,0,'Y',TO_DATE('2024-07-15 23:42:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','f798af62-9cc5-4d86-b20e-c3129daa3cf8','N','N','N','N')
;

-- 15 de jul de 2024 23:42:09 BRT
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys,AD_Sequence_UU) VALUES ('LBR_CTeAmt',1000000,'N','N','Table LBR_CTeAmt','Y','Y',0,0,TO_DATE('2024-07-15 23:42:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:08','YYYY-MM-DD HH24:MI:SS'),100,1154051,'Y',1000000,1,200000,'010a55ea-0c63-4b03-ac8f-a6deec7c75f3')
;

-- 15 de jul de 2024 23:42:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123448,0,0,'Y',TO_DATE('2024-07-15 23:42:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeAmt_ID','CT-e Amounts','CT-e Amounts','LBRA','94787b44-a466-41a4-ab01-c4a627bc34c5')
;

-- 15 de jul de 2024 23:42:16 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134156,0.0,'CT-e Amounts',1120776,'LBR_CTeAmt_ID',10,'Y','N','Y','N','N','N',13,0,0,'Y',TO_DATE('2024-07-15 23:42:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:15','YYYY-MM-DD HH24:MI:SS'),100,1123448,'N','N','LBRA','N','d9286ba5-81b6-4513-aba2-74f90f545da3','N')
;

-- 15 de jul de 2024 23:42:16 BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1123449,0,0,'Y',TO_DATE('2024-07-15 23:42:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CTeAmt_UU','LBR_CTeAmt_UU','LBR_CTeAmt_UU','LBRA','fcace621-f439-4ef3-9d4e-8036a3c9a635')
;

-- 15 de jul de 2024 23:42:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134157,0.0,'LBR_CTeAmt_UU',1120776,'LBR_CTeAmt_UU',36,'N','N','N','N','N','N',10,0,0,'Y',TO_DATE('2024-07-15 23:42:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:16','YYYY-MM-DD HH24:MI:SS'),100,1123449,'N','N','LBRA','N','8816c853-3669-418b-bfa4-e200011914eb','N')
;

-- 15 de jul de 2024 23:42:17 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134158,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120776,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-07-15 23:42:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:17','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N','907cee28-35a1-4e2a-8152-3f58f5ec70f4','N','D')
;

-- 15 de jul de 2024 23:42:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134159,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120776,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-07-15 23:42:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:17','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','244632a5-a1e8-4dc9-913b-aeb0c4777f7f','N','D')
;

-- 15 de jul de 2024 23:42:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134160,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120776,'Created','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','1715b730-43f0-4d9b-a737-4101de232434','N')
;

-- 15 de jul de 2024 23:42:18 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134161,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120776,'CreatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','76a9f686-800a-4327-adc9-acf70db97c7c','N','D')
;

-- 15 de jul de 2024 23:42:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134162,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120776,'Updated','SYSDATE',29,'N','N','Y','N','N','N',16,0,0,'Y',TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:18','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','56574387-3676-45ff-a54e-645670c0866b','N')
;

-- 15 de jul de 2024 23:42:19 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134163,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120776,'UpdatedBy',10,'N','N','Y','N','N','N',18,110,0,0,'Y',TO_DATE('2024-07-15 23:42:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:19','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','48470e60-5a17-475d-acc0-f8128b8e2939','N','D')
;

-- 15 de jul de 2024 23:42:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134164,0.0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120776,'IsActive','Y',1,'N','N','Y','N','N','N',20,0,0,'Y',TO_DATE('2024-07-15 23:42:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:19','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','046edaa9-f9f7-4689-bf61-e93971245e66','N')
;

-- 15 de jul de 2024 23:42:20 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton,FKConstraintType) VALUES (1134165,0.0,'CT-e',1120776,'LBR_CTe_ID',10,'N','N','Y','N','N','N',19,0,0,'Y',TO_DATE('2024-07-15 23:42:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:20','YYYY-MM-DD HH24:MI:SS'),100,1123426,'N','N','LBRA','N','1e2efca5-ef1b-4bd3-87bb-533b12f3231a','N','N')
;

-- 15 de jul de 2024 23:42:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,SeqNoSelection,IsToolbarButton) VALUES (1134166,0.0,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120776,'Name',60,'N','N','Y','N','Y','N',10,0,0,'Y',TO_DATE('2024-07-15 23:42:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:20','YYYY-MM-DD HH24:MI:SS'),100,469,'Y','Y','LBRA','N','b77b6c0b-5583-42fb-8370-cccd7b2ade43',10,'N')
;

-- 15 de jul de 2024 23:42:21 BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable,AD_Column_UU,IsToolbarButton) VALUES (1134167,0.0,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120776,'Amount',10,'N','N','Y','N','N','N',12,0,0,'Y',TO_DATE('2024-07-15 23:42:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:42:21','YYYY-MM-DD HH24:MI:SS'),100,1367,'N','N','LBRA','N','cf4deab8-aaf4-4f80-8df6-85516ab310be','N')
;

-- 15 de jul de 2024 23:42:34 BRT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2024-07-15 23:42:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1134165
;

-- 15 de jul de 2024 23:43:06 BRT
INSERT INTO AD_Tab (AD_Tab_ID,Name,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120533,'CT-e Amounts',1120186,60,'Y',1120776,0,0,'Y',TO_DATE('2024-07-15 23:43:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:06','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','190f2b34-a9fd-4f63-9af7-dffec0d569bb','B')
;

-- 15 de jul de 2024 23:43:14 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132138,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120533,1134158,'Y',10,10,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','43249c4b-66c9-4b68-a0b5-66544e02f131','N',2)
;

-- 15 de jul de 2024 23:43:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsAllowCopy,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132139,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120533,1134159,'Y',10,20,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','32ebdf0d-0a6d-4ad3-9b71-b757ebcda55c','Y','Y',10,4,2)
;

-- 15 de jul de 2024 23:43:15 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132140,'Name','Alphanumeric identifier of the entity','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.',1120533,1134166,'Y',10,30,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','e88e7ded-b1b3-4a21-a2fe-95a28d750cc2','Y',20,2)
;

-- 15 de jul de 2024 23:43:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132141,'CT-e Amounts',1120533,1134156,'N',10,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','a59f32a2-aa91-493a-8c38-c196b8a2117d','N',2)
;

-- 15 de jul de 2024 23:43:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,ColumnSpan) VALUES (1132142,'LBR_CTeAmt_UU',1120533,1134157,'N',36,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c4e8e892-f6a3-4e73-b026-8d8967fdde75','N',2)
;

-- 15 de jul de 2024 23:43:16 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132143,'CT-e',1120533,1134165,'Y',10,40,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','dd3e49f6-de76-4ebe-a05b-c7a51757fe13','Y',30,2)
;

-- 15 de jul de 2024 23:43:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (1132144,'Amount','Amount in a defined currency','The Amount indicates the amount for this document line.',1120533,1134167,'Y',10,50,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:16','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','335dd64a-fe9f-4e84-9d9f-6c278db6013a','Y',40,2)
;

-- 15 de jul de 2024 23:43:17 BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (1132145,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120533,1134164,'Y',1,60,'N','N','N','N',0,0,'Y',TO_DATE('2024-07-15 23:43:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2024-07-15 23:43:17','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','010b9692-44e0-4090-9f2a-0a8f96c5c35e','Y',50,2,2)
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=1, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132143
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132145
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132140
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=4, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132144
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132141
;

-- 15 de jul de 2024 23:43:31 BRT
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2024-07-15 23:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1132142
;

-- 15 de jul de 2024 23:43:44 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132145
;

-- 15 de jul de 2024 23:43:44 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132143
;

-- 15 de jul de 2024 23:43:44 BRT
UPDATE AD_Field SET SeqNoGrid=0,IsDisplayedGrid='N', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132139
;

-- 15 de jul de 2024 23:43:44 BRT
UPDATE AD_Field SET SeqNoGrid=10,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132140
;

-- 15 de jul de 2024 23:43:44 BRT
UPDATE AD_Field SET SeqNoGrid=20,IsDisplayedGrid='Y', Updated=sysdate, UpdatedBy=100 WHERE AD_Field_ID=1132144
;

-- 15 de jul de 2024 23:43:46 BRT
UPDATE AD_Tab SET OrderByClause='LBR_CTeAmt.Name',IsSingleRow='N',Updated=TO_DATE('2024-07-15 23:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120533
;

-- 15 de jul de 2024 23:21:14 BRT
SELECT Register_Migration_Script ('202406191709_CTe.sql') FROM DUAL
;