package org.kenos.idempiere.lbr.base.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempiere.base.Service;
import org.adempierelbr.model.X_LBR_ProductionGroup;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MDocType;
import org.compiere.model.MProduction;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_M_Production;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.base.process.IPOGBOMDrop;

/**
 * 		Model for Production Group
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRProductionGroup.java, v1.0 2017/12/14 10:47:53 PM, ralexsander Exp $
 */
public class MLBRProductionGroup extends X_LBR_ProductionGroup implements DocAction, DocOptions
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 6636733186814393504L;

	public MLBRProductionGroup (Properties ctx, int LBR_ProductionGroup_ID, String trxName)
	{
		super (ctx, LBR_ProductionGroup_ID, trxName);
	}	//	MLBRProductionGroup

	public MLBRProductionGroup (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRProductionGroup
	
	public List<MProduction> getProduction ()
	{
		List<MProduction> productions = new ArrayList<MProduction>();
		
		List<X_M_Production> list = new Query (getCtx(), MProduction.Table_Name, COLUMNNAME_LBR_ProductionGroup_ID + "=?", get_TrxName())
			.setParameters(getLBR_ProductionGroup_ID())
			.list();
		
		for (X_M_Production p : list)
		{
			productions.add(new MProduction(p.getCtx(), p.getM_Production_ID(), p.get_TrxName()));
		}
		return productions;
	}	//	getProduction

	/**
	 * 	Available Actions
	 */
	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		options[0] = null;
		options[1] = null;
		options[2] = null;
		options[3] = null;
		options[4] = null;
		
		if (DOCSTATUS_WaitingConfirmation.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Re_Activate;
			options[2] = DOCACTION_Void;
			index=3;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_Close;
			options[1] = DOCACTION_Re_Activate;
			options[2] = DOCACTION_Void;
			index=3;
		}
		else if (!DOCSTATUS_Closed.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Void;
			index=2;
		}
		//
		return index;
	}	//	customizeValidActions
	
	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	@Override
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	@Override
	public boolean unlockIt()
	{
		setProcessed (false);
		setDocStatus (DOCSTATUS_InProgress);
		return true;
	}

	@Override
	public boolean invalidateIt()
	{
		return false;
	}

	@Override
	public String prepareIt()
	{
		log.info(toString());
		
		if (m_justPrepared)
			return DOCSTATUS_InProgress;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		
		List<MProduction> productions = getProduction();
		
		//	Check if Production group is valid
		if (productions.size() == 0)
		{
			m_processMsg = "Não é possível encerrar um Pedido de Industrialização vazio";
			return DOCSTATUS_Invalid;
		}
		
		//	Check quantities
		for (MProduction p : productions)
		{
			if (p.getProductionQty().signum() != 1)
			{
				m_processMsg = "Pedido de Industrialização sem Quantidade Definida: " + p.getDocumentNo();
				return DOCSTATUS_Invalid;
			}
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		m_justPrepared = true;
		
		return DOCSTATUS_InProgress;
	}	//	prepareIt

	@Override
	public boolean approveIt()
	{
		return false;
	}

	@Override
	public boolean rejectIt()
	{
		return false;
	}

	@Override
	public String completeIt()
	{
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		List<MProduction> productions = getProduction();
		
		/**
		 * 	New document
		 * 
		 * 	-> Waiting Confirmation
		 */
		if (TextUtil.match(getDocStatus(), DOCSTATUS_Drafted, DOCSTATUS_InProgress))
		{
			//	Drop the BOM
			for (MProduction p : productions)
			{
				//	Only when the order was not dropped previously
				if (!MProduction.ISCREATED_Yes.equals(p.getIsCreated()))	
				{
					List<IPOGBOMDrop> list = Service.locator().list(IPOGBOMDrop.class).getServices();
					
					IPOGBOMDrop pogdrop = list.get(0);
					
					m_processMsg = pogdrop.dropBOM (p, this);
					if (m_processMsg != null)
						return DOCSTATUS_Invalid;
				}
			}
			
			setProcessed (true);
			return DOCSTATUS_WaitingConfirmation;
		}
		
		/**
		 * 	Waiting Confirmation
		 * 
		 * 	-> Completed
		 */
		else if (TextUtil.match (getDocStatus(), DOCSTATUS_WaitingConfirmation))
		{
			setProcessed (true);
			return DOCSTATUS_Completed;
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		return null;
	}	//	completeIt

	
	public boolean voidIt()
	{
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		
		String trxName = Trx.createTrxName();
		
		try
		{			
			for (MProduction p : this.getProduction())
			{
				p.set_TrxName(trxName);
				
				if (MProduction.DOCSTATUS_Drafted.equals(p.getDocStatus()))
				{					
						if (p.voidIt())
						{
							p.setProcessed (true);
							p.setDocAction (DOCACTION_None);
							p.setDocStatus (DOCSTATUS_Voided);
							p.save();
						}	
				}
				else if (MProduction.DOCSTATUS_Completed.equals(p.getDocStatus()) || 
						MProduction.DOCSTATUS_Closed.equals(p.getDocStatus()))
				{
					m_processMsg = "Impossível Anular Pedido de Industrialização com Item a Produzir Completado";
					Trx trx = Trx.get(trxName, false);
					trx.rollback();				
					return false;
				}			 
					
			}
			
			Trx trx = Trx.get(trxName, false);
			trx.commit();
			
			setProcessed (true);
			setDocAction (DOCACTION_None);
			setDocStatus (DOCSTATUS_Voided);
			return true;
		
		}
		catch(Exception e)
		{
			m_processMsg = e.getMessage();
			Trx trx = Trx.get(trxName, false);
			trx.rollback();
			return false;					
		}		
	}

	@Override
	public boolean closeIt()
	{
		List<MProduction> productions = getProduction();
		
		if (productions.size() == 0)
		{
			m_processMsg = "Não é possível encerrar um Pedido de Industrialização vazio";
			return false;
		}
		
		for (MProduction p : productions)
		{
			if (TextUtil.match(p.getDocStatus(), DOCSTATUS_Completed, DOCSTATUS_Closed))
			{
				m_processMsg = "Não é possível encerrar um Pedido de Industrialização com itens ainda pendentes de recebimento";
				return false;
			}
		}
		
		return true;
	}	//	closeIt

	@Override
	public boolean reverseCorrectIt()
	{
		return false;
	}

	@Override
	public boolean reverseAccrualIt()
	{
		return false;
	}

	@Override
	public boolean reActivateIt()
	{
		return unlockIt();
	}

	@Override
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	@Override
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	@Override
	public File createPDF()
	{
		return null;
	}	//	createPDF

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	@Override
	public String getProcessMsg()
	{
		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}	//	getProcessMsg

	@Override
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	@Override
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID

	@Override
	public BigDecimal getApprovalAmt()
	{
		return Env.ZERO;
	}	//	getApprovalAmt
}	//	MLBRProductionGroup
