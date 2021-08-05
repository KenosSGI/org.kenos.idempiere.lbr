package org.kenos.idempiere.lbr.nfe.event;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_M_Warehouse;
import org.compiere.model.MDocType;
import org.compiere.model.MLocator;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrg;
import org.compiere.model.MWarehouse;
import org.compiere.model.PO;
import org.compiere.util.Env;
import org.osgi.service.event.Event;

/**
 * 		OSGi Events Handler
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: EventHandler.java, v1.0 2021/07/24 14:56:57 AM, ralexsander Exp $
 */
public class EventHandler extends AbstractEventHandler
{
	/**
	 * 	Register to receive OSGi Events
	 */
	@Override
	protected void initialize()
	{
		registerTableEvent (IEventTopics.DOC_BEFORE_PREPARE, MMovement.Table_Name);
	}	//	initialize
	
	/**
	 * 	Handle all events
	 * 	@param event
	 */
	@Override
	protected void doHandleEvent (Event event)
	{
		PO po = getPO (event);
		String topic = event.getTopic();
		//
		if (MMovement.Table_Name.equals (po.get_TableName ()))
			doHandleEvent ((MMovement) po, event, topic);
	}	//	doHandleEvent
	
	/**
	 * 	Handle BPartner events
	 * 	@param bp
	 * 	@param topic
	 */
	private void doHandleEvent (MMovement m, Event event, String topic)
	{
		MDocType dt = new MDocType (Env.getCtx(), m.getC_DocType_ID(), null);
		String dtBase = (String) dt.get_Value(I_W_C_DocType.COLUMNNAME_lbr_DocBaseType);
		if (dtBase == null || dtBase.isBlank())
			return;
		
		List<MMovementLine> lines = Arrays.asList(m.getLines(true));
		boolean isMovementOut = dtBase.endsWith("-");
		
		//	Movement to 3rd party
		if ("MMSA-".equals(dtBase) || "MMEA+".equals(dtBase))
		{
			if (m.getC_BPartner_ID() < 1)
				addErrorMessage(event, "Parceiro de Negócios inválido");
			if (m.getC_BPartner_Location_ID() < 1)
				addErrorMessage(event, "Localização do Parceiro de Negócios inválida");
			
			//	Validate the Source Locator Organization
			String checks = checkLocatorOfOrg (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Localizador de " + (isMovementOut ? "Origem" : "Destino") + " não pertence a Organização: " + checks);
			
			//	Validate the Target Locator Organization
			checks = checkLocatorToOfOrg (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Localizador de " + (isMovementOut ? "Destino" : "Origem") + " não pertence a Organização: " + checks);
		
			//	Validate the Source warehouse
			checks = checkOwnWarehouse (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de " + (isMovementOut ? "Origem" : "Destino") + " não é um Armazém de Próprio: " + checks);

			//	Validate the Target warehouse
			checks = check3rdWarehouse(isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de " + (isMovementOut ? "Destino" : "Origem") + " não é um Armazém de Poder de Terceiros: " + checks);

			//	Validate the Target Locator
			checks = checkLocatorOfBPartner(isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Localizador de " + (isMovementOut ? "Destino" : "Origem") + " não pertence ao Parceiro Selecionado: " + checks);
		}
		
		else if ("MMST-".equals(dtBase) || "MMET+".equals(dtBase))
		{
			if (m.getC_BPartner_ID() < 1)
				addErrorMessage(event, "Parceiro de Negócios inválido");
			if (m.getC_BPartner_Location_ID() < 1)
				addErrorMessage(event, "Localização do Parceiro de Negócios inválida");
			
			//	Validate the Source Locator Organization
			String checks = checkLocatorOfOrg (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Localizador de " + (isMovementOut ? "Origem" : "Destino") + " não pertence a Organização: " + checks);
			
			if (isMovementOut)
			{
				//	Validate the Target Locator Organization
				checks = checkLocatorToOfOrg (isMovementOut, lines);
				//
				if (checks != null && !checks.isBlank())
					addErrorMessage(event, "Localizador de " + (isMovementOut ? "Destino" : "Origem") + " não pertence a Organização: " + checks);
			}
			
			checks = checkOwnWarehouse (true, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de Origem não é um Armazém de Próprio: " + checks);
			
			checks = checkOwnWarehouse (false, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de Destino não é um Armazém de Próprio: " + checks);
			
			checks = checkWarehouseNotInTransit (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de " + (isMovementOut ? "Destino" : "Origem") + " não é um Armazém de Trânsito: " + checks);
			
			checks = checkWarehouseInTransit (isMovementOut, lines);
			//
			if (checks != null && !checks.isBlank())
				addErrorMessage(event, "Armazem de " + (isMovementOut ? "Destino" : "Origem") + " não pode ser um Armazém de Trânsito: " + checks);
			
			if (!isMovementOut)
			{
				checks = checkLocatorOfBPartnerGroup (isMovementOut, lines);
				//
				if (checks != null && !checks.isBlank())
					addErrorMessage(event, "Localizador de Origem não pertence ao Parceiro selecionado " + checks);
			}
		}
	}	//	doHandleEvent

	private String checkWarehouseInTransit(boolean isMovementOut, List<MMovementLine> lines) {
		return lines.stream()
				.map(l -> (isMovementOut ? l.getM_Locator() : l.getM_LocatorTo()).getM_Warehouse_ID())
				.distinct()
				.map(id -> new MWarehouse (Env.getCtx(), id, null))
				.filter(MWarehouse::isInTransit)
				.limit(10)
				.map(w -> String.valueOf(w.getName()))
				.collect(Collectors.joining(","));
	}

	private String checkWarehouseNotInTransit(boolean isMovementOut, List<MMovementLine> lines) {
		return lines.stream()
				.map(l -> (isMovementOut ? l.getM_LocatorTo() : l.getM_Locator()).getM_Warehouse_ID())
				.distinct()
				.map(id -> new MWarehouse (Env.getCtx(), id, null))
				.filter(Predicate.not(MWarehouse::isInTransit))
				.limit(10)
				.map(w -> String.valueOf(w.getName()))
				.collect(Collectors.joining(","));
	}

	private String checkLocatorOfBPartnerGroup(boolean isMovementOut, List<MMovementLine> lines) {
		int C_BPartner_ID = lines.stream()
				.filter(Objects::nonNull)
				.map(l -> l.getM_Movement().getC_BPartner_ID())
				.findFirst().orElse(0);
		return lines.stream()
				.map(isMovementOut ? MMovementLine::getM_LocatorTo_ID : MMovementLine::getM_Locator_ID)
				.distinct()
				.map(id -> new MLocator (Env.getCtx(), id, null))
				.filter(l -> MOrg.get(Env.getCtx(), l.getAD_Org_ID()).getLinkedC_BPartner_ID(null) != C_BPartner_ID)
				.limit(10)
				.map(l -> l.getValue())
				.collect(Collectors.joining(","));
	}

	private String checkLocatorOfBPartner(boolean isMovementOut, List<MMovementLine> lines) {
		int C_BPartner_ID = lines.stream()
				.filter(Objects::nonNull)
				.map(l -> l.getM_Movement().getC_BPartner_ID())
				.findFirst().orElse(0);
		return lines.stream()
				.map(isMovementOut ? MMovementLine::getM_LocatorTo_ID : MMovementLine::getM_Locator_ID)
				.distinct()
				.map(id -> new MLocator (Env.getCtx(), id, null))
				.filter(l -> l.get_ValueAsInt(MMovement.COLUMNNAME_C_BPartner_ID) != C_BPartner_ID)
				.limit(10)
				.map(l -> l.getValue())
				.collect(Collectors.joining(","));
	}

	private String check3rdWarehouse(boolean isMovementOut, List<MMovementLine> lines) {
		return lines.stream()
				.map(l -> (isMovementOut ? l.getM_LocatorTo() : l.getM_Locator()).getM_Warehouse_ID())
				.distinct()
				.map(id -> new MWarehouse (Env.getCtx(), id, null))
				.filter(w -> !I_W_M_Warehouse.LBR_WAREHOUSETYPE_NossoEmPoderDeTerceiros.equals(w.get_Value(I_W_M_Warehouse.COLUMNNAME_lbr_WarehouseType)))
				.limit(10)
				.map(w -> String.valueOf(w.getName()))
				.collect(Collectors.joining(","));
	}

	private String checkOwnWarehouse (boolean isMovementOut, List<MMovementLine> lines) {
		return lines.stream()
				.map(l -> (isMovementOut ? l.getM_Locator() : l.getM_LocatorTo()).getM_Warehouse_ID())
				.distinct()
				.map(id -> new MWarehouse (Env.getCtx(), id, null))
				.filter(w -> !I_W_M_Warehouse.LBR_WAREHOUSETYPE_Próprio.equals(w.get_Value(I_W_M_Warehouse.COLUMNNAME_lbr_WarehouseType)))
				.limit(10)
				.map(w -> String.valueOf(w.getName()))
				.collect(Collectors.joining(","));
	}

	private String checkLocatorToOfOrg(boolean isMovementOut, List<MMovementLine> lines) {
		int AD_Org_ID = lines.stream()
				.filter(Objects::nonNull)
				.map(MMovementLine::getAD_Org_ID)
				.findFirst().orElse(0);
		return lines.stream()
				.map(isMovementOut ? MMovementLine::getM_LocatorTo_ID : MMovementLine::getM_Locator_ID)
				.distinct()
				.map(id -> new MLocator (Env.getCtx(), id, null))
				.filter(l -> l.getAD_Org_ID() != AD_Org_ID)
				.limit(10)
				.map(l -> l.getValue())
				.collect(Collectors.joining(","));
	}

	private String checkLocatorOfOrg(boolean isMovementOut, List<MMovementLine> lines) {
		int AD_Org_ID = lines.stream()
				.filter(Objects::nonNull)
				.map(MMovementLine::getAD_Org_ID)
				.findFirst().orElse(0);
		return lines.stream()
			.map(isMovementOut ? MMovementLine::getM_Locator_ID : MMovementLine::getM_LocatorTo_ID)
			.distinct()
			.map(id -> new MLocator (Env.getCtx(), id, null))
			.filter(l -> l.getAD_Org_ID() != AD_Org_ID)
			.limit(10)
			.map(l -> l.getValue())
			.collect(Collectors.joining(","));
	}
}	//	EventHandler
