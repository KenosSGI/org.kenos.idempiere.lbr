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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_CNAB
 *  @author iDempiere (generated) 
 *  @version Release 4.1
 */
@SuppressWarnings("all")
public interface I_LBR_CNAB 
{

    /** TableName=LBR_CNAB */
    public static final String Table_Name = "LBR_CNAB";

    /** AD_Table_ID=1000002 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsRegistered */
    public static final String COLUMNNAME_IsRegistered = "IsRegistered";

	/** Set Registered.
	  * The application is registered.
	  */
	public void setIsRegistered (boolean IsRegistered);

	/** Get Registered.
	  * The application is registered.
	  */
	public boolean isRegistered();

    /** Column name IsSelected */
    public static final String COLUMNNAME_IsSelected = "IsSelected";

	/** Set Selected	  */
	public void setIsSelected (boolean IsSelected);

	/** Get Selected	  */
	public boolean isSelected();

    /** Column name LBR_Boleto_ID */
    public static final String COLUMNNAME_LBR_Boleto_ID = "LBR_Boleto_ID";

	/** Set Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID);

	/** Get Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID();

	public org.adempierelbr.model.I_LBR_Boleto getLBR_Boleto() throws RuntimeException;

    /** Column name LBR_CNABField1 */
    public static final String COLUMNNAME_LBR_CNABField1 = "LBR_CNABField1";

	/** Set CNAB Field1.
	  * CNAB Field1
	  */
	public void setLBR_CNABField1 (String LBR_CNABField1);

	/** Get CNAB Field1.
	  * CNAB Field1
	  */
	public String getLBR_CNABField1();

    /** Column name LBR_CNABField10 */
    public static final String COLUMNNAME_LBR_CNABField10 = "LBR_CNABField10";

	/** Set CNAB Field10.
	  * CNAB Field10
	  */
	public void setLBR_CNABField10 (String LBR_CNABField10);

	/** Get CNAB Field10.
	  * CNAB Field10
	  */
	public String getLBR_CNABField10();

    /** Column name LBR_CNABField11 */
    public static final String COLUMNNAME_LBR_CNABField11 = "LBR_CNABField11";

	/** Set CNAB Field11.
	  * CNAB Field11
	  */
	public void setLBR_CNABField11 (String LBR_CNABField11);

	/** Get CNAB Field11.
	  * CNAB Field11
	  */
	public String getLBR_CNABField11();

    /** Column name LBR_CNABField12 */
    public static final String COLUMNNAME_LBR_CNABField12 = "LBR_CNABField12";

	/** Set CNAB Field12.
	  * CNAB Field12
	  */
	public void setLBR_CNABField12 (String LBR_CNABField12);

	/** Get CNAB Field12.
	  * CNAB Field12
	  */
	public String getLBR_CNABField12();

    /** Column name LBR_CNABField13 */
    public static final String COLUMNNAME_LBR_CNABField13 = "LBR_CNABField13";

	/** Set CNAB Field13.
	  * CNAB Field13
	  */
	public void setLBR_CNABField13 (String LBR_CNABField13);

	/** Get CNAB Field13.
	  * CNAB Field13
	  */
	public String getLBR_CNABField13();

    /** Column name LBR_CNABField14 */
    public static final String COLUMNNAME_LBR_CNABField14 = "LBR_CNABField14";

	/** Set CNAB Field14.
	  * CNAB Field14
	  */
	public void setLBR_CNABField14 (String LBR_CNABField14);

	/** Get CNAB Field14.
	  * CNAB Field14
	  */
	public String getLBR_CNABField14();

    /** Column name LBR_CNABField15 */
    public static final String COLUMNNAME_LBR_CNABField15 = "LBR_CNABField15";

	/** Set CNAB Field15.
	  * CNAB Field15
	  */
	public void setLBR_CNABField15 (String LBR_CNABField15);

