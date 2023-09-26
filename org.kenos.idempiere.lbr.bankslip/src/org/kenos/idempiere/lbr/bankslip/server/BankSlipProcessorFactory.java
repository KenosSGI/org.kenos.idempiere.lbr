package org.kenos.idempiere.lbr.bankslip.server;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Collectors;

import org.adempiere.server.IServerFactory;

/**
 * 	Bank Slip Processor Factory
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class BankSlipProcessorFactory implements IServerFactory<BankSlipServer, BankSlipProcessor> {
	
	static private Map<Integer,BankSlipProcessor> s_ProcessorCache = new HashMap<Integer,BankSlipProcessor>();

	/**
	 * BankSlipProcessorFactory
	 */
	public BankSlipProcessorFactory () {}

	@Override
	public BankSlipServer[] create (Properties ctx) {
		List<BankSlipProcessor> list = BankSlipProcessor.get(ctx);
		
		list.stream().forEach(s -> {
			s_ProcessorCache.put(s.getAD_Client_ID(), s);
		});
		
		return list.stream().map(p -> new BankSlipServer(ctx, p))
			.collect(Collectors.toList())
			.toArray (new BankSlipServer[list.size()]);
	}	//	create

	@Override
	public Class<BankSlipProcessor> getProcessorClass () {
		return BankSlipProcessor.class;
	}	//	getProcessorClass

	@Override
	public BankSlipServer create (Properties ctx, BankSlipProcessor serverModel) {
		return new BankSlipServer(ctx, serverModel);
	}	//	create
	
	public static BankSlipProcessor getProcessor (int AD_Client_ID) {
		return s_ProcessorCache.get (AD_Client_ID);
	}	//	getProcessor
}	//	BankSlipProcessorFactory
