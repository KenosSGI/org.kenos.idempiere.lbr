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

import org.compiere.model.I_M_ProductionPlan;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MProduction;
import org.compiere.model.MProductionLine;
import org.compiere.model.MProductionPlan;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Env;


/**
 * 
 * Process to create production lines based on the plans
 * defined for a particular production header
 * @author Paul Bowden
 *
 */
public class ProductionCreate extends SvrProcess {

	/**	Upstream Process Name	*/
	public static final String PROCESS_NAME = "org.compiere.process.ProductionCreate";

	/**	Warehouse	*/
	private int p_M_Warehouse_ID = 0;
	private int p_M_Production_ID=0;
	private MProduction m_production = null;
	private boolean mustBeStocked = false;  //not used
	private boolean recreate = false;
	private boolean alocateWarehouse = false;
	private BigDecimal newQty = null;
	//private int p_M_Locator_ID=0;
	
	
	protected void prepare() {
		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if ("Recreate".equals(name))
				recreate = para[i].getParameterAsBoolean();
			else if ("ProductionQty".equals(name))
				newQty  = (BigDecimal) para[i].getParameter();
			else if (name.equals(MOrder.COLUMNNAME_M_Warehouse_ID))
				p_M_Warehouse_ID = para[i].getParameterAsInt();
			if ("IsCreateAllocation".equals(name))
				alocateWarehouse = para[i].getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);		
		}
		
		p_M_Production_ID = getRecord_ID();
		m_production = new MProduction(getCtx(), p_M_Production_ID, get_TrxName());

	}	//prepare

	@Override
	protected String doIt() throws Exception {

		if ( m_production.get_ID() == 0 )
			throw new AdempiereUserError("Could not load production header");

		if ( m_production.isProcessed() )
			return "Already processed";

		return createLines();

	}
	
	private boolean costsOK(int M_Product_ID) throws AdempiereUserError {
		// Warning will not work if non-standard costing is used
		String sql = "SELECT ABS(((cc.currentcostprice-(SELECT SUM(c.currentcostprice*bom.bomqty)"
            + " FROM m_cost c"
            + " INNER JOIN m_product_bom bom ON (c.m_product_id=bom.m_productbom_id)"
	            + " INNER JOIN m_costelement ce ON (c.m_costelement_id = ce.m_costelement_id AND ce.costingmethod = 'S')"
            + " WHERE bom.m_product_id = pp.m_product_id)"
            + " )/cc.currentcostprice))"
            + " FROM m_product pp"
            + " INNER JOIN m_cost cc on (cc.m_product_id=pp.m_product_id)"
            + " INNER JOIN m_costelement ce ON (cc.m_costelement_id=ce.m_costelement_id)"
            + " WHERE cc.currentcostprice > 0 AND pp.M_Product_ID = ?"
            + " AND ce.costingmethod='S'";
		
		BigDecimal costPercentageDiff = DB.getSQLValueBD(get_TrxName(), sql, M_Product_ID);
		
		if (costPercentageDiff == null)
		{
			costPercentageDiff = Env.ZERO;
			String msg = "Could not retrieve costs";
			if (MSysConfig.getBooleanValue(MSysConfig.MFG_ValidateCostsOnCreate, false, getAD_Client_ID())) {
				throw new AdempiereUserError(msg);
			} else {
				log.warning(msg);
			}
		}
		
		if ( (costPercentageDiff.compareTo(new BigDecimal("0.005")))< 0 )
			return true;
		
		return false;
	}

	protected String createLines() throws Exception {
		
		int created = 0;
		if (!m_production.isUseProductionPlan()) {
			validateEndProduct(m_production.getM_Product_ID());
			
			if (!recreate && "Y".equalsIgnoreCase(m_production.getIsCreated()))
				throw new AdempiereUserError("Production already created.");
			
			if (newQty != null )
				m_production.setProductionQty(newQty);
			
			m_production.deleteLines(get_TrxName());
			created = m_production.createLines(mustBeStocked);
		} else {
			Query planQuery = new Query(getCtx(), I_M_ProductionPlan.Table_Name, "M_ProductionPlan.M_Production_ID=?", get_TrxName());
			List<MProductionPlan> plans = planQuery.setParameters(m_production.getM_Production_ID()).list();
			for(MProductionPlan plan : plans) {
				validateEndProduct(plan.getM_Product_ID());
				
				if (!recreate && "Y".equalsIgnoreCase(m_production.getIsCreated()))
					throw new AdempiereUserError("Production already created.");
				
				plan.deleteLines(get_TrxName());
				int n = plan.createLines(mustBeStocked);
				if ( n == 0 ) 
				{return "Failed to create production lines"; }
				created = created + n;
			}
		}
		if ( created == 0 ) 
		{return "Failed to create production lines"; }
		
		/**
		 * 	When a warehouse is provided, we have to create a new locator
		 * 		this locator will be the unique place to have production components
		 */
		if (alocateWarehouse && p_M_Warehouse_ID > 0)
		{
			String name = "OP-" + String.valueOf (m_production.getDocumentNo());
			int M_Locator_ID = MLocator.get (getCtx(), p_M_Warehouse_ID, name, name, name, name).getM_Locator_ID();
			Map<Integer, List<TempStorage>> storage = TempStorage.init(M_Locator_ID, get_TrxName());
			//
			for (MProductionLine line : m_production.getLines())
			{
				if (!line.isEndProduct())
				{
					List<TempStorage> onHand = storage.get(line.getM_Product_ID());
					if (onHand != null && !onHand.isEmpty())
					{
						for (TempStorage s : onHand)
						{
							if (s.getQtyOnHand().compareTo(line.getQtyUsed()) >= 0)
							{
								line.setM_AttributeSetInstance_ID(s.getM_AttributeSetInstance_ID());
								s.subtract(line.getQtyUsed());
								break;
							}
						}
					}
					
					line.setM_Locator_ID(M_Locator_ID);
					line.save();
				}
			}
		}
		
		m_production.setIsCreated("Y");
		m_production.save(get_TrxName());
		StringBuilder msgreturn = new StringBuilder().append(created).append(" production lines were created");
		return msgreturn.toString();
	}

	private void validateEndProduct(int M_Product_ID) throws Exception {
		isBom(M_Product_ID);
		
		if (!costsOK(M_Product_ID)) {
			String msg = "Excessive difference in standard costs";
			if (MSysConfig.getBooleanValue(MSysConfig.MFG_ValidateCostsDifferenceOnCreate, false, getAD_Client_ID())) {
				throw new AdempiereUserError("Excessive difference in standard costs");
			} else {
				log.warning(msg);
			}
		}
	}
	
	protected void isBom(int M_Product_ID) throws Exception
	{
		String bom = DB.getSQLValueString(get_TrxName(), "SELECT isbom FROM M_Product WHERE M_Product_ID = ?", M_Product_ID);
		if ("N".compareTo(bom) == 0)
		{
			throw new AdempiereUserError ("Attempt to create product line for Non Bill Of Materials");
		}
		int materials = DB.getSQLValue(get_TrxName(), "SELECT count(M_Product_BOM_ID) FROM M_Product_BOM WHERE M_Product_ID = ?", M_Product_ID);
		if (materials == 0)
		{
			throw new AdempiereUserError ("Attempt to create product line for Bill Of Materials with no BOM Products");
		}
	}
	

	
	/**
	 * 	InOutGenerate Parameter
	 */
	static class TempStorage
	{
		/**
		 * 	Parameter
		 *	@param p_Warehouse_ID warehouse
		 *	@param p_Product_ID 
		 *	@param p_AttributeSetInstance_ID 
		 *	@param p_minGuaranteeDate
		 *	@param p_FiFo
		 */
		protected TempStorage (int p_Product_ID, int p_AttributeSetInstance_ID, BigDecimal qtyOnHand)
		{
			this.M_Product_ID = p_Product_ID;
			this.M_AttributeSetInstance_ID = p_AttributeSetInstance_ID; 
			this.qtyOnHand = qtyOnHand;
		}
		
		/** Product			*/
		private int M_Product_ID;
		/** ASI				*/
		private int M_AttributeSetInstance_ID;
		/** AS				*/
		private BigDecimal qtyOnHand = Env.ZERO;

		/**
		 * 	Equals
		 *	@param obj
		 *	@return true if equal
		 */
		public static Map<Integer,List<TempStorage>> init (int M_Locator_ID, String trxName)
		{
			Map<Integer,List<TempStorage>> result = new HashMap<Integer,List<TempStorage>>();
			final String sql = "SELECT s.M_Product_ID, s.M_AttributeSetInstance_ID, SUM(s.QtyOnHand) AS QtyOnHand " + 
					"FROM M_Storage s WHERE s.M_Locator_ID=? AND s.M_AttributeSetInstance_ID>0 " +
					"AND EXISTS (SELECT '1' FROM M_Product p WHERE p.M_Product_ID=s.M_Product_ID AND p.M_AttributeSet_ID>0) " +
					"GROUP BY s.M_Product_ID, s.M_AttributeSetInstance_ID " + 
					"HAVING SUM(s.QtyOnHand) > 0";
			//
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement(sql, trxName);
				DB.setParameters(pstmt, new Object[]{M_Locator_ID});
				rs = pstmt.executeQuery();
				while(rs.next())
				{
					int M_Product_ID = rs.getInt("M_Product_ID");
					List<TempStorage> onHand = null;
					if (result.containsKey(M_Product_ID))
						onHand = result.get(M_Product_ID);
					else
					{
						onHand = new ArrayList<TempStorage> ();
						result.put(M_Product_ID, onHand);
					}
					//
					onHand.add(new TempStorage(M_Product_ID, rs.getInt("M_AttributeSetInstance_ID"), rs.getBigDecimal("QtyOnHand")));
				}
			}
			catch (SQLException e)
			{
				
			}
			finally
			{
				DB.close(rs, pstmt);
				rs = null; pstmt = null;
			}
			//
			return result;
		}	//	equals
		
		public int getM_Product_ID()
		{
			return M_Product_ID;
		}

		public int getM_AttributeSetInstance_ID()
		{
			return M_AttributeSetInstance_ID;
		}

		public BigDecimal getQtyOnHand()
		{
			return qtyOnHand;
		}

		public void subtract(BigDecimal value)
		{
			this.qtyOnHand = this.qtyOnHand.subtract(value);
		}
	}	//	TempStorage
}	//	ProductionCreate
