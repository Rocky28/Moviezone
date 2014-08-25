
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.MovieDb"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div id="header">
            <div id="title">
                <div id="sitetitle">Movie Zone</div>
            </div>
            <div id="acc_details">
                
                <form name="location" method="post" action="changeloc"><table align="right">
                    <tr><th"><h3>Welcome<% HttpSession s=request.getSession(true); %>
                    <% if(s.getAttribute("username")==null){ response.sendRedirect("main.jsp");}%>
                    <% out.println("<b>"+(String)s.getAttribute("username")+"</b>");
                                       %> </h3></th></tr></table>
                                       
                    <table align="right"><tr><td width="30" align="right"><select name="location" style="border-color: black;" >
                                    <option name="" value="0">Select location</option><% MovieDb ob=new MovieDb();String rs=ob.getLocations((String)s.getAttribute("current")),tempstr=""; int len=rs.length();for(int i=0;i<len;i++){ if(rs.charAt(i)==','){%>               
                                    <option name="" value="<% out.println(tempstr); %>"><% out.println(tempstr); tempstr="";}else{tempstr+=rs.charAt(i);}}%></option>
                    </select></td><th><input type="submit" value="GO" style="width: 70px; height:auto; background-color: transparent;border-color: black; color: black" /></th></tr></table></form>
                    <div id="tab4"><table align="right"><tr><th><form name="frm0" method="post" action="accset"><input class="button1" type="submit" name="s2" value="Account Settings" style="background-color:transparent; border-color: black;color: black"/></form></th></tr>
                    <tr><th align="right"><form name="frm10" method="post" action="logout"><input class="button" type="submit" name="s1" value="Logout" style="background-color:transparent;  border-color: black; color: black"/></form></th></tr>
                </table>
                    
           </div>
        </div>
    </body>
</html>