	/** Get CNAB Field15.
	  * CNAB Field15
	  */
	public String getLBR_CNABField15();

    /** Column name LBR_CNABField16 */
    public static final String COLUMNNAME_LBR_CNABField16 = "LBR_CNABField16";

	/** Set CNAB Field16.
	  * CNAB Field16
	  */
	public void setLBR_CNABField16 (String LBR_CNABField16);

	/** Get CNAB Field16.
	  * CNAB Field16
	  */
	public String getLBR_CNABField16();

    /** Column name LBR_CNABField17 */
    public static final String COLUMNNAME_LBR_CNABField17 = "LBR_CNABField17";

	/** Set CNAB Field17.
	  * CNAB Field17
	  */
	public void setLBR_CNABField17 (String LBR_CNABField17);

	/** Get CNAB Field17.
	  * CNAB Field17
	  */
	public String getLBR_CNABField17();

    /** Column name LBR_CNABField18 */
    public static final String COLUMNNAME_LBR_CNABField18 = "LBR_CNABField18";

	/** Set CNAB Field18.
	  * CNAB Field18
	  */
	public void setLBR_CNABField18 (String LBR_CNABField18);

	/** Get CNAB Field18.
	  * CNAB Field18
	  */
	public String getLBR_CNABField18();

    /** Column name LBR_CNABField19 */
    public static final String COLUMNNAME_LBR_CNABField19 = "LBR_CNABField19";

	/** Set CNAB Field19.
	  * CNAB Field19
	  */
	public void setLBR_CNABField19 (String LBR_CNABField19);

	/** Get CNAB Field19.
	  * CNAB Field19
	  */
	public String getLBR_CNABField19();

    /** Column name LBR_CNABField2 */
    public static final String COLUMNNAME_LBR_CNABField2 = "LBR_CNABField2";

	/** Set CNAB Field2.
	  * CNAB Field2
	  */
	public void setLBR_CNABField2 (String LBR_CNABField2);

	/** Get CNAB Field2.
	  * CNAB Field2
	  */
	public String getLBR_CNABField2();

    /** Column name LBR_CNABField20 */
    public static final String COLUMNNAME_LBR_CNABField20 = "LBR_CNABField20";

	/** Set CNAB Field20.
	  * CNAB Field20
	  */
	public void setLBR_CNABField20 (String LBR_CNABField20);

	/** Get CNAB Field20.
	  * CNAB Field20
	  */
	public String getLBR_CNABField20();

    /** Column name LBR_CNABField21 */
    public static final String COLUMNNAME_LBR_CNABField21 = "LBR_CNABField21";

	/** Set CNAB Field21.
	  * CNAB Field21
	  */
	public void setLBR_CNABField21 (String LBR_CNABField21);

	/** Get CNAB Field21.
	  * CNAB Field21
	  */
	public String getLBR_CNABField21();

    /** Column name LBR_CNABField22 */
    public static final String COLUMNNAME_LBR_CNABField22 = "LBR_CNABField22";

	/** Set CNAB Field22.
	  * CNAB Field22
	  */
	public void setLBR_CNABField22 (String LBR_CNABField22);

	/** Get CNAB Field22.
	  * CNAB Field22
	  */
	public String getLBR_CNABField22();

    /** Column name LBR_CNABField23 */
    public static final String COLUMNNAME_LBR_CNABField23 = "LBR_CNABField23";

	/** Set CNAB Field23.
	  * CNAB Field23
	  */
	public void setLBR_CNABField23 (String LBR_CNABField23);

	/** Get CNAB Field23.
	  * CNAB Field23
	  */
	public String getLBR_CNABField23();

    /** Column name LBR_CNABField24 */
    public static final String COLUMNNAME_LBR_CNABField24 = "LBR_CNABField24";

	/** Set CNAB Field24.
	  * CNAB Field24
	  */
	public void setLBR_CNABField24 (String LBR_CNABField24);

