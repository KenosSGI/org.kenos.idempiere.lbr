package org.kenos.idempiere.lbr.nfe.server;

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
public class DFeProcessorFactory implements IServerFactory<DFeServer, DFeProcessor> {
	
	static private Map<Integer,DFeProcessor> s_ProcessorCache = new HashMap<Integer,DFeProcessor>();

	/**
	 * BankSlipProcessorFactory
	 */
	public DFeProcessorFactory () {}

	@Override
	public DFeServer[] create (Properties ctx) {
		List<DFeProcessor> list = DFeProcessor.get(ctx);
		
		list.stream().forEach(s -> {
			s_ProcessorCache.put(s.getAD_Client_ID(), s);
		});
		
		return list.stream().map(p -> new DFeServer(ctx, p))
			.collect(Collectors.toList())
			.toArray (new DFeServer[list.size()]);
	}	//	create

	@Override
	public Class<DFeProcessor> getProcessorClass () {
		return DFeProcessor.class;
	}	//	getProcessorClass

	@Override
	public DFeServer create (Properties ctx, DFeProcessor serverModel) {
		return new DFeServer(ctx, serverModel);
	}	//	create
	
	public static DFeProcessor getProcessor (int AD_Client_ID) {
		return s_ProcessorCache.get (AD_Client_ID);
	}	//	getProcessor
}	//	BankSlipProcessorFactory
