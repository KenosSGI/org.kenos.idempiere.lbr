SET SQLBLANKLINES ON
SET DEFINE OFF
-- Atualização e inclusão dos novos CESTs
-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Value=REGEXP_REPLACE (Value, '^(\d{2})(\d{3})(\d{2})$', '\1.\2.\3', '') 
WHERE Value~'^(\d{2})(\d{3})(\d{2})$'
;


-- 02/08/2018 11h51min22s BRT
INSERT INTO AD_TableIndex (AD_Client_ID,AD_Org_ID,AD_TableIndex_ID,AD_TableIndex_UU,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Table_ID,IsCreateConstraint,IsUnique,Processing,TableIndexDrop,IsKey) VALUES (0,0,1120000,'b2d6bff6-f5cc-4ec9-9295-3e0c4c6329f0',TO_DATE('2018-08-02 11:51:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CEST_VALUE',TO_DATE('2018-08-02 11:51:22','YYYY-MM-DD HH24:MI:SS'),100,1120531,'N','Y','N','N','N')
;

-- 02/08/2018 11h51min44s BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120000,'acd04567-e7c6-43e7-a3b3-bde09b5111bb',TO_DATE('2018-08-02 11:51:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-08-02 11:51:43','YYYY-MM-DD HH24:MI:SS'),100,1128614,1120000,1)
;

