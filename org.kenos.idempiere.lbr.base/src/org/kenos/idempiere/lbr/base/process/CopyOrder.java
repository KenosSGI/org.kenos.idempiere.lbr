package org.kenos.idempiere.lbr.base.process;

import java.math.BigDecimal;

import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;

/**
 * 		Copy Order
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CopyOrder.java, v1.0 2017/09/05 11:08:41 AM, ralexsander Exp $
 */
public class CopyOrder extends org.compiere.process.CopyOrder
{
	/**	Process Name				*/
	public static final String PROCESS_NAME = org.compiere.process.CopyOrder.class.getName();
	
	/** Order to Copy				*/
	private int 		p_C_Order_ID = 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (MOrder.COLUMNNAME_C_Order_ID.equals (name))
				p_C_Order_ID = ((BigDecimal)para[i].getParameter()).intValue();
		}
		super.prepare();
	}	//	prepare
	
	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		MOrder from = new MOrder (getCtx(), p_C_Order_ID, get_TrxName());
		if (from.getC_BPartner().isProspect())
			return "@Error@<br>Não é possível criar um pedido para um Parceiro de Negócios em Perspectiva (Prospect). Atualize o cadastro do Parceiro e tente novamente.";
		
		return super.doIt();
	}	//	doIt
}	//	CopyOrder
