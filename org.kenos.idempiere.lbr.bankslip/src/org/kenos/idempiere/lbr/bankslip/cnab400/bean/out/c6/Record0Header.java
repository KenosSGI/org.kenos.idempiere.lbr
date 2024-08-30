package org.kenos.idempiere.lbr.bankslip.cnab400.bean.out.c6;

import org.kenos.idempiere.lbr.bankslip.model.MLBRCNABFile;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Fields;
import com.ancientprogramming.fixedformat4j.annotation.Record;

/**
 * Represents the Record0Header for the CNAB 400 layout specific to C6 bank.
 * <p>
 * This class extends the generic {@code Record0Header} and provides additional
 * handling for the {@code codigoEmpresa}, which is specific to the C6 bank.
 * </p>
 * <p>
 * The class utilizes the FixedFormat4J library for fixed-length record parsing.
 * </p>
 * 
 * <h3>Usage</h3>
 * <p>
 * The {@code Record0Header} can be instantiated with or without an {@code MLBRCNABFile}.
 * When instantiated with {@code MLBRCNABFile}, it automatically sets the {@code codigoEmpresa}
 * based on the bank slip contract.
 * </p>
 * 
 * <pre>
 * {@code 
 * // Example of instantiation
 * Record0Header header = new Record0Header(cnabFile);
 * }
 * </pre>
 * 
 * <h3>Annotations</h3>
 * <ul>
 * <li>{@code @Record}: Defines the class as a record for FixedFormat4J.</li>
 * <li>{@code @Field}: Maps the {@code codigoEmpresa} field to the appropriate
 * position and length within the record.</li>
 * <li>{@code @Fields}: Combines multiple {@code @Field} annotations.</li>
 * </ul>
 * 
 * @see org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record0Header
 * @see com.ancientprogramming.fixedformat4j.annotation.Record
 * @see MLBRCNABFile
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
@Record
public class Record0Header extends org.kenos.idempiere.lbr.bankslip.cnab400.bean.Record0Header {
	/**
	 * Default constructor. Initializes a new instance of {@code Record0Header} 
	 * with default values.
	 */
	public Record0Header() {
		super ();	//	0 - Header
	}	//	Record0Header
	
	/**
	 * Constructs a new instance of {@code Record0Header} using the specified
	 * {@code MLBRCNABFile}.
	 * <p>
	 * This constructor initializes the {@code codigoEmpresa} field with the
	 * value from the bank slip contract.
	 * </p>
	 * 
	 * @param cnabFile the CNAB file containing bank slip information.
	 */
	public Record0Header(MLBRCNABFile cnabFile) {
		super (cnabFile);
		setCodigoDoCedente(cnabFile.getLBR_BankSlipContract().getLBR_AccordNo());
		setNomeDoBanco("");	//	Empty String
		setSequencialRemessa(cnabFile.getSeqNo());
	}	//	Record0Header
	
	/**
	 * The company code ({@code codigoEmpresa}) specific to C6 bank.
	 * <p>
	 * This value is mapped to the CNAB 400 file at position 27 with a length
	 * of 20 characters.
	 * </p>
	 */
	protected String codigoDoCedente;
	
	/**
	 * The sequential number ({@code sequencialRemessa}) of the remittance.
	 * <p>
	 * This field is used to uniquely identify the remittance within the CNAB
	 * file. It starts at 0 by default.
	 * </p>
	 */
	protected Integer sequencialRemessa = 0;
	
	/**
	 * Gets the company code ({@code codigoEmpresa}) for this record.
	 * 
	 * @return the company code as a {@code String}.
	 */
	@Field( offset = 27, length = 12)
	public String getCodigoDoCedente() {
		return codigoDoCedente;
	}	//	getCodigoDoCedente

	/**
	 * Sets the company code ({@code codigoEmpresa}) for this record.
	 * 
	 * @param codigoDoCedente the company code to set.
	 */
	public void setCodigoDoCedente(String codigoDoCedente) {
		this.codigoDoCedente = codigoDoCedente;
	}	//	setCodigoDoCedente
	
	/**
	 * Gets the file sequential number
	 * 
	 * @return the file sequential number {@code Integer}.
	 */
	@Field( offset = 387, length = 8, paddingChar = '0' , align = Align.RIGHT )
	public Integer getSequencialRemessa() {
		return sequencialRemessa;
	}	//	getSequencialRemessa

	/**
	 * Sets the ({@code sequencialRemessa}) for this file.
	 * 
	 * @param sequencialRemessa the file sequential code.
	 */
	public void setSequencialRemessa(Integer sequencialRemessa) {
		this.sequencialRemessa = sequencialRemessa;
	}	//	setSequencialRemessa
	
	/**
	 * A dummy field to fill in the remaining blank spaces in the record.
	 * <p>
	 * This field is mapped to the CNAB 400 file starting at position 104 with
	 * a length of 294 characters.
	 * </p>
	 * 
	 * @return an empty string as a filler.
	 */
	@Fields( value = { 
			@Field ( offset = 80, length = 15 ), 
			@Field ( offset = 101, length = 8 ), 
			@Field ( offset = 121, length = 266 )
			} )
	public String getEmpty() { return ""; }		//	Dummy, fill the blanks

	/**
	 * Sets the dummy field (empty field).
	 * <p>
	 * This method is required by the FixedFormat4J library but does nothing
	 * as this field is used only as a filler.
	 * </p>
	 * 
	 * @param dummy a dummy string, typically empty.
	 */
	public void setEmpty(String dummy) {}		//	Dummy, needed by FixedFormat4J	
}	//	Record0Header