-- 02/08/2018 11h51min58s BRT
INSERT INTO AD_IndexColumn (AD_Client_ID,AD_Org_ID,AD_IndexColumn_ID,AD_IndexColumn_UU,Created,CreatedBy,EntityType,IsActive,Updated,UpdatedBy,AD_Column_ID,AD_TableIndex_ID,SeqNo) VALUES (0,0,1120001,'42fde008-e9d0-4ed5-989c-3700db9ac085',TO_DATE('2018-08-02 11:51:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y',TO_DATE('2018-08-02 11:51:57','YYYY-MM-DD HH24:MI:SS'),100,1128621,1120000,2)
;

-- 02/08/2018 11h52min15s BRT
CREATE UNIQUE INDEX LBR_CEST_VALUE ON LBR_CEST (AD_Client_ID,Value)
;

-- 02/08/2018 12h8min25s BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRNCM_LBRNCMCEST', FKConstraintType='N',Updated=TO_DATE('2018-08-02 12:08:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128683
;

-- 02/08/2018 12h8min25s BRT
ALTER TABLE LBR_NCM_CEST MODIFY LBR_NCM_ID NUMBER(10)
;

-- 02/08/2018 12h8min25s BRT
ALTER TABLE LBR_NCM_CEST ADD CONSTRAINT LBRNCM_LBRNCMCEST FOREIGN KEY (LBR_NCM_ID) REFERENCES lbr_ncm(lbr_ncm_id) DEFERRABLE INITIALLY DEFERRED
;

-- 02/08/2018 12h10min50s BRT
UPDATE AD_Column SET IsUpdateable='N', FKConstraintName='LBRCEST_LBRNCMCEST', FKConstraintType='N',Updated=TO_DATE('2018-08-02 12:10:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128684
;

-- 02/08/2018 12h10min50s BRT
ALTER TABLE LBR_NCM_CEST MODIFY LBR_CEST_ID NUMBER(10)
;

-- 02/08/2018 12h10min50s BRT
ALTER TABLE LBR_NCM_CEST ADD CONSTRAINT LBRCEST_LBRNCMCEST FOREIGN KEY (LBR_CEST_ID) REFERENCES lbr_cest(lbr_cest_id) DEFERRABLE INITIALLY DEFERRED
;


-- Incluir coluna IsActive na tabela LBR_NCM
-- 21/08/2018 17h51min37s BRT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70, DefaultValue='''Y''', IsDisplayedGrid='Y', SeqNoGrid=70, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2018-08-21 17:51:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000067
;


-- Mudar o Nível de acesso da tabela CEST para SISTEMA+EMPRESA
-- 29/08/2018 18h42min42s BRT
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2018-08-29 18:42:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120531
;


-- Modelo de importação para o csv dos NCMs
-- 30/08/2018 14h11min49s BRT
INSERT INTO AD_ImportTemplate (AD_Client_ID,AD_Org_ID,AD_ImportTemplate_ID,AD_ImportTemplate_UU,Created,CreatedBy,Description,IsActive,Name,Updated,UpdatedBy,AD_Window_ID,AD_Tab_ID,CharacterSet,CSVHeader) VALUES (0,0,1120000,'69535b93-d62b-4cae-a45f-3436d40a092d',TO_DATE('2018-08-30 14:11:48','YYYY-MM-DD HH24:MI:SS'),100,'This template will help to import the new NCM','Y','Import NCM',TO_DATE('2018-08-30 14:11:48','YYYY-MM-DD HH24:MI:SS'),100,1000002,1000004,'UTF-8','AD_Org_ID[Name],Value/K,Description,LBR_Tax_ID,IsActive,lbr_HasSubstitution,LBR_NCM_CEST>AD_Org_ID[Name],LBR_NCM_CEST>LBR_NCM_ID[Value]/K,LBR_NCM_CEST>IsActive,LBR_NCM_CEST>LBR_CEST_ID[Value]/K')
;


-- 30/08/2018 16h30min17s BRT
INSERT INTO AD_ImportTemplateAccess (AD_Client_ID,AD_Org_ID,AD_Role_ID,IsAllowInsert,Created,CreatedBy,IsActive,AD_ImportTemplateAccess_ID,AD_ImportTemplateAccess_UU,AD_ImportTemplate_ID,Updated,UpdatedBy,IsAllowMerge,IsAllowUpdate) VALUES (0,0,0,'Y',TO_DATE('2018-08-30 16:30:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120000,'2e002db4-6b4a-4bf8-9628-b871f06f4374',1120000,TO_DATE('2018-08-30 16:30:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y')
;


-- Atualização e inclusão dos novos CESTs
-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Name='Fraldas exceto descritos CEST 048',Updated=TO_DATE('2018-08-02 18:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200586
;

-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Name='Fraldas fibras têxteis',Updated=TO_DATE('2018-08-02 18:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120905
;

-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Name='Tampões higiênicos',Updated=TO_DATE('2018-08-02 18:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200587
;

-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Name='Absorventes higiênicos externos',Updated=TO_DATE('2018-08-02 18:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200588
;

-- 02/08/2018 18h47min8s BRT
UPDATE LBR_CEST SET Name='Borlas esponjas para pós para aplicação outros cosméticos produtos toucador',Updated=TO_DATE('2018-08-02 18:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200600
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Borlas esponjas para pós para aplicação outros cosméticos produtos toucador',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200784
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Vaporizadores toucador suas armações cabeças armações',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200783
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Acendedores',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200085
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Canetas tinteiro',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200535
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Canetas marcadorescom ponta feltro com outras pontas porosas',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200534
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Canetas esferográficas',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200533
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Sortidos viagempara toucador pessoas para costura para limpeza calçado roupas',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200598
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Pincéis para aplicação produtos cosméticos',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200597
;

-- 02/08/2018 18h47min9s BRT
UPDATE LBR_CEST SET Name='Pincéis para aplicação produtos cosméticos',Updated=TO_DATE('2018-08-02 18:47:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200782
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Pincéis escovas, para artistas pincéis escrever',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121151
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Escovas pincéis barbaescovas para cabelos,para cílios para unhas outras escovas toucador pessoas',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200781
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Vassouras escovas, mesmo constituindo partes máquinas, aparelhos, veículos, vassouras mecânicas uso manual não motorizadas, pincéis espanadores, cabeças preparadas para escovaspincéis artigos semelhantes, bonecas rolos para pinturarodos borracha matérias flexíveis semelhantesoutros',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121149
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Escovas dentesincluídas escovas para dentaduras',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200596
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Artigos para outras festascarnaval outros divertimentos',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121181
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Consoles máquinas jogos vídeo exceto classificados subposição 9504',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200680
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Abajures cabeceirasescritório lampadários interiorelétricos suas partes',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121069
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Assentos partes assentos',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200084
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Relógios para painéis instrumentos relógios semelhantes',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200083
;

-- 02/08/2018 18h47min10s BRT
UPDATE LBR_CEST SET Name='Reguladores voltagem eletrônicos',Updated=TO_DATE('2018-08-02 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200679
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Pressostatos',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200125
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Instrumentos aparelhos para regulação',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200124
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Termostatos',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200123
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Aparelhos digitaisuso veículos automóveis, para medida indicação múltiplas grandezas tais como, velocidade média, consumos instantâneo, médio autonomia, computador bordo ',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200081
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Amperímetros',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200080
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Analisadores gases fumaçasonda lambda ',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200101
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Pirômetrossuas partes acessórios',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200206
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Partes indicadores temperatura',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200121
;

-- 02/08/2018 18h47min11s BRT
UPDATE LBR_CEST SET Name='Termômetros, suas partes acessórios',Updated=TO_DATE('2018-08-02 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200205
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Indicadores temperatura',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200120
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Termômetros, inclusive digital',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200594
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Aparelhos massagem',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200678
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Contraceptivos, dispositivos intrauterinos DIUneutra',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120461
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Aparelhos diatermia',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200677
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Instrumentos desenhotraçado cálculo, metrosmicrômetros, paquímetroscalibres semelhantes, partes acessórios',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200204
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Bússolas',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200119
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Câmeras fotográficas para filmes revelação copiagem instantâneas',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200676
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Engates para reboques semirreboques',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200076
;

-- 02/08/2018 18h47min12s BRT
UPDATE LBR_CEST SET Name='Fitas, tirasadesivos, autocolantes, plástico, refletores, mesmo rolosplacas metálicas com película plástico refletorapróprias para colocação carrocerias para choques veículos carga, motocicletas, ciclomotores, capacetes, bonés agentes trânsito condutores veículos, atuando como dispositivos refletivos segurança rodoviários',Updated=TO_DATE('2018-08-02 18:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200089
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Outros veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, com motor explosão, exceto carro forte para transporte valores caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200749
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, frigoríficos isotérmicos com motor explosão, exceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200748
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, com motor explosão com caixa basculanteexceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200747
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, com motor explosãochassis cabina exceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200746
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Outros veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, com motor diesel semidieselexceto carro forte para transporte valores caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200745
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, frigoríficos isotérmicoscom motor diesel semidieselexceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200744
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladas, com motor diesel semidieselcom caixa basculanteexceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200743
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte mercadoriaspeso carga máxima não superior toneladaschassis com motor diesel semidiesel cabina exceto caminhão peso carga máxima superior toneladas',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200742
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Outros veículosequipados unicamente com motor elétrico para propulsão',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121117
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Automóveis equipados para propulsão simultaneamente com motor pistão por compressãodiesel semi diesel motor elétricosuscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121116
;

-- 02/08/2018 18h47min13s BRT
UPDATE LBR_CEST SET Name='Automóveis equipados para propulsão simultaneamente com motor pistão alternativo ignição por centelhafaíscamotor elétricosuscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121115
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis equipados para propulsão simultaneamente com motor pistão por compressãodiesel semi diesel motor elétrico exceto suscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121114
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis equipados para propulsão simultaneamente com motor pistão alternativo ignição por centelhafaíscamotor elétrico exceto suscetíveis serem carregados por conexão uma fonte externa energia elétricacarro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121113
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Outros automóveis unicamente com motor diesel semidieselcilindrada superior 2500 exceto carro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200741
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor diesel semidieselcilindrada superior 2500 com capacidade transporte pessoas sentadas inferior igualincluído condutorexceto carro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200740
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Outros automóveis unicamente com motor diesel semidieselcilindrada superior 1500 mas não superior 2500 exceto ambulânciacarro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200739
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor diesel semidieselcilindrada superior 1500 mas não superior 2500 com capacidade transporte pessoas sentadas inferior igualincluído condutorexceto ambulânciacarro celular carro funerário',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200738
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Outros automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 3000 exceto carro celularcarro funerário automóveis corrida',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200737
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 3000 com capacidade transporte pessoas sentadas inferior igualincluído condutorexceto carro celularcarro funerário automóveis corrida',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200736
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Outros automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 1500 mas não superior 3000 exceto carro celularcarro funerário automóveis corrida',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200735
;

-- 02/08/2018 18h47min14s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 1500 mas não superior 3000 com capacidade transporte pessoas sentadas inferior igualincluído condutorexceto carro celularcarro funerário automóveis corrida',Updated=TO_DATE('2018-08-02 18:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200734
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Outros automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 1000 mas não superior 1500 exceto carro celular',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200733
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada superior 1000 mas não superior 1500 com capacidade transporte pessoas sentadas inferior igualincluído condutorexceto carro celular',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200732
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Automóveis unicamente com motor pistão alternativo ignição por centelha faísca cilindrada não superior 1000 ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200731
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Outros veículos automóveis para transporte pessoas mais, incluindo motoristacom volume interno habitáculo destinado passageiros motorista superior mas inferior ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121112
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte pessoas mais, incluindo motorista, unicamente com motor elétrico para propulsãocom volume interno habitáculo destinado passageiros motorista superior mas inferior ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200730
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte pessoas mais, incluindo motoristacom motor pistão alternativo ignição por centelhafaíscamotor elétricocom volume interno habitáculo destinado passageiros motorista superior mas inferior ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121111
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte pessoas mais, incluindo motoristacom motor pistão, ignição por compressãodiesel semi diesel motor elétricocom volume interno habitáculo destinado passageiros motorista superior mas inferior ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121110
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Veículos automóveis para transporte pessoas mais, incluindo motorista, unicamente com motor pistão, ignição por compressãodiesel semidieselcom volume interno habitáculo destinado passageiros motorista superior mas inferior ',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200729
;

-- 02/08/2018 18h47min15s BRT
UPDATE LBR_CEST SET Name='Jogos fios para velas ignição outros jogos fios',Updated=TO_DATE('2018-08-02 18:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200072
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Cabos coaxiais outros condutores elétricos coaxiais',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200071
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Eletrificadores cercas eletrônicos',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200719
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Diodos emissores luzLEDexceto diodoslaser ',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200718
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Lâmpadas LEDDiodos Emissores Luz ',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200211
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Fusíveis corta circuitos fusíveis',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200065
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos sinalização acústica visualexceto uso automotivo',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200716
;

-- 02/08/2018 18h47min16s BRT
UPDATE LBR_CEST SET Name='Aparelhos elétricos para alarme uso automotivo',Updated=TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200118
;

-- 02/08/2018 18h47min17s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121263,0,0,'Y',TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-02 18:47:16','YYYY-MM-DD HH24:MI:SS'),100,'21.067.01','Projetores capazes serem conectados diretamente uma máquina automática para processamento dados posição concebidos para serem utilizados com esta máquina','6492ec19-8e75-4557-9520-cd2921320bd1')
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Monitores projetores que não incorporem aparelhos receptores televisãopolicromáticos',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200668
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Outros monitores capazes serem conectados diretamente uma máquina automática para processamento dados posição concebidos para serem utilizados com esta máquinapolicromáticos',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200669
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos receptores radiodifusão que funcionem com fonte externa energiatipo utilizado veículos automóveis',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200061
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Aparelhos receptores radiodifusão que funcionem com fonte externa energia combinados com aparelho gravação reprodução somtipo utilizado veículos automóveis',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200060
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Câmeras televisão suas partes',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200708
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Aparelhos transmissoresemissores, radiotelefonia radiotelegrafiarádio receptor transmissor ',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200059
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Cartões inteligentessmart cards ',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200664
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Cartões inteligentessim cards ',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200665
;

-- 02/08/2018 18h47min17s BRT
UPDATE LBR_CEST SET Name='Cartões memóriamemory cards ',Updated=TO_DATE('2018-08-02 18:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200663
;

-- 02/08/2018 18h47min18s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121264,0,0,'Y',TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),100,'01.062.01','Outros aparelhos videofônicos gravação reproduçãomesmo incorporando receptor sinais videofônicosdos tipos utilizados exclusivamente veículos automotores','337e2bbb-be6c-4e5c-8905-d2c2582ae589')
;

-- 02/08/2018 18h47min18s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos videofônicos gravação reproduçãomesmo incorporando receptor sinais videofônicos exceto uso automotivo',Updated=TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200662
;

-- 02/08/2018 18h47min18s BRT
UPDATE LBR_CEST SET Name='Gravador reprodutor editor imagem somdiscospor meio magnéticoóptico optomagnético exceto uso automotivo',Updated=TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200661
;

-- 02/08/2018 18h47min18s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos gravação somaparelhos reprodução somaparelhos gravação reprodução sompartes acessórios exceto uso automotivo',Updated=TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200660
;

-- 02/08/2018 18h47min18s BRT
UPDATE LBR_CEST SET Name='Aparelhos elétricos amplificação som para veículos automotores',Updated=TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200057
;

-- 02/08/2018 18h47min18s BRT
UPDATE LBR_CEST SET Name='Antenas próprias para telefones celulares portáteis exceto telescópicas',Updated=TO_DATE('2018-08-02 18:47:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200687
;

-- 02/08/2018 18h47min19s BRT
UPDATE LBR_CEST SET Name='Aparelhos emissores com receptor incorporado sistema troncalizadotrunkingtecnologia celular',Updated=TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200685
;

-- 02/08/2018 18h47min19s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos para comutação',Updated=TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200683
;

-- 02/08/2018 18h47min19s BRT
UPDATE LBR_CEST SET Name='Centrais automáticas privadascapacidade inferior igual ramais',Updated=TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200682
;

-- 02/08/2018 18h47min19s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121265,0,0,'Y',TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),100,'21.055.01','Outros aparelhos telefônicos','61d9a0a2-ff61-4ae9-9608-69f33ba15840')
;

-- 02/08/2018 18h47min19s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos telefônicos não combinados com outros aparelhos',Updated=TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200656
;

-- 02/08/2018 18h47min20s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121266,0,0,'Y',TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-02 18:47:19','YYYY-MM-DD HH24:MI:SS'),100,'21.053.01','Telefones para redes celulares portáteis exceto por satélite','aa0f3fcf-d676-43f1-8d4a-e4edb120919c')
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Telefones móveis tipo dos utilizados veículos automóveis ',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200055
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Aparelhos telefônicos por fio com unidade auscultador microfone sem fio',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200653
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Partes das chaleirasferrosfornos outros aparelhos eletrotérmicos posiçãodescritos nos CEST 043044045046047048049 050',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200652
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos eletrotérmicos uso doméstico Torradeiras',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200650
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos eletrotérmicos uso doméstico Cafeteiras',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200649
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Outros fornosfogareirosincluídas chapas cocçãogrelhas assadeiras exceto portáteis',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200647
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Outros fornosfogareirosincluídas chapas cocçãogrelhas assadeirasportáteis',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200648
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Fornos micro ondas',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200646
;

-- 02/08/2018 18h47min20s BRT
UPDATE LBR_CEST SET Name='Ferros elétricos passar',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200645
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos para arranjos cabelo',Updated=TO_DATE('2018-08-02 18:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200704
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Secadores cabelo',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200703
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Aparelhos elétricos iluminação sinalização exceto posição 8539limpadores para brisasdegeladores desembaçadoresdesembaciadoreselétricos suas partes',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200054
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Aparelhos sinalização acústicabuzina ',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200099
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Acumuladores elétricos chumbotipo utilizado para arranque dos motores pistão capacidade inferior tensão inferior igual',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120002
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Bobinas reatância autoindução',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200097
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Equipamentos alimentação ininterrupta energiaUPSbreak ',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200639
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Carregadores acumuladores',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200638
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Reatores para lâmpadas tubos descargas',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200209
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Geradores corrente alternada potência não superior kva',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200117
;

-- 02/08/2018 18h47min21s BRT
UPDATE LBR_CEST SET Name='Motor limpador para brisa',Updated=TO_DATE('2018-08-02 18:47:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200096
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name=' Máquinavidro elétrico porta',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200095
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Válvulas solenoides',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200047
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Válvulas redutoras pressão',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200045
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Climatizadores',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200706
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Outras unidades entrada saídapodendo conter, mesmo corpounidades memória',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200633
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Unidades processamento, pequena capacidade, exceto das subposições 8471, 8471, podendo conter, mesmo corpo dois dos seguintes tipos unidades, unidade memória, unidade entrada unidade saída, baseadas microprocessadores, com capacidade instalação, dentro mesmo gabinete, unidades memória subposição 8471, podendo conter múltiplos conectores expansão, slots, valor FOB inferior igual500,00por unidade',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200631
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Moto serras portáteis correntecom motor incorporadonão elétricouso agrícola',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120284
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Furadeiras elétricas',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200701
;

-- 02/08/2018 18h47min22s BRT
UPDATE LBR_CEST SET Name='Máquinas costura uso doméstico',Updated=TO_DATE('2018-08-02 18:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200628
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Outras máquinas secar uso doméstico',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200626
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Máquinas secar uso doméstico capacidade não superiorpeso roupa seca',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200625
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Outras máquinas lavar roupamesmo com dispositivos secagem, uso doméstico',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200622
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Outras máquinas lavar roupamesmo com dispositivos secagem, uso domésticocom secador centrífugo incorporado',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200621
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Máquinas lavar roupamesmo com dispositivos secagem, uso doméstico, capacidade não superiorpeso roupa secainteiramente automáticas',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200620
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Partes reconhecíveis como exclusiva principalmente destinadas máquinas agrícolas rodoviárias',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120001
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Caçambas, pás, ganchos tenazes para máquinas rodoviárias',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200116
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Partes para macacos CEST 043',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200043
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Macacos manuais para veículos',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200115
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Partes aparelhos mecânicos pulverizar dispersar',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200114
;

-- 02/08/2018 18h47min23s BRT
UPDATE LBR_CEST SET Name='Lavadora alta pressão suas partes',Updated=TO_DATE('2018-08-02 18:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200700
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Extintoresmesmo carregados',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200039
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Balanças uso doméstico',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200709
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Máquinas lavar louça tipo doméstico suas partes',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200616
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Filtros pólen condicionado',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200094
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Depuradores por conversão catalítica gases escape',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200041
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Filtros entrada para motores ignição por centelha por compressão',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200040
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Filtros vácuo',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200037
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Aparelhos para filtrar óleos minerais nos motores ignição por centelha por compressão',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200036
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Aparelhos elétricos para filtrar depurar águapurificadores água refrigerados exceto itens classificados CEST 098',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200699
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Outros aparelhos elétricos para filtrar depurar água',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121038
;

-- 02/08/2018 18h47min24s BRT
UPDATE LBR_CEST SET Name='Outras secadoras roupas centrífugas uso doméstico',Updated=TO_DATE('2018-08-02 18:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200613
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Condensador tubular metálico',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200112
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Partes dos refrigeradores, congeladoresmini adegas similaresmáquinas para produção gelo bebedouros descritos nos CEST 002003004005006007008009 013',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200611
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Máquinas para produção gelo',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200610
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Congeladores, freezersverticais tipo armáriocapacidade não superior 900 litros',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200607
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Congeladores, freezershorizontais tipo arcacapacidade não superior 800 litros',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200606
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Outros refrigeradores tipo doméstico',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200605
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Refrigeradores tipo doméstico, compressão',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200604
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Combinações refrigeradores congeladores, freezersmunidos portas exteriores separadas',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200603
;

-- 02/08/2018 18h47min25s BRT
UPDATE LBR_CEST SET Name='Outras partes para máquinas aparelhos condicionado que contenham ventilador motorizado dispositivos próprios para modificar temperatura umidade, incluindo máquinas aparelhos que umidade não seja regulável separadamente',Updated=TO_DATE('2018-08-02 18:47:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200707
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Unidades condensadoras, externas, aparelho condicionado tipo Split Systemsistema com elementos separados, com capacidade inferior igual 000 frigorias hora',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200698
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Unidades evaporadoras, internas, aparelho condicionado tipo Split Systemsistema com elementos separados, com capacidade inferior igual 000 frigorias hora',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200697
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Aparelhos condicionado com capacidade acima 000 frigorias hora',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200696
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Aparelhos condicionado com capacidade inferior igual 000 frigorias hora',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200695
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Aparelhos condicionado tipo Split Systemsistema com elementos separados, com unidade externa interna',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200694
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Partes das bombascompressores turbocompressores dos CEST 032033 034',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200034
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Partes ventiladores coifas aspirantes',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200692
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Coifas com dimensão horizontal máxima não superior 120',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200691
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Motoventiladores',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200093
;

-- 02/08/2018 18h47min26s BRT
UPDATE LBR_CEST SET Name='Ventiladores uso agrícola',Updated=TO_DATE('2018-08-02 18:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200690
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Bombas vácuo',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200032
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Bomba elétrica lavador para brisa',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200091
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Bomba assistência direção hidráulica',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200092
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Cilindros pneumáticos',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200090
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Outras guarnições, ferragens artigos semelhantes metais comunspara construçõesinclusive puxadores ',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200286
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Dobradiças, guarnições, ferragens artigos semelhantes metais comuns',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200025
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Dobradiças metais comuns, qualquer tipo',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200288
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Utensílios sortidos utensílios manicuros pedicuros, incluídas limas para unhas ',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200593
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Utensílios sortidos utensílios manicuros pedicuros, incluindo limas para unhas ',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200780
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Espátulas, artigos cutelaria ',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200592
;

-- 02/08/2018 18h47min27s BRT
UPDATE LBR_CEST SET Name='Apontadores lápis para maquiagem',Updated=TO_DATE('2018-08-02 18:47:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200779
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Espátulasabre cartas raspadeiras',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121145
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Lâminas espátulasabre cartas, raspadeiras apontadores lápis',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121146
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Aparelhos lâminas barbear',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120926
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Plaquetas pastilhas intercambiáveis',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200198
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Ferramentas pelo menos duas das posições 8202, 8205, acondicionadas sortidos para venda retalho',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200194
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Pinças para sobrancelhas',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200591
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Lâminas serras máquinas',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200189
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Folhas serras fita',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200188
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Peso para balanceamento roda outros utensílios estanho',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200022
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Artefatos higiene toucador alumíniopara uso construção',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200284
;

-- 02/08/2018 18h47min28s BRT
UPDATE LBR_CEST SET Name='Acessórios para tubospor exemplouniões, cotovelos, luvas mangasalumíniopara uso construção',Updated=TO_DATE('2018-08-02 18:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200282
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Manta subcobertura aluminizada',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200280
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Papel laminado papel espelho',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120849
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Artefatos higiene toucador cobrepara uso construção',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200279
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Cabostranças semelhantes, cobre não isolados para usos elétricos exceto uso automotivo',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200308
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Tubos cobre suas ligaspara instalações água quente gáspara uso construção',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200276
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Esponjas palhas aço esponjas para limpezapolimento uso semelhantes todas uso doméstico',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200302
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Geradores quente combustível líquidocom capacidade superior igual 500 kcalmas inferior igual 400 kcaltipo dos utilizados veículos automóveis',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200127
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Fogões cozinha uso doméstico suas partes',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200602
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Correntes elos soldadosferro fundidoferro aço',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200268
;

-- 02/08/2018 18h47min29s BRT
UPDATE LBR_CEST SET Name='Outras correntes elos articuladosferro fundidoferro aço',Updated=TO_DATE('2018-08-02 18:47:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200267
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Outras correntes transmissão',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200111
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Corrente transmissão',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200110
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Correntes rolosferro fundidoferro aço',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200266
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Corrente transmissão',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200109
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Arame farpadoferro açoarames tiras, retorcidosmesmo farpadosferro açodos tipos utilizados cercas',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200264
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Cilindro aço para GNVgás natural veicular ',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200017
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Recipientes para gases comprimidos liquefeitosferro fundidoferro aço exceto descrito item',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200018
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Outras barras próprias para construções exceto vergalhões',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200253
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Material para andaimespara armaçõescofragenspara escoramentos inclusive armações prontaspara estruturas concreto armado argamassa armadaeletrocalhas perfilados ferro fundidoferro açopróprios para construção exceto treliças aço',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200260
;

-- 02/08/2018 18h47min30s BRT
UPDATE LBR_CEST SET Name='Treliças aço',Updated=TO_DATE('2018-08-02 18:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200261
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Portas janelasseus caixilhosalizares soleiras ferro fundidoferro aço',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200259
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Outros fios ferro açonão ligadosgalvanizados',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120351
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Outros fios ferro açonão ligadosgalvanizados com teor carbono superior igualpeso',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200257
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Fios ferro aço não ligadosnão revestidosmesmo polidoscordascabostrançasentrançadoslingas artefatos semelhantesferro açonão isolados para usos elétricos',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200256
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Barras próprias para construções exceto vergalhões',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200252
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Lentes faróislanternas outros utensílios',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200016
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Objetos para serviço mesa exceto coposcozinha exceto vitrocerâmica',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200336
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Outros copos exceto vitrocerâmica',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200335
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Mamadeiras',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200601
;

-- 02/08/2018 18h47min31s BRT
UPDATE LBR_CEST SET Name='Moldura com espelho',Updated=TO_DATE('2018-08-02 18:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200108
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Vidros dimensões formatos que permitam aplicação automotiva',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200014
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Artefatos higiene toucador cerâmica',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200244
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Artigos para serviço mesa cozinhacerâmica',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120474
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Artigos para serviço mesa cozinhaporcelanainclusive descartáveis avulsos',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120473
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Artigos para serviço mesa cozinhaporcelanainclusive descartáveis estojos',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120472
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Tuboscalhas algerozes acessórios para canalizaçõescerâmica',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200240
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Outros para brisas',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200107
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Tijolosplacaslajesladrilhos outras peças cerâmicas farinhas siliciosas fósseiskieselghurtripolitadiatomitapor exemploterras siliciosas semelhantes',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200236
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Juntas vedação cortiça natural amianto',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200087
;

-- 02/08/2018 18h47min32s BRT
UPDATE LBR_CEST SET Name='Telhas concreto',Updated=TO_DATE('2018-08-02 18:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200233
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Chapéus outros artefatos outras matérias exceto malha',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121180
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Capacetes artefatos uso semelhanteproteçãopara uso motocicletasincluídos ciclomotores',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200012
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Roupas toucador cozinhatecidos atoalhados algodão',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121178
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Outros acessórios confeccionadosvestuário',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121177
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Outras meias malha outras matérias têxteis',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121176
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Forração interior capacete',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200106
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Correias transmissão borracha vulcanizadamatérias têxteismesmo impregnadas, revestidas recobertasplásticoestratificadas com plástico reforçadas com metal com outras matérias',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200005
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Mangueiras tubos semelhantesmatérias têxteismesmo com reforço acessórios outras matérias',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200010
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Tecidos impregnados, revestidos, recobertos estratificadoscom plástico',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200009
;

-- 02/08/2018 18h47min33s BRT
UPDATE LBR_CEST SET Name='Tapetes, revestimentosmesmo confeccionadosbatentesbuchas coxins',Updated=TO_DATE('2018-08-02 18:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200008
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Tapetes matérias têxteis sintéticas',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200105
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Tapetes carpetes nailón',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200104
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Sutiã descartávelassemelhados papel para depilação',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200590
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Artefatos pasta fibra uso automotivo',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200103
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Hastes flexíveisuso não medicinal ',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200589
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Outros impressos publicitárioscatálogos comerciais semelhantes',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121175
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Cartões postais impressos ilustradoscartões impressos com votos mensagens pessoaismesmo ilustradoscom sem envelopesguarnições aplicaçõesconhecidos como cartões expressão social época sentimento ',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200532
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Papel diagrama para tacógrafodisco',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200088
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Etiquetas papel cartão impressas',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121174
;

-- 02/08/2018 18h47min34s BRT
UPDATE LBR_CEST SET Name='Pastas para documentosoutros artigos escolaresescritório papelariapapel cartão capas para livrospapel cartão',Updated=TO_DATE('2018-08-02 18:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200531
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Álbuns para amostras para coleções',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200530
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Formulários blocos tipomanifoldmesmo com folhas intercaladas papel carbono',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200529
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Classificadorescapas para encadernação exceto capas para livroscapas processos',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200528
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Cadernos',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200527
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Livros registro contabilidade blocos nota sencomendas, recibos apontamentos papel para cartas agendas artigos semelhantes',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200526
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Outros sacos bolsas cartuchos papel cartão',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121173
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Caixas cartonagens dobráveis papel cartão não ondulados',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121172
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Toalhas cozinha papel toalha uso doméstico ',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200585
;

-- 02/08/2018 18h47min35s BRT
UPDATE LBR_CEST SET Name='Toalhas guardanapos mesa',Updated=TO_DATE('2018-08-02 18:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200584
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Lençosincluídos maquilagemtoalhas mão',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200582
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel toalha uso institucional tipo comercializado rolos igual superior metros tipo comercializado folhas intercaladas',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200583
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Lenços papelincluindo desmaquiar',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200778
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Toalhas mão',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121143
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel higiênico folha simples',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200580
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel higiênico folha dupla tripla',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200581
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel hectográfico',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200519
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Bobina para máquina calcularPDV equipamentos similares',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200515
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Bobina para fax',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200513
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel fantasia',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200523
;

-- 02/08/2018 18h47min36s BRT
UPDATE LBR_CEST SET Name='Papel almaço',Updated=TO_DATE('2018-08-02 18:47:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200518
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Papel crepon',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200522
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Papel impermeável',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200521
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Papel fotográfico excetopapéis fotográficos emulsionados com haleto prata tipo brilhante matte lustrerolocom largura igual superior 102 comprimento inferior igual 350 papéis fotográficos emulsionados com haleto prata tipo brilhante foscofolha com largura igual superior 152 comprimento inferior igual 307 iiipapel qualidade fotográfica com tecnologiaThermo autochromeque submetido processo aquecimento seja capaz formar imagens por reação química combinação das camadas cyanmagenta amarela',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200517
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Ferramentas armações cabos ferramentas madeira',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200185
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Outros artefatos outras matérias',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200798
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Outros artefatosfolhas plásticos matérias têxteis',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200797
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Artigos bolsos bolsas outras matérias',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200796
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Bolsas outras matérias',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200795
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Bolsas matérias têxteis',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200794
;

-- 02/08/2018 18h47min37s BRT
UPDATE LBR_CEST SET Name='Bolsas folhas plástico',Updated=TO_DATE('2018-08-02 18:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200793
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Ferramentas borracha vulcanizada não endurecida',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200184
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Juntas gaxetas outros elementos com função semelhante vedação',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200006
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Partes veículos automóveis tratores máquinas autopropulsadas',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200007
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Luvas cirúrgicas luvas procedimento neutra',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200331
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Chupetas bicos para mamadeiras para chupetas borracha',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200576
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Chupetas bicos para mamadeiras para chupetas',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200788
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Bolsa para gelo para água quente',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200575
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Preservativo neutra',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200332
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Câmaras borracha dos tipos utilizados bicicletas',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200349
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Pneus novos borracha dos tipos utilizados bicicletas',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200344
;

-- 02/08/2018 18h47min38s BRT
UPDATE LBR_CEST SET Name='Pneus novos dos tipos utilizados automóveis passageiros incluídos veículos uso misto camionetas automóveis corrida ',Updated=TO_DATE('2018-08-02 18:47:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200340
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Perfilados borracha vulcanizada não endurecida',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200102
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Prancheta plástico',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200512
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Chupetas bicos para mamadeiras para chupetassilicone',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200578
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Outras obras plásticos',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200792
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Estatuetas outros objetos ornamentaçãoplásticos',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200791
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Frisosdecalquesmolduras acabamentos',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200004
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Vestuário seus acessóriosplásticosinclusive luvas',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200790
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Artigos escritório artigos escolares plástico outros materiais classificados nas posições 3901 3914exceto estojos',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200510
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Postigosestores, incluídas venezianas, artefatos semelhantes suas partes',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200230
;

-- 02/08/2018 18h47min39s BRT
UPDATE LBR_CEST SET Name='Portasjanelas seus caixilhosalizares soleiras',Updated=TO_DATE('2018-08-02 18:47:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200229
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Caixa d’água inclusive sua tampa plástico, mesmo reforçadas com fibra vidro',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200226
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Artefatos para apetrechamento construções, plásticos, não especificados nem compreendidos outras posiçõesincluindo persianassancasmoldurasapliques rosetascaixilhos polietileno outros plásticos, exceto descritos nos CEST 015 016',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200228
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Serviços mesa outros utensílios mesa cozinha, plástico, não descartáveis',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120470
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Serviços mesa outros utensílios mesa cozinhaplástico, descartáveis',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120471
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Reservatórios óleo',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200003
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Papel celofane tipo celofane',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200520
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Protetores caçamba',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200002
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Espiral perfil para encadernação plástico outros materiais classificados nas posições 3901 3914',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200508
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Outros espirais perfil para encadernação plástico outros materiais classificados nas posições 3901 3914',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200509
;

-- 02/08/2018 18h47min40s BRT
UPDATE LBR_CEST SET Name='Biodiesel suas misturasque não contenham que contenham menospesoóleos petróleo óleos minerais betuminosos',Updated=TO_DATE('2018-08-02 18:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120258
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Catalisadores colmeia cerâmica metálica para conversão catalítica gases escape veículos outros catalisadores',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120000
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Amaciante suavizante',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200299
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Água sanitáriabranqueador outros alvejantes',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200292
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Detergentesflocospalhetasgrânulos outras formas semelhantes',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200295
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Detergentes líquidos exceto para lavar roupa',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200296
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Produtos preparações orgânicos tensoativos para lavagem peleforma líquido cremeacondicionados para venda retalhomesmo contendo sabão',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200574
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Produtos preparações orgânicos tensoativos para lavagem peleforma líquido cremeacondicionados para venda retalhomesmo contendo sabão',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200777
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Sabõesflocospalhetasgrânulos outras formas semelhantespara lavar roupas',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200293
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Sabões toucador sob outras formas',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200573
;

-- 02/08/2018 18h47min41s BRT
UPDATE LBR_CEST SET Name='Sabões toucador sob outras formas',Updated=TO_DATE('2018-08-02 18:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200776
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros sabõesprodutos preparaçõesbarraspedaços figuras moldados',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200572
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros sabõesprodutos preparações orgânicos tensoativosinclusive papelpastasouatesfeltros falsos tecidosimpregnados, revestidos recobertos sabão detergentes',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200775
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Sabões toucador barraspedaços figuras moldados',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200571
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Sabões toucadorbarraspedaços figuras moldadas',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200774
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros produtos perfumaria preparados',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200569
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros produtos toucador preparados',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120885
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Soluções para lentes contato para olhos artificiais',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200570
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros produtos perfumaria toucador preparados',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200772
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Sais perfumados outras preparações para banhos',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200568
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outros Desodorantes, desodorizantes, corporais exceto classificados CEST 029',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200566
;

-- 02/08/2018 18h47min42s BRT
UPDATE LBR_CEST SET Name='Outras loções óleos desodorantes hidratantes',Updated=TO_DATE('2018-08-02 18:47:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120881
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Outros desodorantes corporais antiperspirantes',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200771
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Desodorantes, desodorizantes, corporais líquidos exceto classificados CEST 027',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200564
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Loções óleos desodorantes hidratantes líquidos',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120878
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Desodorantes corporais antiperspiranteslíquidos',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200770
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Preparações para barbearantesdurante após ',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200563
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Preparações para barbearantesdurante após ',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200769
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Outras preparações para higiene bucal dentária',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200562
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Fios utilizados para limpar espaços interdentaisfios dentais ',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200561
;

-- 02/08/2018 18h47min43s BRT
UPDATE LBR_CEST SET Name='Outras preparações capilaresincluindo máscaras finalizadores',Updated=TO_DATE('2018-08-02 18:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200557
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Tintura para cabelo',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200559
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Tintura para cabelo',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200768
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Laquês para cabelo',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200556
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Preparações para ondulação alisamentopermanentesdos cabelos',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200555
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Preparações para ondulação alisamentopermanentesdos cabelos',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200766
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Xampus para cabelo',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200554
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Xampus para cabelo',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200765
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Outros produtos beleza maquilagem preparados preparações para conservação cuidados peleexceto preparações solares antissolares',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200552
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Preparações solares antissolares',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200553
;

-- 02/08/2018 18h47min44s BRT
UPDATE LBR_CEST SET Name='Outros produtos beleza maquiagem preparados preparações para conservação cuidados peleexceto preparações antissolares bronzeadores',Updated=TO_DATE('2018-08-02 18:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200763
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Preparações antissolares bronzeadores',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200764
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Cremes beleza cremes nutritivos loções tônicas',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200551
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Cremes beleza cremes nutritivos loções tônicas',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200762
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Pósincluídos compactos',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200550
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Pós para maquiagem incluindo compactos',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200761
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Preparações para manicuros pedicuros incluindo removedores esmalte base acetona',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200549
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Preparações para manicuros pedicuros',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200760
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Outros produtos maquilagem para olhos',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200548
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Outros produtos maquiagem para olhos',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200759
;

-- 02/08/2018 18h47min45s BRT
UPDATE LBR_CEST SET Name='Sombra, delineador, lápis para sobrancelhas rímel',Updated=TO_DATE('2018-08-02 18:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200547
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Sombra, delineador, lápis para sobrancelhas rímel',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200758
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Produtos maquilagem para lábios',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200546
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Produtos maquiagem para lábios',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200757
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Águas colônia',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200545
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Águas colônia',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200756
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Perfumes, extratos ',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200544
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Perfumes, extratos ',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200755
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Corantes para aplicação basestintas vernizes',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121085
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Xadrez pós assemelhados exceto pigmentos base dióxido titânio classificados código 3206',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200728
;

-- 02/08/2018 18h47min46s BRT
UPDATE LBR_CEST SET Name='Preparações químicas contraceptivas base hormôniosoutros produtos posição espermicidas positiva',Updated=TO_DATE('2018-08-02 18:47:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200324
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Preparações químicas contraceptivas base hormôniosoutros produtos posição espermicidas negativa',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120445
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Curativos, pensos, adesivos outros artigos com uma camada adesivaimpregnados recobertos substâncias farmacêuticas Lista Positiva',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200329
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Curativos, pensos, adesivos outros artigos com uma camada adesivaimpregnados recobertos substâncias farmacêuticas Lista Negativa',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120454
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Peróxido hidrogênioembalagens conteúdo inferior igual 500',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200541
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Amoníaco solução aquosaamônia ',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200540
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Gás xisto',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120256
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleo botijãoGLP ',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200181
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleoGLPexceto botijão',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120247
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleo botijãoGLGNn ',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120248
;

-- 02/08/2018 18h47min47s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleoGLGNnexceto botijão',Updated=TO_DATE('2018-08-02 18:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120249
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleo botijãoGLGNi ',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120250
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleoGLGNiexceto botijão',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120251
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleo botijãoMisturas ',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120252
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gás liquefeito petróleoMisturas exceto botijão',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120253
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gás Natural Liquefeito',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200182
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Óleos petróleo minerais betuminosos exceto óleos brutos preparações não especificadas nem compreendidas noutras posiçõesque contenhamcomo constituintes básicos maispesoóleos petróleo minerais betuminososque contenham biodieselexceto resíduos óleos',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120260
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Querosenes exceto aviação',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200174
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Querosene aviação',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200175
;

-- 02/08/2018 18h47min48s BRT
UPDATE LBR_CEST SET Name='Gasolina automotiva exceto Premium',Updated=TO_DATE('2018-08-02 18:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200172
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Gasolina automotiva exceto Premium',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120223
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Gasolina automotiva Premium',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120224
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Gasolina automotiva Premium',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120225
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Gasolina aviação',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200173
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Aperitivos amargos bitter similares',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200129
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Batida similares',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200130
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Catuaba similares',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200133
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Jurubeba similares',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200137
;

-- 02/08/2018 18h47min49s BRT
UPDATE LBR_CEST SET Name='Derivados vodka',Updated=TO_DATE('2018-08-02 18:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200147
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Sangrias coquetéis',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200151
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Licores similares',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200138
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Gim gingenebra',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200136
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Cachaça aguardentes',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200132
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Conhaquebrandy similares',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200134
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Aguardente vínica grappa',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200149
;

-- 02/08/2018 18h47min50s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121267,0,0,'Y',TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),100,'06.001.01','Álcool etílico não desnaturado com teor alcoólico volume igual superiorvol Outrosálcool etílico hidratado combustível ','c9af8d0e-b092-4771-b741-09c3266706e5')
;

-- 02/08/2018 18h47min50s BRT
UPDATE LBR_CEST SET Name='Álcool etílico não desnaturado com teor alcoólico volume igual superiorvol Com teor água igual inferior volálcool etílico anidro combustível ',Updated=TO_DATE('2018-08-02 18:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200171
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Saquê',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200141
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Sidra similares',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200150
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Outras águas mineraispotáveis naturaisgasosas nãoinclusive gaseificadas aromatizadas artificialmente',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200161
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas energéticas embalagem com capacidade inferior 600ml',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200166
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas energéticas embalagem com capacidade igual superior 600ml',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200167
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas hidroeletrolíticasisotônicasembalagem com capacidade inferior 600ml',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120208
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Néctares frutas outras bebidas não alcoólicas prontas para beberexceto isotônicos energéticos',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200501
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas prontas base mate chá',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200502
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas prontas base café',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120800
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas alimentares prontas base sojaleite cacauinclusive produtos denominados bebidas lácteas',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120801
;

-- 02/08/2018 18h47min51s BRT
UPDATE LBR_CEST SET Name='Bebidas hidroeletrolíticasisotônicasembalagem com capacidade igual superior 600ml',Updated=TO_DATE('2018-08-02 18:47:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120210
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Águas mineraispotáveis naturaisgasosas nãoinclusive gaseificadas aromatizadas artificialmenteexceto refrescos refrigerantes',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200160
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Refrescos outras bebidas prontas para beberbase chá mate',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200499
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Refrescos outras bebidas não alcoólicas exceto refrigerantes demais bebidas nos CEST 007 110',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200500
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineralgasosa nãopotávelnaturaisgarrafa vidroretornável nãocom capacidade até 500',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200154
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineralgasosa não potável naturais embalagem com capacidade igual superior 000 exceto classificadas CEST 024 025',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200155
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineralgasosa não potável naturais embalagem vidronão retornávelcom capacidade até 300',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200156
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineralgasosa nã opotável naturais garrafa plástica 500',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200157
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineralgasosa não potável naturais copos plásticos embalagem plástica com capacidade até 500',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200158
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Outras águas minerais potáveis naturais gasosas nãoinclusive gaseificadas exceto classificadas CEST 024 025',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200159
;

-- 02/08/2018 18h47min52s BRT
UPDATE LBR_CEST SET Name='Água mineral embalagens retornáveis com capacidade igual superiordezinferiorvintelitros',Updated=TO_DATE('2018-08-02 18:47:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120215
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Água mineral embalagens retornáveis com capacidade igual superior vinte litros',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120216
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Chá mesmo aromatizado',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200468
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Xarope extrato concentrado destinados preparo refrigerante máquinapré mix post mix ',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200165
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Condimentos temperos compostosincluindo molho pimenta outros molhos embalagens imediatas conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200396
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Maionese embalagens imediatas conteúdo inferior igual 650 exceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200401
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Mostarda preparada embalagens imediatas conteúdo inferior igual 650 exceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200399
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Farinha mostarda embalagens conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200398
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Catchup embalagens imediatas conteúdo inferior igual 650 exceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200395
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Molhos tomate embalagens imediatas conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200403
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Molhos soja preparados embalagens imediatas conteúdo inferior igual 650 exceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200397
;

-- 02/08/2018 18h47min53s BRT
UPDATE LBR_CEST SET Name='Preparações para cappuccino similares embalagens conteúdo inferior igual 500',Updated=TO_DATE('2018-08-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200496
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Milho para pipocamicro ondas ',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200487
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Produtos hortícolas frutas cascas frutas outras partes plantas conservados com açúcar passados por caldaglaceados cristalizados embalagens conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200460
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Produtos hortícolas frutas cascas frutas outras partes plantas conservados com açúcar passados por caldaglaceados cristalizados embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200461
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Batata fritainhame mandioca fritos',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200390
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Salgadinhos diversos',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200389
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Outros pães exceto classificado CEST 062',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200426
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Outros bolos industrializados produtos panificação não especificados anteriormenteincluindo pizzas exceto classificados nos CEST 062 062',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120667
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas derivados farinha trigo dos tipos cream cracker água sal ',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200420
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas não derivados farinha trigo dos tipos cream cracker água sal ',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120660
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Outras bolachas, exceto casquinhas para sorvete biscoitos bolachas relacionados nos CEST 056 056',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120661
;

-- 02/08/2018 18h47min54s BRT
UPDATE LBR_CEST SET Name='Outros pães forma',Updated=TO_DATE('2018-08-02 18:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200424
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Torradaspão torrado produtos semelhantes torrados',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200423
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name=' Waffles waferssem cobertura',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200421
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name=' Waffles waferscom cobertura',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200422
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas derivados farinha trigo exceto dos tipos cream cracker água sal maisena mariaoutros consumo popular que não sejam adicionados cacau nem recheados, cobertos amanteigados, independentemente sua denominação comercial ',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200416
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas derivados farinha trigo dos tipos maisena mariaoutros consumo popular que não sejam adicionados cacau nem recheados, cobertos amanteigados, independentemente sua denominação comercialexceto CEST 053',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200417
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas derivados farinha trigo dos tipos cream cracker água salconsumo popular',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120655
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas não derivados farinha trigo exceto dos tipos cream cracker água sal maisena mariaoutros consumo popular que não sejam adicionados cacau nem recheados, cobertos amanteigados, independentemente sua denominação comercial ',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200418
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas não derivados farinha trigo dos tipos maisena mariaoutros consumo popular que não sejam adicionados cacau nem recheados, cobertos amanteigados, independentemente sua denominação comercialexceto CEST 054',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120657
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Biscoitos bolachas não derivados farinha trigo dos tipos cream cracker água salconsumo popular',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120658
;

-- 02/08/2018 18h47min55s BRT
UPDATE LBR_CEST SET Name='Bolo forma inclusive especiarias',Updated=TO_DATE('2018-08-02 18:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200414
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Panetones',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200415
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Pão denominado knackebrot',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200427
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Produtos base cereais obtidos por expansão torrefação',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200387
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Barra cereais',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200404
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Massas alimentícias tipo instantânea',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200409
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Massas alimentícias recheadasmesmo cozidas preparadas outro modo ',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120643
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Massas alimentícias tipo comumnão cozidas nem recheadasnem preparadas outro modoque não contenham ovos',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120647
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Massas alimentícias tipo sêmolanão cozidas nem recheadasnem preparadas outro modoque não contenham ovos',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120648
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Massas alimentícias tipo granoduronão cozidas nem recheadasnem preparadas outro modoque não contenham ovos',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120649
;

-- 02/08/2018 18h47min56s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para bolos, embalagem inferior',Updated=TO_DATE('2018-08-02 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200408
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para bolos, embalagem igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120612
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para bolos, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120614
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para bolos, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120616
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para bolos, embalagem superior',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120618
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães com menosfarinha trigo sua composição finalembalagem inferior',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120620
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães com menosfarinha trigo sua composição finalembalagem igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120622
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães com menosfarinha trigo sua composição finalembalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120624
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães com menosfarinha trigo sua composição finalembalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120626
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães com menosfarinha trigo sua composição finalembalagem superior',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120628
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães commínimo farinha trigo sua composição finalembalagem inferior',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120630
;

-- 02/08/2018 18h47min57s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães commínimo farinha trigo sua composição finalembalagem igual',Updated=TO_DATE('2018-08-02 18:47:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120632
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães commínimo farinha trigo sua composição finalembalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120634
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães commínimo farinha trigo sua composição finalembalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120636
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Misturas preparações para pães commínimo farinha trigo sua composição finalembalagem superior',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120638
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Doces leite',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200386
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Preparações para alimentação infantil base farinhasgrumossêmolas amidos outros',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200364
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Farinha láctea',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200362
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Leite modificado para alimentação crianças',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200363
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Chocolates outras preparações alimentícias contendo cacauembalagens conteúdo inferior igualexcluídos achocolatados ovos páscoa chocolate ',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200353
;

-- 02/08/2018 18h47min58s BRT
UPDATE LBR_CEST SET Name='Ovos páscoa chocolate',Updated=TO_DATE('2018-08-02 18:47:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120496
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Achocolatados embalagens conteúdo inferior igualexceto classificados CEST 006',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200355
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Achocolatadoscápsulas',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120499
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Caixas bombons contendo cacauembalagens conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200356
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Bombons, balas, caramelos, confeitos, pastilhas outros produtos confeitariacontendo cacau',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200358
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Barra cereais contendo cacau',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200405
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Chocolate barras, tabletes blocos estado líquidopasta grânulos formas semelhantes, recipientes embalagens imediatas conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200352
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Chocolates contendo cacauembalagens conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200351
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Cacaucom adição açúcar outros edulcorantes embalagens conteúdo inferior igual 1kg',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120498
;

-- 02/08/2018 18h47min59s BRT
UPDATE LBR_CEST SET Name='Bombonsinclusive base chocolate branco sem cacau',Updated=TO_DATE('2018-08-02 18:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200357
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Chocolate brancoembalagens conteúdo inferior igualexcluídos ovos páscoa chocolate ',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200350
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Ovos páscoa chocolate branco',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200354
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado, embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200472
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado, embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200473
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado, embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120761
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar cristal embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200476
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar cristal embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120768
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Açúcar cristal embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120770
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200478
;

-- 02/08/2018 18h48min0s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200479
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200480
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado adicionado aromatizante corante embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200474
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado adicionado aromatizante corante embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200475
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Açúcar refinado adicionado aromatizante corante embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120765
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Açúcar cristal adicionado aromatizante corante, embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200477
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Açúcar cristal adicionado aromatizante corante, embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120773
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar adicionado aromatizante corante, embalagens conteúdo inferior igualexceto embalagens contendo envelopes individualizados, sachês, conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200481
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar adicionado aromatizante corante, embalagens conteúdo superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200482
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Outros tipos açúcar adicionado aromatizante corante, embalagens conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200483
;

-- 02/08/2018 18h48min1s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas atuns',Updated=TO_DATE('2018-08-02 18:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120705
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sangueespécie bovina exceto descritos CEST 079',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120702
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sangueespécie suínaoutrasincluindo misturas exceto descritos CEST 079',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120701
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sangueespécie suínapernas respectivos pedaços',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120700
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sanguetodas aves posiçãogalos galinhascom conteúdo carne miudezas superior igual pesocozidas',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120699
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sangue, aves posiçãogalos galinhascom conteúdo carne miudezas superior igual pesonão cozidas',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120698
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Outras preparações conservas carne, miudezas sangue, aves posição, peruas perus ',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120697
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Enchidos, embutidos, produtos semelhantes, carne, miudezas sangueexceto salsichalinguiça mortadela',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200442
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Salsicha linguiça exceto descritas nos CEST 077',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200443
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Salsicha lata',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120694
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Mortadela',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200444
;

-- 02/08/2018 18h48min2s BRT
UPDATE LBR_CEST SET Name='Misturas óleos refinadospara consumo humanorecipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200440
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Margarina creme vegetal recipiente conteúdo inferior igual 500 exceto embalagens individuais conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200381
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Margarina creme vegetalrecipiente conteúdo superior 500 inferior igualexceto embalagens individuais conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200383
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Margarina creme vegetalrecipiente conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120554
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Gorduras óleos vegetais respectivas frações, parcial totalmente hidrogenados interesterificados, reesterificados elaidinizadosmesmo refinados, mas não preparados outro modo, recipiente conteúdo inferior igualexceto embalagens individuais conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200384
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Gorduras óleos vegetais respectivas frações, parcial totalmente hidrogenados interesterificados, reesterificados elaidinizadosmesmo refinados, mas não preparados outro modo, recipiente conteúdo superiorexceto embalagens individuais conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200385
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Óleo milho refinadorecipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200436
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Óleo linhaça refinadorecipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200435
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Outros óleos refinados, recipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200437
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Óleo algodão refinado recipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120680
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Óleo girassol recipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200433
;

-- 02/08/2018 18h48min3s BRT
UPDATE LBR_CEST SET Name='Outros óleos respectivas frações, obtidos exclusivamente partir azeitonas, mesmo refinados, mas não quimicamente modificados, misturas desses óleos frações com óleos frações posiçãorecipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200432
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Óleo soja refinadorecipientes com capacidade inferior igual litros, exceto embalagens individuais conteúdo inferior igual mililitros',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200429
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Carnes demais produtos comestíveis frescos, resfriadoscongeladossalgados salmourados resultantes abate caprinos',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200452
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Henna embalagens conteúdo inferior igual 200 ',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200537
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Henna embalagens conteúdo superior 200 ',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200538
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Outras plantas partes, para perfumariamedicina semelhantes',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200789
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Farinha mistura trigo com centeiométeil ',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200407
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem inferior igual',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200406
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120582
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem igual',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120583
;

-- 02/08/2018 18h48min4s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120584
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120585
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120586
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120587
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120588
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica especial, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120589
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica com fermento, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120590
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120591
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120592
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior inferior',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120593
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo especial, embalagem superior',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120594
;

-- 02/08/2018 18h48min5s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica especial, embalagem inferior igual',Updated=TO_DATE('2018-08-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120595
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica especial, embalagem superior inferior',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120596
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica especial, embalagem igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120597
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica especial, embalagem superior',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120598
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica com fermento, embalagem inferior igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120599
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica com fermento, embalagem superior inferior',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120600
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica com fermento, embalagem igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120601
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Farinha trigo doméstica com fermento, embalagem superior',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120602
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Outras farinhas trigo, embalagem inferior igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120603
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Outras farinhas trigo, embalagem superior inferior',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120604
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Outras farinhas, trigo, embalagem igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120605
;

-- 02/08/2018 18h48min6s BRT
UPDATE LBR_CEST SET Name='Outras farinhas trigo, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120606
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Outras farinhas trigo, embalagem superior inferior igual',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120607
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Outras farinhas trigo, embalagem superior',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120608
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Queijo minas frescal',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200378
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Queijo muçarela',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200377
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Manteiga garrafa',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120551
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Manteiga, embalagem conteúdo inferior igualexceto embalagens individuais conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200379
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Manteiga, embalagem conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200380
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Coalhada',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200372
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Creme leite, recipiente conteúdo inferior igual',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200368
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Creme leiterecipiente conteúdo superior',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120528
;

-- 02/08/2018 18h48min7s BRT
UPDATE LBR_CEST SET Name='Outros cremes leiterecipiente conteúdo inferior igual 1kg',Updated=TO_DATE('2018-08-02 18:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120532
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leite recipiente conteúdo inferior igual litro',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200366
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leite recipiente conteúdo superior litro inferior igual litros',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120518
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leite tipo pasteurizado recipiente conteúdo inferior igual litro',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200367
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leite tipo pasteurizado recipiente conteúdo superior litro inferior igual litros',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120522
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leitelonga vida UHT Ultra High Temperaturerecipiente conteúdo inferior igual litros',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200365
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Leitelonga vida UHT Ultra High Temperaturerecipiente conteúdo superior litros inferior igual litros',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120514
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Carne gado bovino, ovino, bufalino produtos comestíveis resultantes matança desse gado submetidos salga, secagem desidratação',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200449
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Carnes demais produtos comestíveis frescos, resfriados, congelados, salgados, salmoura, simplesmente temperados, secos defumados, resultantes abate aves, exceto descritos CEST 087',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1200453
;

-- 02/08/2018 18h48min8s BRT
UPDATE LBR_CEST SET Name='Carnes demais produtos comestíveis frescos, resfriadoscongelados salgados salmoura simplesmente temperadossecos defumados, resultantes abate suínos',Updated=TO_DATE('2018-08-02 18:48:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120723
;

-- 02/08/2018 18h48min9s BRT
UPDATE LBR_CEST SET Name='Outras peças partes acessórios para veículos automotores não relacionados nos demais itens deste anexo',Updated=TO_DATE('2018-08-02 18:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1120154
;

-- 02/08/2018 18h48min9s BRT
UPDATE LBR_CEST SET Name='Outros produtos comercializados pelo sistema marketing direto porta porta consumidor final não relacionados outros itens deste anexo',Updated=TO_DATE('2018-08-02 18:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_CEST_ID=1121262
;

-- 08/08/2018 15h26min12s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121268,0,0,'Y',TO_DATE('2018-08-08 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,'20.048.01','Fraldas fibras têxteis','c42e6f06-3a9e-4c8e-a49c-49e8a1af0dbb')
;

-- 08/08/2018 15h26min13s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121269,0,0,'Y',TO_DATE('2018-08-08 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:12','YYYY-MM-DD HH24:MI:SS'),100,'28.028.01','Pincéis escovas para artistas pincéis de escrever','eed28a89-0dce-410b-a15e-6de0d51c760d')
;

-- 08/08/2018 15h26min13s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121270,0,0,'Y',TO_DATE('2018-08-08 15:26:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:13','YYYY-MM-DD HH24:MI:SS'),100,'28.027.01','Vassouras escovas mesmo constituindo partes máquinas aparelhos veículos vassouras mecânicas uso manual não motorizadas pincéis espanadores cabeças preparadas para escovas pincéis artigos semelhantes bonecas rolos para pinturaro dos borracha matérias flexíveis semelhantes outros','d740387a-4858-4b85-993c-815eedf64112')
;

-- 08/08/2018 15h26min14s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121271,0,0,'Y',TO_DATE('2018-08-08 15:26:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:13','YYYY-MM-DD HH24:MI:SS'),100,'28.054.00','Artigos para outras festas carnaval outros divertimentos','b176c08c-acf1-4c42-8ac5-d54e2efca16e')
;

-- 08/08/2018 15h26min14s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121272,0,0,'Y',TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,'21.124.00','Abajures cabeceiras escritório lampadários interior elétricos suas partes','00b6fb4c-1d95-4c3c-82b0-4691ac1bcd80')
;

-- 08/08/2018 15h26min14s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121273,0,0,'Y',TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,'13.016.00','Contraceptivos dispositivos intrauterinos DIU neutra','2e322c7f-1cbe-458b-9570-2efe91e4de4a')
;

-- 08/08/2018 15h26min15s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121274,0,0,'Y',TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,'25.029.00','Outros veículos equipados unicamente com motor elétrico para propulsão','65b54614-eb0e-4fbd-9775-3910eb784395')
;

-- 08/08/2018 15h26min15s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121275,0,0,'Y',TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,'25.028.00','Automóveis equipados para propulsão simultaneamente com motor pistão por compressão diesel semi diesel motor elétrico suscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário','c85a2d34-6033-44e8-9cd5-5d1b1ac3a715')
;

-- 08/08/2018 15h26min15s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121276,0,0,'Y',TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,'25.027.00','Automóveis equipados para propulsão simultaneamente com motor pistão alternativo ignição por centelha faísca motor elétrico suscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário','90450da7-9d59-49cd-bd10-14e316771b1d')
;

-- 08/08/2018 15h26min16s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121277,0,0,'Y',TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,'25.026.00','Automóveis equipados para propulsão simultaneamente com motor pistão por  compressão diesel semi diesel motor elétrico exceto suscetíveis serem carregados por conexão uma fonte externa energia elétrica exceto carro celular carro funerário','da09f94e-a5bc-4adf-887c-0d3a1a02c046')
;

-- 08/08/2018 15h26min16s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121278,0,0,'Y',TO_DATE('2018-08-08 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,'25.025.00','Automóveis equipados para propulsão simultaneamente com motor pistão alternativo ignição por centelha faísca motor elétrico exceto suscetíveis serem carregados por conexão uma fonte externa energia elétrica carro celular carro funerário','47519af8-0d4c-48b1-88c3-b19962784f7b')
;

-- 08/08/2018 15h26min17s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121279,0,0,'Y',TO_DATE('2018-08-08 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,'25.024.00','Outros veículos automóveis para transporte pessoas mais incluindo motorista com volume interno habitáculo destinado passageiros motorista superior mas inferior ','ab2dd28f-eb5d-4dd2-8f9b-91758892d01d')
;

-- 08/08/2018 15h26min17s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121280,0,0,'Y',TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,'25.023.00','Veículos automóveis para transporte pessoas mais incluindo motorista com motor pistão alternativo ignição por centelha faísca motor elétrico com volume interno habitáculo destinado passageiros motorista superior mas inferior ','d836b96b-21f6-4d74-8f91-c7240c38cf23')
;

-- 08/08/2018 15h26min17s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121281,0,0,'Y',TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,'25.022.00','Veículos automóveis para transporte pessoas mais incluindo motorista com motor pistão ignição por  compressão diesel semi diesel motor elétrico com volume interno habitáculo destinado passageiros motorista superior mas inferior ','c7af3d96-c2b4-47cd-a81c-2a17183ab665')
;

-- 08/08/2018 15h26min18s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121282,0,0,'Y',TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:17','YYYY-MM-DD HH24:MI:SS'),100,'21.126.00','Microprocessador','4a124c3d-9646-4626-9054-fe1b38b5d3fa')
;

-- 08/08/2018 15h26min18s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121283,0,0,'Y',TO_DATE('2018-08-08 15:26:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:18','YYYY-MM-DD HH24:MI:SS'),100,'01.053.01','Acumuladores elétricos de chumbo, do tipo utilizado para o arranque dos motores de pistão e de capacidade inferior a 20 Ah e tensão inferior ou igual a 12 V0','11ac9dde-8810-4df7-928d-fd3feb80e9b8')
;

-- 08/08/2018 15h26min19s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121284,0,0,'Y',TO_DATE('2018-08-08 15:26:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:18','YYYY-MM-DD HH24:MI:SS'),100,'08.019.01','Moto serras portáteis corrente com motor incorporado não elétrico uso agrícola','3b62c5f9-ebd1-46cd-9ea5-05e52f68d594')
;

-- 08/08/2018 15h26min19s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121285,0,0,'Y',TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,'01.045.01','Partes reconhecíveis como exclusiva principalmente destinadas máquinas agrícolas rodoviárias','49e4b688-9103-4263-bf96-efd922d6de35')
;

-- 08/08/2018 15h26min19s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121286,0,0,'Y',TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,'21.098.01','Outros aparelhos elétricos para filtrar depurar água','e6dfa9bf-ee1c-49ef-ab39-1af07324ae34')
;

-- 08/08/2018 15h26min20s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121287,0,0,'Y',TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:19','YYYY-MM-DD HH24:MI:SS'),100,'28.025.01','Espátulas abre cartas raspadeiras','c97177b7-1c30-419f-a7b1-229c7df90a02')
;

-- 08/08/2018 15h26min20s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121288,0,0,'Y',TO_DATE('2018-08-08 15:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:20','YYYY-MM-DD HH24:MI:SS'),100,'28.025.02','Lâminas Espátulas abre cartas raspadeiras apontadores lápis','799934d3-bf40-486c-afa1-1aeba0379591')
;

-- 08/08/2018 15h26min21s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121289,0,0,'Y',TO_DATE('2018-08-08 15:26:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:20','YYYY-MM-DD HH24:MI:SS'),100,'20.064.00','Aparelhos lâminas barbear','2b09e318-c4c3-414c-80fd-8252f9627b58')
;

-- 08/08/2018 15h26min21s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121290,0,0,'Y',TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,'19.033.00','Papel laminado papel espelho','c42a46c6-2f13-4ba8-bbb7-96323a2ea579')
;

-- 08/08/2018 15h26min21s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121291,0,0,'Y',TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,'10.045.01','Outros fios ferro aço não ligados galvanizados','5153f80d-ed93-46fa-ab27-485037a4e541')
;

-- 08/08/2018 15h26min22s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121292,0,0,'Y',TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:21','YYYY-MM-DD HH24:MI:SS'),100,'14.009.00','Artigos para serviço mesa cozinha cerâmica','2c3c582f-2a48-4084-aa2d-49a5dc4ea1b2')
;

-- 08/08/2018 15h26min22s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121293,0,0,'Y',TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,'14.010.00','Velas para filtros','d5f88918-c0d0-4b31-bfc2-7893edf024b2')
;

-- 08/08/2018 15h26min22s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121294,0,0,'Y',TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,'14.008.00','Artigos para serviço mesa cozinha porcelana inclusive descartáveis avulsos','f05015e8-1ef7-4bac-bceb-108981c8abbc')
;

-- 08/08/2018 15h26min23s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121295,0,0,'Y',TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,'14.007.00','Artigos para serviço mesa cozinha porcelana inclusive descartáveis estojos','81d030ab-4003-426b-ab02-80faaa80e5ba')
;

-- 08/08/2018 15h26min23s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121296,0,0,'Y',TO_DATE('2018-08-08 15:26:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:23','YYYY-MM-DD HH24:MI:SS'),100,'28.053.00','Chapéus outros artefatos outras matérias exceto malha','c802d2a1-cd0b-40c4-94f7-645273df8fe9')
;

-- 08/08/2018 15h26min24s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121297,0,0,'Y',TO_DATE('2018-08-08 15:26:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:23','YYYY-MM-DD HH24:MI:SS'),100,'28.052.00','Outros artefatos têxteis confeccionados','9dad3724-1dcd-4f78-901c-9640f8531d77')
;

-- 08/08/2018 15h26min24s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121298,0,0,'Y',TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,'28.051.00','Roupas toucador cozinha tecidos atoalhados algodão','d6ee5b18-942d-4ef5-bdfa-de0f32bea54f')
;

-- 08/08/2018 15h26min24s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121299,0,0,'Y',TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,'28.050.00','Outros acessórios confeccionados vestuário','6c3f66ca-aa0f-40e6-a3a2-ef87e47cbcd3')
;

-- 08/08/2018 15h26min25s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121300,0,0,'Y',TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:24','YYYY-MM-DD HH24:MI:SS'),100,'28.049.00','Outras meias malha outras matérias têxteis','396e2c05-f252-4f71-aa9b-1d4605969e30')
;

-- 08/08/2018 15h26min25s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121301,0,0,'Y',TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,'19.032.00','Papel camurça','42541cc5-d146-45ee-bef5-63327ce5daaf')
;

-- 08/08/2018 15h26min25s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121302,0,0,'Y',TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,'28.048.00','Outros impressos publicitários catálogos comerciais semelhantes','ce57fea6-d130-4a9c-b73f-010a48cd5985')
;

-- 08/08/2018 15h26min26s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121303,0,0,'Y',TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:25','YYYY-MM-DD HH24:MI:SS'),100,'28.047.00','Etiquetas papel cartão impressas','eb4e30b1-e3b5-4530-8398-1d20f9c3d612')
;

-- 08/08/2018 15h26min26s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121304,0,0,'Y',TO_DATE('2018-08-08 15:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:26','YYYY-MM-DD HH24:MI:SS'),100,'28.046.00','Outros sacos bolsas cartuchos papel cartão','ca73c3d0-a94a-4976-a5c8-ad6af67d7ee4')
;

-- 08/08/2018 15h26min27s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121305,0,0,'Y',TO_DATE('2018-08-08 15:26:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:26','YYYY-MM-DD HH24:MI:SS'),100,'28.045.00','Caixas cartonagens dobráveis papel cartão não ondulados','c89dc074-8e44-4221-8716-19c16fc515af')
;

-- 08/08/2018 15h26min27s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121306,0,0,'Y',TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,'28.024.01','Toalhas mão','4b91722f-1c9f-45fd-8cd8-29ea36a8390a')
;

-- 08/08/2018 15h26min27s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121307,0,0,'Y',TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,'14.013.00','Papel para cigarro','a617ec91-6269-4a41-ac87-dc451f564a68')
;

-- 08/08/2018 15h26min28s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121308,0,0,'Y',TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:27','YYYY-MM-DD HH24:MI:SS'),100,'14.006.00','Serviços mesa outros utensílios mesa cozinha plástico não descartáveis','dc022683-ffa2-4216-a9d9-4c6528f15077')
;

-- 08/08/2018 15h26min28s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121309,0,0,'Y',TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,'14.006.01','Serviços mesa outros utensílios mesa cozinha plástico descartáveis','a9cb155f-ea04-4196-825c-3bcf8e1c9766')
;

-- 08/08/2018 15h26min28s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121310,0,0,'Y',TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,'06.016.00','Biodiesel suas misturas que não contenham que contenham menos peso óleos petróleo óleos minerais betuminosos','1054c7f3-56e9-424e-a249-7afd67d0ed6d')
;

-- 08/08/2018 15h26min29s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121311,0,0,'Y',TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:28','YYYY-MM-DD HH24:MI:SS'),100,'20.035.01','Lenços umedecidos','90cef932-ba8e-4b55-afeb-b5a09b697488')
;

-- 08/08/2018 15h26min29s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121312,0,0,'Y',TO_DATE('2018-08-08 15:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:29','YYYY-MM-DD HH24:MI:SS'),100,'20.032.01','Outros produtos toucador preparados','4fc50a68-6d49-4a31-b54e-6bab85754c02')
;

-- 08/08/2018 15h26min30s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121313,0,0,'Y',TO_DATE('2018-08-08 15:26:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:29','YYYY-MM-DD HH24:MI:SS'),100,'20.029.01','Outras loções óleos desodorantes hidratantes','cf7de281-c6f6-4750-99f9-b957cd2582ee')
;

-- 08/08/2018 15h26min30s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121314,0,0,'Y',TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,'20.027.01','Loções óleos desodorantes hidratantes líquidos','9f0ce501-fe9f-43d1-a7fd-62fb1637c04d')
;

-- 08/08/2018 15h26min30s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121315,0,0,'Y',TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,'24.003.00','Corantes para aplicação bases tintas vernizes','bf45709c-2eac-4597-aefe-41a57fc2b1fc')
;

-- 08/08/2018 15h26min31s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121316,0,0,'Y',TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:30','YYYY-MM-DD HH24:MI:SS'),100,'13.005.01','Preparações químicas contraceptivas base hormônios outros produtos posição espermicidas negativa','73b2983c-7919-4bc9-a919-a5ee5404e7a3')
;

-- 08/08/2018 15h26min31s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121317,0,0,'Y',TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,'13.010.01','Curativos pensos adesivos outros artigos com uma camada adesiva impregnados recobertos substâncias farmacêuticas Lista Negativa','443222b7-6dcd-404a-aedb-0d62a0f22f2e')
;

-- 08/08/2018 15h26min31s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121318,0,0,'Y',TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,'06.014.00','Gás xisto','5aeffd56-3025-4009-abf8-c3f9ec22a3c5')
;

-- 08/08/2018 15h26min32s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121319,0,0,'Y',TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:31','YYYY-MM-DD HH24:MI:SS'),100,'06.013.00','Gás Natural Gasoso','4a711024-d7dd-4de0-b560-18f1601e0776')
;

-- 08/08/2018 15h26min32s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121320,0,0,'Y',TO_DATE('2018-08-08 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,'06.011.01','Gás liquefeito petróleo GLP exceto botijão','d8acd0a5-f6fb-4b9a-9819-01a50ccd9b76')
;

-- 08/08/2018 15h26min33s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121321,0,0,'Y',TO_DATE('2018-08-08 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:32','YYYY-MM-DD HH24:MI:SS'),100,'06.011.02','Gás liquefeito petróleo botijão GLGNn ','e35af604-9e30-4ca7-a820-f8f8de94322e')
;

-- 08/08/2018 15h26min33s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121322,0,0,'Y',TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,'06.011.03','Gás liquefeito petróleo GLGNn exceto botijão','38755feb-debb-41bd-8237-4bad4ba5ff2f')
;

-- 08/08/2018 15h26min33s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121323,0,0,'Y',TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,'06.011.04','Gás liquefeito petróleo botijão GLGNi ','c3a23343-7d8a-49a1-870f-21a8d0847264')
;

-- 08/08/2018 15h26min34s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121324,0,0,'Y',TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:33','YYYY-MM-DD HH24:MI:SS'),100,'06.011.05','Gás liquefeito petróleo GLGNi exceto botijão','980bbbcd-352d-44c1-a214-287b9eab1aef')
;

-- 08/08/2018 15h26min34s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121325,0,0,'Y',TO_DATE('2018-08-08 15:26:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:34','YYYY-MM-DD HH24:MI:SS'),100,'06.011.06','Gás liquefeito petróleo botijão Misturas ','41a7333d-c325-43c1-ba73-823b3abd6051')
;

-- 08/08/2018 15h26min35s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121326,0,0,'Y',TO_DATE('2018-08-08 15:26:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:34','YYYY-MM-DD HH24:MI:SS'),100,'06.011.07','Gás liquefeito petróleo misturas exceto botijão','481b13b2-0f30-422d-b8fc-4a8e6e4b7685')
;

-- 08/08/2018 15h26min35s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121327,0,0,'Y',TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,'06.018.00','Óleos petróleo minerais betuminosos exceto óleos brutos preparações não especificadas nem compreendidas noutras posições que contenham como constituintes básicos mais peso óleos petróleo minerais betuminosos que contenham biodiesel exceto resíduos óleos','13887f56-a6bd-47ac-a26b-aa109506c0dc')
;

-- 08/08/2018 15h26min35s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121328,0,0,'Y',TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,'06.006.11','Óleo combustível pesado','b2534ac0-7890-4f25-bde5-0ddc247a28ce')
;

-- 08/08/2018 15h26min36s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121329,0,0,'Y',TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:35','YYYY-MM-DD HH24:MI:SS'),100,'06.002.01','Gasolina automotiva exceto Premium','c751b4af-e615-49c5-acd9-48d72decd894')
;

-- 08/08/2018 15h26min36s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121330,0,0,'Y',TO_DATE('2018-08-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),100,'06.002.02','Gasolina automotiva Premium','aac72cf1-f0b7-4d2e-bb50-b6fa294b0806')
;

-- 08/08/2018 15h26min36s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121331,0,0,'Y',TO_DATE('2018-08-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:36','YYYY-MM-DD HH24:MI:SS'),100,'06.002.03','Gasolina automotiva Premium','c5250c53-5ca6-4a86-be77-91774ef5c750')
;

-- 08/08/2018 15h26min37s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121332,0,0,'Y',TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,'03.021.00','Cerveja','4df3f69d-b44b-44e9-bbe8-2237752b6217')
;

-- 08/08/2018 15h26min37s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121333,0,0,'Y',TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,'03.023.00','Chope','886d7400-67f6-4250-9062-3117862efc22')
;

-- 08/08/2018 15h26min38s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121334,0,0,'Y',TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:37','YYYY-MM-DD HH24:MI:SS'),100,'03.015.00','Bebidas hidro eletrolíticas isotônicas embalagem com capacidade inferior 600ml','c4c65c88-0f66-44be-9edc-03c1b1b6ef29')
;

-- 08/08/2018 15h26min38s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121335,0,0,'Y',TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,'17.114.00','Bebidas prontas base café','1fd9885f-59cd-4766-bb06-1f50c52a90ac')
;

-- 08/08/2018 15h26min38s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121336,0,0,'Y',TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,'17.115.00','Bebidas alimentares prontas base soja leite cacau inclusive produtos denominados bebidas lácteas','95d5f551-7c13-4d30-bb24-ef0ecc092712')
;

-- 08/08/2018 15h26min39s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121337,0,0,'Y',TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:38','YYYY-MM-DD HH24:MI:SS'),100,'03.022.00','Cerveja sem álcool','fb99f5aa-e068-4ecd-b7ae-3d4f4addd27f')
;

-- 08/08/2018 15h26min39s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121338,0,0,'Y',TO_DATE('2018-08-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),100,'03.016.00','Bebidas hidro eletrolíticas isotônicas embalagem com capacidade igual superior 600ml','61e98640-8ada-4fb0-b998-38fc92182f44')
;

-- 08/08/2018 15h26min40s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121339,0,0,'Y',TO_DATE('2018-08-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:39','YYYY-MM-DD HH24:MI:SS'),100,'03.024.00','Água mineral embalagens retornáveis com capacidade igual superior dez inferior vinte litros','c303d1e9-17d7-4cc4-87ee-d187e1e4f252')
;

-- 08/08/2018 15h26min40s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121340,0,0,'Y',TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,'03.025.00','Água mineral embalagens retornáveis com capacidade igual superior vinte litros','bd509b96-c498-4c71-85a8-802898590c9f')
;

-- 08/08/2018 15h26min40s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121341,0,0,'Y',TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,'17.062.01','Outros bolos industrializados produtos panificação não especificados anteriormente incluindo pizzas exceto classificados nos CEST 062 062','9e5f1d39-4323-4ccc-9e38-711eae3b4f16')
;

-- 08/08/2018 15h26min41s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121342,0,0,'Y',TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:40','YYYY-MM-DD HH24:MI:SS'),100,'17.062.02','Casquinhas para sorvete','461eb94b-5eca-46e3-a0f2-43cd06815e82')
;

-- 08/08/2018 15h26min41s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121343,0,0,'Y',TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,'17.062.03','Pão francês até 200g','dcec6b31-421b-4c90-8dd3-12cad7af052b')
;

