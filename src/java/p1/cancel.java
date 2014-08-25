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

@WebServlet(name = "cancel", urlPatterns = {"/cancel"})
public class cancel extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try {
            HttpSession s=request.getSession(true);
            MovieDb ob=new MovieDb();
            String em=request.getParameter("email");
            int tid=Integer.parseInt(request.getParameter("tid"));
            ob.ps=ob.db.prepareStatement("select * from tid where tid=? and em=?");
            ob.ps.setInt(1,tid);
            ob.ps.setString(2, em);
            ob.rs=ob.ps.executeQuery();
            ob.rs.next();
            String movie=ob.rs.getString(3),date=ob.rs.getString(9),show=ob.rs.getString(6),ticks=ob.rs.getString(7);
            String tc=ob.rs.getString(10);
            s.setAttribute("movie", movie);
            s.setAttribute("date", date);
            s.setAttribute("not", ticks);
            s.setAttribute("show", show);
            s.setAttribute("tid", tid);
            s.setAttribute("tc", tc);
            ob.ps=ob.db.prepareStatement("delete from tid where tid=? and em=?");
            ob.ps.setInt(1,tid);
            ob.ps.setString(2, em);
            int r=ob.ps.executeUpdate();
            response.sendRedirect("candet.jsp");
        } 
        catch (Exception ex) {
            System.out.println(ex);
            response.sendRedirect("wrongcancel.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
