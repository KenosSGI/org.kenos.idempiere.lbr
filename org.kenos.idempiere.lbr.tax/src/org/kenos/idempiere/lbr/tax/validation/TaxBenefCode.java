package org.kenos.idempiere.lbr.tax.validation;

import java.util.Objects;

import org.compiere.util.Env;
import org.compiere.util.Msg;

public class TaxBenefCode {
	public static String validate (String code) {
		return validate(code, false);
	}
	public static String validate (String code, boolean nullCheck) {
		if (!nullCheck && Objects.isNull(code))
			return null;
		if (Objects.isNull(code) || code.isEmpty())
			return Msg.parseTranslation (Env.getCtx(), "@Invalid@ @LBR_TaxBenefitCode@Código de benefício nulo ou vazio");
		if (code.trim().length() != 8 && code.trim().length() != 10)
			return Msg.parseTranslation (Env.getCtx(), "@Invalid@ @LBR_TaxBenefitCode@, o código precisa ter 8 ou 10 dígitos");
		return null;
	}	//	validate
}	//	TaxBenefCode
