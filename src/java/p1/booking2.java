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

@WebServlet(name = "booking2", urlPatterns = {"/booking2"})
public class booking2 extends HttpServlet {
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
       // processRequest(request, response);
    }

      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        try {
            MovieDb ob=new MovieDb();
            HttpSession s=request.getSession(true);
            String seatno=request.getParameter("seatno");
            int notb=0;
            for(int i=0;i<seatno.length();i++)
            {
                if(seatno.charAt(i)==',')
                {
                    notb++;
                }
            }
            int totalcost=notb*150;
            double random = Math.random();
             int tid=(int)(random*10000);
             ob.inserttid(tid,(String)s.getAttribute("current"),(String)s.getAttribute("currentmn"),(String)s.getAttribute("current_time"),(String)s.getAttribute("current_date"),(String)s.getAttribute("locname"),seatno,notb,totalcost);
             String tc=""+totalcost;
             ob.insertPdfDet(tid,(String)s.getAttribute("current"),(String)s.getAttribute("currentmn"),(String)s.getAttribute("current_time"),(String)s.getAttribute("current_date"),(String)s.getAttribute("locname"),tc);
             s.setAttribute("seats", seatno);
             s.setAttribute("tid", tid);
             s.setAttribute("tc", totalcost);
             response.sendRedirect("booked.jsp");
             //processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(booking2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   @Override
    public String getServletInfo() {
        return "Short description";
    }
}