	/** Get CNAB Field24.
	  * CNAB Field24
	  */
	public String getLBR_CNABField24();

    /** Column name LBR_CNABField25 */
    public static final String COLUMNNAME_LBR_CNABField25 = "LBR_CNABField25";

	/** Set CNAB Field25.
	  * CNAB Field25
	  */
	public void setLBR_CNABField25 (String LBR_CNABField25);

	/** Get CNAB Field25.
	  * CNAB Field25
	  */
	public String getLBR_CNABField25();

    /** Column name LBR_CNABField26 */
    public static final String COLUMNNAME_LBR_CNABField26 = "LBR_CNABField26";

	/** Set CNAB Field26.
	  * CNAB Field26
	  */
	public void setLBR_CNABField26 (String LBR_CNABField26);

	/** Get CNAB Field26.
	  * CNAB Field26
	  */
	public String getLBR_CNABField26();

    /** Column name LBR_CNABField27 */
    public static final String COLUMNNAME_LBR_CNABField27 = "LBR_CNABField27";

	/** Set CNAB Field27.
	  * CNAB Field27
	  */
	public void setLBR_CNABField27 (String LBR_CNABField27);

	/** Get CNAB Field27.
	  * CNAB Field27
	  */
	public String getLBR_CNABField27();

    /** Column name LBR_CNABField28 */
    public static final String COLUMNNAME_LBR_CNABField28 = "LBR_CNABField28";

	/** Set CNAB Field28.
	  * CNAB Field28
	  */
	public void setLBR_CNABField28 (String LBR_CNABField28);

	/** Get CNAB Field28.
	  * CNAB Field28
	  */
	public String getLBR_CNABField28();

    /** Column name LBR_CNABField29 */
    public static final String COLUMNNAME_LBR_CNABField29 = "LBR_CNABField29";

	/** Set CNAB Field29.
	  * CNAB Field29
	  */
	public void setLBR_CNABField29 (String LBR_CNABField29);

	/** Get CNAB Field29.
	  * CNAB Field29
	  */
	public String getLBR_CNABField29();

    /** Column name LBR_CNABField3 */
    public static final String COLUMNNAME_LBR_CNABField3 = "LBR_CNABField3";

	/** Set CNAB Field3.
	  * CNAB Field3
	  */
	public void setLBR_CNABField3 (String LBR_CNABField3);

	/** Get CNAB Field3.
	  * CNAB Field3
	  */
	public String getLBR_CNABField3();

    /** Column name LBR_CNABField30 */
    public static final String COLUMNNAME_LBR_CNABField30 = "LBR_CNABField30";

	/** Set CNAB Field30.
	  * CNAB Field30
	  */
	public void setLBR_CNABField30 (String LBR_CNABField30);

	/** Get CNAB Field30.
	  * CNAB Field30
	  */
	public String getLBR_CNABField30();

    /** Column name LBR_CNABField31 */
    public static final String COLUMNNAME_LBR_CNABField31 = "LBR_CNABField31";

	/** Set CNAB Field31.
	  * CNAB Field31
	  */
	public void setLBR_CNABField31 (String LBR_CNABField31);

	/** Get CNAB Field31.
	  * CNAB Field31
	  */
	public String getLBR_CNABField31();

    /** Column name LBR_CNABField32 */
    public static final String COLUMNNAME_LBR_CNABField32 = "LBR_CNABField32";

	/** Set CNAB Field32.
	  * CNAB Field32
	  */
	public void setLBR_CNABField32 (String LBR_CNABField32);

	/** Get CNAB Field32.
	  * CNAB Field32
	  */
	public String getLBR_CNABField32();

    /** Column name LBR_CNABField33 */
    public static final String COLUMNNAME_LBR_CNABField33 = "LBR_CNABField33";

	/** Set CNAB Field33.
	  * CNAB Field33
	  */
	public void setLBR_CNABField33 (String LBR_CNABField33);

