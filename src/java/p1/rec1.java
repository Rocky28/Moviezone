package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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

@WebServlet(name = "rec1", urlPatterns = {"/rec1"})
public class rec1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        MovieDb ob=new MovieDb();
        String email=request.getParameter("email");
        try {
            ob.ps=ob.db.prepareStatement("select ques from signup where em=?");
            ob.ps.setString(1, email);
            ob.rs=ob.ps.executeQuery();
            if(ob.rs.next()==false)
            {
                response.sendRedirect("errorrecover.jsp");
            }
            else
            {
                HttpSession s=request.getSession(true);
                s.setAttribute("email", email);
                s.setAttribute("ques", ob.rs.getString(1));
                response.sendRedirect("recover2.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(rec1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
@Override
    public String getServletInfo() {
        return "Short description";
    }
}
