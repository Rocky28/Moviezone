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
import java.util.*;

@WebServlet(name = "booking", urlPatterns = {"/booking"})
public class booking extends HttpServlet {
    
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
      //  processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        HttpSession s=request.getSession(true);
        MovieDb ob=new MovieDb();
        /*  try { 
        String select_movie,select_showTime,date,st;
        Calendar c=Calendar.getInstance();
        int show=0;
        String months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        String temp=null;
        ResultSet rs=null;
        select_movie=request.getParameter("select_movie");
        select_showTime=request.getParameter("select_showTime");
        date=request.getParameter("date");
        char dash=date.charAt(2);
        if(dash!='-')
        {
            response.sendRedirect("wrongdateerror.jsp");
        }
        ob.setFulldate(date);
        String dates=""+date.charAt(0)+date.charAt(1);
        String month=""+date.charAt(3)+date.charAt(4);
        String t_month=months[c.get(Calendar.MONTH)];
        if(month.equals(t_month))
        {
            response.sendRedirect("wrongdateerror.jsp");
        }
        int year=Integer.parseInt(""+date.charAt(6)+date.charAt(7)+date.charAt(8)+date.charAt(9));
        int t_year=c.get(Calendar.YEAR);
        if(year!=t_year)
        {
            response.sendRedirect("wrongdateerror.jsp");
        }
        ob.setMoviename(select_movie);
        int intdate=Integer.parseInt(dates);
        ob.setDates(intdate);
        show=Integer.parseInt(select_showTime);
                if(show==1)
                {
                    st="Morning";
                }
                else if(show==2)
                {
                    st="Noon";
                }
                else if(show==3)
                {
                    st="Evening";
                }
                else
                {
                    st="Night";
                }
       
       String tick=null;
        try{
            rs=ob.calNota(intdate,select_movie,show);
            rs.next();   
           
            tick=rs.getString(1);}
            catch(Exception ex)
            {
                response.sendRedirect("wrongdateerror.jsp");
            }
            int temptick=Integer.parseInt(tick);
            if(temptick<=0)
            {
                tick="0";
            }
            s.setAttribute("nota", tick);
            s.setAttribute("show", st);
            ob.setShowname(st);
            s.setAttribute("date", date);
            s.setAttribute("movie", select_movie);
            response.sendRedirect("availres.jsp");
        } catch (IllegalStateException e) {
            response.sendRedirect("show.jsp");
            
        }catch(Exception e){}*/
        String mn=request.getParameter("select_movie");
        s.setAttribute("currentmn", mn);
        Calendar cal=Calendar.getInstance();
        int day=cal.get(Calendar.DATE);
        int month=cal.get(Calendar.MONTH);
        int year=cal.get(Calendar.YEAR);
        String date=""+day+"-"+month+"-"+year;
        s.setAttribute("dropdowndate", date);
        int day1=day+1;
        String date1=""+day1+"-"+month+"-"+year;
        s.setAttribute("dropdownnextdate", date1);
        int hour=cal.get(Calendar.HOUR);
        int min=cal.get(Calendar.MINUTE);
        int pm=cal.get(Calendar.AM_PM);
        if(pm==1)
        {
            hour=hour+12;
        }

        String res=ob.getShowTime(mn,(String)s.getAttribute("locname"),(String)s.getAttribute("current"));
        s.setAttribute("allshow", res);
        int j=0;
        String temptime="";
        for(int i=0;i<res.length();i++)
        {
             if(res.charAt(i)==',')
             {
                 String nh=""+temptime.charAt(0)+temptime.charAt(1);
                 int newhour=Integer.parseInt(nh);
                 if((newhour-hour)>=0)
                 {
                     s.setAttribute("current_time", temptime);
                     s.setAttribute("current_date", date);
                     
                     day=day+1;
                 date=""+day+"-"+month+"-"+year;
                 s.setAttribute("next_date", date);
                 j=1;
                     break;
                 }
                 else
                 {
                     temptime="";
                 }
                 continue;
             }
             temptime+=res.charAt(i);
        }
        if(j==0)
        {
            s.setAttribute("stat", "redirect_to_next_day");
                 day=day+1;
                 date=""+day+"-"+month+"-"+year;
                 String newtime="";
                 for(int i=0;i<res.length();i++)
                 {
                     if(res.charAt(i)==',')
                     {
                         break;
                     }
                     newtime+=res.charAt(i);
                 }
                 s.setAttribute("current_time", newtime);
                 s.setAttribute("current_date", date);
                 day=day+1;
                 date=""+day+"-"+month+"-"+year;
                 s.setAttribute("next_date", date);
        }
        String str=ob.getSeatStatus((String)s.getAttribute("currentmn"),(String)s.getAttribute("locname"),(String)s.getAttribute("current_time"),(String)s.getAttribute("current_date"),(String)s.getAttribute("current"));

        s.setAttribute("seatstatus", str);
        response.sendRedirect("seat.jsp");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