	/** Get CNAB Field33.
	  * CNAB Field33
	  */
	public String getLBR_CNABField33();

    /** Column name LBR_CNABField34 */
    public static final String COLUMNNAME_LBR_CNABField34 = "LBR_CNABField34";

	/** Set CNAB Field34.
	  * CNAB Field34
	  */
	public void setLBR_CNABField34 (String LBR_CNABField34);

	/** Get CNAB Field34.
	  * CNAB Field34
	  */
	public String getLBR_CNABField34();

    /** Column name LBR_CNABField35 */
    public static final String COLUMNNAME_LBR_CNABField35 = "LBR_CNABField35";

	/** Set CNAB Field35.
	  * CNAB Field35
	  */
	public void setLBR_CNABField35 (String LBR_CNABField35);

	/** Get CNAB Field35.
	  * CNAB Field35
	  */
	public String getLBR_CNABField35();

    /** Column name LBR_CNABField36 */
    public static final String COLUMNNAME_LBR_CNABField36 = "LBR_CNABField36";

	/** Set CNAB Field36.
	  * CNAB Field36
	  */
	public void setLBR_CNABField36 (String LBR_CNABField36);

	/** Get CNAB Field36.
	  * CNAB Field36
	  */
	public String getLBR_CNABField36();

    /** Column name LBR_CNABField37 */
    public static final String COLUMNNAME_LBR_CNABField37 = "LBR_CNABField37";

	/** Set CNAB Field37.
	  * CNAB Field37
	  */
	public void setLBR_CNABField37 (String LBR_CNABField37);

	/** Get CNAB Field37.
	  * CNAB Field37
	  */
	public String getLBR_CNABField37();

    /** Column name LBR_CNABField38 */
    public static final String COLUMNNAME_LBR_CNABField38 = "LBR_CNABField38";

	/** Set CNAB Field38.
	  * CNAB Field38
	  */
	public void setLBR_CNABField38 (String LBR_CNABField38);

	/** Get CNAB Field38.
	  * CNAB Field38
	  */
	public String getLBR_CNABField38();

    /** Column name LBR_CNABField39 */
    public static final String COLUMNNAME_LBR_CNABField39 = "LBR_CNABField39";

	/** Set CNAB Field39.
	  * CNAB Field39
	  */
	public void setLBR_CNABField39 (String LBR_CNABField39);

	/** Get CNAB Field39.
	  * CNAB Field39
	  */
	public String getLBR_CNABField39();

    /** Column name LBR_CNABField4 */
    public static final String COLUMNNAME_LBR_CNABField4 = "LBR_CNABField4";

	/** Set CNAB Field4.
	  * CNAB Field4
	  */
	public void setLBR_CNABField4 (String LBR_CNABField4);

	/** Get CNAB Field4.
	  * CNAB Field4
	  */
	public String getLBR_CNABField4();

    /** Column name LBR_CNABField40 */
    public static final String COLUMNNAME_LBR_CNABField40 = "LBR_CNABField40";

	/** Set CNAB Field40.
	  * CNAB Field40
	  */
	public void setLBR_CNABField40 (String LBR_CNABField40);

	/** Get CNAB Field40.
	  * CNAB Field40
	  */
	public String getLBR_CNABField40();

    /** Column name LBR_CNABField41 */
    public static final String COLUMNNAME_LBR_CNABField41 = "LBR_CNABField41";

	/** Set CNAB Field41.
	  * CNAB Field41
	  */
	public void setLBR_CNABField41 (String LBR_CNABField41);

	/** Get CNAB Field41.
	  * CNAB Field41
	  */
	public String getLBR_CNABField41();

    /** Column name LBR_CNABField42 */
    public static final String COLUMNNAME_LBR_CNABField42 = "LBR_CNABField42";

	/** Set CNAB Field42.
	  * CNAB Field42
	  */
	public void setLBR_CNABField42 (String LBR_CNABField42);