-- 08/08/2018 15h26min41s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121344,0,0,'Y',TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,'17.056.01','Biscoitos bolachas não derivados farinha trigo dos tipos cream cracker água sal ','8d155953-350c-4862-a7fe-1cd4f34e73e5')
;

-- 08/08/2018 15h26min42s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121345,0,0,'Y',TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:41','YYYY-MM-DD HH24:MI:SS'),100,'17.056.02','Outras bolachas exceto casquinhas para sorvete biscoitos bolachas relacionados nos CEST 056 056','a53ba3b9-8e72-46dc-b008-3d5aa0400a72')
;

-- 08/08/2018 15h26min42s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121346,0,0,'Y',TO_DATE('2018-08-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),100,'17.053.02','Biscoitos bolachas derivados farinha trigo dos tipos cream cracker água sal consumo popular','ae73f79b-0b45-4569-8ad6-0df2c29b2c88')
;

-- 08/08/2018 15h26min42s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121347,0,0,'Y',TO_DATE('2018-08-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:42','YYYY-MM-DD HH24:MI:SS'),100,'17.054.01','Biscoitos bolachas não derivados farinha trigo dos tipos maisena mariaoutros consumo popular que não sejam adicionados cacau nem recheados cobertos amanteigados independentemente sua denominação comercial exceto CEST 054','eb9c8716-7116-4a3b-bb67-15e7c6504bb3')
;

