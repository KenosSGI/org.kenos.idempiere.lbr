package org.kenos.idempiere.lbr.nfe.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.model.X_LBR_MDFeVehicle;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.Env;

/**
 * 		Callout for RMA
 * 	@author Ricardo Santana
 *	@version $Id: Shipment.java, v1.0 2020/06/20 12:36:03 PM, ralexsander Exp $
 */
public class Shipment implements IColumnCallout 
{
	/**
	 * 		Preenche a placa do Veículo
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @param oldValue
	 * @return "" or error
	 */
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		//	Do not proceed when null
		if (value == null)
			return "";
		
		// 	ID
		int LBR_MDFeVehicle_ID = (Integer) value;

		// 	Check for a valid ID
		if (LBR_MDFeVehicle_ID <= 0)
		   return "";

		// 	Vehicle
		X_LBR_MDFeVehicle vehicle = new X_LBR_MDFeVehicle (Env.getCtx(), LBR_MDFeVehicle_ID, null);
		
		if (vehicle.getlbr_BPShipperLicensePlate() != null)
		{
			String plate = vehicle.getlbr_BPShipperLicensePlate().trim().toUpperCase().replaceAll("[^A-Z0-9]", "");
			
			//	Invalid plate number
			if (plate.length() != 7)
				return "";
			plate = plate.substring(0, 3) + "-" + plate.substring(3) + "/";
			//
			String regionPlate = vehicle.getC_SalesRegion().getName();
			if (vehicle.getC_SalesRegion_ID() > 0 && regionPlate.length() == 2)
				plate += regionPlate;
			else
				plate += "EX";
			//
			mTab.setValue(X_LBR_MDFeVehicle.COLUMNNAME_lbr_BPShipperLicensePlate, plate);
		}

		return "";
	}	//	start
}	//	Shipment
