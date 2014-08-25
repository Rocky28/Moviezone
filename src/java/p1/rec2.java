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

@WebServlet(name = "rec2", urlPatterns = {"/rec2"})
public class rec2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        MovieDb ob=new MovieDb();
        HttpSession s=request.getSession(true);
        String ans=request.getParameter("answer");
        try {
            ob.ps=ob.db.prepareStatement("select ans from signup where ques=?");
            ob.ps.setString(1, (String)s.getAttribute("ques"));
            ob.rs=ob.ps.executeQuery();
            ob.rs.next();
            if(ob.rs.getString(1).equalsIgnoreCase(ans))
            {
                response.sendRedirect("recover3.jsp");
            }
            else
            {
                 response.sendRedirect("errorrecover2.jsp");
            }
        } 
        catch (SQLException ex) {}
    }
  @Override
    public String getServletInfo() {
        return "Short description";
    }
}