-- 08/08/2018 15h26min43s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121348,0,0,'Y',TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,'17.054.02','Biscoitos bolachas não derivados farinha trigo dos tipos cream cracker água sal consumo popular','b0007b46-8708-4be2-8c3c-9bd763771792')
;

-- 08/08/2018 15h26min43s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121349,0,0,'Y',TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,'17.048.01','Cuscuz','86ebabad-a185-4c39-a576-7d9eab987038')
;

-- 08/08/2018 15h26min44s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121350,0,0,'Y',TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:43','YYYY-MM-DD HH24:MI:SS'),100,'17.048.02','Massas alimentícias recheadas mesmo cozidas preparadas outro modo ','07868d23-abf8-4807-8c8b-2f381b62fe92')
;

-- 08/08/2018 15h26min44s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121351,0,0,'Y',TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,'17.049.03','Massas alimentícias tipo comum não cozidas nem recheadas nem preparadas outro modo que não contenham ovos','dc3a68e6-74e4-4c72-97ca-1ac018ca5344')
;

-- 08/08/2018 15h26min44s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121352,0,0,'Y',TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,'17.049.04','Massas alimentícias tipo sêmola não cozidas nem recheadas nem preparadas outro modo que não contenham ovos','56b06eac-74db-48e8-8540-d99c526b1f1a')
;

