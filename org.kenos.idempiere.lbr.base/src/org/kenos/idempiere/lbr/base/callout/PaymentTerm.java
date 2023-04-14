package org.kenos.idempiere.lbr.base.callout;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Locale;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_PaymentTerm;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MPaymentTerm;

/**
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class PaymentTerm implements IColumnCallout 
{
	@Override
	public String start (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value, Object oldValue) 
	{
		if (mField.getColumnName().equals(I_W_C_Order.COLUMNNAME_C_PaymentTerm_ID)) {
			Integer C_PaymentTerm_ID = (Integer) mTab.getValue(I_W_C_Order.COLUMNNAME_C_PaymentTerm_ID);
			if (C_PaymentTerm_ID == null || C_PaymentTerm_ID.intValue() < 1)
				return "";	//	Nothing to do
			
			//	Check minimum amount
			MPaymentTerm pt = new MPaymentTerm(ctx, C_PaymentTerm_ID, null);
			BigDecimal minAmt = (BigDecimal) pt.get_Value(I_W_C_PaymentTerm.COLUMNNAME_MinAmt);
			if (minAmt == null || minAmt.signum() < 1)
				return "";
			
			DecimalFormat df = (DecimalFormat) DecimalFormat.getInstance(new Locale("pt", "BR"));
			df.applyPattern("R$ #,###.00");
			//
			return "Observação: O faturamento mínimo para esta condição de pagamento é de " + df.format(minAmt);
		}
		
		return "";
	}	//	start
}	//	PaymentTerm