	/** Get CNAB Field42.
	  * CNAB Field42
	  */
	public String getLBR_CNABField42();

    /** Column name LBR_CNABField43 */
    public static final String COLUMNNAME_LBR_CNABField43 = "LBR_CNABField43";

	/** Set CNAB Field43.
	  * CNAB Field43
	  */
	public void setLBR_CNABField43 (String LBR_CNABField43);

	/** Get CNAB Field43.
	  * CNAB Field43
	  */
	public String getLBR_CNABField43();

    /** Column name LBR_CNABField44 */
    public static final String COLUMNNAME_LBR_CNABField44 = "LBR_CNABField44";

	/** Set CNAB Field44.
	  * CNAB Field44
	  */
	public void setLBR_CNABField44 (String LBR_CNABField44);

	/** Get CNAB Field44.
	  * CNAB Field44
	  */
	public String getLBR_CNABField44();

    /** Column name LBR_CNABField45 */
    public static final String COLUMNNAME_LBR_CNABField45 = "LBR_CNABField45";

	/** Set CNAB Field45.
	  * CNAB Field45
	  */
	public void setLBR_CNABField45 (String LBR_CNABField45);

	/** Get CNAB Field45.
	  * CNAB Field45
	  */
	public String getLBR_CNABField45();

    /** Column name LBR_CNABField46 */
    public static final String COLUMNNAME_LBR_CNABField46 = "LBR_CNABField46";

	/** Set CNAB Field46.
	  * CNAB Field46
	  */
	public void setLBR_CNABField46 (String LBR_CNABField46);

	/** Get CNAB Field46.
	  * CNAB Field46
	  */
	public String getLBR_CNABField46();

    /** Column name LBR_CNABField47 */
    public static final String COLUMNNAME_LBR_CNABField47 = "LBR_CNABField47";

	/** Set CNAB Field47.
	  * CNAB Field47
	  */
	public void setLBR_CNABField47 (String LBR_CNABField47);

	/** Get CNAB Field47.
	  * CNAB Field47
	  */
	public String getLBR_CNABField47();

    /** Column name LBR_CNABField48 */
    public static final String COLUMNNAME_LBR_CNABField48 = "LBR_CNABField48";

	/** Set CNAB Field48.
	  * CNAB Field48
	  */
	public void setLBR_CNABField48 (String LBR_CNABField48);

	/** Get CNAB Field48.
	  * CNAB Field48
	  */
	public String getLBR_CNABField48();

    /** Column name LBR_CNABField49 */
    public static final String COLUMNNAME_LBR_CNABField49 = "LBR_CNABField49";

	/** Set CNAB Field49.
	  * CNAB Field49
	  */
	public void setLBR_CNABField49 (String LBR_CNABField49);

	/** Get CNAB Field49.
	  * CNAB Field49
	  */
	public String getLBR_CNABField49();

    /** Column name LBR_CNABField5 */
    public static final String COLUMNNAME_LBR_CNABField5 = "LBR_CNABField5";

	/** Set CNAB Field5.
	  * CNAB Field5
	  */
	public void setLBR_CNABField5 (String LBR_CNABField5);

	/** Get CNAB Field5.
	  * CNAB Field5
	  */
	public String getLBR_CNABField5();

    /** Column name LBR_CNABField50 */
    public static final String COLUMNNAME_LBR_CNABField50 = "LBR_CNABField50";

	/** Set CNAB Field50.
	  * CNAB Field50
	  */
	public void setLBR_CNABField50 (String LBR_CNABField50);

	/** Get CNAB Field50.
	  * CNAB Field50
	  */
	public String getLBR_CNABField50();

    /** Column name LBR_CNABField51 */
    public static final String COLUMNNAME_LBR_CNABField51 = "LBR_CNABField51";

	/** Set CNAB Field51.
	  * CNAB Field51
	  */
	public void setLBR_CNABField51 (String LBR_CNABField51);

