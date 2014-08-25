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


@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {
    String name;

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String add,pass,re_pass,question,ans,email;
       MovieDb ob=new MovieDb();
       name=request.getParameter("name");
       pass=request.getParameter("pass");
       re_pass=request.getParameter("re_pass");
       if(pass.equals(re_pass))
       {
           ob.setUsername(name);
           ob.setAddress(request.getParameter("city"));
           ob.setPassword(pass);
           ob.setQuestion(request.getParameter("question"));
           ob.setAnswer(request.getParameter("answer"));
           ob.setEmailid(request.getParameter("email"));
           ob.setPhone(request.getParameter("phone"));
           int a=ob.insert();
           if(a==1){
               HttpSession s=request.getSession(true);
               String sesId=s.getId();
               s.setAttribute("sesId", sesId);
               
               String user=ob.srchun(request.getParameter("email"));
               ob.insertId(sesId,request.getParameter("email"),user);
               s.setAttribute("current", request.getParameter("email"));
               s.setAttribute("username", user);
           response.sendRedirect("reshome.jsp");}
           else{response.sendRedirect("errorsignup.jsp");}
       }
       else
       {
           response.sendRedirect("errorsignup.jsp");
       }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
