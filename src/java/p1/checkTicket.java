package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "checkTicket", urlPatterns = {"/checkTicket"})
public class checkTicket extends HttpServlet {

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
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try {
            MovieDb ob=new MovieDb();
            HttpSession s=request.getSession(true);
            String res=request.getParameter("name");
            int tid=Integer.parseInt(res);
            ResultSet rs=ob.getDetails(tid);
            rs.next();
            s.setAttribute("movie_name", rs.getString(3));
            s.setAttribute("theater_name", rs.getString(5));
            s.setAttribute("date", rs.getString(9));
            s.setAttribute("show_time", rs.getString(6));
            s.setAttribute("seats", rs.getString(7));
            s.setAttribute("total_cost", rs.getString(10));
            response.sendRedirect("adminWorkspace7.jsp");
      //      processRequest(request, response);
        } catch (SQLException ex) {
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
