package org.kenos.idempiere.lbr.base.model;

/**
 * 		System Configurator
 * 	@author Ricardo Santana <rsantana@kenos.com.br>
 */
public class SysConfig
{
	public static final String ALLOW_CROSS_ORG 									= "org.kenos.allowcrossorg";
	public static final String ALLOW_CROSS_ORG_LOCATOR 							= "org.kenos.allowcrossorglocator";
	public static final String ALLOW_CROSS_ORG_LOCATOR_INVENTORY_MOVE 			= "org.kenos.allowcrossorglocator.inventorymove";

	public static final String LBR_ACCESS_ALL_WAREHOUSES_ROLE 					= "LBR_ACCESS_ALL_WAREHOUSES_ROLE";
	public static final String LBR_ADD_DIFAL_PROD 								= "LBR_ADD_DIFAL_PROD";
	public static final String LBR_ALLOW_CANCEL_NF_AFTER_24_HOURS 				= "LBR_ALLOW_CANCEL_NF_AFTER_24_HOURS";
	public static final String LBR_ALLOW_CROSS_ORG_MOVEMENT 					= "LBR_ALLOW_CROSS_ORG_MOVEMENT";
	public static final String LBR_ALLOW_DUPLICATED_LOT_NUMBER 					= "LBR_ALLOW_DUPLICATED_LOT_NUMBER";
	public static final String LBR_ALLOW_DUPLICATED_MOVEMENTLINE_ON_MOVEMENT 	= "LBR_ALLOW_DUPLICATED_MOVEMENTLINE_ON_MOVEMENT";
	public static final String LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT 	= "LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT";
	public static final String LBR_ALLOW_DUPLICATED_SERIAL_NUMBER 				= "LBR_ALLOW_DUPLICATED_SERIAL_NUMBER";
	public static final String LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER 			= "LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER";
	public static final String LBR_ALLOW_REVERSE_INVOICE_WITH_NF 				= "LBR_ALLOW_REVERSE_INVOICE_WITH_NF";
	public static final String LBR_ALLOW_REVERSE_INVOICE_WITH_PAY_ALLOC 		= "LBR_ALLOW_REVERSE_INVOICE_WITH_PAY_ALLOC";
	public static final String LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE 	= "LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE";
	public static final String LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_RMA 		= "LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_RMA";
	public static final String LBR_ALLOW_VOID_NF_WITH_VALID_BILL 				= "LBR_ALLOW_VOID_NF_WITH_VALID_BILL";
	public static final String LBR_ALLOW_VOID_ORDER_WITH_INVOICE_SHIPMENT 		= "LBR_ALLOW_VOID_ORDER_WITH_INVOICE_SHIPMENT";
	public static final String LBR_AUTO_GENERATE_XML 							= "LBR_AUTO_GENERATE_XML";
	public static final String LBR_AUTOMATIC_ADJUST_MVA 						= "LBR_AUTOMATIC_ADJUST_MVA";
	public static final String LBR_CALC_VOLUME_QTYLINE_AUT 						= "LBR_CALC_VOLUME_QTYLINE_AUT";
	public static final String LBR_CORREIOS_SHIPPER 							= "LBR_CORREIOS_SHIPPER";
	public static final String LBR_CUSTOM_NFE_EMAIL_MESSAGE 					= "LBR_CUSTOM_NFE_EMAIL_MESSAGE";
	public static final String LBR_CUSTOM_NFSE_EMAIL_MESSAGE 					= "LBR_CUSTOM_NFSE_EMAIL_MESSAGE";
	public static final String LBR_DATEINOUT_NF 								= "LBR_DATEINOUT_NF";
	public static final String LBR_DEBUG_RPS 									= "LBR_DEBUG_RPS";
	public static final String LBR_DEFAULT_TIMEZONE 							= "LBR_DEFAULT_TIMEZONE";
	public static final String LBR_DFE_LAST_NSU 								= "LBR_DFE_LAST_NSU";
	public static final String LBR_DISABLE_PRICE_LIST_CHECK 					= "LBR_DISABLE_PRICE_LIST_CHECK";
	public static final String LBR_DIVIDE_PRODUCT_RECEPT_WHEN_SERIALNUMBER 		= "LBR_DIVIDE_PRODUCT_RECEPT_WHEN_SERIALNUMBER";
	public static final String LBR_EFD_NON_RECOVERABLE_ST 						= "LBR_EFD_NON_RECOVERABLE_ST";
	public static final String LBR_ENABLED 										= "LBR_ENABLED";
	public static final String LBR_FILL_ATTRIBUTE_COUNTER_DOC 					= "LBR_FILL_ATTRIBUTE_COUNTER_DOC";
	public static final String LBR_FILL_ATTRIBUTE_INOUT 						= "LBR_FILL_ATTRIBUTE_INOUT";
	public static final String LBR_FILL_ATTRIBUTE_INOUT_LAST_ITEM 				= "LBR_FILL_ATTRIBUTE_INOUT_LAST_ITEM";
	public static final String LBR_FIX_TAXES_INCONSISTENCIES 					= "LBR_FIX_TAXES_INCONSISTENCIES";
	public static final String LBR_FOLDERKEY 									= "LBR_FOLDERKEY";
	public static final String LBR_GENBILLING_TABLE 							= "LBR_GENBILLING_TABLE";
	public static final String LBR_IBPT_API_KEY 								= "LBR_IBPT_API_KEY";
	public static final String LBR_ICMS_MATRIX_ENABLED 							= "LBR_ICMS_MATRIX_ENABLED";
	public static final String LBR_IGNORE_PRICE_VARIANCE_ACCT 					= "LBR_IGNORE_PRICE_VARIANCE_ACCT";
	public static final String LBR_IGNORE_PRICE_VARIANCE_ACCT_FOR_SERVICES 		= "LBR_IGNORE_PRICE_VARIANCE_ACCT_FOR_SERVICES";
	public static final String LBR_INCLUDE_XMLNS_NFE 							= "LBR_INCLUDE_XMLNS_NFE";
	public static final String LBR_INOUTGEN_CONSOLIDATE 						= "LBR_INOUTGEN_CONSOLIDATE";
	public static final String LBR_INOUTGEN_DOCACTION 							= "LBR_INOUTGEN_DOCACTION";
	public static final String LBR_INVOICEGEN_CONSOLIDATE 						= "LBR_INVOICEGEN_CONSOLIDATE";
	public static final String LBR_INVOICEGEN_DOCACTION 						= "LBR_INVOICEGEN_DOCACTION";
	public static final String LBR_ISS_MATRIX_ENABLED 							= "LBR_ISS_MATRIX_ENABLED";
	public static final String LBR_MANIFEST_TRIES 								= "LBR_MANIFEST_TRIES";
	public static final String LBR_MATCH_INVOICE_AND_DELIVERY_QTY 				= "LBR_MATCH_INVOICE_AND_DELIVERY_QTY";
	public static final String LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY 		= "LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY";
	public static final String LBR_NFE_WAITING_TIME								= "LBR_NFE_WAITING_TIME";
	public static final String LBR_NFESPECIE 									= "LBR_NFESPECIE";
	public static final String LBR_NFSE_MOGI_PASS 								= "LBR_NFSE_MOGI_PASS";
	public static final String LBR_NFSE_MOGI_USER 								= "LBR_NFSE_MOGI_USER";
	public static final String LBR_NFSE_PALHOCA_PASS 							= "LBR_NFSE_PALHOCA_PASS";
	public static final String LBR_NFSE_PALHOCA_USER 							= "LBR_NFSE_PALHOCA_USER";
	public static final String LBR_NFSE_TAPIRAI_PASS 							= "LBR_NFSE_TAPIRAI_PASS";
	public static final String LBR_NFSE_TAPIRAI_USER 							= "LBR_NFSE_TAPIRAI_USER";
	public static final String LBR_NFSE_SP_PRINT_URL 							= "LBR_NFSE_SP_PRINT_URL";
	public static final String LBR_NFSE_TOKEN 									= "LBR_NFSE_TOKEN";
	public static final String LBR_OVERWRITE_ORDER_PAY_SCHEDULE					= "LBR_OVERWRITE_ORDER_PAY_SCHEDULE";
	public static final String LBR_POG_INVOICE_COMPLETE 						= "LBR_POG_INVOICE_COMPLETE";
	public static final String LBR_PRINT_BP_PRODUCT_NO_NF 						= "LBR_PRINT_BP_PRODUCT_NO_NF";
	public static final String LBR_PRINT_EXPIRE_NF 								= "LBR_PRINT_EXPIRE_NF";
	public static final String LBR_PRINT_ICMS_SUBSTITUTE_NF 					= "LBR_PRINT_ICMS_SUBSTITUTE_NF";
	public static final String LBR_PRINT_LOT_NF 								= "LBR_PRINT_LOT_NF";
	public static final String LBR_PRINT_SERIALNUMBER_NF						= "LBR_PRINT_SERIALNUMBER_NF";
	public static final String LBR_PRINT_XPED_NF 								= "LBR_PRINT_XPED_NF";
	public static final String LBR_PRINTNFENOONBILLING 							= "LBR_PRINTNFENOONBILLING";
	public static final String LBR_REALTIME_RPS_NUMBER 							= "LBR_REALTIME_RPS_NUMBER";
	public static final String LBR_RECALCULATE_TAXES_ON_COMPLETE 				= "LBR_RECALCULATE_TAXES_ON_COMPLETE";
	public static final String LBR_REF_CFOP 									= "LBR_REF_CFOP";
	public static final String LBR_REF_NCM 										= "LBR_REF_NCM";
	public static final String LBR_REMOTE_PKCS11_TIMEOUT 						= "LBR_REMOTE_PKCS11_TIMEOUT";
	public static final String LBR_REMOTE_PKCS11_URL 							= "LBR_REMOTE_PKCS11_URL";
	public static final String LBR_SEND_NF_BY_EMAIL_TO 							= "LBR_SEND_NF_BY_EMAIL_TO";
	public static final String LBR_SENDNFENOONCNAB 								= "LBR_SENDNFENOONCNAB";
	public static final String LBR_SHOW_EMPLOYEE_BP_INFO 						= "LBR_SHOW_EMPLOYEE_BP_INFO#";
	public static final String LBR_SHOW_STOCK_MSG_ON_ORDER 						= "LBR_SHOW_STOCK_MSG_ON_ORDER";
	public static final String LBR_SISCOMEX_PRODUCT_REGEX						= "LBR_SISCOMEX_PRODUCT_REGEX";
	public static final String LBR_TAXBASE_DISCOUNT_PRINT_NF 					= "LBR_TAXBASE_DISCOUNT_PRINT_NF";
	public static final String LBR_USE_UNIFIED_BP 								= "LBR_USE_UNIFIED_BP";
	public static final String LBR_VALIDATE_BP_ON_SO 							= "LBR_VALIDATE_BP_ON_SO";
	public static final String LBR_VALIDATE_TAXES_ON_SO 						= "LBR_VALIDATE_TAXES_ON_SO";
	public static final String LBR_VALIDATE_UOM_CONVERT_ON_ORDERLINE 			= "LBR_VALIDATE_UOM_CONVERT_ON_ORDERLINE";
	public static final String LBR_VENDOR 										= "LBR_VENDOR";
	public static final String LBR_VERSION_NO 									= "LBR_VERSION_NO";

	@Deprecated
	public static final String LBR_VOLUME 										= "LBR_VOLUME";
	@Deprecated
	public static final String LBR_SPED_CLAS_ESTAB_IND							= "LBR_SPED_CLAS_ESTAB_IND";
	@Deprecated
	public static final String LBR_AUTOMATIC_ADJUST_IVA 						= "LBR_AUTOMATIC_ADJUST_IVA";
}	//	SysConfig