-- 08/08/2018 15h26min45s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121353,0,0,'Y',TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:44','YYYY-MM-DD HH24:MI:SS'),100,'17.049.05','Massas alimentícias tipo grano duro não cozidas nem recheadas nem preparadas outro modo que não contenham ovos','6ca40ca4-9d4b-4b9e-9fa4-d10e66c9061c')
;

-- 08/08/2018 15h26min45s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121354,0,0,'Y',TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,'17.046.01','Misturas preparações para bolos embalagem igual','10ccfc19-9cfa-4af8-9819-a6093b1167d8')
;

-- 08/08/2018 15h26min45s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121355,0,0,'Y',TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,'17.046.02','Misturas preparações para bolos embalagem superior inferior igual','f04b18ba-f977-4f7b-9c44-65495acaa447')
;

-- 08/08/2018 15h26min46s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121356,0,0,'Y',TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,'17.046.03','Misturas preparações para bolos embalagem superior inferior igual','574f5a11-4096-4354-b4a4-f864495b426c')
;

-- 08/08/2018 15h26min46s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121357,0,0,'Y',TO_DATE('2018-08-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),100,'17.046.04','Misturas preparações para bolos embalagem superior','7e631c28-2e7f-468b-b978-2c9c3450de02')
;

-- 08/08/2018 15h26min47s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121358,0,0,'Y',TO_DATE('2018-08-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:46','YYYY-MM-DD HH24:MI:SS'),100,'17.046.05','Misturas preparações para pães com menos farinha trigo sua composição final embalagem inferior','bccc3151-3a93-49a2-be5c-c522caa03d4f')
;

