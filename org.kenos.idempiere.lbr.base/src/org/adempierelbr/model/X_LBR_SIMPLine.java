/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_SIMPLine
 *  @author iDempiere (generated) 
 *  @version Release 6.2 - $Id$ */
public class X_LBR_SIMPLine extends PO implements I_LBR_SIMPLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20201028L;

    /** Standard Constructor */
    public X_LBR_SIMPLine (Properties ctx, int LBR_SIMPLine_ID, String trxName)
    {
      super (ctx, LBR_SIMPLine_ID, trxName);
      /** if (LBR_SIMPLine_ID == 0)
        {
			setLBR_FuelOperation_ID (0);
			setLBR_SIMPLine_ID (0);
			setLine (0);
// @SQL=SELECT MAX (COALESCE (Line, 10)) FROM LBR_SIMPLine WHERE LBR_SIMP_ID=@LBR_SIMP_ID@
        } */
    }

    /** Load Constructor */
    public X_LBR_SIMPLine (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_SIMPLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

	/** Set CNPJ/CPF.
		@param LBR_CNPJF 
		CNPJ ou CPF do cliente
	  */
	public void setLBR_CNPJF (String LBR_CNPJF)
	{
		set_Value (COLUMNNAME_LBR_CNPJF, LBR_CNPJF);
	}

	/** Get CNPJ/CPF.
		@return CNPJ ou CPF do cliente
	  */
	public String getLBR_CNPJF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CNPJF);
	}

	/** Set ANP City Code.
		@param LBR_CityCodeANP ANP City Code	  */
	public void setLBR_CityCodeANP (int LBR_CityCodeANP)
	{
		set_Value (COLUMNNAME_LBR_CityCodeANP, Integer.valueOf(LBR_CityCodeANP));
	}

	/** Get ANP City Code.
		@return ANP City Code	  */
	public int getLBR_CityCodeANP () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_CityCodeANP);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** 0 - Contratação do Frete por conta do Remetente (CIF) = 0 */
	public static final String LBR_FREIGHTCOSTRULE_0_ContrataçãoDoFretePorContaDoRemetenteCIF = "0";
	/** 1 - Contratação do Frete por conta do Destinatário (FOB) = 1 */
	public static final String LBR_FREIGHTCOSTRULE_1_ContrataçãoDoFretePorContaDoDestinatárioFOB = "1";
	/** 3 - Transporte Próprio por conta do Remetente = 3 */
	public static final String LBR_FREIGHTCOSTRULE_3_TransportePróprioPorContaDoRemetente = "3";
	/** 4 - Transporte Próprio por conta do Destinatário = 4 */
	public static final String LBR_FREIGHTCOSTRULE_4_TransportePróprioPorContaDoDestinatário = "4";
	/** 2 - Contratação do Frete por conta de Terceiros = 2 */
	public static final String LBR_FREIGHTCOSTRULE_2_ContrataçãoDoFretePorContaDeTerceiros = "2";
	/** 9 - Sem Ocorrência de Transporte = 9 */
	public static final String LBR_FREIGHTCOSTRULE_9_SemOcorrênciaDeTransporte = "9";
	/** Set Freight Cost Rule.
		@param LBR_FreightCostRule 
		Method for charging Freight
	  */
	public void setLBR_FreightCostRule (String LBR_FreightCostRule)
	{

		set_Value (COLUMNNAME_LBR_FreightCostRule, LBR_FreightCostRule);
	}

	/** Get Freight Cost Rule.
		@return Method for charging Freight
	  */
	public String getLBR_FreightCostRule () 
	{
		return (String)get_Value(COLUMNNAME_LBR_FreightCostRule);
	}

	public org.adempierelbr.model.I_LBR_FuelInstallation getLBR_FuelInstallation() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_FuelInstallation)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_FuelInstallation.Table_Name)
			.getPO(getLBR_FuelInstallation_ID(), get_TrxName());	}

	/** Set Fuel Installation.
		@param LBR_FuelInstallation_ID Fuel Installation	  */
	public void setLBR_FuelInstallation_ID (int LBR_FuelInstallation_ID)
	{
		if (LBR_FuelInstallation_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelInstallation_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelInstallation_ID, Integer.valueOf(LBR_FuelInstallation_ID));
	}

	/** Get Fuel Installation.
		@return Fuel Installation	  */
	public int getLBR_FuelInstallation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FuelInstallation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_FuelOperation getLBR_FuelOperation() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_FuelOperation)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_FuelOperation.Table_Name)
			.getPO(getLBR_FuelOperation_ID(), get_TrxName());	}

	/** Set Fuel Operation.
		@param LBR_FuelOperation_ID Fuel Operation	  */
	public void setLBR_FuelOperation_ID (int LBR_FuelOperation_ID)
	{
		if (LBR_FuelOperation_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelOperation_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FuelOperation_ID, Integer.valueOf(LBR_FuelOperation_ID));
	}

	/** Get Fuel Operation.
		@return Fuel Operation	  */
	public int getLBR_FuelOperation_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FuelOperation_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set GLP Container.
		@param LBR_GLPContainer GLP Container	  */
	public void setLBR_GLPContainer (String LBR_GLPContainer)
	{
		set_Value (COLUMNNAME_LBR_GLPContainer, LBR_GLPContainer);
	}

	/** Get GLP Container.
		@return GLP Container	  */
	public String getLBR_GLPContainer () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GLPContainer);
	}

	/** Set Install Code 1.
		@param LBR_InstallCode1 Install Code 1	  */
	public void setLBR_InstallCode1 (String LBR_InstallCode1)
	{
		set_Value (COLUMNNAME_LBR_InstallCode1, LBR_InstallCode1);
	}

	/** Get Install Code 1.
		@return Install Code 1	  */
	public String getLBR_InstallCode1 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InstallCode1);
	}

	/** Set Install Code 2.
		@param LBR_InstallCode2 Install Code 2	  */
	public void setLBR_InstallCode2 (String LBR_InstallCode2)
	{
		set_Value (COLUMNNAME_LBR_InstallCode2, LBR_InstallCode2);
	}

	/** Get Install Code 2.
		@return Install Code 2	  */
	public String getLBR_InstallCode2 () 
	{
		return (String)get_Value(COLUMNNAME_LBR_InstallCode2);
	}

	/** Set LI.
		@param LBR_LI 
		Licença de Importação
	  */
	public void setLBR_LI (String LBR_LI)
	{
		set_Value (COLUMNNAME_LBR_LI, LBR_LI);
	}

	/** Get LI.
		@return Licença de Importação
	  */
	public String getLBR_LI () 
	{
		return (String)get_Value(COLUMNNAME_LBR_LI);
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Acidez = 146 */
	public static final String LBR_PHYSICALCHAR_Acidez = "146";
	/** Acidez total - mg KOH/g = 44 */
	public static final String LBR_PHYSICALCHAR_AcidezTotal_MgKOHG = "44";
	/** Acidez total (como ácido acético) - mg/L = 32 */
	public static final String LBR_PHYSICALCHAR_AcidezTotalComoÁcidoAcético_MgL = "32";
	/** Aditivos = 19 */
	public static final String LBR_PHYSICALCHAR_Aditivos = "19";
	/** Água e Sedimentos - %volume = 31 */
	public static final String LBR_PHYSICALCHAR_ÁguaESedimentos_Volume = "31";
	/** Água Livre = 81 */
	public static final String LBR_PHYSICALCHAR_ÁguaLivre = "81";
	/** Álcool Etílico Anidro Combustível - AEAC - %volume = 3 */
	public static final String LBR_PHYSICALCHAR_ÁlcoolEtílicoAnidroCombustível_AEAC_Volume = "3";
	/** Antioxidante - mg/L = 66 */
	public static final String LBR_PHYSICALCHAR_Antioxidante_MgL = "66";
	/** Aromáticos - %volume = 20 */
	public static final String LBR_PHYSICALCHAR_Aromáticos_Volume = "20";
	/** Aromáticos totais - %volume = 45 */
	public static final String LBR_PHYSICALCHAR_AromáticosTotais_Volume = "45";
	/** Aspecto = 2 */
	public static final String LBR_PHYSICALCHAR_Aspecto = "2";
	/** Aumento do ponto de amolecimento - °C = 141 */
	public static final String LBR_PHYSICALCHAR_AumentoDoPontoDeAmolecimento_C = "141";
	/** Benzeno - %volume = 17 */
	public static final String LBR_PHYSICALCHAR_Benzeno_Volume = "17";
	/** Cálcio + Magnésio - mg/Kg = 95 */
	public static final String LBR_PHYSICALCHAR_CálcioPlusMagnésio_MgKg = "95";
	/** Carga de Partícula = 118 */
	public static final String LBR_PHYSICALCHAR_CargaDePartícula = "118";
	/** Chumbo - g/L = 18 */
	public static final String LBR_PHYSICALCHAR_Chumbo_GL = "18";
	/** Chumbo Tetraetila - CTE - mL/L = 153 */
	public static final String LBR_PHYSICALCHAR_ChumboTetraetila_CTE_MLL = "153";
	/** Cinzas - %massa = 30 */
	public static final String LBR_PHYSICALCHAR_Cinzas_Massa = "30";
	/** Cinzas sulfatadas - %massa = 93 */
	public static final String LBR_PHYSICALCHAR_CinzasSulfatadas_Massa = "93";
	/** Cobre - mg/Kg = 43 */
	public static final String LBR_PHYSICALCHAR_Cobre_MgKg = "43";
	/** Condutividade elétrica - mS/m = 33 */
	public static final String LBR_PHYSICALCHAR_CondutividadeElétrica_MSM = "33";
	/** Condutividade Elétrica - pS/m = 149 */
	public static final String LBR_PHYSICALCHAR_CondutividadeElétrica_PSM = "149";
	/** Cor = 1 */
	public static final String LBR_PHYSICALCHAR_Cor = "1";
	/** Cor ASTM = 83 */
	public static final String LBR_PHYSICALCHAR_CorASTM = "83";
	/** Cor Saybolt = 143 */
	public static final String LBR_PHYSICALCHAR_CorSaybolt = "143";
	/** Corante - mg/L = 154 */
	public static final String LBR_PHYSICALCHAR_Corante_MgL = "154";
	/** Corrosividade à prata = 57 */
	public static final String LBR_PHYSICALCHAR_CorrosividadeÀPrata = "57";
	/** Corrosividade ao Cobre a 37,8°C 1 hora = 77 */
	public static final String LBR_PHYSICALCHAR_CorrosividadeAoCobreA378C1Hora = "77";
	/** Corrosividade ao Cobre a 50°C, 3h = 15 */
	public static final String LBR_PHYSICALCHAR_CorrosividadeAoCobreA50C3h = "15";
	/** Corrosividade ao cobre (2h a 100°C) = 58 */
	public static final String LBR_PHYSICALCHAR_CorrosividadeAoCobre2hA100C = "58";
	/** Densidade 20/4°C = 89 */
	public static final String LBR_PHYSICALCHAR_Densidade204C = "89";
	/** Desativador de metal - mg/L = 67 */
	public static final String LBR_PHYSICALCHAR_DesativadorDeMetal_MgL = "67";
	/** Destilação - PFE - °C = 8 */
	public static final String LBR_PHYSICALCHAR_Destilação_PFE_C = "8";
	/** Destilação - PIE - °C = 48 */
	public static final String LBR_PHYSICALCHAR_Destilação_PIE_C = "48";
	/** Destilação - recuperado - %volume = 160 */
	public static final String LBR_PHYSICALCHAR_Destilação_Recuperado_Volume = "160";
	/** Destilação - Resíduo. - %volume = 9 */
	public static final String LBR_PHYSICALCHAR_Destilação_Resíduo_Volume = "9";
	/** Destilação - soma 10% evaporado + 50% evaporado - °C = 159 */
	public static final String LBR_PHYSICALCHAR_Destilação_Soma10EvaporadoPlus50Evaporado_C = "159";
	/** Destilação - 10% evaporado - °C = 5 */
	public static final String LBR_PHYSICALCHAR_Destilação_10Evaporado_C = "5";
	/** Destilação - 10% vol. Recuperado - °C = 49 */
	public static final String LBR_PHYSICALCHAR_Destilação_10VolRecuperado_C = "49";
	/** Destilação - 50% evaporado - °C = 6 */
	public static final String LBR_PHYSICALCHAR_Destilação_50Evaporado_C = "6";
	/** Destilação - 50% vol., recuperado - °C = 23 */
	public static final String LBR_PHYSICALCHAR_Destilação_50VolRecuperado_C = "23";
	/** Destilação - 80% evaporado - °C = 147 */
	public static final String LBR_PHYSICALCHAR_Destilação_80Evaporado_C = "147";
	/** Destilação - 85 % vol., recuperado - °C = 24 */
	public static final String LBR_PHYSICALCHAR_Destilação_85VolRecuperado_C = "24";
	/** Destilação - 90% evaporado - °C = 7 */
	public static final String LBR_PHYSICALCHAR_Destilação_90Evaporado_C = "7";
	/** Destilação - 90% vol. Recuperado - °C = 50 */
	public static final String LBR_PHYSICALCHAR_Destilação_90VolRecuperado_C = "50";
	/** Destilação em 105°C - %volume = 157 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm105C_Volume = "157";
	/** Destilação em 135°C - %volume = 158 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm135C_Volume = "158";
	/** Destilação em 190°C - %volume = 125 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm190C_Volume = "125";
	/** Destilação em 225°C - %volume = 126 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm225C_Volume = "126";
	/** Destilação em 260°C - %volume = 127 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm260C_Volume = "127";
	/** Destilação em 316°C - %volume = 128 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm316C_Volume = "128";
	/** Destilação em 360°C, resíduo por diferença - %volume = 130 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm360CResíduoPorDiferença_Volume = "130";
	/** Destilação em 75°C - %volume = 156 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoEm75C_Volume = "156";
	/** Destilação, resíduo - %massa = 120 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoResíduo_Massa = "120";
	/** Destilação, solvente destilado, %volume sobre o total da emulsão - %volume = 119 */
	public static final String LBR_PHYSICALCHAR_DestilaçãoSolventeDestiladoVolumeSobreOTotalDaEmulsão_Volume = "119";
	/** Detetor de vazamentos - mg/Kg = 70 */
	public static final String LBR_PHYSICALCHAR_DetetorDeVazamentos_MgKg = "70";
	/** Diglicerídeos - %massa = 101 */
	public static final String LBR_PHYSICALCHAR_Diglicerídeos_Massa = "101";
	/** Dissipador de cargas estáticas - mg/L = 68 */
	public static final String LBR_PHYSICALCHAR_DissipadorDeCargasEstáticas_MgL = "68";
	/** Ductilidade a 25°C - cm = 123 */
	public static final String LBR_PHYSICALCHAR_DuctilidadeA25C_Cm = "123";
	/** Efeito do calor e do ar a 163°C (RTFOT ou TFOT) - Razão de Viscosidade = 111 */
	public static final String LBR_PHYSICALCHAR_EfeitoDoCalorEDoArA163CRTFOTOuTFOT_RazãoDeViscosidade = "111";
	/** Efeito do calor e do ar a 163°C (RTFOT ou TFOT) - Variação de Massa - %massa = 112 */
	public static final String LBR_PHYSICALCHAR_EfeitoDoCalorEDoArA163CRTFOTOuTFOT_VariaçãoDeMassa_Massa = "112";
	/** Ensaio Doctor = 84 */
	public static final String LBR_PHYSICALCHAR_EnsaioDoctor = "84";
	/** Enxofre - %massa = 16 */
	public static final String LBR_PHYSICALCHAR_Enxofre_Massa = "16";
	/** Enxofre mercaptídico - %massa = 46 */
	public static final String LBR_PHYSICALCHAR_EnxofreMercaptídico_Massa = "46";
	/** Enxofre Total - %massa = 22 */
	public static final String LBR_PHYSICALCHAR_EnxofreTotal_Massa = "22";
	/** Enxofre Total para GLP - mg/Kg = 108 */
	public static final String LBR_PHYSICALCHAR_EnxofreTotalParaGLP_MgKg = "108";
	/** Enxofre Total para GN - mg/m³ = 107 */
	public static final String LBR_PHYSICALCHAR_EnxofreTotalParaGN_MgM = "107";
	/** Estabilidade à oxidação a 110° C - h = 105 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeÀOxidaçãoA110C_H = "105";
	/** Estabilidade à oxidação (16h), chumbo precipitado - mg/100mL = 163 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeÀOxidação16hChumboPrecipitado_Mg100mL = "163";
	/** Estabilidade à oxidação (16h), goma potencial - mg/100mL = 162 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeÀOxidação16hGomaPotencial_Mg100mL = "162";
	/** Estabilidade térmica a 260°C = 145 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeTérmicaA260C = "145";
	/** Estabilidade térmica a 260°C - depósito no tubo (visual) = 60 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeTérmicaA260C_DepósitoNoTuboVisual = "60";
	/** Estabilidade térmica a 260°C - queda de pressão no filtro - mmHg = 59 */
	public static final String LBR_PHYSICALCHAR_EstabilidadeTérmicaA260C_QuedaDePressãoNoFiltro_MmHg = "59";
	/** Ferro - mg/Kg = 41 */
	public static final String LBR_PHYSICALCHAR_Ferro_MgKg = "41";
	/** Fósforo - mg/Kg = 96 */
	public static final String LBR_PHYSICALCHAR_Fósforo_MgKg = "96";
	/** Fração hidroprocessada = 85 */
	public static final String LBR_PHYSICALCHAR_FraçãoHidroprocessada = "85";
	/** Fração severamente hidroprocessada - %volume = 47 */
	public static final String LBR_PHYSICALCHAR_FraçãoSeveramenteHidroprocessada_Volume = "47";
	/** Glicerina livre - %massa = 98 */
	public static final String LBR_PHYSICALCHAR_GlicerinaLivre_Massa = "98";
	/** Glicerina total - %massa = 99 */
	public static final String LBR_PHYSICALCHAR_GlicerinaTotal_Massa = "99";
	/** Goma atual - mg/100mL = 61 */
	public static final String LBR_PHYSICALCHAR_GomaAtual_Mg100mL = "61";
	/** Goma Atual Lavada - mg/100mL = 13 */
	public static final String LBR_PHYSICALCHAR_GomaAtualLavada_Mg100mL = "13";
	/** H2S = 76 */
	public static final String LBR_PHYSICALCHAR_H2S = "76";
	/** Índice Antidetonante - IAD = 11 */
	public static final String LBR_PHYSICALCHAR_ÍndiceAntidetonante_IAD = "11";
	/** Índice de acidez - mg KOH/g = 97 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeAcidez_MgKOHG = "97";
	/** Índice de Cetano = 106 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeCetano = "106";
	/** Índice de iodo = 104 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeIodo = "104";
	/** Índice de separação de água - Com dissipador de cargas estáticas = 63 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeSeparaçãoDeÁgua_ComDissipadorDeCargasEstáticas = "63";
	/** Índice de separação de água - Sem dissipador de cargas estáticas = 64 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeSeparaçãoDeÁgua_SemDissipadorDeCargasEstáticas = "64";
	/** Índice de susceptibilidade térmica = 138 */
	public static final String LBR_PHYSICALCHAR_ÍndiceDeSusceptibilidadeTérmica = "138";
	/** Inibidor de formação de gelo - %volume = 69 */
	public static final String LBR_PHYSICALCHAR_InibidorDeFormaçãoDeGelo_Volume = "69";
	/** Íon Cloreto - mg/Kg = 38 */
	public static final String LBR_PHYSICALCHAR_ÍonCloreto_MgKg = "38";
	/** Íon Sulfato - mg/Kg = 40 */
	public static final String LBR_PHYSICALCHAR_ÍonSulfato_MgKg = "40";
	/** Lubricidade, BOCLE - mm = 65 */
	public static final String LBR_PHYSICALCHAR_LubricidadeBOCLE_Mm = "65";
	/** Massa específica a 20°C - Kg/m³ = 4 */
	public static final String LBR_PHYSICALCHAR_MassaEspecíficaA20C_KgM = "4";
	/** Melhorador de Lubricidade = 86 */
	public static final String LBR_PHYSICALCHAR_MelhoradorDeLubricidade = "86";
	/** Metanol ou Etanol - %massa = 103 */
	public static final String LBR_PHYSICALCHAR_MetanolOuEtanol_Massa = "103";
	/** Mistura com Cimento - % = 116 */
	public static final String LBR_PHYSICALCHAR_MisturaComCimento_ = "116";
	/** Mistura com Filer Silícico = 117 */
	public static final String LBR_PHYSICALCHAR_MisturaComFilerSilícico = "117";
	/** Monoglicerídeos - %massa = 100 */
	public static final String LBR_PHYSICALCHAR_Monoglicerídeos_Massa = "100";
	/** N° de Octano Motor - MON. = 10 */
	public static final String LBR_PHYSICALCHAR_NDeOctanoMotor_MON = "10";
	/** Naftalenos - %volume = 56 */
	public static final String LBR_PHYSICALCHAR_Naftalenos_Volume = "56";
	/** Número de Cetano = 28 */
	public static final String LBR_PHYSICALCHAR_NúmeroDeCetano = "28";
	/** Odorização = 82 */
	public static final String LBR_PHYSICALCHAR_Odorização = "82";
	/** Olefínicos - %volume = 21 */
	public static final String LBR_PHYSICALCHAR_Olefínicos_Volume = "21";
	/** Partículas Contaminantes - mg/L = 144 */
	public static final String LBR_PHYSICALCHAR_PartículasContaminantes_MgL = "144";
	/** Peneiração (retido na peneira n° 20 - 0,84 mm) - % = 115 */
	public static final String LBR_PHYSICALCHAR_PeneiraçãoRetidoNaPeneiraN20_084Mm_ = "115";
	/** Penetração retida - % = 142 */
	public static final String LBR_PHYSICALCHAR_PenetraçãoRetida_ = "142";
	/** Penetração (100g, 5s e 25°C) - 0,1 mm = 121 */
	public static final String LBR_PHYSICALCHAR_Penetração100g5sE25C_01Mm = "121";
	/** Perda - %volume = 51 */
	public static final String LBR_PHYSICALCHAR_Perda_Volume = "51";
	/** Período de Indução a 100°C - min = 14 */
	public static final String LBR_PHYSICALCHAR_PeríodoDeInduçãoA100C_Min = "14";
	/** Poder antidetonante, mistura pobre, método aviação, índice de desempenho = 151 */
	public static final String LBR_PHYSICALCHAR_PoderAntidetonanteMisturaPobreMétodoAviaçãoÍndiceDeDesempenho = "151";
	/** Poder antidetonante, mistura pobre, método aviação, índice de octano = 150 */
	public static final String LBR_PHYSICALCHAR_PoderAntidetonanteMisturaPobreMétodoAviaçãoÍndiceDeOctano = "150";
	/** Poder antidetonante, mistura rica, método superalimentação, índice de desempenho = 152 */
	public static final String LBR_PHYSICALCHAR_PoderAntidetonanteMisturaRicaMétodoSuperalimentaçãoÍndiceDeDesempenho = "152";
	/** Poder calorífico inferior - MJ/Kg = 54 */
	public static final String LBR_PHYSICALCHAR_PoderCaloríficoInferior_MJKg = "54";
	/** Ponto de amolecimento°C - °C = 131 */
	public static final String LBR_PHYSICALCHAR_PontoDeAmolecimentoC_C = "131";
	/** Ponto de Congelamento - °C = 52 */
	public static final String LBR_PHYSICALCHAR_PontoDeCongelamento_C = "52";
	/** Ponto de Entupimento de Filtro à Frio - °C = 27 */
	public static final String LBR_PHYSICALCHAR_PontoDeEntupimentoDeFiltroÀFrio_C = "27";
	/** Ponto de Fluidez Superior - °C = 90 */
	public static final String LBR_PHYSICALCHAR_PontoDeFluidezSuperior_C = "90";
	/** Ponto de Fulgor - °C = 25 */
	public static final String LBR_PHYSICALCHAR_PontoDeFulgor_C = "25";
	/** Ponto de fuligem - mm = 55 */
	public static final String LBR_PHYSICALCHAR_PontoDeFuligem_Mm = "55";
	/** Potencial hidrogeniônico (pH) = 35 */
	public static final String LBR_PHYSICALCHAR_PotencialHidrogeniônicoPH = "35";
	/** Pressão de Vapor a 37,8 °C - KPa = 12 */
	public static final String LBR_PHYSICALCHAR_PressãoDeVaporA378C_KPa = "12";
	/** Pressão de vapor Reid - KPa = 161 */
	public static final String LBR_PHYSICALCHAR_PressãoDeVaporReid_KPa = "161";
	/** Produto do Ponto de anilina x densidade = 155 */
	public static final String LBR_PHYSICALCHAR_ProdutoDoPontoDeAnilinaXDensidade = "155";
	/** Propano - %volume = 78 */
	public static final String LBR_PHYSICALCHAR_Propano_Volume = "78";
	/** Propeno - %volume = 79 */
	public static final String LBR_PHYSICALCHAR_Propeno_Volume = "79";
	/** Resíduo de carbono dos 100% destilados - %massa = 109 */
	public static final String LBR_PHYSICALCHAR_ResíduoDeCarbonoDos100Destilados_Massa = "109";
	/** Resíduo de Carbono Ramsbottom no Resíduo dos 10% finais da Destilação - %massa = 29 */
	public static final String LBR_PHYSICALCHAR_ResíduoDeCarbonoRamsbottomNoResíduoDos10FinaisDaDestilação_Massa = "29";
	/** Resíduo por evaporação - mg/100mL = 36 */
	public static final String LBR_PHYSICALCHAR_ResíduoPorEvaporação_Mg100mL = "36";
	/** Resíduo volátil - Butanos e mais pesados - %volume = 72 */
	public static final String LBR_PHYSICALCHAR_ResíduoVolátil_ButanosEMaisPesados_Volume = "72";
	/** Resíduo volátil - Pentanos e mais pesados - %volume = 73 */
	public static final String LBR_PHYSICALCHAR_ResíduoVolátil_PentanosEMaisPesados_Volume = "73";
	/** Resíduo volátil - Ponto de Ebulição 95% evaporados - °C = 71 */
	public static final String LBR_PHYSICALCHAR_ResíduoVolátil_PontoDeEbulição95Evaporados_C = "71";
	/** Resíduo, 100 ml evaporados - mL = 74 */
	public static final String LBR_PHYSICALCHAR_Resíduo100MlEvaporados_ML = "74";
	/** Sedimentação, 5 dias por diferença - % = 114 */
	public static final String LBR_PHYSICALCHAR_Sedimentação5DiasPorDiferença_ = "114";
	/** Sódio - mg/Kg = 42 */
	public static final String LBR_PHYSICALCHAR_Sódio_MgKg = "42";
	/** Sódio + Potássio. - mg/Kg = 94 */
	public static final String LBR_PHYSICALCHAR_SódioPlusPotássio_MgKg = "94";
	/** Solubilidade em tricoroetileno - %massa = 139 */
	public static final String LBR_PHYSICALCHAR_SolubilidadeEmTricoroetileno_Massa = "139";
	/** Teor alcoólico - °INPM = 34 */
	public static final String LBR_PHYSICALCHAR_TeorAlcoólico_INPM = "34";
	/** Teor de água - %volume = 129 */
	public static final String LBR_PHYSICALCHAR_TeorDeÁgua_Volume = "129";
	/** Teor de Betume - %massa = 122 */
	public static final String LBR_PHYSICALCHAR_TeorDeBetume_Massa = "122";
	/** Teor de éster - %massa = 92 */
	public static final String LBR_PHYSICALCHAR_TeorDeÉster_Massa = "92";
	/** Teor de etanol - %volume = 39 */
	public static final String LBR_PHYSICALCHAR_TeorDeEtanol_Volume = "39";
	/** Teor de hidrocarbonetos - %volume = 37 */
	public static final String LBR_PHYSICALCHAR_TeorDeHidrocarbonetos_Volume = "37";
	/** Teor de Saturados - %massa = 110 */
	public static final String LBR_PHYSICALCHAR_TeorDeSaturados_Massa = "110";
	/** Teste da Mancha = 75 */
	public static final String LBR_PHYSICALCHAR_TesteDaMancha = "75";
	/** Tolerância à água - condições de separação = 164 */
	public static final String LBR_PHYSICALCHAR_TolerânciaÀÁgua_CondiçõesDeSeparação = "164";
	/** Tolerância à água - condições interfaciais, máx. = 62 */
	public static final String LBR_PHYSICALCHAR_TolerânciaÀÁgua_CondiçõesInterfaciaisMáx = "62";
	/** Tolerância à água - mudança de volume - mL = 165 */
	public static final String LBR_PHYSICALCHAR_TolerânciaÀÁgua_MudançaDeVolume_ML = "165";
	/** Triglicerídeos - %massa = 102 */
	public static final String LBR_PHYSICALCHAR_Triglicerídeos_Massa = "102";
	/** Umidade = 80 */
	public static final String LBR_PHYSICALCHAR_Umidade = "80";
	/** Vanádio - mg/Kg = 91 */
	public static final String LBR_PHYSICALCHAR_Vanádio_MgKg = "91";
	/** Variação em massa - %massa = 140 */
	public static final String LBR_PHYSICALCHAR_VariaçãoEmMassa_Massa = "140";
	/** Viscosidade a -20°C - (mm2/s)cst = 53 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeA_20C_Mm2SCst = "53";
	/** Viscosidade a 20°C - (mm2/s)cst = 148 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeA20C_Mm2SCst = "148";
	/** Viscosidade a 40°C - (mm2/s)cst = 26 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeA40C_Mm2SCst = "26";
	/** Viscosidade Brookfield a 135°C, SP 21 - cP = 135 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeBrookfieldA135CSP21_CP = "135";
	/** Viscosidade Brookfield a 150°C, SP 21 - cP = 136 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeBrookfieldA150CSP21_CP = "136";
	/** Viscosidade Brookfield a 177°C, SP 21 - cP = 137 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeBrookfieldA177CSP21_CP = "137";
	/** Viscosidade Cinemática a 60°C - (mm2/s)cst = 87 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeCinemáticaA60C_Mm2SCst = "87";
	/** Viscosidade Saybolt Furol a 135°C - SSF = 132 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolA135C_SSF = "132";
	/** Viscosidade Saybolt Furol a 150°C - SSF = 133 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolA150C_SSF = "133";
	/** Viscosidade Saybolt Furol a 177°C - SSF = 134 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolA177C_SSF = "134";
	/** Viscosidade Saybolt Furol a 25°C - SSF = 113 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolA25C_SSF = "113";
	/** Viscosidade Saybolt Furol a 60°C - %volume = 124 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolA60C_Volume = "124";
	/** Viscosidade Saybolt Furola a 50°C - SSF = 88 */
	public static final String LBR_PHYSICALCHAR_ViscosidadeSayboltFurolaA50C_SSF = "88";
	/** Set Physical Char.
		@param LBR_PhysicalChar 
		Physical Characteristic
	  */
	public void setLBR_PhysicalChar (String LBR_PhysicalChar)
	{

		set_Value (COLUMNNAME_LBR_PhysicalChar, LBR_PhysicalChar);
	}

	/** Get Physical Char.
		@return Physical Characteristic
	  */
	public String getLBR_PhysicalChar () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PhysicalChar);
	}

	/** Set Pipeline Code.
		@param LBR_PipelineCode Pipeline Code	  */
	public void setLBR_PipelineCode (String LBR_PipelineCode)
	{
		set_Value (COLUMNNAME_LBR_PipelineCode, LBR_PipelineCode);
	}

	/** Get Pipeline Code.
		@return Pipeline Code	  */
	public String getLBR_PipelineCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_PipelineCode);
	}

	/** Set SIMP Line.
		@param LBR_SIMPLine_ID SIMP Line	  */
	public void setLBR_SIMPLine_ID (int LBR_SIMPLine_ID)
	{
		if (LBR_SIMPLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMPLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMPLine_ID, Integer.valueOf(LBR_SIMPLine_ID));
	}

	/** Get SIMP Line.
		@return SIMP Line	  */
	public int getLBR_SIMPLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SIMPLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set LBR_SIMPLine_UU.
		@param LBR_SIMPLine_UU LBR_SIMPLine_UU	  */
	public void setLBR_SIMPLine_UU (String LBR_SIMPLine_UU)
	{
		set_ValueNoCheck (COLUMNNAME_LBR_SIMPLine_UU, LBR_SIMPLine_UU);
	}

	/** Get LBR_SIMPLine_UU.
		@return LBR_SIMPLine_UU	  */
	public String getLBR_SIMPLine_UU () 
	{
		return (String)get_Value(COLUMNNAME_LBR_SIMPLine_UU);
	}

	public org.adempierelbr.model.I_LBR_SIMP getLBR_SIMP() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_SIMP)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_SIMP.Table_Name)
			.getPO(getLBR_SIMP_ID(), get_TrxName());	}

	/** Set SIMP.
		@param LBR_SIMP_ID SIMP	  */
	public void setLBR_SIMP_ID (int LBR_SIMP_ID)
	{
		if (LBR_SIMP_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMP_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_SIMP_ID, Integer.valueOf(LBR_SIMP_ID));
	}

	/** Get SIMP.
		@return SIMP	  */
	public int getLBR_SIMP_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_SIMP_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Rodoviário = 1 */
	public static final String LBR_TRANSPMODAL_Rodoviário = "1";
	/** Ferroviário = 2 */
	public static final String LBR_TRANSPMODAL_Ferroviário = "2";
	/** Multimodal ou Rodo/Ferroviário = 3 */
	public static final String LBR_TRANSPMODAL_MultimodalOuRodoFerroviário = "3";
	/** Aquaviário = 4 */
	public static final String LBR_TRANSPMODAL_Aquaviário = "4";
	/** Dutoviário = 5 */
	public static final String LBR_TRANSPMODAL_Dutoviário = "5";
	/** Aéreo = 6 */
	public static final String LBR_TRANSPMODAL_Aéreo = "6";
	/** Navegação Interior = 7 */
	public static final String LBR_TRANSPMODAL_NavegaçãoInterior = "7";
	/** Cabotagem/Longo Curso = 8 */
	public static final String LBR_TRANSPMODAL_CabotagemLongoCurso = "8";
	/** Sem Modal = 9 */
	public static final String LBR_TRANSPMODAL_SemModal = "9";
	/** Set Transport Modal.
		@param LBR_TranspModal Transport Modal	  */
	public void setLBR_TranspModal (String LBR_TranspModal)
	{

		set_Value (COLUMNNAME_LBR_TranspModal, LBR_TranspModal);
	}

	/** Get Transport Modal.
		@return Transport Modal	  */
	public String getLBR_TranspModal () 
	{
		return (String)get_Value(COLUMNNAME_LBR_TranspModal);
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_ValueNoCheck (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** ABNT/MB 104 = 215 */
	public static final String METHOD_ABNTMB104 = "215";
	/** ABNT/MB 162 = 230 */
	public static final String METHOD_ABNTMB162 = "230";
	/** ABNT/MB 205 = 114 */
	public static final String METHOD_ABNTMB205 = "114";
	/** ABNT/MB 237 = 233 */
	public static final String METHOD_ABNTMB237 = "233";
	/** ABNT/MB 281 = 116 */
	public static final String METHOD_ABNTMB281 = "116";
	/** ABNT/MB 282 = 118 */
	public static final String METHOD_ABNTMB282 = "118";
	/** ABNT/MB 285 = 115 */
	public static final String METHOD_ABNTMB285 = "115";
	/** ABNT/MB 287 = 214 */
	public static final String METHOD_ABNTMB287 = "214";
	/** ABNT/MB 289 = 234 */
	public static final String METHOD_ABNTMB289 = "234";
	/** ABNT/MB 293 = 219 */
	public static final String METHOD_ABNTMB293 = "219";
	/** ABNT/MB 294 = 127 */
	public static final String METHOD_ABNTMB294 = "127";
	/** ABNT/MB 295 = 218 */
	public static final String METHOD_ABNTMB295 = "218";
	/** ABNT/MB 296 = 213 */
	public static final String METHOD_ABNTMB296 = "213";
	/** ABNT/MB 299 = 229 */
	public static final String METHOD_ABNTMB299 = "229";
	/** ABNT/MB 326 = 124 */
	public static final String METHOD_ABNTMB326 = "124";
	/** ABNT/MB 327 = 220 */
	public static final String METHOD_ABNTMB327 = "220";
	/** ABNT/MB 37 = 126 */
	public static final String METHOD_ABNTMB37 = "126";
	/** ABNT/MB 42 = 217 */
	public static final String METHOD_ABNTMB42 = "217";
	/** ABNT/MB 424 = 84 */
	public static final String METHOD_ABNTMB424 = "84";
	/** ABNT/MB 425 = 170 */
	public static final String METHOD_ABNTMB425 = "170";
	/** ABNT/MB 43 = 190 */
	public static final String METHOD_ABNTMB43 = "190";
	/** ABNT/MB 45 = 216 */
	public static final String METHOD_ABNTMB45 = "216";
	/** ABNT/MB 452 = 235 */
	public static final String METHOD_ABNTMB452 = "235";
	/** ABNT/MB 457 = 76 */
	public static final String METHOD_ABNTMB457 = "76";
	/** ABNT/MB 48 = 128 */
	public static final String METHOD_ABNTMB48 = "128";
	/** ABNT/MB 826 = 169 */
	public static final String METHOD_ABNTMB826 = "169";
	/** ABNT/MB 902 = 125 */
	public static final String METHOD_ABNTMB902 = "125";
	/** ABNT/MB 903 = 117 */
	public static final String METHOD_ABNTMB903 = "117";
	/** ABNT/NBR 10422 = 104 */
	public static final String METHOD_ABNTNBR10422 = "104";
	/** ABNT/NBR 10441 = 89 */
	public static final String METHOD_ABNTNBR10441 = "89";
	/** ABNT/NBR 10547 = 95 */
	public static final String METHOD_ABNTNBR10547 = "95";
	/** ABNT/NBR 10891 = 97 */
	public static final String METHOD_ABNTNBR10891 = "97";
	/** ABNT/NBR 10893 = 105 */
	public static final String METHOD_ABNTNBR10893 = "105";
	/** ABNT/NBR 10894 = 100 */
	public static final String METHOD_ABNTNBR10894 = "100";
	/** ABNT/NBR 10895 = 101 */
	public static final String METHOD_ABNTNBR10895 = "101";
	/** ABNT/NBR 1109 = 111 */
	public static final String METHOD_ABNTNBR1109 = "111";
	/** ABNT/NBR 11331 = 103 */
	public static final String METHOD_ABNTNBR11331 = "103";
	/** ABNT/NBR 11341 = 171 */
	public static final String METHOD_ABNTNBR11341 = "171";
	/** ABNT/NBR 11349 = 129 */
	public static final String METHOD_ABNTNBR11349 = "129";
	/** ABNT/NBR 11909 = 110 */
	public static final String METHOD_ABNTNBR11909 = "110";
	/** ABNT/NBR 12120 = 102 */
	public static final String METHOD_ABNTNBR12120 = "102";
	/** ABNT/NBR 13992 = 72 */
	public static final String METHOD_ABNTNBR13992 = "72";
	/** ABNT/NBR 13993 = 99 */
	public static final String METHOD_ABNTNBR13993 = "99";
	/** ABNT/NBR 14065 = 74 */
	public static final String METHOD_ABNTNBR14065 = "74";
	/** ABNT/NBR 14156 = 78 */
	public static final String METHOD_ABNTNBR14156 = "78";
	/** ABNT/NBR 14359 = 81 */
	public static final String METHOD_ABNTNBR14359 = "81";
	/** ABNT/NBR 14448 = 139 */
	public static final String METHOD_ABNTNBR14448 = "139";
	/** ABNT/NBR 14478 = 80 */
	public static final String METHOD_ABNTNBR14478 = "80";
	/** ABNT/NBR 14483 = 85 */
	public static final String METHOD_ABNTNBR14483 = "85";
	/** ABNT/NBR 1452 = 112 */
	public static final String METHOD_ABNTNBR1452 = "112";
	/** ABNT/NBR 14525 = 79 */
	public static final String METHOD_ABNTNBR14525 = "79";
	/** ABNT/NBR 14533 = 83 */
	public static final String METHOD_ABNTNBR14533 = "83";
	/** ABNT/NBR 14598 = 88 */
	public static final String METHOD_ABNTNBR14598 = "88";
	/** ABNT/NBR 14642 = 108 */
	public static final String METHOD_ABNTNBR14642 = "108";
	/** ABNT/NBR 14647 = 93 */
	public static final String METHOD_ABNTNBR14647 = "93";
	/** ABNT/NBR 14747 = 90 */
	public static final String METHOD_ABNTNBR14747 = "90";
	/** ABNT/NBR 14855 = 201 */
	public static final String METHOD_ABNTNBR14855 = "201";
	/** ABNT/NBR 14875 = 106 */
	public static final String METHOD_ABNTNBR14875 = "106";
	/** ABNT/NBR 14921 = 206 */
	public static final String METHOD_ABNTNBR14921 = "206";
	/** ABNT/NBR 14932 = 210 */
	public static final String METHOD_ABNTNBR14932 = "210";
	/** ABNT/NBR 14950 = 199 */
	public static final String METHOD_ABNTNBR14950 = "199";
	/** ABNT/NBR 15184 = 200 */
	public static final String METHOD_ABNTNBR15184 = "200";
	/** ABNT/NBR 4149 = 77 */
	public static final String METHOD_ABNTNBR4149 = "77";
	/** ABNT/NBR 5765 = 189 */
	public static final String METHOD_ABNTNBR5765 = "189";
	/** ABNT/NBR 5847 = 123 */
	public static final String METHOD_ABNTNBR5847 = "123";
	/** ABNT/NBR 5992 = 96 */
	public static final String METHOD_ABNTNBR5992 = "96";
	/** ABNT/NBR 6293 = 192 */
	public static final String METHOD_ABNTNBR6293 = "192";
	/** ABNT/NBR 6296 = 172 */
	public static final String METHOD_ABNTNBR6296 = "172";
	/** ABNT/NBR 6298 = 107 */
	public static final String METHOD_ABNTNBR6298 = "107";
	/** ABNT/NBR 6560 = 198 */
	public static final String METHOD_ABNTNBR6560 = "198";
	/** ABNT/NBR 6563 = 82 */
	public static final String METHOD_ABNTNBR6563 = "82";
	/** ABNT/NBR 6576 = 197 */
	public static final String METHOD_ABNTNBR6576 = "197";
	/** ABNT/NBR 6577 = 113 */
	public static final String METHOD_ABNTNBR6577 = "113";
	/** ABNT/NBR 7148 = 73 */
	public static final String METHOD_ABNTNBR7148 = "73";
	/** ABNT/NBR 7974 = 87 */
	public static final String METHOD_ABNTNBR7974 = "87";
	/** ABNT/NBR 7975 = 109 */
	public static final String METHOD_ABNTNBR7975 = "109";
	/** ABNT/NBR 8644 = 98 */
	public static final String METHOD_ABNTNBR8644 = "98";
	/** ABNT/NBR 9619 = 75 */
	public static final String METHOD_ABNTNBR9619 = "75";
	/** ABNT/NBR 9842 = 92 */
	public static final String METHOD_ABNTNBR9842 = "92";
	/** ABNT/NBR 9866 = 94 */
	public static final String METHOD_ABNTNBR9866 = "94";
	/** ABNT/NBR14318 = 91 */
	public static final String METHOD_ABNTNBR14318 = "91";
	/** ABNT/NBR 14533 (2) = 86 */
	public static final String METHOD_ABNTNBR145332 = "86";
	/** ASTM/D 1094 = 55 */
	public static final String METHOD_ASTMD1094 = "55";
	/** ASTM/D 1125 = 37 */
	public static final String METHOD_ASTMD1125 = "37";
	/** ASTM/D 113 = 196 */
	public static final String METHOD_ASTMD113 = "196";
	/** ASTM/D 1160 = 157 */
	public static final String METHOD_ASTMD1160 = "157";
	/** ASTM/D 1266 = 14 */
	public static final String METHOD_ASTMD1266 = "14";
	/** ASTM/D 1267 = 58 */
	public static final String METHOD_ASTMD1267 = "58";
	/** ASTM/D 1298 = 2 */
	public static final String METHOD_ASTMD1298 = "2";
	/** ASTM/D 130 = 13 */
	public static final String METHOD_ASTMD130 = "13";
	/** ASTM/D 1319 = 23 */
	public static final String METHOD_ASTMD1319 = "23";
	/** ASTM/D 1322 = 52 */
	public static final String METHOD_ASTMD1322 = "52";
	/** ASTM/D 1405 = 226 */
	public static final String METHOD_ASTMD1405 = "226";
	/** ASTM/D 1500 = 24 */
	public static final String METHOD_ASTMD1500 = "24";
	/** ASTM/D 1552 = 25 */
	public static final String METHOD_ASTMD1552 = "25";
	/** ASTM/D 156 = 207 */
	public static final String METHOD_ASTMD156 = "207";
	/** ASTM/D 1613 = 36 */
	public static final String METHOD_ASTMD1613 = "36";
	/** ASTM/D 1657 = 168 */
	public static final String METHOD_ASTMD1657 = "168";
	/** ASTM/D 1754 = 177 */
	public static final String METHOD_ASTMD1754 = "177";
	/** ASTM/D 1796 = 35 */
	public static final String METHOD_ASTMD1796 = "35";
	/** ASTM/D 1837 = 60 */
	public static final String METHOD_ASTMD1837 = "60";
	/** ASTM/D 1838 = 70 */
	public static final String METHOD_ASTMD1838 = "70";
	/** ASTM/D 1840 = 53 */
	public static final String METHOD_ASTMD1840 = "53";
	/** ASTM/D 189 = 159 */
	public static final String METHOD_ASTMD189 = "159";
	/** ASTM/D 2007 = 175 */
	public static final String METHOD_ASTMD2007 = "175";
	/** ASTM/D 2042 = 195 */
	public static final String METHOD_ASTMD2042 = "195";
	/** ASTM/D 2158 = 62 */
	public static final String METHOD_ASTMD2158 = "62";
	/** ASTM/D 2163 = 61 */
	public static final String METHOD_ASTMD2163 = "61";
	/** ASTM/D 2170 = 173 */
	public static final String METHOD_ASTMD2170 = "173";
	/** ASTM/D 2171 = 130 */
	public static final String METHOD_ASTMD2171 = "130";
	/** ASTM/D 2382 = 228 */
	public static final String METHOD_ASTMD2382 = "228";
	/** ASTM/D 2386 = 47 */
	public static final String METHOD_ASTMD2386 = "47";
	/** ASTM/D 2392 = 225 */
	public static final String METHOD_ASTMD2392 = "225";
	/** ASTM/D 2420 = 69 */
	public static final String METHOD_ASTMD2420 = "69";
	/** ASTM/D 2547 = 223 */
	public static final String METHOD_ASTMD2547 = "223";
	/** ASTM/D 2551 = 232 */
	public static final String METHOD_ASTMD2551 = "232";
	/** ASTM/D 2598 = 59 */
	public static final String METHOD_ASTMD2598 = "59";
	/** ASTM/D 2599 = 224 */
	public static final String METHOD_ASTMD2599 = "224";
	/** ASTM/D 2622 = 15 */
	public static final String METHOD_ASTMD2622 = "15";
	/** ASTM/D 2624 = 56 */
	public static final String METHOD_ASTMD2624 = "56";
	/** ASTM/D 2699 = 6 */
	public static final String METHOD_ASTMD2699 = "6";
	/** ASTM/D 2700 = 5 */
	public static final String METHOD_ASTMD2700 = "5";
	/** ASTM/D 2709 = 140 */
	public static final String METHOD_ASTMD2709 = "140";
	/** ASTM/D 2713 = 71 */
	public static final String METHOD_ASTMD2713 = "71";
	/** ASTM/D 2784 = 63 */
	public static final String METHOD_ASTMD2784 = "63";
	/** ASTM/D 2872 = 176 */
	public static final String METHOD_ASTMD2872 = "176";
	/** ASTM/D 3120 = 16 */
	public static final String METHOD_ASTMD3120 = "16";
	/** ASTM/D 3143 = 193 */
	public static final String METHOD_ASTMD3143 = "193";
	/** ASTM/D 3227 = 45 */
	public static final String METHOD_ASTMD3227 = "45";
	/** ASTM/D 323 = 231 */
	public static final String METHOD_ASTMD323 = "231";
	/** ASTM/D 3237 = 22 */
	public static final String METHOD_ASTMD3237 = "22";
	/** ASTM/D 3241 = 54 */
	public static final String METHOD_ASTMD3241 = "54";
	/** ASTM/D 3242 = 41 */
	public static final String METHOD_ASTMD3242 = "41";
	/** ASTM/D 3246 = 64 */
	public static final String METHOD_ASTMD3246 = "64";
	/** ASTM/D 3338 = 50 */
	public static final String METHOD_ASTMD3338 = "50";
	/** ASTM/D 3341 = 222 */
	public static final String METHOD_ASTMD3341 = "222";
	/** ASTM/D 36 = 203 */
	public static final String METHOD_ASTMD36 = "203";
	/** ASTM/D 3606 = 19 */
	public static final String METHOD_ASTMD3606 = "19";
	/** ASTM/D 381 = 11 */
	public static final String METHOD_ASTMD381 = "11";
	/** ASTM/D 3828 = 29 */
	public static final String METHOD_ASTMD3828 = "29";
	/** ASTM/D 3948 = 121 */
	public static final String METHOD_ASTMD3948 = "121";
	/** ASTM/D 402 = 194 */
	public static final String METHOD_ASTMD402 = "194";
	/** ASTM/D 4052 = 26 */
	public static final String METHOD_ASTMD4052 = "26";
	/** ASTM/D 4176 = 40 */
	public static final String METHOD_ASTMD4176 = "40";
	/** ASTM/D 4249 = 44 */
	public static final String METHOD_ASTMD4249 = "44";
	/** ASTM/D 4294 = 17 */
	public static final String METHOD_ASTMD4294 = "17";
	/** ASTM/D 445 = 30 */
	public static final String METHOD_ASTMD445 = "30";
	/** ASTM/D 4468 = 65 */
	public static final String METHOD_ASTMD4468 = "65";
	/** ASTM/D 4530 = 158 */
	public static final String METHOD_ASTMD4530 = "158";
	/** ASTM/D 473 = 133 */
	public static final String METHOD_ASTMD473 = "133";
	/** ASTM/D 4737 = 120 */
	public static final String METHOD_ASTMD4737 = "120";
	/** ASTM/D 4809 = 51 */
	public static final String METHOD_ASTMD4809 = "51";
	/** ASTM/D 482 = 34 */
	public static final String METHOD_ASTMD482 = "34";
	/** ASTM/D 4951 = 142 */
	public static final String METHOD_ASTMD4951 = "142";
	/** ASTM/D 4952 = 46 */
	public static final String METHOD_ASTMD4952 = "46";
	/** ASTM/D 4953 = 7 */
	public static final String METHOD_ASTMD4953 = "7";
	/** ASTM/D 5 = 202 */
	public static final String METHOD_ASTMD5 = "202";
	/** ASTM/D 5001 = 57 */
	public static final String METHOD_ASTMD5001 = "57";
	/** ASTM/D 5042 = 3 */
	public static final String METHOD_ASTMD5042 = "3";
	/** ASTM/D 512 = 38 */
	public static final String METHOD_ASTMD512 = "38";
	/** ASTM/D 5190 = 8 */
	public static final String METHOD_ASTMD5190 = "8";
	/** ASTM/D 5191 = 9 */
	public static final String METHOD_ASTMD5191 = "9";
	/** ASTM/D 524 = 33 */
	public static final String METHOD_ASTMD524 = "33";
	/** ASTM/D 525 = 12 */
	public static final String METHOD_ASTMD525 = "12";
	/** ASTM/D 5443 = 20 */
	public static final String METHOD_ASTMD5443 = "20";
	/** ASTM/D 5452 = 209 */
	public static final String METHOD_ASTMD5452 = "209";
	/** ASTM/D 5453 = 18 */
	public static final String METHOD_ASTMD5453 = "18";
	/** ASTM/D 5482 = 10 */
	public static final String METHOD_ASTMD5482 = "10";
	/** ASTM/D 5501 = 39 */
	public static final String METHOD_ASTMD5501 = "39";
	/** ASTM/D 5504 = 66 */
	public static final String METHOD_ASTMD5504 = "66";
	/** ASTM/D 56 = 27 */
	public static final String METHOD_ASTMD56 = "27";
	/** ASTM/D 5623 = 67 */
	public static final String METHOD_ASTMD5623 = "67";
	/** ASTM/D 5708 = 137 */
	public static final String METHOD_ASTMD5708 = "137";
	/** ASTM/D 5863 = 136 */
	public static final String METHOD_ASTMD5863 = "136";
	/** ASTM/D 5972 = 48 */
	public static final String METHOD_ASTMD5972 = "48";
	/** ASTM/D 6045 = 208 */
	public static final String METHOD_ASTMD6045 = "208";
	/** ASTM/D 611 = 227 */
	public static final String METHOD_ASTMD611 = "227";
	/** ASTM/D 613 = 32 */
	public static final String METHOD_ASTMD613 = "32";
	/** ASTM/D 6277 = 21 */
	public static final String METHOD_ASTMD6277 = "21";
	/** ASTM/D 6371 = 31 */
	public static final String METHOD_ASTMD6371 = "31";
	/** ASTM/D 6379 = 43 */
	public static final String METHOD_ASTMD6379 = "43";
	/** ASTM/D 6584 = 144 */
	public static final String METHOD_ASTMD6584 = "144";
	/** ASTM/D 664 = 143 */
	public static final String METHOD_ASTMD664 = "143";
	/** ASTM/D 6667 = 68 */
	public static final String METHOD_ASTMD6667 = "68";
	/** ASTM/D 70 = 178 */
	public static final String METHOD_ASTMD70 = "178";
	/** ASTM/D 7153 = 211 */
	public static final String METHOD_ASTMD7153 = "211";
	/** ASTM/D 7154 = 212 */
	public static final String METHOD_ASTMD7154 = "212";
	/** ASTM/D 86 = 4 */
	public static final String METHOD_ASTMD86 = "4";
	/** ASTM/D 873 = 236 */
	public static final String METHOD_ASTMD873 = "236";
	/** ASTM/D 874 = 141 */
	public static final String METHOD_ASTMD874 = "141";
	/** ASTM/D 88 = 131 */
	public static final String METHOD_ASTMD88 = "131";
	/** ASTM/D 910 = 221 */
	public static final String METHOD_ASTMD910 = "221";
	/** ASTM/D 92 = 174 */
	public static final String METHOD_ASTMD92 = "174";
	/** ASTM/D 93 = 28 */
	public static final String METHOD_ASTMD93 = "28";
	/** ASTM/D 95 = 132 */
	public static final String METHOD_ASTMD95 = "132";
	/** ASTM/D 97 = 135 */
	public static final String METHOD_ASTMD97 = "135";
	/** ASTM/D4529 = 49 */
	public static final String METHOD_ASTMD4529 = "49";
	/** ASTM/E 102 = 204 */
	public static final String METHOD_ASTME102 = "204";
	/** ASTM/E 4402 = 205 */
	public static final String METHOD_ASTME4402 = "205";
	/** EN 14103 = 145 */
	public static final String METHOD_EN14103 = "145";
	/** EN 14104 = 151 */
	public static final String METHOD_EN14104 = "151";
	/** EN 14105 = 152 */
	public static final String METHOD_EN14105 = "152";
	/** EN 14106 = 153 */
	public static final String METHOD_EN14106 = "153";
	/** EN 14107 = 150 */
	public static final String METHOD_EN14107 = "150";
	/** EN 14108 = 147 */
	public static final String METHOD_EN14108 = "147";
	/** EN 14109 = 148 */
	public static final String METHOD_EN14109 = "148";
	/** EN 14110 = 154 */
	public static final String METHOD_EN14110 = "154";
	/** EN 14111 = 155 */
	public static final String METHOD_EN14111 = "155";
	/** EN 14112 = 156 */
	public static final String METHOD_EN14112 = "156";
	/** EN 14538 = 149 */
	public static final String METHOD_EN14538 = "149";
	/** EN/ISO 10370 = 164 */
	public static final String METHOD_ENISO10370 = "164";
	/** EN/ISO 12662 = 162 */
	public static final String METHOD_ENISO12662 = "162";
	/** EN/ISO 12937 = 161 */
	public static final String METHOD_ENISO12937 = "161";
	/** EN/ISO 14569 = 165 */
	public static final String METHOD_ENISO14569 = "165";
	/** EN/ISO 2160 = 166 */
	public static final String METHOD_ENISO2160 = "166";
	/** EN/ISO 3104 = 160 */
	public static final String METHOD_ENISO3104 = "160";
	/** EN/ISO 3679 = 163 */
	public static final String METHOD_ENISO3679 = "163";
	/** EN/ISO 5165 = 167 */
	public static final String METHOD_ENISO5165 = "167";
	/** IP 227 = 122 */
	public static final String METHOD_IP227 = "122";
	/** ISO 3987 = 146 */
	public static final String METHOD_ISO3987 = "146";
	/** Não Aplicável = 138 */
	public static final String METHOD_NãoAplicável = "138";
	/** NFPA58 = 119 */
	public static final String METHOD_NFPA58 = "119";
	/** P-MB-107 = 186 */
	public static final String METHOD_P_MB_107 = "186";
	/** P-MB-166 = 187 */
	public static final String METHOD_P_MB_166 = "187";
	/** P-MB-167 = 188 */
	public static final String METHOD_P_MB_167 = "188";
	/** P-MB-496 = 182 */
	public static final String METHOD_P_MB_496 = "182";
	/** P-MB-563 = 184 */
	public static final String METHOD_P_MB_563 = "184";
	/** P-MB-581 = 179 */
	public static final String METHOD_P_MB_581 = "179";
	/** P-MB-586 = 185 */
	public static final String METHOD_P_MB_586 = "185";
	/** P-MB-609 = 181 */
	public static final String METHOD_P_MB_609 = "181";
	/** P-MB-722 = 180 */
	public static final String METHOD_P_MB_722 = "180";
	/** P-MB-795 = 183 */
	public static final String METHOD_P_MB_795 = "183";
	/** VISUAL = 1 */
	public static final String METHOD_VISUAL = "1";
	/** Set Method.
		@param Method Method	  */
	public void setMethod (String Method)
	{

		set_Value (COLUMNNAME_Method, Method);
	}

	/** Get Method.
		@return Method	  */
	public String getMethod () 
	{
		return (String)get_Value(COLUMNNAME_Method);
	}

	/** Set Operation.
		@param Operation 
		Compare Operation
	  */
	public void setOperation (String Operation)
	{
		set_Value (COLUMNNAME_Operation, Operation);
	}

	/** Get Operation.
		@return Compare Operation
	  */
	public String getOperation () 
	{
		return (String)get_Value(COLUMNNAME_Operation);
	}

	/** Set Price.
		@param Price 
		Price
	  */
	public void setPrice (BigDecimal Price)
	{
		set_Value (COLUMNNAME_Price, Price);
	}

	/** Get Price.
		@return Price
	  */
	public BigDecimal getPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Price);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Product Key.
		@param ProductValue 
		Key of the Product
	  */
	public void setProductValue (String ProductValue)
	{
		set_ValueNoCheck (COLUMNNAME_ProductValue, ProductValue);
	}

	/** Get Product Key.
		@return Key of the Product
	  */
	public String getProductValue () 
	{
		return (String)get_Value(COLUMNNAME_ProductValue);
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Result.
		@param Result 
		Result of the action taken
	  */
	public void setResult (String Result)
	{
		set_ValueNoCheck (COLUMNNAME_Result, Result);
	}

	/** Get Result.
		@return Result of the action taken
	  */
	public String getResult () 
	{
		return (String)get_Value(COLUMNNAME_Result);
	}

	/** Set Selected Product Value.
		@param SelectedProductValue Selected Product Value	  */
	public void setSelectedProductValue (String SelectedProductValue)
	{
		set_ValueNoCheck (COLUMNNAME_SelectedProductValue, SelectedProductValue);
	}

	/** Get Selected Product Value.
		@return Selected Product Value	  */
	public String getSelectedProductValue () 
	{
		return (String)get_Value(COLUMNNAME_SelectedProductValue);
	}

	/** Set CNAE.
		@param lbr_CNAE 
		Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE)
	{
		set_Value (COLUMNNAME_lbr_CNAE, lbr_CNAE);
	}

	/** Get CNAE.
		@return Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CNAE);
	}

	/** Set Country Code.
		@param lbr_CountryCode 
		Country Code used for issue Nota Fiscal
	  */
	public void setlbr_CountryCode (String lbr_CountryCode)
	{
		set_Value (COLUMNNAME_lbr_CountryCode, lbr_CountryCode);
	}

	/** Get Country Code.
		@return Country Code used for issue Nota Fiscal
	  */
	public String getlbr_CountryCode () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CountryCode);
	}

	/** Set DI.
		@param lbr_DI 
		N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public void setlbr_DI (String lbr_DI)
	{
		set_Value (COLUMNNAME_lbr_DI, lbr_DI);
	}

	/** Get DI.
		@return N˙mero do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public String getlbr_DI () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DI);
	}

	/** Set NFe No.
		@param lbr_NFENo NFe No	  */
	public void setlbr_NFENo (String lbr_NFENo)
	{
		set_Value (COLUMNNAME_lbr_NFENo, lbr_NFENo);
	}

	/** Get NFe No.
		@return NFe No	  */
	public String getlbr_NFENo () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFENo);
	}

	/** Set NF Serie.
		@param lbr_NFSerie NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie)
	{
		set_Value (COLUMNNAME_lbr_NFSerie, lbr_NFSerie);
	}

	/** Get NF Serie.
		@return NF Serie	  */
	public String getlbr_NFSerie () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFSerie);
	}

	/** Set NFe ID.
		@param lbr_NFeID 
		Identification of NFe
	  */
	public void setlbr_NFeID (String lbr_NFeID)
	{
		set_Value (COLUMNNAME_lbr_NFeID, lbr_NFeID);
	}

	/** Get NFe ID.
		@return Identification of NFe
	  */
	public String getlbr_NFeID () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeID);
	}

	/** Firme = 1 */
	public static final String LBR_SERVICECODE_Firme = "1";
	/** Não Firme = 2 */
	public static final String LBR_SERVICECODE_NãoFirme = "2";
	/** Deslocamento = 3 */
	public static final String LBR_SERVICECODE_Deslocamento = "3";
	/** Set Service Code.
		@param lbr_ServiceCode 
		Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public void setlbr_ServiceCode (String lbr_ServiceCode)
	{

		set_Value (COLUMNNAME_lbr_ServiceCode, lbr_ServiceCode);
	}

	/** Get Service Code.
		@return Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public String getlbr_ServiceCode () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ServiceCode);
	}
}