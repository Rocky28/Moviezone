package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet(name = "accset", urlPatterns = {"/accset"})
public class accset extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
          HttpSession s=request.getSession(true);
          MovieDb ob= new MovieDb();
        try {
            ob.ps=ob.db.prepareStatement("select * from signup where em=?");
            ob.ps.setString(1, (String)s.getAttribute("current"));
            ob.rs=ob.ps.executeQuery();
            ob.rs.next();
            s.setAttribute("address", ob.rs.getString(7));
            s.setAttribute("phone", ob.rs.getString(3));
            s.setAttribute("pass", "**********");
            s.setAttribute("ques", ob.rs.getString(5));
            s.setAttribute("ans", ob.rs.getString(6));
            response.sendRedirect("accountsettings.jsp");
        } catch (Exception ex) {
            Logger.getLogger(accset.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
