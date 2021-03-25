package org.kenos.idempiere.lbr.sped.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRSalesCardTotal;
import org.adempierelbr.model.MLBRTaxAssessment;
import org.adempierelbr.model.X_LBR_EFDICMSIPI;
import org.adempierelbr.model.X_LBR_TaxAssessmentLine;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.efd.EFDUtil;
import org.adempierelbr.sped.efd.bean.BLOCO0;
import org.adempierelbr.sped.efd.bean.BLOCO1;
import org.adempierelbr.sped.efd.bean.BLOCO9;
import org.adempierelbr.sped.efd.bean.BLOCOB;
import org.adempierelbr.sped.efd.bean.BLOCOC;
import org.adempierelbr.sped.efd.bean.BLOCOD;
import org.adempierelbr.sped.efd.bean.BLOCOE;
import org.adempierelbr.sped.efd.bean.BLOCOG;
import org.adempierelbr.sped.efd.bean.BLOCOH;
import org.adempierelbr.sped.efd.bean.BLOCOK;
import org.adempierelbr.sped.efd.bean.R0002;
import org.adempierelbr.sped.efd.bean.R0190;
import org.adempierelbr.sped.efd.bean.R0200;
import org.adempierelbr.sped.efd.bean.R0460;
import org.adempierelbr.sped.efd.bean.R0500;
import org.adempierelbr.sped.efd.bean.RC100;
import org.adempierelbr.sped.efd.bean.RC190;
import org.adempierelbr.sped.efd.bean.RC500;
import org.adempierelbr.sped.efd.bean.RD100;
import org.adempierelbr.sped.efd.bean.RD500;
import org.adempierelbr.sped.efd.bean.RE200;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MColumn;
import org.compiere.model.MElementValue;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.model.SysConfig;

