package p1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
@WebServlet(name = "upphone", urlPatterns = {"/upphone"})
public class upphone extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        MovieDb ob=new MovieDb();
        HttpSession s=request.getSession(true);
        String phone=request.getParameter("phone");
        try {
            ob.ps=ob.db.prepareStatement("update signup set phn=? where em=?");
            ob.ps.setString(1, phone);
            ob.ps.setString(2, (String)s.getAttribute("current"));
            int r=ob.ps.executeUpdate();
            s.setAttribute("phone", phone);
            response.sendRedirect("accountsettings.jsp");      
        } catch (Exception ex) {
            
        }
    }
  @Override
    public String getServletInfo() {
        return "Short description";
    }
}
