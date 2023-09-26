/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.bankslip.form;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.stream.IntStream;

import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBank;
import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankAccount;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlip;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipContract;
import org.kenos.idempiere.lbr.bankslip.model.MLBRBankSlipMov;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;
import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFileLine;
import org.zkoss.util.media.AMedia;
import org.zkoss.zul.Filedownload;

/**
 * 		Classe comum para geração de boletos
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GenBoleto.java, v1.0 2012/03/27 2:26:34 PM, ralexsander Exp $
 */
public class GenCNAB
{
	/**	Forms				*/
	public static final String GEN_CNAB_SWING 	= "org.adempierelbr.apps.form.VGenCNAB";
	public static final String GEN_CNAB_ZK 		= WGenCNAB.class.getName();
	
	/**	Window No			*/
	public int m_WindowNo = 0;
	
	/** Format                  */
	public DecimalFormat m_format = DisplayType.getNumberFormat(DisplayType.Amount);
	
	/** SQL for Query           */
	private String m_sql;
	
	/** Number of selected rows */
	public int m_noSelected = 0;
	
	/**/
	public boolean m_isLocked = false;
	
	/**	Logger					*/
	public static CLogger log = CLogger.getCLogger(GenCNAB.class);
	
	/**	Trx						*/
	public Trx trx = null;

