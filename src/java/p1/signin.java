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

@WebServlet(name = "signin", urlPatterns = {"/signin"})
public class signin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    { }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String Sui,Spass,jlt;
        MovieDb ob=new MovieDb();
           Sui=request.getParameter("email_address");
           Spass=request.getParameter("password");
           
           int i=ob.srch(Sui,Spass);
           if(i==1)
           {
               HttpSession s=request.getSession(true);
               String sesId=s.getId();
               s.setAttribute("sesId", sesId);               
               String user=ob.srchun(Sui);
               ob.insertId(sesId,Sui,user);
               s.setAttribute("current", Sui);
               s.setAttribute("username", user);
               response.sendRedirect("reshome.jsp");
           }
           else
           {
               if(Sui.equals("admin") && Spass.equals("admin"))
           {
               response.sendRedirect("adminWorkspace.jsp");
               
           }
               else{
              response.sendRedirect("errorsignin.jsp");}
           }
       
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