	/** Get CNAB Field51.
	  * CNAB Field51
	  */
	public String getLBR_CNABField51();

    /** Column name LBR_CNABField52 */
    public static final String COLUMNNAME_LBR_CNABField52 = "LBR_CNABField52";

	/** Set CNAB Field52.
	  * CNAB Field52
	  */
	public void setLBR_CNABField52 (String LBR_CNABField52);

	/** Get CNAB Field52.
	  * CNAB Field52
	  */
	public String getLBR_CNABField52();

    /** Column name LBR_CNABField53 */
    public static final String COLUMNNAME_LBR_CNABField53 = "LBR_CNABField53";

	/** Set CNAB Field53.
	  * CNAB Field53
	  */
	public void setLBR_CNABField53 (String LBR_CNABField53);

	/** Get CNAB Field53.
	  * CNAB Field53
	  */
	public String getLBR_CNABField53();

    /** Column name LBR_CNABField6 */
    public static final String COLUMNNAME_LBR_CNABField6 = "LBR_CNABField6";

	/** Set CNAB Field6.
	  * CNAB Field6
	  */
	public void setLBR_CNABField6 (String LBR_CNABField6);

	/** Get CNAB Field6.
	  * CNAB Field6
	  */
	public String getLBR_CNABField6();

    /** Column name LBR_CNABField7 */
    public static final String COLUMNNAME_LBR_CNABField7 = "LBR_CNABField7";

	/** Set CNAB Field7.
	  * CNAB Field7
	  */
	public void setLBR_CNABField7 (String LBR_CNABField7);

	/** Get CNAB Field7.
	  * CNAB Field7
	  */
	public String getLBR_CNABField7();

    /** Column name LBR_CNABField8 */
    public static final String COLUMNNAME_LBR_CNABField8 = "LBR_CNABField8";

	/** Set CNAB Field8.
	  * CNAB Field8
	  */
	public void setLBR_CNABField8 (String LBR_CNABField8);

	/** Get CNAB Field8.
	  * CNAB Field8
	  */
	public String getLBR_CNABField8();

    /** Column name LBR_CNABField9 */
    public static final String COLUMNNAME_LBR_CNABField9 = "LBR_CNABField9";

	/** Set CNAB Field9.
	  * CNAB Field9
	  */
	public void setLBR_CNABField9 (String LBR_CNABField9);

	/** Get CNAB Field9.
	  * CNAB Field9
	  */
	public String getLBR_CNABField9();

    /** Column name LBR_CNAB_ID */
    public static final String COLUMNNAME_LBR_CNAB_ID = "LBR_CNAB_ID";

	/** Set CNAB.
	  * Primary Key table LBR_CNAB
	  */
	public void setLBR_CNAB_ID (int LBR_CNAB_ID);

	/** Get CNAB.
	  * Primary Key table LBR_CNAB
	  */
	public int getLBR_CNAB_ID();

    /** Column name LBR_DocDate */
    public static final String COLUMNNAME_LBR_DocDate = "LBR_DocDate";

	/** Set Document Date.
	  * Identifies the Document Date
	  */
	public void setLBR_DocDate (Timestamp LBR_DocDate);

	/** Get Document Date.
	  * Identifies the Document Date
	  */
	public Timestamp getLBR_DocDate();

    /** Column name LBR_IsCancelled */
    public static final String COLUMNNAME_LBR_IsCancelled = "LBR_IsCancelled";

	/** Set IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public void setLBR_IsCancelled (boolean LBR_IsCancelled);

	/** Get IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public boolean isLBR_IsCancelled();

    /** Column name RoutingNo */
    public static final String COLUMNNAME_RoutingNo = "RoutingNo";

	/** Set Routing No.
	  * Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo);

	/** Get Routing No.
	  * Bank Routing Number
	  */
	public String getRoutingNo();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
