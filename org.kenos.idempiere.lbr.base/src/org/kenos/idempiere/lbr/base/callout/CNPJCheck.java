package org.kenos.idempiere.lbr.base.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 * 	Callout Order to validate the CPF / CNPJ
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class CNPJCheck implements IColumnCallout
{
	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue)
	{
		String cnpjf = TextUtil.toNumeric((String) value);
		//
		if (cnpjf == null || cnpjf.isBlank())
			return null;
		
		int length = TextUtil.toNumeric(cnpjf).length();
		
		if (length == 11)
		{
			if (!ValidatorBPartner.validaCPF(cnpjf))
				return "CPF Inválido";
			//
			value = TextUtil.toNumeric(cnpjf).replaceAll("(\\d{3})(\\d{3})(\\d{3})(\\d{2})", "$1.$2.$3-$4");
		}
		else if (length == 14)
		{
			if (!ValidatorBPartner.validaCNPJ(cnpjf))
				return "CNPJ Inválido";
			//
			value = TextUtil.toNumeric(cnpjf).replaceAll("(\\d{2})(\\d{3})(\\d{3})(\\d{4})(\\d{2})", "$1.$2.$3/$4-$5");
		}
		else
			return "Documento CNPJ/CPF Inválido";
		
		mTab.setValue (I_W_C_Order.COLUMNNAME_LBR_CNPJF, value);
		
		return null;
	}
}	//	OrderLineProduct
