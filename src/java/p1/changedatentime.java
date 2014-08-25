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


@WebServlet(name = "changedatentime", urlPatterns = {"/changedatentime"})
public class changedatentime extends HttpServlet {
/*    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
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
        HttpSession s=request.getSession(true);
        MovieDb ob=new MovieDb();
        String newdate=request.getParameter("select_date");
        String newtime=request.getParameter("select_time");
        String prevdate=(String)s.getAttribute("current_date");
        String prevtime=(String)s.getAttribute("current_time");
        if(newdate.equals("0"))
        {
            newdate=prevdate;
        }
        if(newtime.equals("0"))
        {
            newtime=prevtime;
        }
        s.setAttribute("current_date", newdate);
        s.setAttribute("current_time", newtime);
        String str=ob.getSeatStatus((String)s.getAttribute("currentmn"),(String)s.getAttribute("locname"),(String)s.getAttribute("current_time"),(String)s.getAttribute("current_date"),(String)s.getAttribute("current"));
        s.setAttribute("seatstatus", str);
        response.sendRedirect("seat.jsp");
        
   //     processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