/**
 * 		Model for SPED EFD ICMS IPI
 * 
 * 	@author Rogério Feitosa <rfeitosa@kenos.com.br>
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class MLBREFDICMSIPI extends X_LBR_EFDICMSIPI implements DocAction, DocOptions
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 8241175208892074881L;

	/**
	 * 
	 * @param ctx
	 * @param LBR_EFDICMSIPI_ID
	 * @param trxName
	 */
	public MLBREFDICMSIPI (Properties ctx, int LBR_EFDICMSIPI_ID, String trxName)
	{
		super (ctx, LBR_EFDICMSIPI_ID, trxName);
	}	//	MLBREFDICMSIPI
	
	/**
	 * 
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLBREFDICMSIPI(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBREFDICMSIPI

	public boolean processIt(String processAction) throws Exception
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	public boolean unlockIt()
	{
		return false;
	}	//	unlockIt

	public boolean invalidateIt()
	{
		return false;
	}	//	invalidateIt

	public String prepareIt()
	{
		log.info(toString());
		
		if (m_justPrepared || TextUtil.match (getDocAction(), DOCACTION_Unlock, DOCACTION_Unlock, DOCACTION_Void))
			return DOCSTATUS_InProgress;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;	
		/*
		 * Validar Organização e Periodo
		 */
		if (getC_Period_ID() == 0)
			return "@C_Period_ID@ @Mandatory@";
		
		if (getAD_Org_ID() == 0)
			return "@AD_Org_ID@ @Mandatory@";
		
		List<String> common = new ArrayList<String>();
		List<Object> array = Arrays.asList(Arrays.asList(MTable.get(getCtx(), "LBR_FactFiscal")
				.getColumns(false))
				.stream()
				.map(MColumn::getColumnName)
				.filter(c -> !TextUtil.match(c, "LBR_SPEDContribution_ID", "LBR_EFDContrib_ID", "LBR_EFDICMSIPI_ID", "LBR_FactFiscal_UU"))
				.toArray());
		
		//	TODO: Compare againt LBR_FactFiscalBase when LBR_FactFiscalBase is created in framework
		Arrays.asList(MTable.get(getCtx(), "LBR_FactFiscal")	//	Change to LBR_FactFiscalBase
				.getColumns(false))
				.stream()
				.map(MColumn::getColumnName)
				.filter(c -> array.contains(c) && !"LBR_EFDICMSIPI_ID".equals(c))
				.forEach(c -> common.add(c));

		//	Delete to re-create later
		DB.executeUpdate("DELETE FROM LBR_FactFiscal"
				+ " WHERE LBR_EFDICMSIPI_ID = " + getLBR_EFDICMSIPI_ID() 
				+ " AND AD_Client_ID = " + getAD_Client_ID(), get_TrxName());
		
		//	Re-create from base
		DB.executeUpdate("INSERT INTO LBR_FactFiscal (" + String.join(",", common) + ", LBR_EFDICMSIPI_ID) "
				+ " SELECT " + String.join(",", common) + "," + getLBR_EFDICMSIPI_ID()
				+ " FROM LBR_FactFiscalBase"
				+ " WHERE TRUNC(DateAcct) BETWEEN " + DB.TO_DATE(getStartDate())
				+ " AND " + DB.TO_DATE(getEndDate())
				+ " AND ((IsSOTrx = 'Y' AND lbr_NFeProt IS NOT NULL) OR IsSOTrx ='N') "
				+ " AND AD_Client_ID = " + getAD_Client_ID(), get_TrxName());
		
		if (isLBR_IncludeE())
		{
			String result = processTaxAssessment();
			if (result != null)
			{
				m_processMsg = result;
				return DocAction.STATUS_Invalid;
			}
		}
		
		// Generate Book Inventory (Bloco K)
		if (isLBR_IncludeK())
		{
			String result = generateBookInventory();
			if (result != null)
			{
				m_processMsg = result;
				return DocAction.STATUS_Invalid;
			}
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_justPrepared = true;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 
	 */
	protected String processTaxAssessment()
	{
		return null;		
	}	//	processTaxAssessment
	
	/**
	 * 
	 * @return
	 */
	protected String generateBookInventory()
	{
		//	Periodo
		MPeriod period = MPeriod.get(Env.getCtx(), getC_Period_ID());
		
		//	DELETAR Registros do período
		DB.executeUpdate("DELETE FROM LBR_BookInventory WHERE AD_Client_ID = " + 
						getAD_Client_ID() + " AND LBR_EFDICMSIPI_ID = " + getLBR_EFDICMSIPI_ID() + ";", get_TrxName());
		
		// Identificar ID da Sequencia da tabela LBR_BookInventory
		int nextId = DB.getSQLValue(get_TrxName(), "SELECT AD_Sequence_ID FROM AD_Sequence WHERE Name='LBR_BookInventory' " + 
											" AND AD_Client_ID IN (" + getAD_Client_ID() + ",0)");
		
		//	Se não encontrar a Sequência
		if (nextId < 0)
			return "@error@ Próximo ID da tabela LBR_BookInventory não encontrada";
		
		// sql
		String sql = " INSERT INTO LBR_BookInventory (ad_client_id, ad_org_id,  " 						+ 
				"   c_bpartner_id, LBR_EFDICMSIPI_ID, created, createdby, isactive, isrevalidate,  " + 
				"   lbr_bookinventory_id, lbr_bookinventory_uu,lbr_warehousetype, movementdate," + 
				"   m_product_id, qtybook, updated, updatedby)									" +
				"   SELECT mt.AD_Client_ID, mt.AD_Org_ID, l.C_BPartner_ID, " + getLBR_EFDICMSIPI_ID() + "," 			+ 
				" 	current_timestamp, " + getUpdatedBy() + ", 'Y', 'N', nextid(" + nextId + ",'Y'), uuid_generate_v1(), " +
				"   wh.lbr_WarehouseType,	" + DB.TO_DATE(period.getEndDate()) + ", mt.M_Product_ID,	" +
				"	ROUND(SUM(MovementQty), 4), current_timestamp, " + getUpdatedBy() + 
				" 	FROM M_Transaction mt																	" +
				"	INNER JOIN M_Product p ON mt.M_Product_id = p.M_Product_id							" +
				"	INNER JOIN M_Locator l ON mt.M_Locator_id = l.M_Locator_id 							" +
				"	INNER JOIN M_Warehouse wh ON wh.M_Warehouse_id = l.M_Warehouse_id					" +
				" WHERE mt.AD_Client_ID = " + getAD_Client_ID()											  +
				"   AND mt.AD_Org_ID = " + getAD_Org_ID()											  +
				"	AND mt.MovementDate <= " + DB.TO_DATE(period.getEndDate())							  +
				"	AND wh.AD_Org_ID = mt.AD_Org_ID 													" +
				"	AND p.lbr_ItemTypeBR IN ('00', '01', '02','03', '04','05', '06', '10')				" +
				" GROUP BY																				" +
				" mt.AD_Client_ID, mt.AD_Org_ID, mt.M_Product_ID, l.C_BPartner_ID, wh.lbr_WarehouseType " + 
				" HAVING SUM(MovementQty) > 0															" +
				" ORDER BY mt.M_Product_ID																";
		
		//	Gerar Inventário Bloco K
		DB.executeUpdate(sql, get_TrxName());
		
		return null;
	}	//	generateBookInventory
	
	public boolean approveIt()
	{
		return false;
	}	//	approveIt
	
	public boolean rejectIt()
	{
		return false;
	}	//	rejectIt
	
	public String completeIt()
	{	
		StringBuilder result = new StringBuilder();
		
		/*
		 * Caminho do Arquivo
		 */
		String fileName = "";
		try
		{
			/*
			 * Rodar Processo
			 */
			result = generateEFD();
		}
		catch (Exception e)
		{
			return "@Error@ ao Gerar o SPED Fiscal";
		}		
		
		/*
		 * Nome do arquivo
		 * 
		 * EDF_CNPJ_DATA.txt
		 */
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
		fileName = "EFD_" + TextUtil.toNumeric(oi.getlbr_CNPJ()) + "_" + TextUtil.timeToString(getStartDate(), "MMyyyy") + ".txt";
		
		String tmp = System.getProperty("java.io.tmpdir") +
	             System.getProperty("file.separator");
		
		/*
		 * Gerar Arquivo no disco
		 */
		
		File file = new File(TextUtil.generateFile(result.toString(), tmp + "/" +  fileName));
		
		try
		{
			//	Anexa o XML na NF
			MAttachment attachNFe = createAttachment();
			attachNFe.addEntry(file);
			attachNFe.save(null);
		} 
		catch (Exception e)
		{
			return "Error saving SPED";
		}

		setDocAction(DOCACTION_None);
		setProcessed(true);
		//
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
	 * 
	 * @param getStartDate()
	 * @param getEndDate()
	 * @return
	 * @throws Exception
	 */
	private StringBuilder generateEFD() throws Exception
	{
		// Zerar Contadores (estaticos)
		CounterSped.clear();
		
		// Fatos Fiscais
		List<MLBRFactFiscal> factFiscals = new Query(getCtx(), MLBRFactFiscal.Table_Name, "LBR_EFDICMSIPI_ID=?", get_TrxName())
				.setParameters(getLBR_EFDICMSIPI_ID())
				.setOrderBy("(CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END), LBR_NotaFiscal_ID, Line, DocumentNo")
				.list();

		// Vendas com cartão de crédito
		MLBRSalesCardTotal[] cards = MLBRSalesCardTotal.get(getCtx(), getC_Period_ID(), null);
		
		// criar blocos
		BLOCO0 bloco0 = new BLOCO0();
		BLOCOB blocoB = new BLOCOB();
		BLOCOC blocoC = new BLOCOC();
		BLOCOD blocoD = new BLOCOD();
		BLOCOE blocoE = new BLOCOE();
		BLOCOG blocoG = new BLOCOG();
		BLOCOH blocoH = new BLOCOH();
		BLOCOK blocoK = new BLOCOK();
		BLOCO1 bloco1 = new BLOCO1();
		BLOCO9 bloco9 = new BLOCO9();
		
		
		// 0000 - dados da empresa
		bloco0.setR0000(EFDUtil.createR0000(getCtx(), getStartDate(), getEndDate(), getAD_Org_ID(), null));
		
		/**
		 * 	00 - Industrial - Transformação
		 * 	01 - Industrial - Beneficiamento
		 * 	02 - Industrial - Montagem
		 * 	03 - Industrial - Acondicionamento ou Reacondicionamento
		 * 	04 - Industrial - Renovação ou Recondicionamento
		 * 	05 - Equiparado a industrial - Por opção
		 * 	06 - Equiparado a industrial - Importação Direta
		 * 	07 - Equiparado a industrial - Por lei específica
		 * 	08 - Equiparado a industrial - Não enquadrado nos códigos 05, 06 ou 07
		 * 	09 - Outros
		 */
		if ("0".equals(bloco0.getR0000().getIND_ATIV()))
			bloco0.setR0002(new R0002(MSysConfig.getValue(SysConfig.LBR_SPED_CLAS_ESTAB_IND, "00", getAD_Client_ID(), getAD_Org_ID())));
		
		// 0005 - dados adicionais da org
		bloco0.setR0005(EFDUtil.createR0005(getCtx(), getAD_Org_ID(), null));
		
		// 0015 - dados adicionais da org
		bloco0.setR0015(EFDUtil.createR0015(getCtx(), getAD_Org_ID(), null));
				 		
		// 0100 - contator
		bloco0.setR0100(EFDUtil.createR0100(getCtx(), getAD_Org_ID(), null));
		
		// ultima nota fiscal do loop de fatos fiscais (somente auxiliar)
		int last_LBR_NotaFiscal_ID = 0;
		
		// Headers
		RC100 rc100 = null;
		RC500 rc500 = null;
		RD100 rd100 = null;
		RD500 rd500 = null;
		
		for(MLBRSalesCardTotal card : cards)
		{
			bloco1.addR1600(EFDUtil.createR1600(card));
		}
		
		/**
		 * Loop de Fatos Fiscais. 
		 * 
		 * 	Obs.: Os fatos fiscais repetem de acordo com o numero de linhas da NF. 
		 * 		Ex.: Uma NF com 6 linhas, terá 6 fatos fiscais.
		 * 
		 * 	Devido a observação acima, deve-se tomar cuidado para tratar os registros agrupados, 
		 * 	como dados do corpo da NF 
		 */
		for(MLBRFactFiscal factFiscal : factFiscals)
		{

			//
			String REG = EFDUtil.getBlocoNFModel(EFDUtil.getCOD_MOD(factFiscal)); 
			
			if (factFiscal.getDocumentNo()==null)
				REG="C999"; //para não criar os blocos, apagar depois!
			
			/*
			 * Gerar somente dos blocos C(produtos) e D(servicos).
			 */
			if(!(REG.startsWith("C") || REG.startsWith("D")))
				continue;

			/*
			 * R0150 - Parceiros de Negócios
			 */
			bloco0.addr0150(EFDUtil.createR0150(factFiscal));
			
			/*
			 * Criar registros da NF, pois o fato fiscal se refere a uma nova NF
			 */
			if(last_LBR_NotaFiscal_ID != factFiscal.getLBR_NotaFiscal_ID())
			{
				
				// 
				rc100 = null;
				rd100 = null;

				/*
				 * C100 - NFs
				 */
				if(REG.startsWith("C100"))
				{
					// C100 - NF
					rc100 = EFDUtil.createRC100(factFiscal);
					if (rc100.getNUM_DOC() != null)
					{
						blocoC.addrC100(rc100);

						// C120 - DI
						if(factFiscal.getLBR_NFDI_ID() > 0)
							rc100.setrC120(EFDUtil.createRC120(factFiscal));
						
						// C140 FIXME
						//if (factFiscal.getC_Invoice_ID() > 0 && MLBROpenItem.getOpenItem(factFiscal.getC_Invoice_ID(), null).length > 0)
							//rc100.setrC140(EFDUtil.createRC140(factFiscal));
						
						/*
						 *  0460 - Obs do Lançamento Fiscal
						 *  
						 *  Se não for industria e for entrada, gerar a Obs do Lançamento Fiscal 
						 *  de acordo com a descrição no método addrC170
						 */
						if(rc100.getIND_ATIV().equals("1") && rc100.getIND_OPER().equals("0"))
						{
							//
							R0460 r0460 = EFDUtil.createR0460(rc100, bloco0.getR0460().size());
							bloco0.addr0460(r0460);
						
							// C195 - Associar a Obs do Lançamento Fiscal à NF
							rc100.addrC195(EFDUtil.createRC195(r0460));
						}
					}
				}
				
				/*
				 * D100 - Conhecimentos de Transportes
				 */
				else if(REG.startsWith("D100"))
				{
					// D100
					rd100 = EFDUtil.createRD100(factFiscal);
					blocoD.addrD100(rd100);
				}
				
				/*
				 * D500 - Conhecimentos de Telefonia
				 */
				else if(REG.startsWith("D500"))
				{
					// D500
					rd500 = EFDUtil.createRD500(factFiscal);
					blocoD.addrD500(rd500);
				}
				
				/*
				 * C500 - Conhecimentos de Energia
				 */
				else if(REG.startsWith("C500"))
				{
					// C500
					rc500 = EFDUtil.createRC500(factFiscal);
					blocoC.addrC500(rc500);
				}
						
			}
			
			/*
			 * Unidades
			 */
			if(REG.startsWith("C100"))
			bloco0.addr0190(EFDUtil.createR0190(factFiscal));
			
			/*
			 * Produtos
			 */;
			 if(REG.startsWith("C100") || REG.startsWith("D100"))
				bloco0.addr0200(EFDUtil.createR0200(factFiscal));
			
			/*
			 * Add C170 ao C100
			 */
			if(REG.startsWith("C100"))
			{
				blocoC.getrC100().get(blocoC.getrC100().indexOf(rc100)).
					addrC170(EFDUtil.createRC170(factFiscal, blocoC.getrC100().
							get(blocoC.getrC100().indexOf(rc100)).getrC170().size() + 1));
				//
//					TODO: Criar campo na VIEW
//					Object cfopNote = factFiscal.get_Value ("LBR_CFOPNote");
//					if (!cfopNote.equals(""))
//					{
//						R0400 r0400 = createR0400(factFiscal);
//						reg.setCOD_NAT(r0400.getCOD_NAT());
//						bloco0.addr0400( r0400 );
//					}
			}
			/*
			 * Add C590 ao C500
			 */
			if(REG.startsWith("C500"))
				blocoC.getrC500().get(blocoC.getrC500().indexOf(rc500))
					.addrC590(EFDUtil.createRC590(factFiscal, blocoC.getrC500().
							get(blocoC.getrC500().indexOf(rc500)).getrC590().size() + 1));

			/*
			 * Add D110 ao D100
			 */
			if(REG.startsWith("D100") && factFiscal.getlbr_NFModel().equals("07"))
				blocoD.getrD100().get(blocoD.getrD100().indexOf(rd100))
					.addrD110(EFDUtil.createRD110(factFiscal, blocoD.getrD100().
							get(blocoD.getrD100().indexOf(rd100)).getrD110().size() + 1));
			
			/*
			 * Add D590 ao D500
			 */
			if(REG.startsWith("D500"))
				blocoD.getrD500().get(blocoD.getrD500().indexOf(rd500))
					.addrD590(EFDUtil.createRD590(factFiscal, blocoD.getrD500().
							get(blocoD.getrD500().indexOf(rd500)).getrD590().size() + 1));
			
			/*
			 * Add D190 ao D100
			 */
			if(REG.startsWith("D100"))
				blocoD.getrD100().get(blocoD.getrD100().indexOf(rd100))
					.addrD190(EFDUtil.createRD190(factFiscal, blocoD.getrD100().
							get(blocoD.getrD100().indexOf(rd100)).getrD110().size() + 1));
			
			
			/*
			 * Preencher com o ID da NF do fato fiscal
			 * para no próximo loop verificar se o próximo 
			 * fato pertence a esta mesma nota
			 */
			last_LBR_NotaFiscal_ID = factFiscal.getLBR_NotaFiscal_ID();
			
		} // loop fatos fiscais
		
		
		/**
		 * VERIFICAR EXCEÇÕES
		 */
		blocoC.checkException();
		blocoD.checkException();
		
		
		
		/**
		 * APURAÇÃO DE ICMS, IPI e ST - BLOCO E
		 */
		
		/**
		 * ICMS
		 */
		MLBRTaxAssessment m_taxAssessment = MLBRTaxAssessment.get(getCtx(), getAD_Org_ID(), "ICMSPROD", getC_Period_ID(), null);
		if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
		{				
			// E100 - ICMS
			blocoE.setrE100(EFDUtil.createRE100(getStartDate(), getEndDate()));
			
			// E110 - gerar baseado nos blocos C e D
			blocoE.getrE100().setrE110(EFDUtil.createRE110(m_taxAssessment));
			blocoE.getrE100().setrE116(EFDUtil.createRE116(m_taxAssessment));
			
 			// Adicionar detalhes dos ajustes do E110
			if(blocoE.getrE100().getrE110() != null)
			{
				
				// linhas de ajustes da apuração
				for (X_LBR_TaxAssessmentLine line : m_taxAssessment.getLines())
					blocoE.getrE100().addrE111(EFDUtil.createRE111(bloco0.getR0000().getUF(), true, line));
			}
			
		}		
		
		/**
		 * ICMS ST 
		 */
		for (RC100 aux_rc100 : blocoC.getrC100())
		{

			// somente gerar registros se a NF tiver ST
			if(aux_rc100.getVL_ICMS_ST() != null  && aux_rc100.getVL_ICMS_ST().signum() == 1)
			{
				
				// RE200 - criar registro da UF no período
				RE200 re200 = EFDUtil.createRE200(aux_rc100.getUF(), getStartDate(), getEndDate());
				
				
				//
				if(blocoE.getrE200().contains(re200))
					re200.subtractCounter();
				else 
					blocoE.getrE200().add(re200);
				
				
				// criar o registro necessário da apuração, se já não existir
				if(blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).getrE210() == null)
					blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).setrE210(EFDUtil.createRE210());

				
				// Vlr Débito, Vlr Devolução de ST
				BigDecimal VL_DEVOL_ST = Env.ZERO; 
				BigDecimal VL_RETENÇAO_ST = Env.ZERO;
				
				
				// linhas para extrarir os valores de ST, tanto de devolução quanto débito
				for(RC190 aux_rc190 : aux_rc100.getrC190())
				{
					 // se for devolução de venda
					if (EFDUtil.isCFOPDevolST(aux_rc190.getCFOP()) && aux_rc190.getVL_ICMS_ST().signum() == 1)
						VL_DEVOL_ST = VL_DEVOL_ST.add(aux_rc190.getVL_ICMS_ST());
					
					// venda e tem débito, somar ao totalizador da UF
					else if(aux_rc100.getIND_OPER().equals("1") && aux_rc190.getVL_ICMS_ST().signum() == 1)
						VL_RETENÇAO_ST = VL_RETENÇAO_ST.add(aux_rc190.getVL_ICMS_ST());
				
					
				} // for RC190s
				
				
				// somar valores apurados no totalizador da NF
				blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).addValuesE210(VL_DEVOL_ST, VL_RETENÇAO_ST);
				
				
				// criar registro 250 e adicionar ao RE210, um por NF para discriminar o lançamento que gera o débido/ajuste
				if(VL_RETENÇAO_ST.signum() == 1)
				{
					// adicionar o RE250 ao RE210
					blocoE.getrE200().get(blocoE.getrE200().indexOf(re200)).getrE210().addrE250(
							EFDUtil.createRE250(bloco0.getR0000().getUF().equals(aux_rc100.getUF()), 
									aux_rc100.getDT_DOC(), VL_RETENÇAO_ST, getEndDate(), aux_rc100.getNUM_DOC()));
					
				} // end if retencao > 0
				
			} // end if st > 0
		
		} // for rc100s
		
		// validar valores da substitução tributária referentes as devoluções
		blocoE.subtractReversalRE250();

		
			
		
		/** 
		 * IPI
		 */
		m_taxAssessment = MLBRTaxAssessment.get(getCtx(), getAD_Org_ID(), "IPI", getC_Period_ID(), null);
		if(m_taxAssessment != null && m_taxAssessment.get_ID() > 0)
		{
			// E500
			blocoE.setrE500(EFDUtil.createRE500(getStartDate(), getEndDate()));
			
			// E510 - Resumo baseado no RC170				
			for (RC100 regRC100 : blocoC.getrC100())
			{
				for ( RC190 rc190 : regRC100.getrC190())
				{
					// só gerar de registros que tenham IPI
					if(rc190.getVL_IPI().signum() == 1)
						blocoE.getrE500().addrE510(EFDUtil.createRE510(rc190));
				}
			}
			
			blocoE.getrE500().setrE520(EFDUtil.createRE520(m_taxAssessment, blocoE.getrE500().getrE510()));
		}
		

		/**
		 * INVENTÁRIO - BLOCO H
		 * 
		 * Obs.: Só gerar o Bloco H no mês de fevereiro, sendo que os 
		 * valores devem ser referentes ao mês de dezembro
		 */
		if (isLBR_IncludeH())
		{
			
			/*
			 * Definir a data do ultimo dia do ano anterior ao que está sendo gerado o SPED
			 */
			GregorianCalendar calendar = new GregorianCalendar();
			calendar.setTime(getStartDate());
			calendar.set(Calendar.MONTH, Calendar.DECEMBER);
			calendar.set(Calendar.DAY_OF_MONTH, 31);
			calendar.add(Calendar.YEAR, -1); 
			
			/*
			 * Registro RH005 com a data e o valor total do inventário. 
			 * Obs.: Valor total é atualizado ao adicionar um novo registro RH010
			 * Data: 31/12/ANO_ANTERIOR_AO_QUE_ESTA_SENDO_GERADO_O_EFD
			 */
			if (isLBR_IncludeH())
			{
				blocoH.setrH005(EFDUtil.createRH005(new Timestamp(calendar.getTimeInMillis())));
			
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try
				{
					// carregar informações do inventário
					pstmt = DB.prepareStatement (EFDUtil.getSQLInv(isFixedAsset()), null);
					// params
					pstmt.setInt(1, getC_Period_ID());
					pstmt.setString(2, "S");
					pstmt.setInt(3, Env.getAD_Client_ID(getCtx()));
					pstmt.setInt(4, getAD_Org_ID());
					pstmt.setTimestamp(5, new Timestamp(calendar.getTimeInMillis())); // Data: 31/12/ANO_ANTERIOR_AO_QUE_ESTA_SENDO_GERADO_O_EFD
					
					// rs
					rs  = pstmt.executeQuery ();
				
					/*
					 *  para cada registro do inventário, gera-se um RH010 e totaliza com o RH005
					 */
					while (rs.next())
					{
						// carregar produto
						MProduct m_product = new MProduct(getCtx(), rs.getInt("M_Product_ID"), null);
	
						// criar R0190
						R0190 r0190 = EFDUtil.createR0190(m_product);
						bloco0.addr0190(r0190);
						
						// criar R0200
						R0200 r0200 = EFDUtil.createR0200(m_product);
						bloco0.addr0200(r0200);
				
						// conta contábil
						String COD_CTA = "";
						int C_ElementValue_ID = EFDUtil.getProductAsseAcct(m_product.getM_Product_ID(), null);
						if(C_ElementValue_ID > 0)
						{
							R0500 r0500 = EFDUtil.createR0500(new MElementValue(getCtx(), C_ElementValue_ID, null), getEndDate());
							bloco0.addr0500(r0500);
							COD_CTA = r0500.getCOD_CTA();
						}
						
						// indicador de quem está com o estoque
						String IND_PROP = rs.getString("lbr_WarehouseType").equals("3RD") ? "2" :
								rs.getString("lbr_WarehouseType").equals("3WN") ? "1" : "0"; 					
						 
								
						// criar registro RH010 e adicionar ao RH005
						blocoH.getrH005().addrH010(EFDUtil.createRH010(
								r0200.getCOD_ITEM(), 
								r0190.getUNID(), 
								rs.getBigDecimal("QtyOnHand"),
								rs.getBigDecimal("CurrentCostPrice"), 
								rs.getBigDecimal("CurrentCostPrice").multiply(rs.getBigDecimal("QtyOnHand")), 
								IND_PROP, 
								COD_CTA));
						
					}
				} // fim Bloco H
				catch (SQLException e)
				{
					log.log(Level.SEVERE, EFDUtil.getSQLInv(), e);
					return null;
				}
				finally{
				       DB.close(rs, pstmt);
				}
			}
		}
		
		/**
		 * INVENTÁRIO - BLOCO K
		 */
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			// carregar informações do inventário para o Bloco K
			pstmt = DB.prepareStatement (EFDUtil.getSQLBookInventory(), null);
			// params
			pstmt.setInt(1, Env.getAD_Client_ID(getCtx()));
			pstmt.setInt(2, getAD_Org_ID());
			pstmt.setInt(3, getLBR_EFDICMSIPI_ID());
			
			// rs
			rs  = pstmt.executeQuery ();
			
			// Não estiver vazio
			if(rs.isBeforeFirst())
			{
				// K100
				blocoK.setrK100(EFDUtil.createRK100(getStartDate(), getEndDate()));
			}
		
			/*
			 *  para cada registro do inventário, gera-se um RH010 e totaliza com o RH005
			 */
			while (rs.next())
			{
				// carregar produto
				MProduct m_product = new MProduct(getCtx(), rs.getInt("M_Product_ID"), null);

				// criar R0190
				R0190 r0190 = EFDUtil.createR0190(m_product);
				bloco0.addr0190(r0190);
				
				// criar R0200
				R0200 r0200 = EFDUtil.createR0200(m_product);
				bloco0.addr0200(r0200);
		
				// indicador de quem está com o estoque
				String IND_PROP = rs.getString("lbr_WarehouseType").equals("3RD") ? "2" :
						rs.getString("lbr_WarehouseType").equals("3WN") ? "1" : "0";
				
				//	Parceiro de Negócio
				String bpValue = "";
				
				if (rs.getInt("C_BPartner_ID") > 0)
					bpValue = new MBPartner(Env.getCtx(), rs.getInt("C_BPartner_ID"), null).getValue();
				
				// Quantidade em Mãos
				BigDecimal qtyBook = rs.getBigDecimal("QtyBook");
				
				//
				Timestamp movDate = rs.getTimestamp("MovementDate");
				
				// Se Revalidar for igual a falso, Adicionar ao Bloco K200
				if (!"Y".equals(rs.getString("isRevalidate")))
					// criar registro RK200
					blocoK.addrK200(EFDUtil.createRK200(
							r0200.getCOD_ITEM(), 
							bpValue, 
							getEndDate(),
							IND_PROP,
							qtyBook));
				else
					// Se Revalidar, adicionar ao Bloco K280.
					//K280 indica Correção de Apontamento de um período anterior
					blocoK.addrK280(EFDUtil.createRK280(
							r0200.getCOD_ITEM(), 
							bpValue, 
							movDate,
							IND_PROP,
							qtyBook));
					
				
			}
		} // fim Bloco K
		catch (SQLException e)
		{
			log.log(Level.SEVERE, EFDUtil.getSQLBookInventory(), e);
			return null;
		}
		finally{
		       DB.close(rs, pstmt);
		}

		//	Organização
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
		
		//	Verificar Endereço
		if (oi.getC_Location() == null || oi.getC_Location_ID() == 0)
			throw new AdempiereException("Endereço da Organização não preenchido");
		
		//	Estado Padrão SP
		String Region = "";
		
		//	Verificar Estado/Região da Organização
		if (oi.getC_Location() != null && oi.getC_Location().getC_Region() != null)
			Region = oi.getC_Location().getC_Region().getName();
		
		/*
		 * Inicialização dos Blocos 
		 */
		bloco0.setR0001(EFDUtil.createR0001(bloco0.getR0150().size() > 0)); 	// init bloco 0
		blocoB.setRB001(EFDUtil.createRB001(false)); // init bloco B
		blocoC.setrC001(EFDUtil.createRC001(blocoC.getrC100().size() > 0)); 	// init bloco C
		blocoD.setrD001(EFDUtil.createRD001(blocoD.getrD100().size() > 0 
				|| blocoD.getrD500().size() > 0)); // init bloco D
		blocoH.setrH001(EFDUtil.createRH001(blocoH.getrH005() != null 			// init bloco H
				&& blocoH.getrH005().getrH010().size() > 0));
		blocoE.setrE001(EFDUtil.createRE001(true));						    	// init bloco E
		blocoG.setrG001(EFDUtil.createRG001(false));							// init bloco G
		blocoK.setrK001(EFDUtil.createRK001((blocoK.getrK200().size() > 0)));	// init bloco K
		bloco1.setR1001(EFDUtil.createR1001(true));								// init bloco 1
		bloco1.setR1010(EFDUtil.createR1010(getC_Period_ID(), Region));
		bloco9.setR9001(EFDUtil.createR9001(true));								// init bloco 9 (sempre true)

		/*
		 * Registros Totalizadores dos Blocos
		 */
		bloco0.setR0990(EFDUtil.createR0990()); // fim do 0
		blocoB.setRB990(EFDUtil.createRB990()); // fim do B
		blocoC.setrC990(EFDUtil.createRC990()); // fim do C
		blocoD.setrD990(EFDUtil.createRD990()); // fim do D
		blocoE.setrE990(EFDUtil.createRE990()); // fim do E
		blocoG.setrG990(EFDUtil.createRG990()); // fim do G
		blocoH.setrH990(EFDUtil.createRH990()); // fim do H
		blocoK.setrK990(EFDUtil.createRK990());	// fim do K
		bloco1.setR1990(EFDUtil.createR1990()); // fim do 1
		bloco9.setR9990(EFDUtil.createR9990()); // fim do 9
		
		
		// REGISTROS DE FIM DE ARQUIVO - BLOCO 9
		bloco9.setR9900(EFDUtil.createR9900());
		
		
		// totalizador final do arquivo, criado depois que todos os outros registros já foram feitos
		bloco9.setR9999(EFDUtil.createR9999()); // fim do arquivo
		
		
		// atualizar totalizador dos R9990
		bloco9.getR9990().setQTD_LIN_9(String.valueOf(CounterSped.getBlockCounter(bloco9.getR9990().getReg())));
		
		
		// Montar resultado			 
		StringBuilder result = new StringBuilder();
		result.append(bloco0.toString());
		result.append(blocoB.toString());
		result.append(blocoC.toString());
		result.append(blocoD.toString());
		result.append(blocoE.toString());
		result.append(blocoG.toString());
		result.append(blocoH.toString());
		result.append(blocoK.toString());
		result.append(bloco1.toString());
		result.append(bloco9.toString());
		// 
		return result;
	}	//	generateEFD
	
	public boolean voidIt()
	{
		return false;
	}	//	voidIt
	
	public boolean closeIt()
	{
		return false;
	}	//	closeIt
	
	public boolean reverseCorrectIt()
	{
		return false;
	}	//	reverseCorrectIt
	
	public boolean reverseAccrualIt()
	{
		return false;
	}	//	reverseAccrualIt
	
	public boolean reActivateIt()
	{
		setProcessed(false);
		setDocAction(ACTION_Prepare);
		return true;
	}	//	reActivateIt
	
	public String getSummary()
	{
		return null;
	}	//	getSummary
	
	public String getDocumentNo()
	{
		return null;
	}	//	getDocumentNo
	
	public String getDocumentInfo()
	{
		return null;
	}	//	getDocumentInfo
	
	public File createPDF()
	{
		return null;
	}	//	createPDF
	
	public String getProcessMsg()
	{
		return null;
	}	//	getProcessMsg
	
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID
	
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID

	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	public int customizeValidActions(String docStatus, Object processing, String orderType, String isSOTrx,
			int AD_Table_ID, String[] docAction, String[] options, int index) {
		if (DOCSTATUS_Drafted.equals(docStatus)
				|| DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Void;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=2;
		}
		else if (DOCSTATUS_InProgress.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Prepare;
			options[2] = DOCACTION_Void;
			options[3] = null;
			options[4] = null;
			index=3;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_Re_Activate;
			options[1] = null;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=1;
		}
		//
		return index;
	}	//	customizeValidActions
	
	private Timestamp getStartDate()
	{
		return getC_Period().getStartDate();
	}	//	getStartDate
	
	private Timestamp getEndDate()
	{
		return getC_Period().getEndDate();
	}	//	getEndDate
	
	@Override
	public String toString() 
	{
		StringBuilder sb = new StringBuilder("EFD [");
		sb.append(TextUtil.timeToString(getC_Period().getStartDate(), "MM/yyyy")).append("-").append(get_ID()).append("]");
		return sb.toString();	
	}	//	toString
}	//	MLBREFDICMSIPI
