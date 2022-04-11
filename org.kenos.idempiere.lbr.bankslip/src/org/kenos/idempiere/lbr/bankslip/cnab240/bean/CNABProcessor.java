package org.kenos.idempiere.lbr.bankslip.cnab240.bean;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.compiere.util.Env;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABDetail;
import org.kenos.idempiere.lbr.bankslip.cnab.ICNABProcessor;

/**
 * 		CNAB Detail
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNABProcessor implements ICNABProcessor {

	public CNABRecords returnRecords = null;

	public CNABProcessor(CNABRecords returnRecords) {
		this.returnRecords = returnRecords;
	}	//	CNABProcessor
	
	public List<ICNABDetail> processFile (File returnFile) throws Exception {
		returnRecords.loadRecords(returnFile);
		
		List<CNABBaseRecord> records = returnRecords.getListaRegistros();

		CNABCobrancaHeaderLoteRecord lote = null;
		
		CNABSegmentGroup currentGroup = null;

		ArrayList<CNABSegmentGroup> sgList = new ArrayList<CNABSegmentGroup>();

		for (CNABBaseRecord currentRecord : records ) {
			// cabeçalho do lote
			if ( CNABCobrancaHeaderLoteRecord.class.isAssignableFrom(currentRecord.getClass())) {
				lote = (CNABCobrancaHeaderLoteRecord) currentRecord;
			}
			
			// segmento T
			else if ( CNABSegmentTRecord.class.isAssignableFrom(currentRecord.getClass()))  {
				CNABSegmentGroup group = new CNABSegmentGroup();
				sgList.add(group);
				currentGroup=group;
				currentGroup.addRecord((CNABSegmentBaseRecord) currentRecord);
			}
			// qualquer outro registro de segmento
			else if ( CNABSegmentBaseRecord.class.isAssignableFrom(currentRecord.getClass())) {
				currentGroup.addRecord((CNABSegmentBaseRecord) currentRecord);
			}
		}
        
        List<ICNABDetail> result = new ArrayList<ICNABDetail>();
        for (CNABSegmentGroup sg : sgList) {
			
			CNABSegmentURecord segU = (CNABSegmentURecord) sg.getRecord("U");
			CNABSegmentTRecord segT = (CNABSegmentTRecord) sg.getRecord("T");
        	
        	//	Parse transaction date
        	Timestamp dateTrx = new Timestamp(segU.getDataOcorrencia().getTime());
        	Timestamp dueDate = null;
                	
        	ICNABDetail detail = new CNABDetail ();
        	detail.setAmount(segU.getValorPago());
			detail.setDateTrx(dateTrx);
			detail.setDueDate(dueDate);
        	detail.setDiscount(segU.getValorDesconto());
        	detail.setDocumentNo(segT.getNumeroDocumento());
        	detail.setInterest(Env.ZERO);
        	detail.setNumberInBank(segT.getNossoNumero());
        	detail.setNumberInOrg(segT.getIdentificacaoTituloNaEmpresa());
        	detail.setOccurCod(segT.getCodigoMovimento());
        	detail.setLineNo(segU.getSequencia());
        	detail.setRoutingNo(String.valueOf(segU.getBanco()));
        	detail.setDateFile(new Timestamp(lote.getDataGravacaoLote().getTime()));
        	//
        	result.add(detail);
        }
		return result;
	}	//	processFile
}	//	CNABDetail
