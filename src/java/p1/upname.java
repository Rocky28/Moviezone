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
@WebServlet(name = "upname", urlPatterns = {"/upname"})
public class upname extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        MovieDb ob=new MovieDb();
        HttpSession s=request.getSession(true);
        String name=request.getParameter("name");
        try {
            ob.ps=ob.db.prepareStatement("update signup set un=? where em=?");
            ob.ps.setString(1, name);
            ob.ps.setString(2, (String)s.getAttribute("current"));
            int r=ob.ps.executeUpdate();
            s.setAttribute("username", name);
            response.sendRedirect("accountsettings.jsp");
        } 
        catch (Exception ex) {
            
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
