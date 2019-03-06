package org.kenos.idempiere.lbr.base.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.DBException;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MProduction;
import org.compiere.model.MStorageOnHand;
import org.compiere.model.MWarehouse;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Create a Movement document to be used in production
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MovementToProduction.java, v1.0 2014/03/28 3:06:59 PM, ralexsander Exp $
 */
public class MovementToProduction extends SvrProcess
{
	/** The Record 	*/
	private int p_Record_ID 		= 0;
	
	/**	Document Type	*/
	private int p_C_DocType_ID 	= 0;
	
	/**	Warehouse	*/
	private int p_M_Warehouse_ID = 0;
	
	/**
	 * Prepare - e.g., get Parameters.
	 */
	protected void prepare() 
	{
		for (ProcessInfoParameter para : getParameter()) 
		{
			String name = para.getParameterName();
			
			if (para.getParameter() == null)
				;
			
			else if (name.equals(MMovement.COLUMNNAME_C_DocType_ID))
				p_C_DocType_ID = para.getParameterAsInt();
			
			else if (name.equals(MWarehouse.COLUMNNAME_M_Warehouse_ID))
				p_M_Warehouse_ID = para.getParameterAsInt();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_Record_ID = getRecord_ID();
	} 	//	prepare

	/**
	 * 	Process Production
	 * 
	 * @return result message
	 * @throws Exception
	 */
	protected String doIt () throws Exception 
	{
		MProduction production = new MProduction (getCtx(), p_Record_ID, get_TrxName());
		
		if (!MProduction.ISCREATED_Yes.equals (production.getIsCreated()))
			throw new AdempiereException ("@Error@ Linhas da Produção ainda não foram criadas");
		
		if (p_C_DocType_ID <= 0)
			throw new AdempiereException ("@Error@ Tipo de Documento Inválido");
		
		if (p_M_Warehouse_ID <= 0)
			throw new AdempiereException ("@Error@ Armazém Inválido");
		
		//	Movement
		MMovement movement = new MMovement (getCtx(), 0, get_TrxName());
		movement.setC_DocType_ID (p_C_DocType_ID);
		movement.setDescription ("Documento de Movimentação para a OP: " + production.get_ValueAsString ("DocumentNo"));
		movement.set_ValueNoCheck(MProduction.COLUMNNAME_M_Production_ID, production.getM_Production_ID());
		movement.saveEx();
		
		Map<Integer, List<Storage>> cache = new HashMap<Integer, List<Storage>>();
		
		String sql = "SELECT pl.M_Product_ID, pl.M_Locator_ID, SUM (pl.MovementQty*-1) AS MovementQty, \n" + 
				"COALESCE ((SELECT SUM (s.QtyOnHand) FROM M_Storage s \n" + 
				"            WHERE s.M_Product_ID=pl.M_Product_ID \n" + 
				"              AND s.M_Locator_ID=pl.M_Locator_ID), 0) AS QtyOnHand\n" + 
				"    FROM M_Production p, M_ProductionLine pl \n" + 
				"   WHERE p.M_Production_ID=?\n" + 
				"     AND p.M_Production_ID=pl.M_Production_ID\n" + 
				"     AND pl.MovementQty < 0 \n" + 
				"GROUP BY pl.M_Product_ID, pl.M_Locator_ID;";
		
		PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	try
	    	{
	    		pstmt = DB.prepareStatement (sql, get_TrxName());
	    		pstmt.setInt (1, p_Record_ID);
	    		rs = pstmt.executeQuery();
	    		while (rs.next())
	    		{
	    			int M_Product_ID = rs.getInt (MStorageOnHand.COLUMNNAME_M_Product_ID);
	    			int M_Locator_ID = rs.getInt (MStorageOnHand.COLUMNNAME_M_Locator_ID);
	    			BigDecimal MovementQty = rs.getBigDecimal (MMovementLine.COLUMNNAME_MovementQty);
	    			BigDecimal QtyOnHand = rs.getBigDecimal (MStorageOnHand.COLUMNNAME_QtyOnHand);
	    			
	    			//	Already movemented
	    			if (QtyOnHand.subtract(MovementQty).signum() != -1)
					continue;
	    			
				//	Put in cache
				if (!cache.containsKey (M_Product_ID))
					cache.put (M_Product_ID, getStorage(M_Product_ID, p_M_Warehouse_ID));
				
				for (Storage s : cache.get (M_Product_ID))
				{
					//	Total movemented
					if (MovementQty.signum() != 1)
						break;
					
					//	Positive only
					if (s.getQtyOnHand().signum() != 1)
						continue;
					
					BigDecimal targetQty = Env.ZERO;
					
					//	Enough qty
					if (s.getQtyOnHand().subtract(MovementQty).signum() == 1)
						targetQty = MovementQty;
					//	Max available
					else
						targetQty = s.getQtyOnHand();
					
					//	Movement details
					MMovementLine ml = new MMovementLine (movement);
					ml.setM_Product_ID(M_Product_ID);
					ml.setM_Locator_ID(s.getM_Locator_ID());
					ml.setM_LocatorTo_ID(M_Locator_ID);
					ml.setMovementQty(s.subtract(targetQty));
					if (s.getM_AttributeSetInstance_ID() > 0)
					{
						ml.setM_AttributeSetInstance_ID(s.getM_AttributeSetInstance_ID());
						ml.setM_AttributeSetInstanceTo_ID(s.getM_AttributeSetInstance_ID());
					}
					ml.saveEx();
					
					//	Subtract qty movemented
					MovementQty = MovementQty.subtract(targetQty);
				}
	    		}
	    	}
	    	catch (SQLException e)
	    	{
	    		throw new DBException (e, sql);
	    	}
	    	finally
	    	{
	    		DB.close (rs, pstmt);
	    		rs = null; pstmt = null;
	    	}
		
		//	Check if there is lines, if not throw error
		if (movement.getLines(false).length == 0)
			throw new AdempiereException ("@Error@ não há linhas para movimentar");
		
		return "@Success@ Documento criado: " + movement.getDocumentNo();
	}	//	doIt
	
	private List<Storage> getStorage (int M_Product_ID, int M_Warehouse_ID)
	{
		List<Storage> result = new ArrayList<Storage>();
		
		String sql = "SELECT s.M_Product_ID, s.M_Locator_ID, \n" + 
				"(CASE WHEN s.M_AttributeSetInstance_ID > 0 \n" + 
				"       AND EXISTS (SELECT '1' \n" + 
				"                     FROM M_AttributeSetInstance asi \n" + 
				"                    WHERE asi.M_AttributeSetInstance_ID=s.M_AttributeSetInstance_ID \n" + 
				"                      AND asi.M_AttributeSet_ID>0) \n" + 
				"      THEN s.M_AttributeSetInstance_ID \n" + 
				"      ELSE 0 END) AS M_AttributeSetInstance_ID, \n" + 
				"SUM (s.QtyOnHand) AS QtyOnHand \n" + 
				"FROM M_Storage s \n" + 
				"WHERE s.M_Product_ID=? \n" + 
				"AND s.QtyOnHand<>0 \n" + 
				"AND EXISTS (SELECT '1' FROM M_locator l WHERE l.M_Locator_ID=s.M_Locator_ID AND l.M_Warehouse_ID=?) \n" + 
				"GROUP BY s.M_Product_ID, s.M_Locator_ID, \n" + 
				"(CASE WHEN s.M_AttributeSetInstance_ID > 0 \n" + 
				"       AND EXISTS (SELECT '1' \n" + 
				"                     FROM M_AttributeSetInstance asi \n" + 
				"                    WHERE asi.M_AttributeSetInstance_ID=s.M_AttributeSetInstance_ID\n" + 
				"                      AND asi.M_AttributeSet_ID>0) \n" + 
				"      THEN s.M_AttributeSetInstance_ID \n" + 
				"      ELSE 0 END) \n" +
				"ORDER BY 3";
		
		PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	try
	    	{
	    		pstmt = DB.prepareStatement (sql, get_TrxName());
	    		pstmt.setInt (1, M_Product_ID);
	    		pstmt.setInt (2, M_Warehouse_ID);
	    		rs = pstmt.executeQuery();
	    		while (rs.next())
	    		{
	    			//	Positive only
	    			if (rs.getBigDecimal(4).signum() == 1)
	    				result.add(new Storage (rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getBigDecimal(4)));
	    		}
	    	}
	    	catch (SQLException e)
	    	{
	    		throw new DBException (e, sql);
	    	}
	    	finally
	    	{
	    		DB.close (rs, pstmt);
	    		rs = null; pstmt = null;
	    	}
		
		return result;
	}
}	//	MovementToProduction

class Storage
{
	public Storage(int M_Product_ID, int M_Locator_ID, int M_AttributeSetInstance_ID, BigDecimal QtyOnHand)
	{
		this.M_Product_ID 				= M_Product_ID;
		this.M_Locator_ID 				= M_Locator_ID;
		this.M_AttributeSetInstance_ID 	= M_AttributeSetInstance_ID;
		this.QtyOnHand 					= QtyOnHand;
	}	//	Storage
	
	int M_Product_ID;
	int M_Locator_ID;
	int M_AttributeSetInstance_ID;
	BigDecimal QtyOnHand;
	
	public BigDecimal subtract (BigDecimal qty)
	{
		this.QtyOnHand = this.QtyOnHand.subtract(qty);
		return qty;
	}	//	subtract
	public int getM_Product_ID()
	{
		return M_Product_ID;
	}	//	getM_Product_ID
	public int getM_Locator_ID()
	{
		return M_Locator_ID;
	}	//	getM_Locator_ID
	public int getM_AttributeSetInstance_ID()
	{
		return M_AttributeSetInstance_ID;
	}	//	getM_AttributeSetInstance_ID
	public BigDecimal getQtyOnHand()
	{
		return QtyOnHand;
	}	//	getQtyOnHand
}	//	Storage
