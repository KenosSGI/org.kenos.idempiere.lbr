/**
 * 
 */
package org.kenos.idempiere.lbr.base.zk.info;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.adempiere.webui.component.Button;
import org.adempiere.webui.theme.ThemeManager;
import org.compiere.model.GridField;
import org.compiere.util.DB;
import org.compiere.util.Trx;
import org.zkoss.util.media.AMedia;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Filedownload;

/**
 * InfoWindowCSV is an extension of the InfoWindow class from the Adempiere web UI.
 * It provides additional functionality for exporting data to CSV files.
 * @author Ricardo Santana <rsantana@kenos.com.br>
 */
public class InfoWindowCSV extends org.adempiere.webui.info.InfoWindow {

	/**	Serial ID	*/	
	private static final long serialVersionUID = -7441243151900893987L;

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 */
	public InfoWindowCSV(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID) {
		this(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, true);
	}	//	InfoWindowCSV

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 * @param lookup
	 */
	public InfoWindowCSV(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID, boolean lookup) {
		this(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, lookup, null);		
	}	//	InfoWindowCSV

	/**
	 * @param WindowNo
	 * @param tableName
	 * @param keyColumn
	 * @param multipleSelection
	 * @param whereClause
	 * @param lookup
	 * @param gridfield
	 */
	public InfoWindowCSV(int WindowNo, String tableName, String keyColumn, String queryValue, 
			boolean multipleSelection, String whereClause, int AD_InfoWindow_ID, boolean lookup, GridField field) {
		super(WindowNo, tableName, keyColumn, queryValue, multipleSelection, whereClause, AD_InfoWindow_ID, lookup, field);
	}	//	InfoWindowCSV

	/** Instance Button				*/
	protected Button	m_CSVButton;
	protected Button	m_SSVButton;
	
	 /**
     * Renders the window with additional customizations.
     */
	@Override
	protected void renderWindow() {
		super.renderWindow();
		// Product Attribute Instance
		m_CSVButton = confirmPanel.createButton("ExportCSV");
		confirmPanel.addComponentsLeft(m_CSVButton);
		m_CSVButton.setEnabled(false);
		m_CSVButton.addEventListener(Events.ON_CLICK, new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				CSVExporter exporter = new CSVExporter();
				exporter.doExport();
			}
		});
		m_CSVButton.setVisible(true);
		m_CSVButton.setImage(ThemeManager.getThemeResource("images/Process16.png"));
		m_CSVButton.setLabel("CSV");
		
		// Product Attribute Instance
		m_SSVButton = confirmPanel.createButton("ExportSSV");
		confirmPanel.addComponentsLeft(m_SSVButton);
		m_SSVButton.setEnabled(false);
		m_SSVButton.addEventListener(Events.ON_CLICK, new EventListener<Event>() {
			@Override
			public void onEvent(Event event) throws Exception {
				CSVExporter exporter = new CSVExporter();
				exporter.doExport(";", "SSV", ".ssv");
			}
		});
		m_SSVButton.setVisible(true);
		m_SSVButton.setImage(ThemeManager.getThemeResource("images/Process16.png"));
		m_SSVButton.setLabel("SSV");
	}	//	renderWindow

	/**
	 * Handles the callback from a query event.
	 * Enables the CSV button if there are rows in the content panel.
	 *
	 * @param event the event triggered by the query
	 */
	@Override
	public void onQueryCallback(Event event) {
		super.onQueryCallback(event);
		enableCSVButton();
	}	//	onQueryCallback
	
	/**
	 * Enables or disables the CSV and SSV buttons based on the row count in the content panel.
	 */
	protected void enableCSVButton() {
		if (m_CSVButton == null) return;
		m_CSVButton.setEnabled(contentPanel.getRowCount() > 0);		
		m_SSVButton.setEnabled(contentPanel.getRowCount() > 0);		
	}	//	enableCSVButton

	/**
	 * Inner class responsible for exporting data to a CSV file.
	 */
	private class CSVExporter 
	{
		private ResultSet m_rs = null;

		/**
	     * Performs the export using default parameters for a CSV file.
	     *
	     * @throws Exception if an error occurs during export
	     */
		public void doExport() throws Exception
		{
			doExport(",", "CSV", ".csv");
		}
		
		/**
	     * Performs the export using specified parameters.
	     *
	     * @param separator the delimiter to use between values
	     * @param preffix the prefix for the temporary file name
	     * @param extension the file extension
	     * @throws Exception if an error occurs during export
	     */
		public void doExport(String separator, String preffix, String extension) throws Exception
		{
			String dataSql = buildDataSQL(0, 0);
			File file = File.createTempFile(preffix + "Export", extension);
            BufferedWriter writer = new BufferedWriter(new FileWriter(file));

			if(m_count > 0)
			{
				PreparedStatement pstmt = null;
				Trx trx = null;
				
				try
				{
					String trxName = Trx.createTrxName("InfoPanelLoad:");
					trx  = Trx.get(trxName, true);
					trx.setDisplayName(getClass().getName()+"_export" + preffix);
					pstmt = DB.prepareStatement(dataSql, trxName);
					setParameters (pstmt, false);	//	no count

					pstmt.setFetchSize(100);
					m_rs = pstmt.executeQuery();
					
					while (m_rs.next()) {
						for (int col=2; col<=columnInfos.length; col++) {
							String columnValue = sanitizeString(m_rs.getString(col));
							writer.write(columnValue);
							if (col+1<=columnInfos.length)
								writer.write(separator);
						}
						writer.newLine();
					}
				}
				catch(SQLException e)
				{
					log.log(Level.SEVERE, dataSql, e);
				}
				finally
				{
					DB.close(m_rs, pstmt);
					trx.close();
					
					m_rs = null;
					writer.close();
				}
				
				AMedia media = null;
				media = new AMedia(file.getName(), null, "text/csv", file, true);
				Filedownload.save(media);
			}
		}	//	doExport
		
		/**
		 * Sanitizes a given input string by removing diacritical marks and non-alphanumeric characters.
		 *
		 * @param input the input string to be sanitized
		 * @return the sanitized string with diacritical marks and special characters removed
		 */
		private String sanitizeString(String input) {
			//	NPE check
			if (input == null)
				return "";
			// Remove diacritical marks and decompose accented characters
			String normalizedString = Normalizer.normalize(input, Normalizer.Form.NFD);
			// Define the pattern to match any characters that are not letters, digits, or spaces
			Pattern pattern = Pattern.compile("[^\\p{ASCII}a-zA-Z0-9\\s]");
			Matcher matcher = pattern.matcher(normalizedString);
			// Replace any special characters (including diacritical marks) with an empty string
			String sanitizedString = matcher.replaceAll("");
			return sanitizedString;
		}	//	sanitizeString
	}	//	CSVExporter
}	//	InfoWindowCSV
