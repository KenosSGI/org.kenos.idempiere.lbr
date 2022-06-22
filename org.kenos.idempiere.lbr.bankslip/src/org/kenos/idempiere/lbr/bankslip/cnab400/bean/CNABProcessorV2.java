package org.kenos.idempiere.lbr.bankslip.cnab400.bean;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;
import org.kenos.idempiere.lbr.bankslip.cnab400.bean.in.Record1Detail;

//import net.sf.flatpack.DataError;
//import net.sf.flatpack.DataSet;
//import net.sf.flatpack.DefaultParserFactory;
//import net.sf.flatpack.Parser;

/**
 * 		CNAB Detail
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNABProcessorV2 implements ICNABProcessor 
{
	public List<ICNABDetail> processFile (File returnFile) throws Exception 
	{
		FixedFormatManager manager = new FixedFormatManager();
		FileReader in = new FileReader(returnFile);
		BufferedReader buffer = new BufferedReader(in);
		
        List<ICNABDetail> result = new ArrayList<ICNABDetail>();

		String line;
		int lineCount = 0;
		try 
		{
			while ( (line = buffer.readLine() ) != null && !line.trim().equals("") )
			{
				lineCount++;

				RecordBase base = manager.load (RecordBase.class, line);
				if (base == null)
					continue;

				if (base.getTipo().intValue() == 1)
				{
					Record1Detail returnRecord = manager.load (Record1Detail.class, line);
                	
		        	ICNABDetail detail = new CNABDetail ();
		        	detail.setAmount(returnRecord.getValorDoTitulo());
					detail.setDateTrx(new Timestamp (returnRecord.getDataOcorrencia().getTime()));
					detail.setDueDate(new Timestamp (returnRecord.getVencimento().getTime()));
		        	detail.setDiscount(returnRecord.getValorDoDesconto());
		        	detail.setDocumentNo(returnRecord.getNoDocumento());
		        	detail.setInterest(returnRecord.getValorDosJuros());
		        	detail.setNumberInBank(returnRecord.getNossoNumero());
		        	detail.setNumberInOrg(returnRecord.getCodIdentificacao());
		        	detail.setOccurCod(returnRecord.getCodOcorrencia());
		        	detail.setLineNo(lineCount);
//		        	detail.setRoutingNo(routingNo);	//	From header
//		        	detail.setDateFile(fileDate);	//	From header
		        	//
		        	result.add(detail);
				}
			}
		} 
		catch ( Exception e ) 
		{
			throw new AdempiereException("Erro processando linha " + lineCount + ": " + e.getMessage(), e);
		} 
		finally 
		{
			buffer.close();
			in.close();
		}
		
		return result;
	}	//	processFile
}	//	CNABDetail
