package p1;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.*;


@WebServlet(name = "genPdf", urlPatterns = {"/genPdf"})
public class genPdf extends HttpServlet {

/*    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        } finally {            
            out.close();
        }
    }*/

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        HttpSession s=request.getSession(true);
        
        int tid=(Integer)s.getAttribute("tid");
        Connection connection=null;
        ServletOutputStream servletOutputStream = response.getOutputStream();
        String reportStream ="C:/Documents and Settings/rOcK/My Documents/NetBeansProjects/MovieZone/reports/DBreport.jrxml";
        String reportStream1 ="C:/Documents and Settings/rOcK/My Documents/NetBeansProjects/MovieZone/reports/DBreport.jasper";
        HashMap parameterMap = new HashMap();
        parameterMap.put("tid", new Integer(tid));
        try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                connection = DriverManager.getConnection ("jdbc:odbc:dsn77");
                System.setProperty("jasper.reports.compile.class.path", "C:/Documents and Settings/rOcK/My Documents/jasperreports-5.5.1-project/jasperreports-5.5.1/dist/jasperreports-5.5.1.jar");
                JasperReport jr=JasperCompileManager.compileReport(reportStream);
                JasperPrint jp=JasperFillManager.fillReport(reportStream1, parameterMap, connection); 
                JasperExportManager.exportReportToPdfStream(jp, servletOutputStream);
                connection.close();
                response.setContentType("application/pdf");
                servletOutputStream.flush();
                servletOutputStream.close();
           }catch (Exception e){
               System.out.println(e);
           }
    //    processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
