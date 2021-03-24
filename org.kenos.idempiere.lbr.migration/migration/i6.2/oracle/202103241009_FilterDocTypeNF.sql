SET SQLBLANKLINES ON
SET DEFINE OFF

-- 24 de mar de 2021 10:07:55 BRT
INSERT INTO AD_Val_Rule (AD_Val_Rule_ID,Name,Type,Code,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,EntityType,AD_Val_Rule_UU) VALUES (1120199,'C_DocType NF (IsSOTrx and Org)','S','C_DocType.DocBaseType=''NFB'' AND C_DocType.IsSOTrx=''@IsSOTrx@'' AND C_DocType.AD_Org_ID IN (0, @AD_Org_ID@)',0,0,'Y',TO_DATE('2021-03-24 10:07:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2021-03-24 10:07:50','YYYY-MM-DD HH24:MI:SS'),100,'U','f7f63d9b-7647-445f-92b0-c259c8546c27')
;

-- 24 de mar de 2021 10:08:38 BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120199,Updated=TO_DATE('2021-03-24 10:08:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

UPDATE LBR_NotaFiscal 
SET DocumentNo=REGEXP_REPLACE (DocumentNo, '\D', '', 'g')
WHERE DocumentNo IS NOT NULL 
AND DocumentNo<>REGEXP_REPLACE (DocumentNo, '\D', '', 'g')
AND LBR_NFModel IN ('55', '65', '56', 'S1')
;
UPDATE LBR_NotaFiscal 
SET LBR_NFSerie=REGEXP_REPLACE (LBR_NFSerie, '\D', '', 'g')
WHERE LBR_NFSerie IS NOT NULL 
AND LBR_NFSerie<>REGEXP_REPLACE (LBR_NFSerie, '\D', '', 'g')
AND LBR_NFModel IN ('55', '65', '56', 'S1')
;

-- 24 de mar de 2021 10:08:38 BRT
SELECT Register_Migration_Script ('202103241009_FilterDocTypeNF.sql') FROM DUAL
;