-- 08/08/2018 15h26min47s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121359,0,0,'Y',TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,'17.046.06','Misturas preparações para pães com menos farinha trigo sua composição final embalagem igual','c10ed48e-e5dd-4f24-a52a-d2204664ee78')
;

-- 08/08/2018 15h26min47s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121360,0,0,'Y',TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,'17.046.07','Misturas preparações para pães com menos farinha trigo sua composição final embalagem superior inferior igual','51764cc2-479e-4ebf-aab7-e2d759ab38fb')
;

-- 08/08/2018 15h26min48s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121361,0,0,'Y',TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:47','YYYY-MM-DD HH24:MI:SS'),100,'17.046.08','Misturas preparações para pães com menos farinha trigo sua composição final embalagem superior inferior igual','1a81498e-ceb5-40d2-aabe-3ecd87e360e8')
;

-- 08/08/2018 15h26min48s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121362,0,0,'Y',TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,'17.046.09','Misturas preparações para pães com menos farinha trigo sua composição final embalagem superior','ddd476fb-c3f4-4b3d-9826-0ea963eb6cd0')
;

-- 08/08/2018 15h26min48s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121363,0,0,'Y',TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,'17.046.10','Misturas preparações para pães com mínimo farinha trigo sua composição final embalagem inferior','4a4c4c55-dba4-47b3-9ef4-6d84c4508783')
;