	/**
	 * 	Get Organizations
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getOrganization()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();

		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT DISTINCT o.AD_Org_ID,"         		//  1
			+ "o.Name AS Name "         			 	//  2
			+ "FROM LBR_BankSlipMov mov, AD_Org o "
			+ "WHERE mov.AD_Org_ID=o.AD_Org_ID "
			+ "AND mov.IsSOTrx='Y' "
			+ "ORDER BY 2",
			"mov", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				KeyNamePair bi = new KeyNamePair (rs.getInt(1), rs.getString(2));
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getOrganization

	/**
	 * 	Get Bank Accounts
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getBankAccountData(int AD_Org_ID)
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();

		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT ba.C_BankAccount_ID,"                       //  1
			+ "b.Name || ' ' || ba.AccountNo AS Name "          //  2
			+ "FROM C_Bank b, C_BankAccount ba "
			+ "WHERE b.C_Bank_ID=ba.C_Bank_ID"
			+ " AND ba.IsActive='Y' "
			+ " AND EXISTS (SELECT 1 FROM LBR_BankSlip bs WHERE bs.C_BankAccount_ID=ba.C_BankAccount_ID) "
			+ " AND ba.AD_Org_ID=? "
			+ "ORDER BY 2",
			"b", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, AD_Org_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				KeyNamePair bi = new KeyNamePair (rs.getInt(1), rs.getString(2));
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getBankAccountData

	/**
	 * 	Get Bank Contracts
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getBankContractData (int C_BankAccount_ID)
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();

		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT bc.LBR_BankSlipContract_ID,"   	//  1
			+ "bc.Name AS Name "          		//  2
			+ "FROM LBR_BankSlipContract bc "
			+ "WHERE bc.IsActive='Y' "
			+ " AND EXISTS (SELECT 1 FROM LBR_BankSlip bs WHERE bs.LBR_BankSlipContract_ID=bc.LBR_BankSlipContract_ID) "
			+ " AND bc.C_BankAccount_ID=? "
			+ "ORDER BY 2",
			"bc", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_BankAccount_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				KeyNamePair bi = new KeyNamePair (rs.getInt(1), rs.getString(2));
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getBankContractData
	
	/**
	 * 	Prepare Table
	 * 
	 * 	@param miniTable
	 */
	public void prepareTable(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();
		
		m_sql = miniTable.prepareTable(new ColumnInfo[] {
			new ColumnInfo(Msg.translate(ctx, "LBR_BankSlip_ID"), "bs.DocumentNo", KeyNamePair.class, true, true, "bs.LBR_BankSlip_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", String.class),
			new ColumnInfo(Msg.translate(ctx, "DateDoc"), "bs.DateDoc", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "DueDate"), "bs.DueDate", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "bs.GrandTotal", BigDecimal.class),
			new ColumnInfo(Msg.translate(ctx, "MovementDate"), "mov.MovementDate", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "LBR_BankSlipMov_ID"), "mov.Value || ' - ' || COALESCE(oc.Name, 'Ocorrência') AS Value", KeyNamePair.class, true, false, "mov.LBR_BankSlipMov_ID")
			},
			//	FROM
			"LBR_BankSlipMov mov"
			+ " INNER JOIN LBR_BankSlip bs ON (bs.LBR_BankSlip_ID=mov.LBR_BankSlip_ID)"
			+ " INNER JOIN C_BPartner bp ON (bs.C_BPartner_ID=bp.C_BPartner_ID) "
			+ " LEFT JOIN C_Invoice i ON (i.C_Invoice_ID=bs.C_Invoice_ID) "
			+ " LEFT JOIN LBR_BankSlipOccur oc ON (oc.LBR_BankSlipOccur_ID=mov.LBR_BankSlipOccur_ID) ",
			//	WHERE
			"bs.IsCancelled='N' "
			+ " AND bs.LBR_BankSlipContract_ID=? AND mov.IsSOTrx = 'Y'"
			+ " AND bs.DocStatus = 'CO'"
			+ " AND NOT EXISTS (SELECT 1 FROM LBR_CNABFileLine l WHERE l.LBR_BankSlipMov_ID=mov.LBR_BankSlipMov_ID)",
			true, "mov");
	}   //  dynInit

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo(int LBR_BankSlipContract_ID, IMiniTable miniTable)
	{
		log.config("");
		
		//  not yet initialized
		if (m_sql == null)
			return;

		String sql = m_sql;
		sql += " ORDER BY 2, 3";

		log.finest (sql + " - LBR_BankSlipContract_ID=" + LBR_BankSlipContract_ID);
		
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(index++, LBR_BankSlipContract_ID);		//	Client
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfo

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public String calculateSelection(IMiniTable miniTable)
	{
		m_noSelected = 0;
		BigDecimal invoiceAmt = new BigDecimal(0.0);

		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			BigDecimal amt = (BigDecimal)miniTable.getValueAt(i, 4);
			if (amt != null)
				invoiceAmt = invoiceAmt.add(amt);
			m_noSelected++;
		}

		//  Information
		StringBuffer info = new StringBuffer();
		info.append(m_noSelected).append(" ").append(Msg.getMsg(Env.getCtx(), "Selected")).append(" - ");
		info.append(m_format.format(invoiceAmt));
		return info.toString();
	}   //  calculateSelection
	
	/**
	 *  Generate CNAB
	 */
	public void genCNAB (IMiniTable miniTable, KeyNamePair ba, KeyNamePair bc)
	{
		log.info("");
		Trx trx = Trx.get(Trx.createTrxName("CNAB"), true);
		String trxName = trx.getTrxName();
		
		try
		{
			//  Create Lines
			MLBRBankAccount bankAcc = new MLBRBankAccount (Env.getCtx(), ba.getKey(), null);
			MLBRBankSlipContract contract = new MLBRBankSlipContract (Env.getCtx(), bc.getKey(), null);
			MBank bank = bankAcc.getBank();
			
			//	CNAB
			MLBRCNABFile cnab = new MLBRCNABFile (Env.getCtx(), 0, trxName);
			cnab.setDateDoc(new Timestamp (System.currentTimeMillis()));
			cnab.setRoutingNo(bank.getRoutingNo());
			cnab.setlbr_AgencyNo(bankAcc.getAgencyNo());
			cnab.setLBR_BankAgencyVD(bankAcc.getAgencyVD());
			cnab.setAccountNo(bankAcc.getAccountNoWOVD());
			cnab.setLBR_BankAccountVD(bankAcc.getAccountVD());
			cnab.setAD_Org_ID(bankAcc.getAD_Org_ID());
			cnab.setC_BankAccount_ID(bankAcc.getC_BankAccount_ID());
			cnab.setC_Bank_ID(bank.getC_Bank_ID());
			cnab.setIsSOTrx(true);
			cnab.setLBR_BankSlipContract_ID(contract.getLBR_BankSlipContract_ID());
			cnab.saveEx();
			
			IntStream.range(0, miniTable.getRowCount()).forEach(row -> 
			{
				KeyNamePair knp = (KeyNamePair) miniTable.getValueAt (row, 6);
				MLBRBankSlipMov mov = new MLBRBankSlipMov (Env.getCtx(), knp.getKey(), trxName);
				//
				MLBRCNABFileLine line = new MLBRCNABFileLine (cnab, mov);
				line.saveEx();
			});
			
			//	Everything OK
			trx.commit();
			
			//	Process document
			if (MLBRBankSlip.DOCSTATUS_InProgress.equals(cnab.prepareIt()))
			{
				cnab.setDocStatus(cnab.completeIt());
				cnab.save();
				
				if (MLBRBankSlip.DOCSTATUS_Completed.equals(cnab.getDocStatus()))
				{
					MAttachment attachment = cnab.getAttachment();
					if (attachment == null) return;
					
					MAttachmentEntry entry = attachment.getEntry(0);
					if (entry == null) return;

					AMedia media = new AMedia(entry.getName(), null, entry.getContentType(), cnab.getAttachmentData("REM"));
					Filedownload.save(media);
				}
			}
		}
		catch (Exception e)
		{
			//	Rollback
			trx.rollback();
		}
		finally
		{
			//	Close
			trx.close();
		}
	}   //  genCNAB
	
	/**
	 * 	Delete folder
	 * 	@param dir
	 * 	@return
	 */
	public static boolean deleteDir (File dir) 
	{
        if (dir.isDirectory()) 
        {
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) 
            {
                boolean success = deleteDir (new File (dir, children[i]));
                if (!success) 
                {
                    return false;
                }
            }
        }
        else
        	return dir.delete();
        return true;
	}	//	deleteDir
}   //  GenBilling
