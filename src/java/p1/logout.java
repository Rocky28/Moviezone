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

@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        HttpSession s=request.getSession(true);
        MovieDb ob=new MovieDb();
        ob.delId((String)s.getAttribute("sesId"));
        s=request.getSession(false);
        response.sendRedirect("main.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
