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
package org.kenos.idempiere.lbr.wrapper;

import java.math.BigDecimal;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for C_DocType
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_W_C_DocType 
{

    /** TableName=C_DocType */
    public static final String Table_Name = "C_DocType";

    /** AD_Table_ID=217 */
    public static final int Table_ID = 217;


    /** Column name LBR_DocBaseType */
    public static final String COLUMNNAME_LBR_DocBaseType = "LBR_DocBaseType";

	/** Consignation Sales Order = OVEC- */
	public static final String LBR_DOCBASETYPE_ConsignationSalesOrder = "OVEC-";

	/** Consignation Shipment = EXEC- */
	public static final String LBR_DOCBASETYPE_ConsignationShipment = "EXEC-";

	/** Consignation Invoice = FAEC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoice = "FAEC-";

	/** Consignation return sales order = OVRC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnSalesOrder = "OVRC+";

	/** Consignation Return Shipment = EXRC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnShipment = "EXRC+";

	/** Consignation Return Invoice = FARC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnInvoice = "FARC+";

	/** Consignation Invoice Sales Order = OVFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceSalesOrder = "OVFC-";

	/** Consignation Invoice Shipment = EXFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceShipment = "EXFC-";

	/** Consignation Invoice Invoice = FAFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceInvoice = "FAFC-";

	/** Default = DEFA+ */
	public static final String LBR_DOCBASETYPE_Default = "DEFA+";

	/** Sales Order Maintenance In = OVCO+ */
	public static final String LBR_DOCBASETYPE_SalesOrderMaintenanceIn = "OVCO+";

	/** Sales Order Maintenance Out = OVCO- */
	public static final String LBR_DOCBASETYPE_SalesOrderMaintenanceOut = "OVCO-";

	/** Sales Order Demonstration Out = OVDE- */
	public static final String LBR_DOCBASETYPE_SalesOrderDemonstrationOut = "OVDE-";

	/** Sales Order Demonstration In = OVDE+ */
	public static final String LBR_DOCBASETYPE_SalesOrderDemonstrationIn = "OVDE+";

	/** Sales Order Other In = OVOE+ */
	public static final String LBR_DOCBASETYPE_SalesOrderOtherIn = "OVOE+";

	/** Sales Order Other Out = OVOS- */
	public static final String LBR_DOCBASETYPE_SalesOrderOtherOut = "OVOS-";


	/** Set LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public void setLBR_DocBaseType (String LBR_DocBaseType);

	/** Get LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public String getLBR_DocBaseType();

    /** Column name LBR_DocTypeMovement_ID */
    public static final String COLUMNNAME_LBR_DocTypeMovement_ID = "LBR_DocTypeMovement_ID";

	/** Set Movement DocType.
	  * Defines the Movement Document Type used for the Material Movement
	  */
	public void setLBR_DocTypeMovement_ID (int LBR_DocTypeMovement_ID);

	/** Get Movement DocType.
	  * Defines the Movement Document Type used for the Material Movement
	  */
	public int getLBR_DocTypeMovement_ID();

	public org.compiere.model.I_C_DocType getLBR_DocTypeMovement() throws RuntimeException;

    /** Column name LBR_DocTypeNF_ID */
    public static final String COLUMNNAME_LBR_DocTypeNF_ID = "LBR_DocTypeNF_ID";

	/** Set NF DocType.
	  * Defines the NF Document Type used for the Nota Fiscal Window
	  */
	public void setLBR_DocTypeNF_ID (int LBR_DocTypeNF_ID);

	/** Get NF DocType.
	  * Defines the NF Document Type used for the Nota Fiscal Window
	  */
	public int getLBR_DocTypeNF_ID();

	public org.compiere.model.I_C_DocType getLBR_DocTypeNF() throws RuntimeException;

    /** Column name LBR_GenerateMovement */
    public static final String COLUMNNAME_LBR_GenerateMovement = "LBR_GenerateMovement";

	/** Set Generate Movement.
	  * Indicates if this document generates a material movement insted of a material shipment/receipt
	  */
	public void setLBR_GenerateMovement (boolean LBR_GenerateMovement);

	/** Get Generate Movement.
	  * Indicates if this document generates a material movement insted of a material shipment/receipt
	  */
	public boolean isLBR_GenerateMovement();

    /** Column name LBR_HasFiscalDocument */
    public static final String COLUMNNAME_LBR_HasFiscalDocument = "LBR_HasFiscalDocument";

	/** Set Has Fiscal Document.
	  * Identifies if the this document has fiscal document
	  */
	public void setLBR_HasFiscalDocument (boolean LBR_HasFiscalDocument);

	/** Get Has Fiscal Document.
	  * Identifies if the this document has fiscal document
	  */
	public boolean isLBR_HasFiscalDocument();

    /** Column name LBR_HasOpenItems */
    public static final String COLUMNNAME_LBR_HasOpenItems = "LBR_HasOpenItems";

	/** Set Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public void setLBR_HasOpenItems (boolean LBR_HasOpenItems);

	/** Get Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public boolean isLBR_HasOpenItems();

    /** Column name LBR_IsAutomaticInvoice */
    public static final String COLUMNNAME_LBR_IsAutomaticInvoice = "LBR_IsAutomaticInvoice";

	/** Set Automatic Invoice.
	  * Identifies if this Document generates Invoices automatically
	  */
	public void setLBR_IsAutomaticInvoice (boolean LBR_IsAutomaticInvoice);

	/** Get Automatic Invoice.
	  * Identifies if this Document generates Invoices automatically
	  */
	public boolean isLBR_IsAutomaticInvoice();

    /** Column name LBR_IsAutomaticShipment */
    public static final String COLUMNNAME_LBR_IsAutomaticShipment = "LBR_IsAutomaticShipment";

	/** Set Automatic Shipment.
	  * Identifies if this Document generates Shipments automatically
	  */
	public void setLBR_IsAutomaticShipment (boolean LBR_IsAutomaticShipment);

	/** Get Automatic Shipment.
	  * Identifies if this Document generates Shipments automatically
	  */
	public boolean isLBR_IsAutomaticShipment();

    /** Column name LBR_IsManufactured */
    public static final String COLUMNNAME_LBR_IsManufactured = "LBR_IsManufactured";

	/** Set Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public void setLBR_IsManufactured (boolean LBR_IsManufactured);

	/** Get Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public boolean isLBR_IsManufactured();

    /** Column name LBR_IsOwnDocument */
    public static final String COLUMNNAME_LBR_IsOwnDocument = "LBR_IsOwnDocument";

	/** Set Is Own Document.
	  * Identifies this is an own document
	  */
	public void setLBR_IsOwnDocument (boolean LBR_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public boolean isLBR_IsOwnDocument();

    /** Column name LBR_IsReturn */
    public static final String COLUMNNAME_LBR_IsReturn = "LBR_IsReturn";

	/** Set Is Return.
	  * Defines if the is a return of manufactured products
	  */
	public void setLBR_IsReturn (boolean LBR_IsReturn);

	/** Get Is Return.
	  * Defines if the is a return of manufactured products
	  */
	public boolean isLBR_IsReturn();

    /** Column name LBR_NFModel */
    public static final String COLUMNNAME_LBR_NFModel = "LBR_NFModel";

	/** Nota Fiscal = 01 */
	public static final String LBR_NFMODEL_NotaFiscal = "01";

	/** Nota Fiscal Avulsa = 1B */
	public static final String LBR_NFMODEL_NotaFiscalAvulsa = "1B";

	/** Nota Fiscal de Venda a Consumidor = 02 */
	public static final String LBR_NFMODEL_NotaFiscalDeVendaAConsumidor = "02";

	/** Cupom Fiscal emitido por ECF = 2D */
	public static final String LBR_NFMODEL_CupomFiscalEmitidoPorECF = "2D";

	/** Bilhete de Passagem emitido por ECF = 2E */
	public static final String LBR_NFMODEL_BilheteDePassagemEmitidoPorECF = "2E";

	/** Nota Fiscal de Produtor = 04 */
	public static final String LBR_NFMODEL_NotaFiscalDeProdutor = "04";

	/** Nota Fiscal/Conta de Energia Elétrica = 06 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeEnergiaElétrica = "06";

	/** Nota Fiscal de Serviço de Transporte = 07 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTransporte = "07";

	/** Conhecimento de Transporte Rodoviário de Cargas = 08 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteRodoviárioDeCargas = "08";

	/** Conhecimento de Transporte de Cargas Avulso = 8B */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteDeCargasAvulso = "8B";

	/** Conhecimento de Transporte Aquaviário de Cargas = 09 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteAquaviárioDeCargas = "09";

	/** Conhecimento Aéreo = 10 */
	public static final String LBR_NFMODEL_ConhecimentoAéreo = "10";

	/** Conhecimento de Transporte Ferroviário de Cargas = 11 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteFerroviárioDeCargas = "11";

	/** Bilhete de Passagem Rodoviário = 13 */
	public static final String LBR_NFMODEL_BilheteDePassagemRodoviário = "13";

	/** Bilhete de Passagem Aquaviário = 14 */
	public static final String LBR_NFMODEL_BilheteDePassagemAquaviário = "14";

	/** Bilhete de Passagem e Nota de Bagagem = 15 */
	public static final String LBR_NFMODEL_BilheteDePassagemENotaDeBagagem = "15";

	/** Despacho de Transporte = 17 */
	public static final String LBR_NFMODEL_DespachoDeTransporte = "17";

	/** Bilhete de Passagem Ferroviário = 16 */
	public static final String LBR_NFMODEL_BilheteDePassagemFerroviário = "16";

	/** Resumo de Movimento Diário = 18 */
	public static final String LBR_NFMODEL_ResumoDeMovimentoDiário = "18";

	/** Ordem de Coleta de Cargas = 20 */
	public static final String LBR_NFMODEL_OrdemDeColetaDeCargas = "20";

	/** Nota Fiscal de Serviço de Comunicação = 21 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeComunicação = "21";

	/** Nota Fiscal de Serviço de Telecomunicação = 22 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTelecomunicação = "22";

	/** GNRE = 23 */
	public static final String LBR_NFMODEL_GNRE = "23";

	/** Autorização de Carregamento e Transporte = 24 */
	public static final String LBR_NFMODEL_AutorizaçãoDeCarregamentoETransporte = "24";

	/** Manifesto de Carga = 25 */
	public static final String LBR_NFMODEL_ManifestoDeCarga = "25";

	/** Conhecimento de Transporte Multimodal de Cargas = 26 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteMultimodalDeCargas = "26";

	/** Nota Fiscal de Transporte Ferroviário de Cargas = 27 */
	public static final String LBR_NFMODEL_NotaFiscalDeTransporteFerroviárioDeCargas = "27";

	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado = 28 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeGásCanalizado = "28";

	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada = 29 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeÁguaCanalizada = "29";

	/** Bilhete/Recibo do Passageiro = 30 */
	public static final String LBR_NFMODEL_BilheteReciboDoPassageiro = "30";

	/** Nota Fiscal Eletrônica = 55 */
	public static final String LBR_NFMODEL_NotaFiscalEletrônica = "55";

	/** Conhecimento de Transporte Eletrônico – CT-e = 57 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E = "57";

	/** Nota Fiscal de Serviços Eletrônica (RPS) = S1 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS = "S1";

	/** Nota Fiscal de Consumidor Eletrônica = 56 */
	public static final String LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica = "56";


	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setLBR_NFModel (String LBR_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getLBR_NFModel();

    /** Column name LBR_NFSerie */
    public static final String COLUMNNAME_LBR_NFSerie = "LBR_NFSerie";

	/** Set NF Serie	  */
	public void setLBR_NFSerie (String LBR_NFSerie);

	/** Get NF Serie	  */
	public String getLBR_NFSerie();

    /** Column name LBR_NFeTpEmi */
    public static final String COLUMNNAME_LBR_NFeTpEmi = "LBR_NFeTpEmi";

	/** Normal = 1 */
	public static final String LBR_NFETPEMI_Normal = "1";

	/** Contingência FS = 2 */
	public static final String LBR_NFETPEMI_ContingênciaFS = "2";

	/** Contingência SCAN = 3 */
	public static final String LBR_NFETPEMI_ContingênciaSCAN = "3";

	/** Contingência DPEC = 4 */
	public static final String LBR_NFETPEMI_ContingênciaDPEC = "4";

	/** Contingência FSDA = 5 */
	public static final String LBR_NFETPEMI_ContingênciaFSDA = "5";


	/** Set Tipo de Emissão NFe	  */
	public void setLBR_NFeTpEmi (String LBR_NFeTpEmi);

	/** Get Tipo de Emissão NFe	  */
	public String getLBR_NFeTpEmi();

    /** Column name M_Warehouse_ID */
    public static final String COLUMNNAME_M_Warehouse_ID = "M_Warehouse_ID";

	/** Set Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID);

	/** Get Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID();

	public org.compiere.model.I_M_Warehouse getM_Warehouse() throws RuntimeException;
}
