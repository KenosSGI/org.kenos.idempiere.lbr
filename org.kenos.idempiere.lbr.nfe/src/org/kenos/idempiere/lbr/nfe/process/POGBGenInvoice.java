package org.kenos.idempiere.lbr.nfe.process;

import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MProduction;
import org.compiere.process.SvrProcess;
import org.kenos.idempiere.lbr.base.model.MLBRProductionGroup;

/**
 * 		Generate NF
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: POGBGenInvoice.java, v1.0 2017/12/21 7:30:37 PM, ralexsander Exp $
 */
public class POGBGenInvoice extends SvrProcess
{
	private int p_LBR_ProductionGroup_ID;
	
	@Override
	protected void prepare()
	{
		p_LBR_ProductionGroup_ID = getRecord_ID();
	}	//	prepare

	@Override
	protected String doIt() throws Exception
	{
		List<MProduction> lines = new ArrayList<MProduction>();
		
		// Produções Ligadas ao Pedido de Industrialização
		MLBRProductionGroup pg = new MLBRProductionGroup (getCtx(), p_LBR_ProductionGroup_ID, null);
		
		for (MProduction p : pg.getProduction())
		{
			//	Produções Completadas que Não Possuiem Nota Fiscal Relacionada
			if (p.get_ValueAsInt(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID) > 0 || !MProduction.DOCSTATUS_Completed.equals(p.getDocStatus()))
				continue;
			lines.add (p);
		}
		
		// Verifica se Existe Produções Pendente Geração Nota Fiscal de Retorno
		if (lines.isEmpty())
			return "@Error@ sem linhas para lançar";
		
		//	Nota Fiscal Retorno de Industrialização
		MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), 0, get_TrxName());
		
		//	Gerar Nota Fiscal a Partir das Produções Completadas
		nf.generateNF(pg, lines, false);
		
		nf.save();
		
		
		return "@Success@";
	}	//	doIt
}	//	POGBGenInvoice