-- 08/08/2018 15h26min49s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121364,0,0,'Y',TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:48','YYYY-MM-DD HH24:MI:SS'),100,'17.046.11','Misturas preparações para pães com mínimo farinha trigo sua composição final embalagem igual','0cc57a7b-128d-4046-bcc1-4ee7da31951b')
;

-- 08/08/2018 15h26min49s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121365,0,0,'Y',TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,'17.046.12','Misturas preparações para pães com mínimo farinha trigo sua composição final embalagem superior inferior igual','f7fd0d73-f9c0-4146-a874-a55a1e346f11')
;

-- 08/08/2018 15h26min49s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121366,0,0,'Y',TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,'17.046.13','Misturas preparações para pães com mínimo farinha trigo sua composição final embalagem superior inferior igual','3252140d-b40a-49d4-a735-5059b1386508')
;

-- 08/08/2018 15h26min50s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121367,0,0,'Y',TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:49','YYYY-MM-DD HH24:MI:SS'),100,'17.046.14','Misturas preparações para pães com mínimo farinha trigo sua composição final embalagem superior','4ce25aa4-5c59-4609-b28f-686ba9663e5b')
;

-- 08/08/2018 15h26min50s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121368,0,0,'Y',TO_DATE('2018-08-08 15:26:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:50','YYYY-MM-DD HH24:MI:SS'),100,'17.005.01','Ovos páscoa chocolate','bf020744-1ffc-4d63-bec2-9da3ee5ac02c')
;

-- 08/08/2018 15h26min51s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121369,0,0,'Y',TO_DATE('2018-08-08 15:26:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:50','YYYY-MM-DD HH24:MI:SS'),100,'17.006.02','Achocolatados cápsulas','1906eec0-60a2-4afa-8f52-6d6f44587226')
;

-- 08/08/2018 15h26min51s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121370,0,0,'Y',TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,'17.006.01','Cacau com adição açúcar outros edulcorantes embalagens conteúdo inferior igual 1kg','00be93ca-486b-475d-bf0c-eda7fb91137c')
;

-- 08/08/2018 15h26min51s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121371,0,0,'Y',TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,'17.099.02','Açúcar refinado embalagens conteúdo superior','a5de737a-2fc3-4bbc-beef-cbcbbb8be74c')
;

-- 08/08/2018 15h26min52s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121372,0,0,'Y',TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:51','YYYY-MM-DD HH24:MI:SS'),100,'17.101.01','Açúcar cristal embalagens conteúdo superior inferior igual','49fea382-3277-4b0c-be38-d08503f97031')
;

-- 08/08/2018 15h26min52s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121373,0,0,'Y',TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,'17.101.02','Açúcar cristal embalagens conteúdo superior','ced1df15-0b8f-4abf-adf9-118e77c01ee4')
;

-- 08/08/2018 15h26min52s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121374,0,0,'Y',TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,'17.100.02','Açúcar refinado adicionado aromatizante corante embalagens conteúdo superior','f62e768a-3803-4129-9e26-0d46e92860de')
;

-- 08/08/2018 15h26min53s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121375,0,0,'Y',TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:52','YYYY-MM-DD HH24:MI:SS'),100,'17.102.01','Açúcar cristal adicionado aromatizante corante embalagens conteúdo superior inferior igual','86f2ef2b-0eda-45c7-af4c-3d98bd5906c7')
;

-- 08/08/2018 15h26min53s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121376,0,0,'Y',TO_DATE('2018-08-08 15:26:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:53','YYYY-MM-DD HH24:MI:SS'),100,'17.080.01','Outras preparações conservas atuns','026f1abb-77f2-4bd8-9c2a-264ba3cfaa4e')
;

