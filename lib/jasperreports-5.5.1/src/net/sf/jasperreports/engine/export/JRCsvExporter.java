/*
 * JasperReports - Free Java Reporting Library.
 * Copyright (C) 2001 - 2013 Jaspersoft Corporation. All rights reserved.
 * http://www.jaspersoft.com
 *
 * Unless you have purchased a commercial license agreement from Jaspersoft,
 * the following license terms apply:
 *
 * This program is part of JasperReports.
 *
 * JasperReports is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * JasperReports is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with JasperReports. If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Contributors:
 * Mirko Wawrowsky - mawawrosky@users.sourceforge.net
 */
package net.sf.jasperreports.engine.export;

import java.io.IOException;

import net.sf.jasperreports.engine.DefaultJasperReportsContext;
import net.sf.jasperreports.engine.JRGenericPrintElement;
import net.sf.jasperreports.engine.JRPrintElement;
import net.sf.jasperreports.engine.JRPrintPage;
import net.sf.jasperreports.engine.JRPrintText;
import net.sf.jasperreports.engine.JRPropertiesUtil;
import net.sf.jasperreports.engine.JasperReportsContext;
import net.sf.jasperreports.engine.util.JRStyledText;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


/**
 * Exports a JasperReports document to CSV format. It has character output type and exports the document to a
 * grid-based layout.
 * @author Teodor Danciu (teodord@users.sourceforge.net)
 * @version $Id: JRCsvExporter.java 6407 2013-08-25 20:12:40Z teodord $
 */
public class JRCsvExporter extends JRAbstractCsvExporter
{
	private static final Log log = LogFactory.getLog(JRCsvExporter.class);

	private static final String CSV_EXPORTER_PROPERTIES_PREFIX = JRPropertiesUtil.PROPERTY_PREFIX + "export.csv.";

	/**
	 * The exporter key, as used in
	 * {@link GenericElementHandlerEnviroment#getHandler(net.sf.jasperreports.engine.JRGenericElementType, String)}.
	 */
	public static final String CSV_EXPORTER_KEY = JRPropertiesUtil.PROPERTY_PREFIX + "csv";

	protected JRCsvExporterContext exporterContext = new ExporterContext();

	protected class ExporterContext extends BaseExporterContext implements JRCsvExporterContext
	{
		public String getExportPropertiesPrefix()
		{
			return CSV_EXPORTER_PROPERTIES_PREFIX;
		}
	}

	/**
	 * @see #JRCsvExporter(JasperReportsContext)
	 */
	public JRCsvExporter()
	{
		this(DefaultJasperReportsContext.getInstance());
	}

	
	/**
	 *
	 */
	public JRCsvExporter(JasperReportsContext jasperReportsContext)
	{
		super(jasperReportsContext);
	}

	
	/**
	 *
	 */
	protected void exportPage(JRPrintPage page) throws IOException
	{
		JRGridLayout layout = 
			new JRGridLayout(
				nature,
				page.getElements(), 
				jasperPrint.getPageWidth(), 
				jasperPrint.getPageHeight(), 
				globalOffsetX, 
				globalOffsetY,
				null //address
				);
		
		Grid grid = layout.getGrid();

		CutsInfo xCuts = layout.getXCuts();
		CutsInfo yCuts = layout.getYCuts();

		StringBuffer rowbuffer = null;
		
		boolean isFirstColumn = true;
		int rowCount = grid.getRowCount();
		for(int y = 0; y < rowCount; y++)
		{
			rowbuffer = new StringBuffer();

			if (yCuts.isCutNotEmpty(y))
			{
				isFirstColumn = true;
				GridRow row = grid.getRow(y);
				int rowSize = row.size();
				for(int x = 0; x < rowSize; x++)
				{
					JRPrintElement element = row.get(x).getElement();
					if(element != null)
					{
						String text = null;
						if (element instanceof JRPrintText)
						{
							JRStyledText styledText = getStyledText((JRPrintText)element);
							if (styledText == null)
							{
								text = "";
							}
							else
							{
								text = styledText.getText();
							}
						}
						else if (element instanceof JRGenericPrintElement)
						{
							JRGenericPrintElement genericPrintElement = (JRGenericPrintElement)element;
							GenericElementCsvHandler handler = (GenericElementCsvHandler) 
								GenericElementHandlerEnviroment.getInstance(getJasperReportsContext()).getElementHandler(
										genericPrintElement.getGenericType(), CSV_EXPORTER_KEY);
							
							if (handler == null)
							{
								if (log.isDebugEnabled())
								{
									log.debug("No CSV generic element handler for " 
											+ genericPrintElement.getGenericType());
								}
							}
							else
							{
								text = handler.getTextValue(exporterContext, genericPrintElement);
							}
						}

						if (text != null)
						{
							if (!isFirstColumn)
							{
								rowbuffer.append(delimiter);
							}
							rowbuffer.append(
								prepareText(text)
								);
							isFirstColumn = false;
						}
					}
					else
					{
						if (xCuts.isCutNotEmpty(x))
						{
							if (!isFirstColumn)
							{
								rowbuffer.append(delimiter);
							}
							isFirstColumn = false;
						}
					}
				}
				
				if (rowbuffer.length() > 0)
				{
					writer.write(rowbuffer.toString());
					writer.write(recordDelimiter);
				}
			}
		}
		
		if (progressMonitor != null)
		{
			progressMonitor.afterPageExport();
		}
	}

}