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
package org.kenos.idempiere.lbr.nfe.model;

import static org.adempierelbr.model.X_LBR_NotaFiscal.ISDELIVERED_YesWithNoProof;
import static org.adempierelbr.model.X_LBR_NotaFiscal.ISDELIVERED_YesWithProof;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.util.Base64;
import java.util.Optional;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.X_LBR_ProofOfDelivery;
import org.adempierelbr.util.LBRUtils;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MImage;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Model for Proof of Delivery
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class MLBRProofOfDelivery extends X_LBR_ProofOfDelivery
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRProofOfDelivery.class);
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 7008169918021783025L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRProofOfDelivery (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRProofOfDelivery
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRProofOfDelivery (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRProofOfDelivery
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord) {
		if (is_ValueChanged(COLUMNNAME_Processed) && isProcessed()) {
			if (getLBR_NotaFiscal_ID() < 1) {
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "LBR_NotaFiscal_ID"));
				return false;
			}
			if (getAD_Image_ID() < 1) {
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "AD_Image_ID"));
				return false;
			}
			
			String hashable = null;
			MImage image = MImage.get(getCtx(), getAD_Image_ID());
			
			try {
				hashable = new String (Base64.getEncoder().encode(image.getData()), TextUtil.UTF8);
			} catch (UnsupportedEncodingException e) {}
			
			if (hashable == null){
				log.saveError("FillMandatory", Msg.getElement(getCtx(), "AD_Image_ID"));
				return false;
			}
			
			try {
				String hash = SignatureUtil.SHA1 (getLBR_NotaFiscal().getlbr_NFeID() + hashable);
				setLBR_Hash(new String (Base64.getEncoder().encode(hash.getBytes()), TextUtil.UTF8));
			} catch (NoSuchAlgorithmException | UnsupportedEncodingException | RuntimeException e) {
				e.printStackTrace();
			}
			
			MLBRNotaFiscal nf = (MLBRNotaFiscal) getLBR_NotaFiscal();
			nf.setIsDelivered(isLBR_DocumentSigned() ? ISDELIVERED_YesWithProof : ISDELIVERED_YesWithNoProof);
			nf.save();
		}
		return super.beforeSave (newRecord);
	}	//	beforeSave
	
	/**
	 * 	Tries to match the current record with an existing NF
	 * 	@return true if just or already matched, otherwise false 
	 */
	public boolean match () {
		if (getLBR_NotaFiscal_ID() > 0)
			return true;

		try {
			//	Limit the date range to avoid collision, default = previous 90 days
			int maxDays = MSysConfig.getIntValue("LBR_MATCH_POD_MAX_DAYS", 90, getAD_Client_ID());
			MLBRNotaFiscal notaFiscal = MLBRNotaFiscal.get (p_ctx, getDocumentNo(), getlbr_NFSerie(), getAD_Org_ID(), maxDays, null);
			if (notaFiscal == null)
				return false;
			
			setLBR_NotaFiscal_ID(notaFiscal.getLBR_NotaFiscal_ID());
			setProcessed(true);

			return true;
		} catch (Exception e) {
			return false;
		}
	}	//	match
	
	/**
	 * Retrieves an instance of {@link MLBRProofOfDelivery} based on the provided hash.
	 * 
	 * @param hash the hash string to look up the proof of delivery.
	 * @return an instance of {@link MLBRProofOfDelivery} if a matching record is found; otherwise, null.
	 * 
	 * This method uses a query to search for a proof of delivery record that matches the provided hash.
	 */
	public static Optional<MLBRProofOfDelivery> get (String hash) {
		return Optional.ofNullable (new Query (Env.getCtx(), Table_Name, COLUMNNAME_LBR_Hash + "=?", null)
				.setParameters(hash)
				.first());
	}	//	MLBRProofOfDelivery
	
	/**
	 * Retrieves an instance of {@link MLBRProofOfDelivery} based on the hash of the provided photo file.
	 * 
	 * @param photo the {@link File} object representing the photo to compute the hash for.
	 * @return an instance of {@link MLBRProofOfDelivery} if a matching record is found; otherwise, null.
	 * 
	 * This method computes the SHA-1 hash of the provided photo file and uses it to look up the proof of delivery.
	 */
	public static Optional<MLBRProofOfDelivery> get (File photo) {
		String hash = LBRUtils.getFileSHA1(photo);
		return get (hash);
	}	//	MLBRProofOfDelivery
}	//	MLBRProofOfDelivery
