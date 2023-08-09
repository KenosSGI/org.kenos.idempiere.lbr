package org.kenos.idempiere.lbr.base.process;

import java.util.List;

import org.adempiere.base.IGridTabImporter;
import org.adempiere.base.equinox.EquinoxExtensionLocator;
import org.compiere.process.ProcessInfoParameter;

/**
 * This class represents a process for importing data from CSV files into iDempiere's grid tabs.
 * It extends the base ImportCSVProcess provided by iDempiere, allowing for initialization of a specific
 * CSV importer implementation based on the Equinox extension mechanism.
 *
 * @author Ricardo Santana <rsantana@kenos.com.br>
 * @version 1.0
 * @see org.idempiere.process.ImportCSVProcess
 */
public class ImportCSVProcess extends org.idempiere.process.ImportCSVProcess {

	/**	File extension CSV or SSV **/
	String extension = null;
	
	/**
	 * 	Intercept the parameters so we can use the file extension to
	 * 	determine what CSVImporter we should use.
	 */
	@Override
	protected void prepare() {
		super.prepare();
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			if ("Suffix".equals(name)) {
				extension = para.getParameterAsString();
			}
		}
		
		//	Backward compatibility
		if (extension == null || extension.isBlank())
			extension = "csv";
	}	//	prepare
	
    /**
     * Initializes and returns an instance of the appropriate CSV importer based on the Equinox
     * extension mechanism. This method scans through the available extensions implementing the
     * IGridTabImporter interface and selects the one that supports CSV file imports.
     *
     * @return An instance of the CSV importer that implements the IGridTabImporter interface.
     * @throws Exception if no suitable CSV importer extension is found.
     */
    protected IGridTabImporter initImporter() throws Exception {
        IGridTabImporter csvImport = null;
        List<IGridTabImporter> importerList = EquinoxExtensionLocator.instance()
                .list(IGridTabImporter.class).getExtensions();

        for (IGridTabImporter importer : importerList) {
            if (extension.equals(importer.getFileExtension())) {
                csvImport = importer;
                break;
            }
        }

        if (csvImport == null) {
            throw new Exception("No CSV importer extension found.");
        }

        return csvImport;
    }	//	initImporter
}	//	ImportCSVProcess
