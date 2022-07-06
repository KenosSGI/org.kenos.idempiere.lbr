package org.kenos.idempiere.lbr.base;

import org.compiere.util.CLogger;
import org.compiere.util.Trx;

/**
 *		This class is intended to monitor a database transaction and call
 *	a callback function when the transaction is released. It is useful when
 *	your need to do some modification on afterSave events.
 * 
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class TrxMonitorThread extends Thread
{
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger (TrxMonitorThread.class);
	/** Trx Name			*/
	String trxName;
	/**	Limit				*/
	int limit;
	/** Check each X time	*/
	int interval;
	/**	Callback when timeout */
	boolean returnOnTimeout = false;

	/**
	 * 
	 * @param name Thread name
	 * @param trxName Trx Name
	 * @param limit Limit in tries
	 * @param interval interval in seconds
	 */
	public TrxMonitorThread(String name, String trxName, int limit, int interval) {
		this (name, trxName, limit, interval, false);
	}	//	TrxMonitorThread

	/**
	 * 
	 * @param name Thread name
	 * @param trxName Trx Name
	 * @param limit Limit in tries
	 * @param interval interval in seconds
	 * @param returnOnTimeout true if should cancel the callback it try limit is reached
	 */
	public TrxMonitorThread(String name, String trxName, int limit, int interval, boolean returnOnTimeout) {
		super (name);
		//
		this.trxName = trxName;
		this.limit = limit;
		this.interval = interval;
		this.returnOnTimeout = returnOnTimeout;
	}	//	TrxMonitorThread
	
	@Override
	public void run() {
		try
		{
			int counterLimit = 0;
			
			if (trxName != null)
				Thread.sleep (interval);
			
			//	Wait until the transaction is closed by other processes
			//	max of 60 interactions, resulting in a 10 minutes total
			while (trxName != null && counterLimit < limit)
			{
				Trx trx = Trx.get (trxName, false);
				
				//	Transaction closed or inactive, abort
				if (trx == null || !trx.isActive())
					counterLimit = limit+1;
				
				else
				{
					if (counterLimit == 0)
						log.warning("Waiting trx to be released [ " + trxName + " ] - " + getName());
					//
					counterLimit++;
					Thread.sleep (interval);	//	10 secs waiting time
				}
			} 
			
			//	Log that waiting time is reached
			if (counterLimit == limit) {
				if (returnOnTimeout) {
					log.warning("Limit was reached, aborting [ " + trxName + " ] - " + getName());
					return;
				}
				else
					log.warning("Limit was reached, keep going anyway [ " + trxName + " ] - " + getName());
			}
		}
		catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		
		//	Callback should be always override
		callback();
	}	//	run
	
	/**
	 * 	You should override this method with your code 
	 */
	public void callback () {}	//	callback
}	//	TrxMonitorThread