-- 08/08/2018 15h26min54s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121377,0,0,'Y',TO_DATE('2018-08-08 15:26:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:53','YYYY-MM-DD HH24:MI:SS'),100,'17.079.06','Outras preparações conservas carne miudezas sangue espécie bovina exceto descritos CEST 079','8453f211-b9be-4f5d-ace5-e936c444bbfe')
;

-- 08/08/2018 15h26min54s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121378,0,0,'Y',TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,'17.079.05','Outras preparações conservas carne miudezas sangue espécie suína outras incluindo misturas exceto descritos CEST 079','2a631612-85bd-41e0-b52a-b6203859e6dd')
;

-- 08/08/2018 15h26min54s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121379,0,0,'Y',TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,'17.079.07','Apresuntado','78fc76af-181a-43fb-8a2c-bababc436934')
;

-- 08/08/2018 15h26min55s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121380,0,0,'Y',TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:54','YYYY-MM-DD HH24:MI:SS'),100,'17.079.04','Outras preparações conservas carne miudezas sangue espécie suína pernas respectivos pedaços','921d9792-a351-493b-968d-3d6b07a8c287')
;

-- 08/08/2018 15h26min55s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121381,0,0,'Y',TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,'17.079.03','Outras preparações conservas carne miudezas sangue todas aves posição galos galinhas com conteúdo carne miudezas superior igual peso cozidas','fe547895-e939-4258-b5f3-ebad239083ab')
;

-- 08/08/2018 15h26min55s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121382,0,0,'Y',TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,'17.079.02','Outras preparações conservas carne miudezas sangue aves posição galos galinhas com conteúdo carne miudezas superior igual peso não cozidas','9662b0ce-a651-4707-b710-ebdb8414a0dd')
;

-- 08/08/2018 15h26min56s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121383,0,0,'Y',TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:55','YYYY-MM-DD HH24:MI:SS'),100,'17.079.01','Outras preparações conservas carne miudezas sangue aves posição peruas perus ','31f623e4-411e-466c-8c9f-60101bc175e8')
;

-- 08/08/2018 15h26min56s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121384,0,0,'Y',TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,'17.077.01','Salsicha lata','bb3097e5-77ab-4d1f-ab5c-dd92aad80783')
;

-- 08/08/2018 15h26min56s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121385,0,0,'Y',TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,'17.027.01','Margarina creme vegetal recipiente conteúdo superior','c452efbe-b5e4-4b92-acad-7487dee5c3da')
;

-- 08/08/2018 15h26min57s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121386,0,0,'Y',TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:56','YYYY-MM-DD HH24:MI:SS'),100,'17.069.01','Óleo algodão refinado recipientes com capacidade inferior igual litros exceto embalagens individuais conteúdo inferior igual mililitros','bacfa8f1-7661-4caa-aebc-a0d84ebddba4')
;

-- 08/08/2018 15h26min57s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121387,0,0,'Y',TO_DATE('2018-08-08 15:26:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:57','YYYY-MM-DD HH24:MI:SS'),100,'17.044.01','Farinha trigo especial embalagem superior inferior','b6a0fa51-f24c-4901-b2c9-327dcb6b00f5')
;

-- 08/08/2018 15h26min58s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121388,0,0,'Y',TO_DATE('2018-08-08 15:26:57','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:57','YYYY-MM-DD HH24:MI:SS'),100,'17.044.02','Farinha trigo especial embalagem igual','8ca80372-550b-4546-9139-201f8ca48119')
;

-- 08/08/2018 15h26min58s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121389,0,0,'Y',TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,'17.044.03','Farinha trigo especial embalagem superior inferior igual','375e7bd2-182f-42ff-b9e0-6e54d41fdf2b')
;

-- 08/08/2018 15h26min58s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121390,0,0,'Y',TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,'17.044.04','Farinha trigo especial embalagem superior inferior igual','731203dc-be16-414d-9974-5132ec4941d3')
;

-- 08/08/2018 15h26min59s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121391,0,0,'Y',TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:58','YYYY-MM-DD HH24:MI:SS'),100,'17.044.05','Farinha trigo comum embalagem igual','ff0e4464-0a9f-4e95-9565-10d0e141f149')
;

-- 08/08/2018 15h26min59s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121392,0,0,'Y',TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,'17.044.06','Farinha trigo comum embalagem superior inferior igual','87134d31-a68f-47bb-99ec-c4ba2af4347a')
;

-- 08/08/2018 15h26min59s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121393,0,0,'Y',TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,'17.044.07','Farinha trigo comum embalagem superior inferior igual','db696281-6560-4ca8-a098-7824f9309237')
;

-- 08/08/2018 15h27min0s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121394,0,0,'Y',TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:26:59','YYYY-MM-DD HH24:MI:SS'),100,'17.044.08','Farinha trigo doméstica especial embalagem superior inferior igual','67cd85d8-de34-4b00-9b82-a623e7e11400')
;

-- 08/08/2018 15h27min0s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121395,0,0,'Y',TO_DATE('2018-08-08 15:27:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:00','YYYY-MM-DD HH24:MI:SS'),100,'17.044.09','Farinha trigo doméstica com fermento embalagem superior inferior igual','089ee4f0-054c-49fb-a953-207e267dc29d')
;

-- 08/08/2018 15h27min0s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121396,0,0,'Y',TO_DATE('2018-08-08 15:27:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:00','YYYY-MM-DD HH24:MI:SS'),100,'17.044.10','Farinha trigo especial embalagem superior','b933c0ae-3f2f-4441-a6c7-aa3135d14af8')
;

-- 08/08/2018 15h27min1s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121397,0,0,'Y',TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,'17.044.11','Farinha trigo comum embalagem inferior igual','78ee5dc6-26ea-4281-b582-ed09b0c50a14')
;

-- 08/08/2018 15h27min1s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121398,0,0,'Y',TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,'17.044.12','Farinha trigo comum embalagem superior inferior','cc91cde6-bea9-4e77-8593-a60b66f8f50c')
;

-- 08/08/2018 15h27min2s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121399,0,0,'Y',TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:01','YYYY-MM-DD HH24:MI:SS'),100,'17.044.13','Farinha trigo comum embalagem superior','e2bffa1c-1217-4313-b5b6-8d4dcd7729dd')
;

-- 08/08/2018 15h27min2s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121400,0,0,'Y',TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,'17.044.14','Farinha trigo doméstica especial embalagem inferior igual','eaa256d0-4f7d-42e1-8530-9c89b44791c2')
;

-- 08/08/2018 15h27min2s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121401,0,0,'Y',TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,'17.044.15','Farinha trigo doméstica especial embalagem superior inferior','2ff0273d-d70e-4f3d-ae2d-e8388c45b7ce')
;

-- 08/08/2018 15h27min3s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121402,0,0,'Y',TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:02','YYYY-MM-DD HH24:MI:SS'),100,'17.044.16','Farinha trigo doméstica especial embalagem igual','62e4bc56-5ce6-4d02-af0c-dab6c8b7ff9b')
;

-- 08/08/2018 15h27min3s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121403,0,0,'Y',TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,'17.044.17','Farinha trigo doméstica especial embalagem superior','b06ca7a0-89d1-468f-8c53-28e489b7dc85')
;

-- 08/08/2018 15h27min3s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121404,0,0,'Y',TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,'17.044.18','Farinha trigo doméstica com fermento embalagem inferior igual','01da4b0b-c6b6-4328-a30f-fcf9c4b5a39f')
;

-- 08/08/2018 15h27min4s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121405,0,0,'Y',TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:03','YYYY-MM-DD HH24:MI:SS'),100,'17.044.19','Farinha trigo doméstica com fermento embalagem superior inferior','d170fd3e-1c9b-4e68-a7ee-f8d494a440cc')
;

-- 08/08/2018 15h27min4s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121406,0,0,'Y',TO_DATE('2018-08-08 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,'17.044.20','Farinha trigo doméstica com fermento embalagem igual','cdcf3de4-0f65-41c6-90ca-896d7e89955f')
;

-- 08/08/2018 15h27min5s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121407,0,0,'Y',TO_DATE('2018-08-08 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,'17.044.21','Farinha trigo doméstica com fermento embalagem superior','eca32d31-23db-42b0-b667-572ed984318e')
;

-- 08/08/2018 15h27min5s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121408,0,0,'Y',TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,'17.044.22','Outras farinhas trigo embalagem inferior igual','e87488c8-c0f5-4741-9cbe-985f546f594f')
;

-- 08/08/2018 15h27min5s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121409,0,0,'Y',TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,'17.044.23','Outras farinhas trigo embalagem superior inferior','043daafd-55c7-4dd2-951d-22caa14ff3f2')
;

-- 08/08/2018 15h27min6s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121410,0,0,'Y',TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:05','YYYY-MM-DD HH24:MI:SS'),100,'17.044.24','Outras farinhas trigo embalagem igual','e12bc3d5-1063-458e-bf98-83433736c250')
;

-- 08/08/2018 15h27min6s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121411,0,0,'Y',TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,'17.044.25','Outras farinhas trigo embalagem superior inferior igual','ac7314aa-473f-4273-8b9e-42cbbea1247d')
;

-- 08/08/2018 15h27min6s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121412,0,0,'Y',TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,'17.044.26','Outras farinhas trigo embalagem superior inferior igual','eda46eab-b5d7-49c5-81f7-fe9d06cbc23a')
;

-- 08/08/2018 15h27min7s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121413,0,0,'Y',TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:06','YYYY-MM-DD HH24:MI:SS'),100,'17.044.27','Outras farinhas trigo embalagem superior','c27bc81e-4d10-40f2-80c4-e16692449fbf')
;

-- 08/08/2018 15h27min7s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121414,0,0,'Y',TO_DATE('2018-08-08 15:27:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:07','YYYY-MM-DD HH24:MI:SS'),100,'17.024.03','Queijo ricota','d68dcd5a-3e2f-40c2-a577-60a39134b615')
;

-- 08/08/2018 15h27min8s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121415,0,0,'Y',TO_DATE('2018-08-08 15:27:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:07','YYYY-MM-DD HH24:MI:SS'),100,'17.024.04','Queijo petit suisse','4256cc8e-396c-4fa7-865b-c45475220d4c')
;

-- 08/08/2018 15h27min8s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121416,0,0,'Y',TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,'17.025.02','Manteiga garrafa','375d3309-28be-40e3-bd98-b747fd9936e0')
;

-- 08/08/2018 15h27min8s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121417,0,0,'Y',TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,'17.019.01','Creme leite recipiente conteúdo superior','febb279b-ca74-473f-8c3b-a5401e32129b')
;

-- 08/08/2018 15h27min9s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121418,0,0,'Y',TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:08','YYYY-MM-DD HH24:MI:SS'),100,'17.019.02','Outros cremes leite recipiente conteúdo inferior igual 1kg','06b57ba3-a75b-4137-a624-3d2e0aeb349d')
;

-- 08/08/2018 15h27min9s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121419,0,0,'Y',TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,'17.017.01','Leite recipiente conteúdo superior litro inferior igual litros','b9506002-a960-4511-80dd-9da52c1465ab')
;

-- 08/08/2018 15h27min9s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121420,0,0,'Y',TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,'17.018.01','Leite tipo pasteurizado recipiente conteúdo superior litro inferior igual litros','b73c5fb2-c57f-4c2a-b131-00658490f084')
;

-- 08/08/2018 15h27min10s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121421,0,0,'Y',TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:09','YYYY-MM-DD HH24:MI:SS'),100,'17.016.01','Leite longa vida UHT Ultra High Temperature recipiente conteúdo superior litros inferior igual litros','70efe7a3-15e4-448e-aa7a-51ecad3ff354')
;

-- 08/08/2018 15h27min10s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121422,0,0,'Y',TO_DATE('2018-08-08 15:27:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:10','YYYY-MM-DD HH24:MI:SS'),100,'17.087.01','Carnes demais produtos comestíveis frescos resfriados congelados salgados salmoura simplesmente temperados secos defumados resultantes abate suínos','07ef5712-3b92-47d0-be04-dbb61e646127')
;

-- 08/08/2018 15h27min11s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121423,0,0,'Y',TO_DATE('2018-08-08 15:27:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:10','YYYY-MM-DD HH24:MI:SS'),100,'01.999.00','Outras peças partes acessórios para veículos automotores não relacionados nos demais itens deste anexo','b14db1cc-8e56-4bf0-9145-2936455c7e4a')
;

-- 08/08/2018 15h27min11s BRT
INSERT INTO LBR_CEST (LBR_CEST_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Value,Name,LBR_CEST_UU) VALUES (1121424,0,0,'Y',TO_DATE('2018-08-08 15:27:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-08-08 15:27:11','YYYY-MM-DD HH24:MI:SS'),100,'28.999.00','Outros produtos comercializados pelo sistema marketing direto porta porta consumidor final não relacionados outros itens deste anexo','c63dda9b-19a6-4bac-9abb-984b8487c170')
;

SELECT Register_Migration_Script ('201808031615_NewCEST.sql') FROM DUAL
;
