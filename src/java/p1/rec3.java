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

@WebServlet(name = "rec3", urlPatterns = {"/rec3"})
public class rec3 extends HttpServlet {
   /* protected void processRequest(HttpServletRequest request, HttpServletResponse response)
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
    //    processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        MovieDb ob=new MovieDb();
        HttpSession s=request.getSession(true);
        String pass=request.getParameter("password");
        String re_pass=request.getParameter("re_pass");
        if(pass.equals(re_pass))
        {
            try {
                ob.ps=ob.db.prepareStatement("update signup set pass=? where em=?");
                ob.ps.setString(1, pass);
                ob.ps.setString(2, (String)s.getAttribute("email"));
                int r=ob.ps.executeUpdate();
                response.sendRedirect("recover4.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(rec3.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else
        {
            response.sendRedirect("errorrecover3.jsp");
        } 
        s=request.getSession(false);
//        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
